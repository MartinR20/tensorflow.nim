import ../core
import ../ops/custom_ops
include ../with

from ../ops import 
    variableV2, 
    assign

from ../ops/nn import
    conv2D

from sequtils import 
    toSeq

from nodes import 
    variable, constant, Ctx, nshape, dtype,
    scope, input, seed, xavier_init

template conv2d*(ctx: static Ctx,
                channels: static int, 
                kernels: static array[2, int],
                strides: static array[2, int], 
                padding: static string= "SAME",    
                dataformat: static string= "NHWC",
                dilations: static array[2, int] = [1, 1],
                useCudnnOnGpu= static true) =

    const nstrides = [1, strides[0], strides[1], 1]
    const ndilations = [1, dilations[0], dilations[1], 1]

    let filter = ctx.variable("kernel", 
        [kernels[0], kernels[1], ctx.nshape[^1], channels], xavier_init)

    const in_shape = ctx.nshape()

    when padding == "VALID":
        var effective_filter_size: array[0..1, int]
        effective_filter_size[0] = (kernels[0] - 1) * dilations[0] + 1;
        effective_filter_size[1] = (kernels[1] - 1) * dilations[1] + 1;

        const sh = @[in_shape[0], 
                    (in_shape[1] - effective_filter_size[0] + strides[0]) div strides[0],
                    (in_shape[2] - effective_filter_size[1] + strides[1]) div strides[1],
                    channels]
    elif padding == "SAME":
        const sh = @[in_shape[0], 
                    (in_shape[1] + strides[0] - 1) div strides[0],
                    (in_shape[2] + strides[1] - 1) div strides[1],
                    channels]

    ctx.nshape sh
        
    ctx.input conv2D(ctx.scope, ctx.input, filter, nstrides, padding, useCudnnOnGpu, dataformat, ndilations).output