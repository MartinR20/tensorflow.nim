import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Flatten = ref object of Layer

method `$`(layer: Flatten): string = "Flatten"

method make(layer: Flatten, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    var flatsize = 1

    for s in shape[1..^1]:
        flatsize *= s

    shape = @[shape[0], flatsize]

    var flatten: array[0..1, int] 
    flatten[0] = shape[0]
    flatten[1] = flatsize

    return proc(rt: Scope, input: Out): Out = 
            return rt.Reshape(input, rt.Const(flatten, int32))

proc newFlatten*(model: var seq[Layer]) =
    var flatten = new Flatten
    model.add(flatten)

export Flatten,
       `$`,
       newFlatten,
       make
