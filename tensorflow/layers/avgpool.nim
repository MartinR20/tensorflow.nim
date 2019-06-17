import options
import ../utils/utils
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type AvgPool* = ref object of Layer
    kernel: array[0..3, cint]
    strides: array[0..3, cint]
    padding: string
    dataFormat: string

method `$`*(layer: AvgPool): string = "AvgPool(kernel:" & $layer.kernel[1..^2] & 
                                            ", strides:" & $layer.strides[1..^2] & ")"

method make(layer: AvgPool, root: Scope): proc(rt: Scope, input: Out): Out = 
    let kernel = newArraySlice(layer.kernel)
    let strides = newArraySlice(layer.strides)
    # TODO: fix wrappes to not use cppString in the wrapper
    let padding = newCPPString(layer.padding)

    return proc(rt: Scope, input: Out): Out =
                # TODO: make cppstring not go out of scope in the wrapper
                var attrs = AvgPoolAttrs()
                attrs = attrs.DataFormat(newCPPString(layer.dataFormat))

                return rt.AvgPool(input, 
                                 kernel, 
                                 strides, 
                                 padding, 
                                 attrs)

proc newAvgPool(model: var seq[Layer], 
                kernel: array[0..1, int], 
                strides: array[0..1, int], 
                padding= none(string), 
                dataFormat = none(string)) =

    var AvgPool = new AvgPool
    
    let c1: cint = 1
    AvgPool.kernel = [c1, cast[cint](kernel[0]), cast[cint](kernel[1]), c1]
    AvgPool.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]

    if padding.isSome:
        AvgPool.padding = padding.get()
    else:
        AvgPool.padding = "SAME"

    if dataFormat.isSome:
        AvgPool.dataFormat = dataFormat.get()
    else:
        AvgPool.dataFormat = "NHWC"


    model.add(AvgPool)

export AvgPool,
       `$`,
       newAvgPool,
       make
