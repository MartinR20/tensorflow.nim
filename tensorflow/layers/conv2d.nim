## The Conv2d Layer applies a 2D convolution operation with the given inChannels, outChannels, 
## kernelsize, stride and padding.
##
## Example:
##
## .. code:: nim
##
##    var proto: seq[Layer] = @[]
##
##    # convolution with 3 inChannels, 3 outChannels, a 3x3 kernelsize and a 2x2 stride
##    proto.newConv2d(3, 3, [3, 3], [2, 2])

import options
import ../utils/utils
import ../ops/ops
import ../ops/generated/structs
import ../core/core
import ./layer
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Conv2d = ref object of Layer
    inChannels: int
    outChannels: int
    kernel: array[0..1, int]
    strides: array[0..3, cint]
    padding: string
    dataFormat: string
    dilations: array[0..3, cint]
    useCudnnOnGpu: bool
    
method `$`(layer: Conv2d): string = "Conv2d(in:" & $layer.inChannels & 
                                             ", out:" & $layer.outChannels & 
                                             ", kernel:" & $layer.kernel & 
                                             ", strides:" & $layer.strides[1..^2] & ")"

method make(layer: Conv2d, root: Scope): proc(rt: Scope, input: Out): Out = 
    let shortLayerName = "Conv2D_" & $layer.kernel[0] & "x" & $layer.kernel[1]
    let varShape = newTensorShape([layer.kernel[0], layer.kernel[1], layer.inChannels, layer.outChannels])
    
    with root.newSubScope(shortLayerName & "_setup"):
        let shape = Const([layer.kernel[0], layer.kernel[1], layer.inChannels, layer.outChannels], int32)
        let filter = RandomNormal(shape, float32.tf)
        let variable = newVariable(filter, varShape, float32.tf, "Conv2D_filter")

    layer.train.add(variable) 

    let strides = newArraySlice(layer.strides)
    # TODO: fix wrappes to not use cppString in the wrapper
    let padding = newCPPString(layer.padding)

    return proc(rt: Scope, input: Out): Out =
                let rtNamed = rt.newSubScope(shortLayerName)

                # TODO: make cppstring not go out of scope in the wrapper
                var attrs = Conv2DAttrs()
                attrs = attrs.DataFormat(newCPPString(layer.dataFormat))
                attrs = attrs.Dilations(newArraySlice(layer.dilations))
                attrs = attrs.UseCudnnOnGpu(layer.useCudnnOnGpu)

                return rtNamed.Conv2D(input, 
                                      layer.train[0].vvar, 
                                      strides, 
                                      padding, 
                                      attrs)

const c1: cint = 1

proc newConv2d*(model: var seq[Layer], 
                inChannels: int,
                outChannels: int,
                kernel: array[0..1, int], 
                strides: array[0..1, int], 
                padding="SAME", 
                dataFormat="NHWC", 
                dilations=[1,1], 
                useCudnnOnGpu=true) =

    var conv2d = new Conv2d

    conv2d.inChannels = inChannels
    conv2d.outChannels = outChannels
    conv2d.kernel = kernel

    conv2d.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]

    conv2d.padding = padding
    conv2d.dataFormat = dataFormat
    conv2d.dilations = [c1, cast[cint](dilations[0]), cast[cint](dilations[1]), c1]
    conv2d.useCudnnOnGpu = useCudnnOnGpu
    
    model.add(conv2d)

export Conv2d,
       `$`,
       newConv2d,
       make
