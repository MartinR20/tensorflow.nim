import ../core

from ../ops/nn/optim import
    applyAdam

template adam*[oT: oall](scope: Scope,
                         shape: var seq[int],
                         input: oT, 
                         feed: FeedDict,
                         m: oT,
                         v: oT,
                         beta1_power: oT.oT = 0,
                         beta2_power: oT.oT = 0,
                         lr: oT.oT = 1e-4,
                         beta1: oT.oT = 0.9,
                         beta2: oT.oT = 0.99,
                         epsilon: oT.oT = 10e-8): untyped =

    constants:
        let o_beta1_power = with scope: beta1_power.oint32 
        let o_beta2_power = with scope: beta2_power.oint32 
        let o_lr          = with scope: lr.oint32 
        let o_beta1       = with scope: beta1.oint32 
        let o_beta2       = with scope: beta2.oint32 
        let o_epsilon     = with scope: epsilon.oint32 

    applyAdam(scope, input, m, v, o_beta1_power, o_beta2_power, o_lr, o_beta1, o_beta2, o_epsilon).output