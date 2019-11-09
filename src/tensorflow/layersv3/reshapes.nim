from nodes import 
    Ctx, nshape, input, scope

include ../with

from sequtils import 
    toSeq, foldl

export toSeq

from ../ops import 
    reshape

export reshape

template flatten*(ctx: static Ctx): untyped =
    const old_shape = ctx.nshape
    const new_shape = [old_shape[0], old_shape[1..^1].foldl(a * b)]
    ctx.nshape new_shape.toSeq

    with ctx.scope:
        ctx.input reshape(ctx.input, new_shape.oint32).output

template reshape*[N](ctx: static Ctx, new_shape: static array[N, int]): untyped =
    with ctx.scope:
        ctx.input reshape(ctx.input, new_shape.oint32).output

    ctx.nshape @new_shape

