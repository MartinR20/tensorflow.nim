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

type Activation[T] = ref object of Layer
    ffunc: proc(rt: Scope, input: T): T

method `$`[T: oall](layer: Activation[T]): string = "Activation"

method make[T: oall](layer: Activation[T], root: Scope, shape: var seq[int]): proc(rt: Scope, input: T): T = 
    return layer.ffunc

proc newActivation*[T: oall](model: var seq[Layer], activation: proc(rt: Scope, input: T): T) =
    var activ = new Activation[T]
    
    activ.ffunc = activation

    model.add(activ)

export Activation,
       `$`,
       newActivation,
       make
