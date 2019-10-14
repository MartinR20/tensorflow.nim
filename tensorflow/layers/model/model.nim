import os
import sequtils
import strutils
import ../../ops/ops
import ../../utils/utils
import ../../core/core
import ./modelUtils
import ../loss
import ../optim
import ../variable
{.hint[XDeclaredButNotUsed]:off.}

type Model = ref object
    x: ofloat
    y: ofloat
    eval: ofloat
    loss: ofloat
    opted: olist[oinvalid]
    vars*: olist[oinvalid]
    sess*: Session
    scope*: Scope
    path*: string

proc save(model: Model, iteration: int) =
    let names = getNames(model.vars)

    let rtNamed = model.scope.newSubScope("Save")

    with rtNamed:
        let empty = empty([model.vars.len].oint32, ostring)
        let save = saveV2((model.path & "-" & $iteration).ostring, nconst(names), empty, model.vars, [])

    var feed: FeedDict
    discard model.sess.runSessionVoid(feed, newOutList[oinvalid](), save.operation)

    rtNamed.check()

proc restore(model: Model) =
    let names = getNames(model.vars)
    let dtypes = DT_FLOAT.repeat(model.vars.len)

    let rtNamed = model.scope.newSubScope("Restore")

    var maxIteration = 0

    for file in walkFiles(model.path & "-*"):
        let noPattern = file[model.path.len+1..^1]
        let numberEnd = noPattern.find('.')
        let iteration = noPattern[0..numberEnd-1].parseInt()

        maxIteration = max(maxIteration, iteration)

    with rtNamed:
        let empty = empty([model.vars.len].oint32, ostring)
        let restore = restoreV2((model.path & "-" & $maxIteration).ostring, nconst(names), empty, dtypes, ofloat)

    for i in 0..restore.len-1:
        discard model.sess.runSessionVoid(rtNamed.assign(model.vars[i], restore[i]))

    rtNamed.check()

proc newModel[N](rt: Scope, 
                 funcs: seq[proc(rt: Scope, input: Out): Out],
                 loss: Loss, 
                 optim: Optim[N],
                 vars: seq[HVariable[oall]],
                 path="checkpoints/model.ckpt",
                 restore=false): Model =
    var model = new Model

    model.scope = rt

    let rtNamed = rt.newSubScope("fit")

    with rtNamed:
        model.x = Placeholder(float32.tf)
        model.y = Placeholder(float32.tf)

        model.sess = newSession()

    let rtEval = rt.newSubScope("eval")
    
    var eval = funcs[0](rtEval, model.x)

    for f in funcs[1..^1]:
        eval = rtEval.f(eval)

    model.eval = eval
    
    rt.check()

    if vars.len == 0:
        echo "Warning: Your model has no trainable variables therefore fit will raise an Error!"
        return model

    with rtNamed:
        model.loss = loss.fn(model.eval, model.y)

    rt.check()

    with rtNamed.newSubScope("Gradients"):
        var grads: OutList
        addSymbolicGradients(model.loss, vars.vvarSeq, grads)

    rt.check()

    with rtNamed:
        model.opted = optim.make(vars)(vars, grads)

    rt.check()

    model.vars = vars.vvarSeq

    for list in optim.vars():
        for v in list:
            model.vars.add v

    rt.check()

    model.path = path
    
    if restore:
        model.restore()
    else:
        model.sess.runSessionVoid(vars.assignSeq)

        for init in optim.init:
            model.sess.runSessionVoid(init)
    
    return model

proc fit(model: Model, 
         X, Y: Tensor, 
         epochs: int, 
         batch = 32,
         checkpoints = true) =
    var feed: FeedDict

    for epoch in 0..epochs-1:
        for x, y in batch(X, Y, batch):
            feed[model.x] = x
            feed[model.y] = y

            model.sess.runSessionVoid(feed, model.opted)

        if epoch %% 10 == 0:
            let outputs = model.sess.runSession(feed, model.loss)
            echo "loss:", outputs[0].flat(0.float32).mean()

            if checkpoints:
                model.save(epoch)
    
proc eval(model: Model, X: Tensor): TensorVec =
    var feed: FeedDict

    feed[model.x] = X

    var outputs: TensorVec
    model.sess.runSession(feed, model.eval, outputs)

    return outputs

export Model,
       newModel,
       save,
       restore,
       fit,
       eval