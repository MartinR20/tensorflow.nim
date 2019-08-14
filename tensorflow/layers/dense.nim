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

type Dense = ref object of Layer
    inFeatures*: int
    outFeatures*: int
    bias*: bool

method `$`(layer: Dense): string = "Dense(in:" & $layer.inFeatures & 
                                        ", out:" & $layer.outFeatures & ")"

method make(layer: Dense, root: Scope): proc(rt: Scope, input: Out): Out = 
    layer.train = @[]
    let shortLayerName = "Dense_" & $layer.outFeatures
    let rootNamed = root.newSubScope(shortLayerName & "_setup")

    let wVarShape = newTensorShape([layer.inFeatures, layer.outFeatures])

    with rootNamed:
        let w = RandomNormal([layer.inFeatures, layer.outFeatures].int32, TF_FLOAT)
        let wVar = newVariable(w, wVarShape, TF_FLOAT, "weights")

    layer.train.add(wVar)

    if not layer.bias:
        return proc(rt: Scope, input: Out): Out =
                    with rt.newSubScope(shortLayerName):
                        return input @ layer.train[0].vvar

    else:
        let bVarShape = newTensorShape([1, layer.outFeatures])

        with rootNamed:
            let b = RandomNormal([1, layer.outFeatures].int32, TF_FLOAT)
            let bVar = newVariable(b, bVarShape, TF_FLOAT, "bias")

        layer.train.add(bVar)
        
        return proc(rt: Scope, input: Out): Out =
                    with rt.newSubScope(shortLayerName):
                        return input @ layer.train[0].vvar + layer.train[1].vvar

proc newDense*(model: var seq[Layer], inFeatures: int, outFeatures: int, bias = true) =
    var dense = new Dense
    
    dense.inFeatures = inFeatures
    dense.outFeatures = outFeatures

    dense.bias = bias

    model.add(dense)

export Dense,
       `$`,
       newDense,
       make
