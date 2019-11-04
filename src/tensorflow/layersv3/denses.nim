from nodes import 
    constant, variable, Ctx, input, nshape, rand_max

include ../with

from ../ops import 
    variableV2, assign

from ../ops/nn/activ import 
    sigmoid

from ../ops/custom_ops import
    `@`, `+` 

from ../ops/prob import 
        statelessRandomNormal

template dense*(ctx: static Ctx, features: int, bias: bool = static true): untyped =
    with ctx.scope:
        const w_shape = [ctx.nshape[1], features]

        constant:
            let o_w_shape = w_shape.oint32
            let rand_seed = seed().oint32
            let w_rand = sigmoid statelessRandomNormal(o_w_shape, rand_seed, ctx.dtype).output

        let w = variableV2("", "w", w_shape.shape, ctx.dtype).output
        let asgn_w = assign(w, w_rand.output).output
        variable(w_shape.toSeq, w, asgn_w)

        when bias:
            const b_shape = [1, features]

            constant:
                let o_b_shape = b_shape.oint32
                let b_rand = sigmoid statelessRandomNormal(o_b_shape, rand_seed, ctx.dtype).output

            let b = variableV2("", "b", b_shape.shape, ctx.dtype).output
            let asgn_b = assign(b, b_rand.output).output
            variable(b_shape.toSeq, b, asgn_b)

            ctx.input ctx.input @ w + b
        else:
            ctx.input ctx.input @ w

        static:
            var sh = ctx.nshape
            sh[1] = features
        ctx.nshape sh