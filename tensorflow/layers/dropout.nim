import options
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Dropout* = ref object of Layer
    rate*: float
    shape*: Out

method `$`*(layer: Dropout): string = "Dropout(rate:" & $layer.rate & ")"

method make(layer: Dropout, root: Scope): proc(rt: Scope, input: Out): Out = 
        let rrate = root.Const(layer.rate)

        return proc(rt: Scope, input: Out): Out = 
                    if layer.shape == Out(): 
                        layer.shape = root.Shape(input)

                    let random = rt.RandomUniform(layer.shape, TF_FLOAT, some(0), some(0))
                    let mask = rt.GreaterEqual(random, rrate)
                    let scale = rt.Div(rt.Const(1.0), rt.Subtract(rt.Const(1.0), rrate))

                    return rt.Multiply(rt.Multiply(input, scale), rt.Cast(mask, TF_FLOAT))

proc newDropout(model: var seq[Layer], rate: float) =
    var dropout = new Dropout

    dropout.rate = rate    

    model.add(dropout)

export Dropout,
       `$`,
       newDropout,
       make
