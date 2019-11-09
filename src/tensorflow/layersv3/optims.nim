import ../core
import ../utils
include ../with

from ../ops/nn/optim import
    applyAdam

from ../ops import
    variableV2 #TODO: export from however nodes will be named in the future

from layers import 
    constant,
    forvarsgrad, Ctx,
    dtype

import ../ops/make/exportOp

proc Debug(ctx: ptr OpKernelContext) {.input:"var_in: Ref(float)",
                                       input:"grad: float",
                                       input:"m: float",
                                       input:"v: float",
                                       output:"var_out: Ref(float)"
                                       setShapeFn: proc(ctx: ptr InferenceContext): Status = 
                                                           return ok(),
                                       tfexp:CPU.} =
    var var_in: Tensor[ofloat]
    # var grad   = new Tensor[ofloat]
    # var m      = new Tensor[ofloat]
    # var v      = new Tensor[ofloat]

    ctx.set_status ctx.mutable_input("var_in", var_in, false)

    # ctx.set_status ctx.input("grad",     grad)
    # ctx.set_status ctx.input("m",           m)
    # ctx.set_status ctx.input("v",           v)

    ctx.set_output(0, var_in)

template adam*(ctx: static Ctx,
               beta1_power: float = 0,
               beta2_power: float = 0,
               lr: float = 1e-4,
               beta1: float = 0.9,
               beta2: float = 0.99,
               epsilon: float = 10e-8): untyped =

    constant: 
        let o_beta1_power = (beta1_power).to(ctx.scope, ctx.dtype)
        let o_beta2_power = (beta2_power).to(ctx.scope, ctx.dtype)
        let o_lr          = (lr)         .to(ctx.scope, ctx.dtype)
        let o_beta1       = (beta1)      .to(ctx.scope, ctx.dtype)
        let o_beta2       = (beta2)      .to(ctx.scope, ctx.dtype)
        let o_epsilon     = (epsilon)    .to(ctx.scope, ctx.dtype)

    ctx.forvarsgrad ivar, grad, m, v:
        applyAdam(ctx.scope, ivar, m, v, o_beta1_power, o_beta2_power, o_lr, o_beta1, o_beta2, o_epsilon, grad).output