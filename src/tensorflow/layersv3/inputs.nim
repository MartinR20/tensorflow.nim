from layers import
    Ctx, nshape, dtype, input, scope 

from ../ops import 
    placeholder

export placeholder

template input*(ctx: Ctx,
                    T: type,
                    inshape: seq[int]): untyped = 

    ctx.nshape(inshape)
    ctx.dtype(T)

    let placeh = placeholder(ctx.scope, T, inshape.shape).output
    ctx.feed("x", placeh)
    ctx.input placeh
