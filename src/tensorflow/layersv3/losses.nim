from nodes import 
    Ctx, input, nshape, scope

import ../ops/custom_ops

from ../ops/math import 
    mean

include ../with

template mse*(ctx: static Ctx): untyped =
    let y = placeholder(ctx.scope, ctx.dtype, shape ctx.nshape).output
    ctx.feed("y", y)

    with ctx.scope:
        let diff = y - ctx.input
        ctx.input mean(diff * diff, 0.oint32).output

    when defined debug:
        ctx.loss ctx.input