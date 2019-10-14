import ../utils/utils
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type PoolLayer[T] = ref object of Layer[T]
    kernel: array[0..3, cint]
    strides: array[0..3, cint]
    padding: string
    dataFormat: string

proc poolingShapeFn[T](layer: PoolLayer[T], shape: var seq[int]) =
    layer.dimCheck(shape, 4)

    case layer.padding:
    of "VALID":
        shape = @[shape[0], 
                (shape[1] - layer.kernel[1]) div layer.strides[1] + 1,
                (shape[2] - layer.kernel[2]) div layer.strides[2] + 1,
                shape[3]]
    of "SAME":
        shape = @[shape[0], 
                (shape[1] - layer.kernel[1]) div layer.strides[1] + 1,
                (shape[2] - layer.kernel[2]) div layer.strides[2] + 1,
                shape[3]]

proc newPoolingLayer*[T](model: var seq[Layer], 
            kernel: array[0..1, int], 
            strides: array[0..1, int], 
            padding= "SAME", 
            dataFormat = "NHWC") =

    var pool = new PoolLayer[T]
    
    const c1: cint = 1
    pool.kernel = [c1, cast[cint](kernel[0]), cast[cint](kernel[1]), c1]
    pool.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]

    pool.padding = padding
    pool.dataFormat = dataFormat

    model.add(pool)

type MaxPoolLayer[T] = ref object of PoolLayer[T]    

method `$`[T](layer: MaxPoolLayer[T]): string = "MaxPool(kernel:" & $layer.kernel[1..^2] & 
                                                          ", strides:" & $layer.strides[1..^2] & ")"

method make*[T](layer: MaxPoolLayer[T], root: Scope, shape: var seq[int]): proc(rt: Scope, input: oall): oall = 
    poolingShapeFn(layer, shape)

    return proc(rt: Scope, input: oall): oall =
                return rt.maxPool(input, 
                                  layer.kernel, 
                                  layer.strides, 
                                  layer.padding, 
                                  layer.dataformat)

proc newMaxPool*[T](model: var seq[Layer], 
            kernel: array[0..1, int], 
            strides: array[0..1, int], 
            padding= "SAME", 
            dataFormat = "NHWC") = 
    return newPoolingLayer[T](model, kernel, strides, padding, dataFormat)

    ## The MaxPool Layer performs a MaxPool operation with the given kernelsize, stride and pooling.
    ##
    ## Example:
    ##
    ## .. code:: nim
    ##    
    ##    var proto: seq[Layer] = @[]
    ##
    ##    # name with kernelsize 3x3 and stride 3x3
    ##    proto.`new name`([3, 3], [3, 3])


type AvgPoolLayer[T] = ref object of PoolLayer[T]    

method `$`[T](layer: AvgPoolLayer[T]): string = "AvgPool(kernel:" & $layer.kernel[1..^2] & 
                                                          ", strides:" & $layer.strides[1..^2] & ")"

method make*[T](layer: AvgPoolLayer[T], root: Scope, shape: var seq[int]): proc(rt: Scope, input: oall): oall = 
    poolingShapeFn(layer, shape)

    return proc(rt: Scope, input: oall): oall =
                return rt.avgPool(input, 
                                  layer.kernel, 
                                  layer.strides, 
                                  layer.padding, 
                                  layer.dataformat)

proc newAvgPool*[T](model: var seq[Layer], 
            kernel: array[0..1, int], 
            strides: array[0..1, int], 
            padding= "SAME", 
            dataFormat = "NHWC") = 
    return newPoolingLayer[T](model, kernel, strides, padding, dataFormat)

    ## The AvgPool Layer performs a AvgPool operation with the given kernelsize, stride and pooling.
    ##
    ## Example:
    ##
    ## .. code:: nim
    ##    
    ##    var proto: seq[Layer] = @[]
    ##
    ##    # name with kernelsize 3x3 and stride 3x3
    ##    proto.`new name`([3, 3], [3, 3])
