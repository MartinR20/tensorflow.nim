## The Activation Layer takes any activationfunction from the 
## `nn_ops <../ops/generated/nn_ops.html>`_ and appends it to the current model.
##
## Example:
##
## .. code:: nim
##    
##    var proto: seq[Layer] = @[]
##
##    proto.newActivation(Relu)

import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Activation = ref object of Layer
    ffunc: proc(rt: Scope, input: Out): Out

method `$`(layer: Activation): string = "Activation"

method make(layer: Activation, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    return layer.ffunc

proc newActivation*(model: var seq[Layer], activation: proc(rt: Scope, input: Out): Out) =
    var activ = new Activation
    
    activ.ffunc = activation

    model.add(activ)

export Activation,
       `$`,
       newActivation,
       make
