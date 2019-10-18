## The Reshape layer reshapes the output of the last layer to the given dimensions.
##
## Example:
##
## .. code:: nim
##    
##    var proto: seq[Layer] = @[]
##
##    #..some layer with output dims [100x3x3] reshaped to [100x9]
##    proto.newReshape([100, 9])

import ../ops/ops
import ../core/core
import ./layer
import sequtils
{.hint[XDeclaredButNotUsed]:off.}

type Reshape[N,int] = ref object of Layer
    shape*: array[N,int]

method `$`[N,int](layer: Reshape[N,int]): string = "Reshape(shape:" & $layer.shape & ")"

method make[N,int](layer: Reshape[N,int], root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    layer.shape[0] = shape[0]
     
    var inels = 1

    for dim in shape:
        inels *= dim

    var outels = 1

    for dim in layer.shape:
        outels *= dim
    
    assert inels == outels, "Input Shape has " & $inels & " elements but requested shape has " & $outels & " elements!"
    
    shape = layer.shape.toSeq

    with root.newSubScope("Reshape_setup"):
        let shape = layer.shape.int32

    return proc(rt: Scope, input: Out): Out = 
                let rtNamed = rt.newSubScope("Reshape")
                return rtNamed.Reshape(input, shape)

proc newReshape*[N,int](model: var seq[Layer], shape: array[N,int]) =
    var reshape = new Reshape[range[0..N.high+1], int]

    reshape.shape[1..^1] = shape

    model.add(reshape)

export Reshape,
       `$`,
       newReshape,
       make
