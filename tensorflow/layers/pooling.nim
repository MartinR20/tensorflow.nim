import ../utils/utils
import ../ops/ops
import ../ops/generated/structs
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

template PoolingLayer(name: untyped, newfn: untyped, varname: untyped) =
    type name = ref object of Layer
        kernel: array[0..3, cint]
        strides: array[0..3, cint]
        padding: string
        dataFormat: string

    method `$`(layer: name): string = $name & "(kernel:" & $layer.kernel[1..^2] & 
                                                ", strides:" & $layer.strides[1..^2] & ")"

    method make(layer: name, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
        layer.dimCheck(shape, 4)

        if layer.padding == "SAME":
            var padSpace: array[0..1, int]
            padSpace[0] = shape[1] %% layer.kernel[1]
            padSpace[1] = shape[2] %% layer.kernel[2]

            shape = @[shape[0], 
                    (shape[1] + 2 * padSpace[0] - layer.kernel[1]) div layer.strides[1] + 1,
                    (shape[2] + 2 * padSpace[1] - layer.kernel[2]) div layer.strides[2] + 1,
                    shape[3]]
        else:
            shape = @[shape[0], 
                    (shape[1] - layer.kernel[1]) div layer.strides[1] + 1,
                    (shape[2] - layer.kernel[2]) div layer.strides[2] + 1,
                    shape[3]]

        let kernel = newArraySlice(layer.kernel)
        let strides = newArraySlice(layer.strides)
        # TODO: fix wrappes to not use cppString in the wrapper
        let padding = newCPPString(layer.padding)

        return proc(rt: Scope, input: Out): Out =
                    # TODO: make cppstring not go out of scope in the wrapper
                    var attrs = `name Attrs`()
                    attrs = attrs.DataFormat(newCPPString(layer.dataFormat))

                    return rt.`name`(input, 
                                    kernel, 
                                    strides, 
                                    padding, 
                                    attrs)

    proc newfn*(model: var seq[Layer], 
                kernel: array[0..1, int], 
                strides: array[0..1, int], 
                padding= "SAME", 
                dataFormat = "NHWC") =

        var varname = new name
        
        const c1: cint = 1
        varname.kernel = [c1, cast[cint](kernel[0]), cast[cint](kernel[1]), c1]
        varname.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]

        varname.padding = padding
        varname.dataFormat = dataFormat

        model.add(varname)

        ## The name Layer performs a name operation with the given kernelsize, stride and pooling.
        ##
        ## Example:
        ##
        ## .. code:: nim
        ##    
        ##    var proto: seq[Layer] = @[]
        ##
        ##    # name with kernelsize 3x3 and stride 3x3
        ##    proto.`new name`([3, 3], [3, 3])

    export name,
        `$`,
        newfn,
        make

PoolingLayer(MaxPool, newMaxPool, maxpool)
PoolingLayer(AvgPool, newAvgPool, avgpool)
