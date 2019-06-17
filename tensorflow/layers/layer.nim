import ../ops/ops
import ../core/core
{.hint[XDeclaredButNotUsed]:off.}

type Layer* = ref object of RootObj
    train*: seq[Variable]

method `$`*(layer: Layer): string {.base.} = "Layer"

method make(layer: Layer, root: Scope): (proc(rt: Scope, input: Out): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your Layer")

proc build*(layers: seq[Layer], root: Scope, input: Out): Out = 
    var outp = layers[0].make(root)(root, input)

    for layer in layers[1..^1]:
        outp = layer.make(root)(root, outp)

    outp

export Layer,
       `$`,
       build