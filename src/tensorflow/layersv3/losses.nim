from layers import 
    Ctx, input, nshape, scope

import ../ops/custom_ops

from ../ops/math import 
    mean

include ../with

template mse*(ctx: static Ctx): untyped =
    let y = placeholder(ctx.scope, ctx.dtype, shape ctx.nshape).output
    ctx.feed("y", y)

    when defined debug:
        ctx.output ctx.input

    with ctx.scope:
        let diff = y - ctx.input
        ctx.input mean(diff * diff, 0.oint32).output
        ctx.input mean(ctx.input, 0.oint32).output

    when defined debug:
        ctx.loss ctx.input