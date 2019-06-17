import sequtils
import ../ops/ops
import ../core/core
import ./optim
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Layer* = ref object of RootObj
    train*: seq[Variable]

method `$`*(layer: Layer): string {.base.} = "Layer"

method make(layer: Layer, root: Scope): (proc(rt: Scope, input: Out): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your Layer")

proc build*(layers: seq[Layer], root: Scope, input: Out, opt: Optim): OutList = 
    var outp = layers[0].make(root)(root, input)
    var vars: seq[Variable]

    for layer in layers[1..^1]:
        outp = layer.make(root)(root, outp)
        vars = vars.concat(layer.train)

    if vars.len != 0:
        var grads: OutList
        let varsAsOutList = newOutList(vars.map(proc(vvar: Variable): Out = vvar.vvar))
        root.addSymbolicGradients(outp, varsAsOutList, grads)

        let outpList = opt.make(root)(root, vars, grads)

        return outpList
    else:
        return newOutList(outp)

export Layer,
       `$`,
       build