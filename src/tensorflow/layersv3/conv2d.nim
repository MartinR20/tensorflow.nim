import ../core
include ../with

from ../ops import 
    variableV2, 
    assign

from ../ops/nn import
    conv2D

from ../ops/prob import 
    statelessRandomNormal

from nodes import 
    vars, constants, initalize

template conv2d*[oT: oall](scope: Scope,
                           shape: var seq[int],
                           input: oT, 
                           channels: static int, 
                           kernels: static array[2, int],
                           strides: static array[2, int], 
                           padding: string=static "SAME",    
                           dataformat: string=static "NHWC",
                           dilations: static array[2, int] = [1, 1],
                           useCudnnOnGpu= static true): untyped =

    const filter_shape = [kernels[0], kernels[1], shape[0], channels]
    const nstrides = [1, strides[0], strides[1], 1]
    const ndilations = [1, dilations[0], dilations[1], 1]

    vars: 
        let filter = variableV2(scope, "kernel", "", filter_shape.shape, oT).output

    constants:
        let rand_shape = with scope: filter_shape.oint32 
        let rand_seed = with scope: 0.oint32 
        let init = statelessRandomNormal(scope, rand_shape.output, rand_seed.output, oT).output

    initalize:
        let asgn = assign(scope, filter, init, false, false).output

    static:
        case padding:
        of "VALID":
            var effective_filter_size: array[0..1, int]
            effective_filter_size[0] = (kernels[0] - 1) * dilations[0] + 1;
            effective_filter_size[1] = (kernels[1] - 1) * dilations[1] + 1;
    
            shape = @[shape[0], 
                      (shape[1] - effective_filter_size[0] + strides[0]) div strides[0],
                      (shape[2] - effective_filter_size[1] + strides[1]) div strides[1],
                      channels]
        of "SAME":
            shape = @[shape[0], 
                      (shape[1] + strides[0] - 1) div strides[0],
                      (shape[2] + strides[1] - 1) div strides[1],
                      channels]
        

    conv2D(scope, input, filter, nstrides, padding, useCudnnOnGpu, dataformat, ndilations).output