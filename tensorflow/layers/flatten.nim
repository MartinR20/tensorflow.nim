import options
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Flatten = ref object of Layer

method `$`(layer: Flatten): string = "Flatten"

method make(layer: Flatten, root: Scope): proc(rt: Scope, input: Out): Out = 
    return proc(rt: Scope, input: Out): Out = 
        #TODO: make calculation right
        return rt.Reshape(input, rt.Prod(rt.Shape(input), rt.Const(0, int32)))

proc newFlatten*(model: var seq[Layer]) =
    var flatten = new Flatten
    model.add(flatten)

export Flatten,
       `$`,
       newFlatten,
       make
