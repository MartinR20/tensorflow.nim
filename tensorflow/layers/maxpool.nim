import options
import ../utils/utils
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type MaxPool* = ref object of Layer
    kernel: array[0..3, cint]
    strides: array[0..3, cint]
    padding: string
    dataFormat: string

method `$`*(layer: MaxPool): string = "MaxPool(kernel:" & $layer.kernel[1..^2] & 
                                            ", strides:" & $layer.strides[1..^2] & ")"

method make(layer: MaxPool, root: Scope): proc(rt: Scope, input: Out): Out = 
    let kernel = newArraySlice(layer.kernel)
    let strides = newArraySlice(layer.strides)
    # TODO: fix wrappes to not use cppString in the wrapper
    let padding = newCPPString(layer.padding)

    return proc(rt: Scope, input: Out): Out =
                # TODO: make cppstring not go out of scope in the wrapper
                var attrs = MaxPoolAttrs()
                attrs = attrs.DataFormat(newCPPString(layer.dataFormat))

                return rt.MaxPool(input, 
                                 kernel, 
                                 strides, 
                                 padding, 
                                 attrs)

proc newMaxPool(model: var seq[Layer], 
                kernel: array[0..1, int], 
                strides: array[0..1, int], 
                padding= none(string), 
                dataFormat = none(string)) =

    var maxpool = new MaxPool
    
    let c1: cint = 1
    maxpool.kernel = [c1, cast[cint](kernel[0]), cast[cint](kernel[1]), c1]
    maxpool.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]

    if padding.isSome:
        maxpool.padding = padding.get()
    else:
        maxpool.padding = "SAME"

    if dataFormat.isSome:
        maxpool.dataFormat = dataFormat.get()
    else:
        maxpool.dataFormat = "NHWC"


    model.add(maxpool)

export MaxPool,
       `$`,
       newMaxPool,
       make
