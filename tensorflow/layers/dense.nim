import options
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Dense* = ref object of Layer
    inFeatures*: int
    outFeatures*: int
    bias*: bool
    weightVals*: Out
    biasVals*: Out

method `$`*(layer: Dense): string = "Dense"

method make(layer: Dense, root: Scope): proc(rt: Scope, input: Out): Out = 
    layer.weightVals = root.RandomNormal(root.Const([layer.inFeatures, layer.outFeatures]), TF_FLOAT, some(0), some(0))

    if not layer.bias:
        return proc(rt: Scope, input: Out): Out = 
                    return rt.MatMul(input, layer.weightVals)

    else:
        layer.biasVals = root.RandomNormal(root.Const([1, layer.outFeatures]), TF_FLOAT, some(0), some(0))
        
        return proc(rt: Scope, input: Out): Out = 
                    rt.Add(rt.MatMul(input, layer.weightVals), layer.biasVals)

proc newDense(model: var seq[Layer], inFeatures: int, outFeatures: int, bias = none(bool)) =
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
