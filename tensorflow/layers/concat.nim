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

import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Concat[T] = ref object of Layer[T]
    axis: int

method `$`[T](layer: Concat[T]): string = "Concat"

method makeJoin[T](layer: Concat[T], root: Scope, shape: var seq[seq[int]]): proc(rt: Scope, input: olist[oall]): oall = 
    var tmp = shape[0]

    for s in shape[1..^1]:
        assert tmp.len == s.len, "Shapes passed to Concat Layer aren't of same dimensions!"
        
        tmp[layer.axis] += s[layer.axis]

    shape = @[tmp]

    with root:
        let axis = layer.axis.int32
    
    return proc(rt: Scope, input: OutList): Out =
                return rt.Concat(input, axis)

method isJoin[T](layer: Concat[T]): bool = true

proc newConcat*[T](model: var seq[Layer], axis: int) =
    var concat = new Concat[T]
    
    concat.axis = axis

    model.add(concat)

export Concat,
       `$`,
       newConcat,
       makeJoin
