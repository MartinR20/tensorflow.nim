## The Conv2d Layer applies a 2D convolution operation with the given outChannels, 
## kernelsize, stride and padding.
##
## Example:
##
## .. code:: nim
##
##    var proto: seq[Layer] = @[]
##
##    # convolution with 3 outChannels, a 3x3 kernelsize and a 2x2 stride
##    proto.newConv2d(3, [3, 3], [2, 2])

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

# Has to be globally allocated because it seqfaults otherwise
var padding: cppstring
var dataformat: cppstring

method make(layer: Conv2d, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out =
    layer.dimCheck(shape, 4)
    layer.inChannels = shape[3]
    
    case layer.padding:
    of "VALID":
        var effective_filter_size: array[0..1, int]
        effective_filter_size[0] = (layer.kernel[0] - 1) * layer.dilations[1] + 1;
        effective_filter_size[1] = (layer.kernel[1] - 1) * layer.dilations[2] + 1;

        shape = @[shape[0], 
                  (shape[1] - effective_filter_size[0] + layer.strides[1]) div layer.strides[1],
                  (shape[2] - effective_filter_size[1] + layer.strides[2]) div layer.strides[2],
                  layer.outChannels]
    of "SAME":
        shape = @[shape[0], 
                  (shape[1] + layer.strides[1] - 1) div layer.strides[1],
                  (shape[2] + layer.strides[2] - 1) div layer.strides[2],
                  layer.outChannels]

    let shortLayerName = "Conv2D_" & $layer.kernel[0] & "x" & $layer.kernel[1]
    let varShape = newTensorShape([layer.kernel[0], layer.kernel[1], layer.inChannels, layer.outChannels])
    
    with root.newSubScope(shortLayerName & "_setup"):
        let shape = [layer.kernel[0], layer.kernel[1], layer.inChannels, layer.outChannels].int32
        let filter = RandomNormal(shape, float32.tf)
        let variable = newVariable(filter, varShape, float32.tf, "Conv2D_filter")

    layer.train.add(variable) 

    let strides = newArraySlice(layer.strides)
    # TODO: fix wrappes to not use cppString in the wrapper
    padding = newCPPString(layer.padding)
    dataformat = newCPPString(layer.dataFormat)

    return proc(rt: Scope, input: Out): Out =
                let rtNamed = rt.newSubScope(shortLayerName)

                # TODO: make cppstring not go out of scope in the wrapper
                var attrs = Conv2DAttrs()
                attrs = attrs.DataFormat(dataformat)
                attrs = attrs.Dilations(newArraySlice(layer.dilations))
                attrs = attrs.UseCudnnOnGpu(layer.useCudnnOnGpu)

                return rtNamed.Conv2D(input, 
                                      layer.train[0].vvar, 
                                      strides, 
                                      padding, 
                                      attrs)

const c1: cint = 1

proc newConv2d*(model: var seq[Layer], 
                outChannels: int,
                kernel: array[0..1, int], 
                strides: array[0..1, int], 
                padding="SAME", 
                dataFormat="NHWC", 
                dilations=[1,1], 
                useCudnnOnGpu=true) =

    var conv2d = new Conv2d

    conv2d.outChannels = outChannels
    conv2d.kernel = kernel

    conv2d.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]

    conv2d.padding = padding
    conv2d.dataFormat = dataFormat
    conv2d.dilations = [c1, cast[cint](dilations[0]), cast[cint](dilations[1]), c1]
    conv2d.useCudnnOnGpu = useCudnnOnGpu

    model.add(conv2d)

type TransposeConv2D = ref object of Conv2d

method `$`(layer: TransposeConv2D): string = "TransposeConv2D(in:" & $layer.inChannels & 
                                                           ", out:" & $layer.outChannels & 
                                                           ", kernel:" & $layer.kernel & 
                                                           ", strides:" & $layer.strides[1..^2] & ")"

# Has to be globally allocated because it seqfaults otherwise
var paddingT: cppstring
var dataformatT: cppstring

method make(layer: TransposeConv2D, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    layer.dimCheck(shape, 4)
    layer.inChannels = shape[3]

    case layer.padding:
    of "VALID":
        var effective_filter_size: array[0..1, int]
        effective_filter_size[0] = (layer.kernel[0] - 1) * layer.dilations[1] + 1;
        effective_filter_size[1] = (layer.kernel[1] - 1) * layer.dilations[2] + 1;
        
        shape = @[shape[0], 
                  shape[1] * layer.strides[1] + effective_filter_size[0] - layer.strides[1],
                  shape[2] * layer.strides[2] + effective_filter_size[1] - layer.strides[2],
                  layer.outChannels]
    of "SAME":
        shape = @[shape[0], 
                  shape[1] * layer.strides[1] - layer.strides[1] + 1,
                  shape[2] * layer.strides[2] - layer.strides[2] + 1,
                  layer.outChannels]

    var out_shape: array[0..3, int]
    out_shape[0] = shape[0]
    out_shape[1] = shape[1]
    out_shape[2] = shape[2]
    out_shape[3] = shape[3]

    #TODO: make right output size
    let shortLayerName = "TransposeConv2D_" & $layer.kernel[0] & "x" & $layer.kernel[1]
    let varShape = newTensorShape([layer.kernel[0], layer.kernel[1], layer.outChannels, layer.inChannels])
    
    with root.newSubScope(shortLayerName & "_setup"):
        let shape = [layer.kernel[0], layer.kernel[1], layer.outChannels, layer.inChannels].int32
        let filter = RandomNormal(shape, float32.tf)
        let variable = newVariable(filter, varShape, float32.tf, "TransposeConv2D_filter")
        let sshape = out_shape.int32

    layer.train.add(variable) 

    let strides = newArraySlice(layer.strides)
    # TODO: fix wrappes to not use cppString in the wrapper
    paddingT = newCPPString(layer.padding)
    dataformatT = newCPPString(layer.dataFormat)

    return proc(rt: Scope, input: Out): Out =
                let rtNamed = rt.newSubScope(shortLayerName)

                # TODO: make cppstring not go out of scope in the wrapper
                var attrs = Conv2DBackpropInputAttrs()
                attrs = attrs.DataFormat(dataformatT)
                attrs = attrs.Dilations(newArraySlice(layer.dilations))
                attrs = attrs.UseCudnnOnGpu(layer.useCudnnOnGpu)

                return rtNamed.Conv2DBackpropInput(sshape,
                                                    layer.train[0].vvar, 
                                                    input, 
                                                    strides, 
                                                    paddingT, 
                                                    attrs)

proc newTransposeConv2D*(model: var seq[Layer], 
                         outChannels: int,
                         kernel: array[0..1, int], 
                         strides: array[0..1, int], 
                         padding="SAME", 
                         dataFormat="NHWC", 
                         dilations=[1,1], 
                         useCudnnOnGpu=true) =

    var tconv2d = new TransposeConv2D

    tconv2d.outChannels = outChannels
    tconv2d.kernel = kernel

    tconv2d.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]

    tconv2d.padding = padding
    tconv2d.dataFormat = dataFormat
    tconv2d.dilations = [c1, cast[cint](dilations[0]), cast[cint](dilations[1]), c1]
    tconv2d.useCudnnOnGpu = useCudnnOnGpu
    
    model.add(tconv2d)

type Interpolation = enum
    Area,
    Bicubic,
    Bilinear,
    NearestNeighbor

proc getInterpolName(interpol: Interpolation): string = 
    case interpol:
    of Area:
        return "Area"
    of Bicubic:
        return "Bicubic"
    of Bilinear:
        return "Biliniear"
    of NearestNeighbor:
        return "NearestNeighbor"

type UpSampling2D = ref object of Layer
    size: array[0..1, float]
    interpol: Interpolation

method `$`(layer: UpSampling2D): string = "UpSampling2D(size:" & $layer.size & 
                                                     ", interpolation:" & getInterpolName(layer.interpol) & ")"

method make(layer: UpSampling2D, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    layer.dimCheck(shape, 4)
    layer.size[0] *= shape[1].float
    layer.size[1] *= shape[2].float

    shape = @[shape[0], 
              layer.size[0].int,
              layer.size[1].int,
              shape[3]]
    let shortLayerName = "UpSampling2D_" & $layer.size[0] & "x" & $layer.size[1]
    
    with root.newSubScope(shortLayerName & "_setup"):
        let shape = layer.size.int32

    case layer.interpol:
    of Area:
        return proc(rt: Scope, input: Out): Out =
            with rt.newSubScope(shortLayerName):
                return ResizeArea(input, shape)
    of Bicubic:
        return proc(rt: Scope, input: Out): Out =
            with rt.newSubScope(shortLayerName):
                return ResizeBicubic(input, shape)
    of Bilinear:
        return proc(rt: Scope, input: Out): Out =
            with rt.newSubScope(shortLayerName):
                return ResizeBilinear(input, shape)
    of NearestNeighbor:
        return proc(rt: Scope, input: Out): Out =
            with rt.newSubScope(shortLayerName):
                return ResizeNearestNeighbor(input, shape)
    

proc newUpSampling2D*(model: var seq[Layer], 
                      size: array[0..1, float],
                      interpol=NearestNeighbor) =

    var upsampling2D = new UpSampling2D

    upsampling2D.size = size
    upsampling2D.interpol = interpol
    
    model.add(upsampling2D)

    ## The UpSampling2D Layer applies a resize operation with the given size multiple (HxW) and interpolation method
    ## being one of Area, Bilinear, Bicubic and NearestNeighbor.
    ##
    ## Example:
    ##
    ## .. code:: nim
    ##
    ##    var proto: seq[Layer] = @[]
    ##
    ##    # Resize Image to twice the size with Area Interpolation
    ##    proto.newResize([2, 2], Area)

type Resize2D = ref object of Layer
    size: array[0..1, int]
    interpol: Interpolation

method `$`(layer: Resize2D): string = "Resize2D(size:" & $layer.size & 
                                                     ", interpolation:" & getInterpolName(layer.interpol) & ")"

method make(layer: Resize2D, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    layer.dimCheck(shape, 4)

    shape = @[shape[0], 
              layer.size[0],
              layer.size[1],
              shape[3]]
    let shortLayerName = "Resize2D_" & $layer.size[0] & "x" & $layer.size[1]
    
    with root.newSubScope(shortLayerName & "_setup"):
        let shape = layer.size.int32

    case layer.interpol:
    of Area:
        return proc(rt: Scope, input: Out): Out =
            with rt.newSubScope(shortLayerName):
                return ResizeArea(input, shape)
    of Bicubic:
        return proc(rt: Scope, input: Out): Out =
            with rt.newSubScope(shortLayerName):
                return ResizeBicubic(input, shape)
    of Bilinear:
        return proc(rt: Scope, input: Out): Out =
            with rt.newSubScope(shortLayerName):
                return ResizeBilinear(input, shape)
    of NearestNeighbor:
        return proc(rt: Scope, input: Out): Out =
            with rt.newSubScope(shortLayerName):
                return ResizeNearestNeighbor(input, shape)
    

proc newResize2D*(model: var seq[Layer], 
                      size: array[0..1, int],
                      interpol=NearestNeighbor) =

    var resize2d = new Resize2D

    resize2d.size = size
    resize2d.interpol = interpol
    
    model.add(resize2d)

    ## The Resize2D Layer applies a resize operation with the size (HxW) and interpolation method
    ## being one of Area, Bilinear, Bicubic and NearestNeighbor.
    ##
    ## Example:
    ##
    ## .. code:: nim
    ##
    ##    var proto: seq[Layer] = @[]
    ##
    ##    # Resize Image to 640x480 with Area Interpolation
    ##    proto.newResize([640, 480], Area)

export Conv2d,
       TransposeConv2D,
       Interpolation,
       UpSampling2D,
       Resize2D,
       `$`,
       newConv2d,
       newTransposeConv2D,
       newUpSampling2D,
       newResize2D,
       make
