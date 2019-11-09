from layers import 
    constant, variable, Ctx, input, nshape,
    xavier_init, one_init

include ../with

from ../ops/custom_ops import
    `@`, `+` 

template dense*(ctx: static Ctx, features: int, bias: bool = static true): untyped =
    let w = ctx.variable("w", [ctx.nshape[1], features], xavier_init)

    when bias:
        let b = ctx.variable("b", [1, features], one_init)

        with ctx.scope:
            ctx.input ctx.input @ w + b
    else:
        with ctx.scope:
            ctx.input ctx.input @ w

    static:
        var sh = ctx.nshape
        sh[1] = features
    ctx.nshape sh