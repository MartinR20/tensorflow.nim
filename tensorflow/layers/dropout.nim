## The Dropout Layer basically turns on and off neurons at random with the given rate. Which means
## that at a dropout rate of 0.4 40% of the neurons are "shutoff".
##
## Example:
##
## .. code:: nim
##
##    var proto: seq[Layer] = @[]
##
##    # a Dropoutlayer with a dropoutrate of 0.4.
##    proto.newDropout(0.4)

import options
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Dropout = ref object of Layer
    rate*: float
    shape*: Out

method `$`(layer: Dropout): string = "Dropout(rate:" & $layer.rate & ")"

method make(layer: Dropout, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
        with root:
            let rrate = layer.rate.float32

        return proc(rt: Scope, input: Out): Out = 
                    if layer.shape == Out(): 
                        layer.shape = root.Shape(input)

                    with rt:
                        let random = RandomUniform(layer.shape, TF_FLOAT)
                        let mask = random >= rrate
                        let scale = 1.float32 / (1.float32 - rrate)

                        return input * scale * Cast(mask, float32)

proc newDropout*(model: var seq[Layer], rate: float) =
    var dropout = new Dropout

    dropout.rate = rate    

    model.add(dropout)

export Dropout,
       `$`,
       newDropout,
       make
