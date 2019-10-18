## The Dense Layer is a fully connected layer with given inFeatures and outFeatures.
##
## Example:
##
## .. code:: nim
##
##    var proto: seq[Layer] = @[]
##
##    # a new Dense Layer with 10 input features and 20 output features.
##    proto.newDense(10, 20)

import options
import ../ops/ops
import ../core/core
import ./layer
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Dense[T] = ref object of Layer[T]
    inFeatures*: int
    outFeatures*: int
    bias*: bool

method `$`[T](layer: Dense[T]): string = "Dense(in:" & $layer.inFeatures & 
                                        ", out:" & $layer.outFeatures & ")"

method make[T](layer: Dense[T], root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    layer.dimCheck(shape, 2)

    layer.inFeatures = shape[1]
    shape[1] = layer.outFeatures

    let shortLayerName = "Dense_" & $layer.outFeatures
    let rootNamed = root.newSubScope(shortLayerName & "_setup")

    let wVarShape = shape([layer.inFeatures, layer.outFeatures])

    with rootNamed:
        let w = statelessRandomNormal([layer.inFeatures, layer.outFeatures].oint32, [0, 0].oint32)
        let wVar = newVariable(w, wVarShape, ofloat, "weights")

    layer.train.add(wVar)

    if not layer.bias:
        return proc(rt: Scope, input: oall): oall =
                    with rt.newSubScope(shortLayerName):
                        return input @ layer.train[0].vvar

    else:
        let bVarShape = shape([1, layer.outFeatures])

        with rootNamed:
            let b = statelessRandomNormal([1, layer.outFeatures].oint32, [0, 0].oint32)
            let bVar = newVariable(b, bVarShape, ofloat, "bias")

        layer.train.add(bVar)
        
        return proc(rt: Scope, input: oall): oall =
                    with rt.newSubScope(shortLayerName):
                        return input @ layer.train[0].vvar + layer.train[1].vvar

proc newDense*[T](model: var seq[Layer[T]], outFeatures: int, bias = true) =
    var dense = new Dense[T]
    
    dense.outFeatures = outFeatures

    dense.bias = bias

    model.add(dense)

export Dense,
       `$`,
       newDense,
       make
