from nodes import
    Ctx, scope, input

import ../ops/nn/activ as activ_fns 
export activ_fns

template activ*(ctx: Ctx,
                actfn: proc): untyped =

    ctx.input actfn(ctx.scope, ctx.input).output