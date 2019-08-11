## This is the base Layer type everything else inherits from. It defines how all layers behave by the
## supplied methods.
##
## Example:
##
## .. code:: nim
##
##    type AddValue = ref object of Layer
##        value: float
##    
##    method `$`(layer: AddValue): string = "AddValue"
##    
##    method make(layer: AddValue, root: Scope): proc(rt: Scope, input: Out): Out = 
##        # in this context use root as Scope
##        # this is only the setup context preparing your computation
##        let value = root.Const(addvalue.value)
##    
##        return proc(rt: Scope, input: Out): Out = 
##                    # here use rt as Scope
##                    # this is the proc that will be used in the fit/eval methods
##                    return rt.Add(input, value)
##    
##    proc newAddOne*(model: var seq[Layer], value: float) =
##        var addvalue = new AddValue
##        
##        addvalue.value = value
##    
##        model.add(value)

import sequtils
import ../ops/ops
import ../core/core
import ../utils/utils
import ./loss
import ./optim
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Layer* = ref object of RootObj
    ## Base Layer to inherit from when creating a new Layer. If your layer contains trainable 
    ## Variables append them to the train sequence.

    train*: seq[TVariable]

method `$`*(layer: Layer): string {.base.} = "Layer"

    ## String conversion method to give your Layer a string representation when the model is printed.

method make*(layer: Layer, root: Scope): (proc(rt: Scope, input: Out): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for Layer " & $layer & ".")

    ## The make method is intended for all the setup of your layer like creating variables or 
    ## doing operations that require a scope. This method should be overloaded for all non JoinLayers.

method makeJoin*(layer: Layer, root: Scope): (proc(rt: Scope, input: OutList): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `makeJoin` for your Layer or use a Joinfunction when branching")

    ## The makeJoin method is intended for all the setup of your JoinLayer that requires a scope. 
    ## This method should be overloaded for all JoinLayers.

method isBranch(layer: Layer): bool {.base.} = false

    ## The isBranch method indicates wether a layer is a branch layer.

method isJoin*(layer: Layer): bool {.base.} = false

    ## The isJoin method is now required to be overloaded for every custom JoinLayer. This will change in the
    ## future so that this method becomes obsolete and there will instead exsist a JoinLayer to inherit from.

method getBranchSwitch(layer: Layer): bool {.base.} = 
    raise newException(ValueError, "Trying to call `getBranchSwitch` for none branchlayer")

    ## The getBranchSwitch method indicates wether a branch layer opens or closes a branch.

proc makeBranch(branches: seq[seq[proc(rt: Scope, input: Out): Out]], 
                          joinFunc: proc(rt: Scope, input: OutList): Out): proc(rt: Scope, input: Out): Out{.closure.} =

                    return proc(rt: Scope, input: Out): Out{.closure.} =
                            var branchOut: OutList

                            for branch in branches:
                                var outp = branch[0](rt, input)

                                for f in branch[1..^1]:
                                    outp = rt.f(outp)

                                branchOut.add(outp)

                            return joinFunc(rt, branchOut)

    ## a mini compile method for branches

proc vvarSeq(vars: seq[TVariable]): OutList =
    var outlist: OutList

    for v in vars:
        outlist.add v.vvar

    return outlist

proc assignSeq(vars: seq[TVariable]): OutList =
    var outlist: OutList

    for v in vars:
        outlist.add v.assign

    return outlist

type Model = ref object
    x: Out
    y: Out
    eval: Out
    loss: Out
    opted: OutList
    sess: Session

proc make_eval(rt: Scope, funcs: seq[proc(rt: Scope, input: Out): Out], X: Out): Out =
    let rtNamed = rt.newSubScope("eval")

    var outp = funcs[0](rtNamed, X)

    for f in funcs[1..^1]:
        outp = rtNamed.f(outp)

    return outp

proc newModel[N](rt: Scope, 
              funcs: seq[proc(rt: Scope, input: Out): Out],
              loss: Loss, 
              optim: Optim[N],
              vars: seq[TVariable]): Model =
    var model = new Model

    let rtNamed = rt.newSubScope("fit")

    with rtNamed:
        model.x = Placeholder(float32.tf)
        model.y = Placeholder(float32.tf)

        model.eval = make_eval(funcs, model.x)

        model.sess = newSession()

    if vars.len == 0:
        echo "Warning: Your model has no trainable variables therefore fit will raise an Error!"
        return model

    with rtNamed:
        model.loss = loss.make()(model.eval, model.y)

    with rtNamed.newSubScope("Gradients"):
        var grads: OutList
        addSymbolicGradients(model.loss, vars.vvarSeq, grads)

    with rtNamed:
        model.opted = optim.make(vars)(vars, grads)

    model.sess.runSessionVoid(vars.assignSeq)

        for init in optim.init:
            model.sess.runSessionVoid(init)

    return model

proc fit(model: Model, X, Y: Tensor, epochs: int, batch = 32) =
    var feed: FeedDict

    feed[model.x] = X
    feed[model.y] = Y

    for epoch in 0..epochs-1:
        model.sess.runSessionVoid(feed, model.opted)

        if epoch %% 10 == 0:
            var outputs: TensorVec
            model.sess.runSession(feed, model.loss, outputs)
            echo "loss:", outputs[0].flat(0.float32).mean()
    
proc eval(model: Model, X: Tensor): TensorVec =
    var feed: FeedDict

    feed[model.x] = X

    var outputs: TensorVec
    model.sess.runSession(feed, model.eval, outputs)

    return outputs

proc compile*[N](layers: seq[Layer], root: Scope, loss: Loss, optim: Optim[N]): Model = 
    var funcs: seq[proc(rt: Scope, input: Out): Out]
    var branchFuncs: seq[seq[proc(rt: Scope, input: Out): Out]]
    var start: seq[int] # stack to track index in branchFuncs
    var vars: seq[TVariable]

    for layer in layers:

        if isBranch(layer):
            let switch = getBranchSwitch(layer)
            
            if switch:
                branchFuncs.add(@[])

                start.add(branchFuncs.len)
            else:
                start.delete(start.len-1, start.len-1)

        else:
            var ffunc: proc(rt: Scope, input: Out): Out

            if isJoin(layer):
                var a = 0
                if start.len != 0: a = start[^1]

                var b = branchFuncs.len-1

                ffunc = branchFuncs[a..b].makeBranch(layer.makeJoin(root))
                branchFuncs.delete(a, b)

            else:
                ffunc = layer.make(root)

            if start.len > 0:
                branchFuncs[^1].add(ffunc)
            else:
                funcs.add(ffunc)

        for i in 0..layer.train.len-1:
            vars.add(layer.train[i])

    return newModel(root, funcs, loss, optim, vars)

    ## The compile procedure is the function that turns your model into an actual sequence of operations and returns
    ## a fit and eval method to train your model and afterward evaluate its performence. Beware this interface will
    ## recieve drastic changes.
    ##
    ## Example:
    ##
    ## .. code:: nim
    ##
    ##    var proto: seq[Layer] = @[]
    ##
    ##    proto.newDense(10, 10)
    ##    proto.newActivation(Softmax)
    ##    
    ##    let rt = newRootScope()
    ##    let model = proto.compile(rt, newMSE(), newAdam())
    ##
    ##    model.fit(X, Y, epochs)
    ##

export Layer,
       `$`,
       compile,
       Model,
       fit,
       eval