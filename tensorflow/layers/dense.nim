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

    let w = root.RandomNormal(root.Const([layer.inFeatures, layer.outFeatures]), TF_FLOAT, some(0), some(0))

    layer.train.add(root.newVariable(w, newTensorShape([layer.inFeatures, layer.outFeatures]), TF_FLOAT))

    if not layer.bias:
        return proc(rt: Scope, input: Out): Out = 
                    return rt.MatMul(input, layer.train[0].vvar)

    else:
        let b = root.RandomNormal(root.Const([1, layer.outFeatures]), TF_FLOAT, some(0), some(0))
        layer.train.add(root.newVariable(b, newTensorShape([1, layer.outFeatures]), TF_FLOAT))
        
        return proc(rt: Scope, input: Out): Out = 
                    rt.Add(rt.MatMul(input, layer.train[0].vvar), layer.train[1].vvar)

proc newDense*(model: var seq[Layer], inFeatures: int, outFeatures: int, bias = none(bool)) =
    var dense = new Dense
    
    dense.inFeatures = inFeatures
    dense.outFeatures = outFeatures

    if bias.isSome:
        dense.bias = bias.get()
    else:
        dense.bias = true

    model.add(dense)

export Dense,
       `$`,
       newDense,
       make
