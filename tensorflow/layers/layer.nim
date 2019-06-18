import sequtils
import ../ops/ops
import ../core/core
import ./loss
import ./optim
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Layer* = ref object of RootObj
    train*: seq[Variable]

method `$`*(layer: Layer): string {.base.} = "Layer"

method make(layer: Layer, root: Scope): (proc(rt: Scope, input: Out): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your Layer")

proc compile*(layers: seq[Layer], root: Scope, loss: Loss, optim: Optim): (proc(rt: Scope, X, Y: Out): OutList, proc(rt: Scope, X: Out): Out) = 
    var vars: seq[Variable]

    for layer in layers[1..^1]:
        outp = layer.make(root)(root, outp)
        vars = vars.concat(layer.train)

    proc eval(rt: Scope, X: Out): Out{.closure.} =
        var outp = funcs[0](rt, X)

        for f in funcs[1..^1]:
            outp = rt.f(outp)

        return outp

    if vars.len == 0:
        echo "Warning: No Layer with trainable Variables added to model fit method only a dummy!"

        proc fit(rt: Scope, X, Y: Out): OutList{.closure.} = 
            raise newException(ValueError, "Attempted to use unusable dummy method!")

        return (fit, eval)
    
    else:
        let varsAsOutList = newOutList(vars.map(proc(vvar: Variable): Out = vvar.vvar))
        let opt = optim.make(root)
        let lloss = loss.make(root)

        proc fit(rt: Scope, X, Y: Out): OutList{.closure.} =
            var outp = eval(rt, X)

            outp = lloss(rt, outp, Y)

        var grads: OutList
            rt.addSymbolicGradients(outp, varsAsOutList, grads)

            let update = opt(rt, vars, grads)
            var output: seq[Out]

            for i in 0..update.size()-1:
                output.add(rt.Assign(vars[i].vvar, update[i]))

            return newOutList(output)

        return (fit,eval)

export Layer,
       `$`,
       compile