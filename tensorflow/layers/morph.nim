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
import ../core/core
import ./layer
import ../ops/make/makeutils
import macros
{.hint[XDeclaredButNotUsed]:off.}

type Dilation2D[T] = ref object of Layer[T]
    kernel: Tensor[T]
    strides: array[0..3, cint]
    rates: array[0..3, cint]
    padding: string
    
method `$`[T](layer: Dilation2D[T]): string = "Dilation2D(kernel:" & $layer.kernel & 
                                                 ", strides:" & $layer.strides[1..^2] & ")"

method make[T](layer: Dilation2D[T], root: Scope, shape: var seq[int]): proc(rt: Scope, input: oall): oall = 
    layer.dimCheck(shape, 4)
    let shortLayerName = "Dilation2D"

    with root.newSubScope(shortLayerName & "_setup"):
        let kernel = nconst(layer.kernel)

    return proc(rt: Scope, input: Out): Out =
                with rt.newSubScope(shortLayerName):
                    return Dilation2D(input, 
                                      kernel, 
                                      layer.strides,
                                      layer.rates, 
                                      layer.padding)

const c1: cint = 1

proc newDilation2D*[N,T](model: var seq[Layer], 
                         kernel: array[N,T], 
                         strides: array[0..1, int], 
                         rates: array[0..1, int], 
                         padding="SAME") =

    var dilation2d = new Dilation2D

    dilation2d.kernel = tensor (kernel, float32)

    dilation2d.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]
    dilation2d.rates = [c1, cast[cint](rates[0]), cast[cint](rates[1]), c1]

    dilation2d.padding = padding
    
    model.add(dilation2d)

macro inheritDilation(name: static[string]): untyped =
    let varname = firstCharToLower(name)
    return parseStmt("""type """ & name & """[T] = ref object of Dilation2D[T]
        
method `$`[T](layer: """ & name & """[T]): string = """" & name & """(strides:" & $layer.strides[1..^2] & ")"
    
proc new""" & name & """*[T,N,M](model: var seq[Layer], 
                        kernel: array[N,M], 
                        strides: array[0..1, int], 
                        rates: array[0..1, int], 
                        padding="SAME") =

    var """ & varname & """ = new """ & name & """[T]

    """ & varname & """.kernel = tensor(kernel, float32)

    """ & varname & """.strides = [c1, cast[cint](strides[0]), cast[cint](strides[1]), c1]
    """ & varname & """.rates = [c1, cast[cint](rates[0]), cast[cint](rates[1]), c1]

    """ & varname & """.padding = padding
    
    model.add(""" & varname & """)""")

inheritDilation("Erosion2D")

method make(layer: Erosion2D, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    layer.dimCheck(shape, 4)
    let shortLayerName = "Erosion2D"

    let strides = newArraySlice(layer.strides)
    let rates = newArraySlice(layer.rates)
    with root.newSubScope(shortLayerName & "_setup"):
        let kernel = Const(layer.kernel)
        let revKernel = Reverse(kernel, [0, 1].int32)

    return proc(rt: Scope, input: Out): Out =
                with rt.newSubScope(shortLayerName):
                    return Dilation2D(Negate(input), 
                                      revKernel, 
                                      strides,
                                      rates, 
                                      layer.padding)

inheritDilation("Opening2D")

method make(layer: Opening2D, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    layer.dimCheck(shape, 4)
    let shortLayerName = "Opening2D"

    let strides = newArraySlice(layer.strides)
    let rates = newArraySlice(layer.rates)
    with root.newSubScope(shortLayerName & "_setup"):
        let kernel = Const(layer.kernel)
        let revKernel = Reverse(kernel, [0, 1].int32)

    return proc(rt: Scope, input: Out): Out =
                with rt.newSubScope(shortLayerName):
                    let erosion = Dilation2D(Negate(input), 
                                             revKernel, 
                                             strides,
                                             rates, 
                                             layer.padding)

                    let dilation = Dilation2D(erosion, 
                                              kernel, 
                                              strides,
                                              rates, 
                                              layer.padding)

                    return dilation

inheritDilation("Closing2D")

method make(layer: Closing2D, root: Scope, shape: var seq[int]): proc(rt: Scope, input: Out): Out = 
    layer.dimCheck(shape, 4)
    let shortLayerName = "Closing2D"

    let strides = newArraySlice(layer.strides)
    let rates = newArraySlice(layer.rates)
    with root.newSubScope(shortLayerName & "_setup"):
        let kernel = Const(layer.kernel)
        let revKernel = Reverse(kernel, [0, 1].int32)

    return proc(rt: Scope, input: Out): Out =
                with rt.newSubScope(shortLayerName):
                    let dilation = Dilation2D(input, 
                                              kernel, 
                                              strides,
                                              rates, 
                                              layer.padding)

                    let erosion = Dilation2D(Negate(dilation), 
                                             revKernel, 
                                             strides,
                                             rates, 
                                             layer.padding)

                    return erosion

export Dilation2D,
       Erosion2D,
       Opening2D,
       Closing2D,
       `$`,
       newDilation2D,
       newErosion2D,
       newOpening2D,
       newClosing2D,
       make
