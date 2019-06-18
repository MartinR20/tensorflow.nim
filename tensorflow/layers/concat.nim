import options
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Concat* = ref object of Layer
    axis: int

method `$`*(layer: Concat): string = "Concat"

method makeJoin(layer: Concat, root: Scope): proc(rt: Scope, input: OutList): Out = 
    let axis = root.Const(layer.axis)
    
    return proc(rt: Scope, input: OutList): Out =
                return rt.Concat(input, axis)

proc newConcat(model: var seq[Layer], axis: int) =
    var concat = new Concat
    
    concat.axis = axis

    model.add(concat)

export Concat,
       `$`,
       newConcat,
       makeJoin
