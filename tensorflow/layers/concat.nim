## The Concat Layer is a JoinLayer used to concat values from branches across a given axis.
##
## Example:
##
## .. code:: nim
##
##    # Branch   Layer   EndBranch
##    #   +--------+--------+
##    #                     |
##    #                     +--------+ 
##    #                     |     JoinLayer
##    #   +--------+--------+
##    # Branch   Layer   EndBranch
##
##    var proto: seq[Layer] = @[]
##
##    proto.newBranch()
##    # ..branch Layers 1
##    proto.newEndBrach()
##
##    proto.newBranch()
##    # ..branch Layers 2
##    proto.newEndBrach()
##
##    # concat at first axis
##    proto.Concat(1)    

import options
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Concat = ref object of Layer
    axis: int

method `$`(layer: Concat): string = "Concat"

method makeJoin(layer: Concat, root: Scope): proc(rt: Scope, input: OutList): Out = 
    let axis = root.Const(layer.axis, int32)
    
    return proc(rt: Scope, input: OutList): Out =
                return rt.Concat(input, axis)

method isJoin(layer: Concat): bool = true

proc newConcat*(model: var seq[Layer], axis: int) =
    var concat = new Concat
    
    concat.axis = axis

    model.add(concat)

export Concat,
       `$`,
       newConcat,
       makeJoin
