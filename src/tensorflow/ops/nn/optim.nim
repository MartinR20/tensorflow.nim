import ../../core

{.compile:"../../ops/nn/optim/optim.cc".}

type AccumulatorApplyGradientdtype* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type AccumulatorApplyGradient*{.header:"../../ops/nn/optim/optim.h", importcpp:"AccumulatorApplyGradient/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiaccumulatorApplyGradient(scope: Scope,
                               handle: ostring,
                               local_step: oint64,
                               gradient: AccumulatorApplyGradientdtype): AccumulatorApplyGradient {.header:"../../ops/nn/optim/optim.h", importcpp:"AccumulatorApplyGradient(*#, #, #, #)", constructor.}

proc accumulatorApplyGradient*(scope: Scope,
                               handle: ostring,
                               local_step: oint64,
                               gradient: AccumulatorApplyGradientdtype): AccumulatorApplyGradient =
  return iiaccumulatorApplyGradient(scope,
                                    handle,
                                    local_step,
                                    gradient)


type ApplyAdaMax*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdaMax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyAdaMax[oT: oall](scope: Scope,
                  nvar: oT,
                  m: oT,
                  v: oT,
                  beta1_power: oT,
                  lr: oT,
                  beta1: oT,
                  beta2: oT,
                  epsilon: oT,
                  grad: oT,
                  T: DType,
                  use_locking: bool): ApplyAdaMax[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdaMax(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyAdaMax*[oT: oall](scope: Scope,
                  nvar: oT,
                  m: oT,
                  v: oT,
                  beta1_power: oT,
                  lr: oT,
                  beta1: oT,
                  beta2: oT,
                  epsilon: oT,
                  grad: oT,
                  use_locking: bool = false): ApplyAdaMax[oT] =
  return iiapplyAdaMax(scope,
                       nvar,
                       m,
                       v,
                       beta1_power,
                       lr,
                       beta1,
                       beta2,
                       epsilon,
                       grad,
                       oT[].oTF,
                       use_locking)

converter applyAdaMaxToOut*[oT: oall](op: ApplyAdaMax[oT]): oT {.inline.} = return op.output


type ApplyAdadelta*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdadelta/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyAdadelta[oT: oall](scope: Scope,
                    nvar: oT,
                    accum: oT,
                    accum_update: oT,
                    lr: oT,
                    rho: oT,
                    epsilon: oT,
                    grad: oT,
                    T: DType,
                    use_locking: bool): ApplyAdadelta[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdadelta(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyAdadelta*[oT: oall](scope: Scope,
                    nvar: oT,
                    accum: oT,
                    accum_update: oT,
                    lr: oT,
                    rho: oT,
                    epsilon: oT,
                    grad: oT,
                    use_locking: bool = false): ApplyAdadelta[oT] =
  return iiapplyAdadelta(scope,
                         nvar,
                         accum,
                         accum_update,
                         lr,
                         rho,
                         epsilon,
                         grad,
                         oT[].oTF,
                         use_locking)

converter applyAdadeltaToOut*[oT: oall](op: ApplyAdadelta[oT]): oT {.inline.} = return op.output


type ApplyAdagrad*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdagrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyAdagrad[oT: oall](scope: Scope,
                   nvar: oT,
                   accum: oT,
                   lr: oT,
                   grad: oT,
                   T: DType,
                   use_locking: bool,
                   update_slots: bool): ApplyAdagrad[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdagrad(*#, #, #, #, #, #, #, #)", constructor.}

proc applyAdagrad*[oT: oall](scope: Scope,
                   nvar: oT,
                   accum: oT,
                   lr: oT,
                   grad: oT,
                   use_locking: bool = false,
                   update_slots: bool = true): ApplyAdagrad[oT] =
  return iiapplyAdagrad(scope,
                        nvar,
                        accum,
                        lr,
                        grad,
                        oT[].oTF,
                        use_locking,
                        update_slots)

converter applyAdagradToOut*[oT: oall](op: ApplyAdagrad[oT]): oT {.inline.} = return op.output


type ApplyAdagradDA*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdagradDA/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyAdagradDA[oT: oall](scope: Scope,
                     nvar: oT,
                     gradient_accumulator: oT,
                     gradient_squared_accumulator: oT,
                     grad: oT,
                     lr: oT,
                     l1: oT,
                     l2: oT,
                     global_step: oint64,
                     T: DType,
                     use_locking: bool): ApplyAdagradDA[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdagradDA(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyAdagradDA*[oT: oall](scope: Scope,
                     nvar: oT,
                     gradient_accumulator: oT,
                     gradient_squared_accumulator: oT,
                     grad: oT,
                     lr: oT,
                     l1: oT,
                     l2: oT,
                     global_step: oint64,
                     use_locking: bool = false): ApplyAdagradDA[oT] =
  return iiapplyAdagradDA(scope,
                          nvar,
                          gradient_accumulator,
                          gradient_squared_accumulator,
                          grad,
                          lr,
                          l1,
                          l2,
                          global_step,
                          oT[].oTF,
                          use_locking)

converter applyAdagradDAToOut*[oT: oall](op: ApplyAdagradDA[oT]): oT {.inline.} = return op.output


type ApplyAdam*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdam/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyAdam[oT: oall](scope: Scope,
                nvar: oT,
                m: oT,
                v: oT,
                beta1_power: oT,
                beta2_power: oT,
                lr: oT,
                beta1: oT,
                beta2: oT,
                epsilon: oT,
                grad: oT,
                T: DType,
                use_locking: bool,
                use_nesterov: bool): ApplyAdam[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAdam(*#, #, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyAdam*[oT: oall](scope: Scope,
                nvar: oT,
                m: oT,
                v: oT,
                beta1_power: oT,
                beta2_power: oT,
                lr: oT,
                beta1: oT,
                beta2: oT,
                epsilon: oT,
                grad: oT,
                use_locking: bool = false,
                use_nesterov: bool = false): ApplyAdam[oT] =
  return iiapplyAdam(scope,
                     nvar,
                     m,
                     v,
                     beta1_power,
                     beta2_power,
                     lr,
                     beta1,
                     beta2,
                     epsilon,
                     grad,
                     oT[].oTF,
                     use_locking,
                     use_nesterov)

converter applyAdamToOut*[oT: oall](op: ApplyAdam[oT]): oT {.inline.} = return op.output


type ApplyAddSign*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAddSign/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyAddSign[oT: oall](scope: Scope,
                   nvar: oT,
                   m: oT,
                   lr: oT,
                   alpha: oT,
                   sign_decay: oT,
                   beta: oT,
                   grad: oT,
                   T: DType,
                   use_locking: bool): ApplyAddSign[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyAddSign(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyAddSign*[oT: oall](scope: Scope,
                   nvar: oT,
                   m: oT,
                   lr: oT,
                   alpha: oT,
                   sign_decay: oT,
                   beta: oT,
                   grad: oT,
                   use_locking: bool = false): ApplyAddSign[oT] =
  return iiapplyAddSign(scope,
                        nvar,
                        m,
                        lr,
                        alpha,
                        sign_decay,
                        beta,
                        grad,
                        oT[].oTF,
                        use_locking)

converter applyAddSignToOut*[oT: oall](op: ApplyAddSign[oT]): oT {.inline.} = return op.output


type ApplyCenteredRMSProp*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyCenteredRMSProp/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyCenteredRMSProp[oT: oall](scope: Scope,
                           nvar: oT,
                           mg: oT,
                           ms: oT,
                           mom: oT,
                           lr: oT,
                           rho: oT,
                           momentum: oT,
                           epsilon: oT,
                           grad: oT,
                           T: DType,
                           use_locking: bool): ApplyCenteredRMSProp[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyCenteredRMSProp(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyCenteredRMSProp*[oT: oall](scope: Scope,
                           nvar: oT,
                           mg: oT,
                           ms: oT,
                           mom: oT,
                           lr: oT,
                           rho: oT,
                           momentum: oT,
                           epsilon: oT,
                           grad: oT,
                           use_locking: bool = false): ApplyCenteredRMSProp[oT] =
  return iiapplyCenteredRMSProp(scope,
                                nvar,
                                mg,
                                ms,
                                mom,
                                lr,
                                rho,
                                momentum,
                                epsilon,
                                grad,
                                oT[].oTF,
                                use_locking)

converter applyCenteredRMSPropToOut*[oT: oall](op: ApplyCenteredRMSProp[oT]): oT {.inline.} = return op.output


type ApplyFtrl*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyFtrl/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyFtrl[oT: oall](scope: Scope,
                nvar: oT,
                accum: oT,
                linear: oT,
                grad: oT,
                lr: oT,
                l1: oT,
                l2: oT,
                lr_power: oT,
                T: DType,
                use_locking: bool): ApplyFtrl[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyFtrl(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyFtrl*[oT: oall](scope: Scope,
                nvar: oT,
                accum: oT,
                linear: oT,
                grad: oT,
                lr: oT,
                l1: oT,
                l2: oT,
                lr_power: oT,
                use_locking: bool = false): ApplyFtrl[oT] =
  return iiapplyFtrl(scope,
                     nvar,
                     accum,
                     linear,
                     grad,
                     lr,
                     l1,
                     l2,
                     lr_power,
                     oT[].oTF,
                     use_locking)

converter applyFtrlToOut*[oT: oall](op: ApplyFtrl[oT]): oT {.inline.} = return op.output


type ApplyFtrlV2*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyFtrlV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyFtrlV2[oT: oall](scope: Scope,
                  nvar: oT,
                  accum: oT,
                  linear: oT,
                  grad: oT,
                  lr: oT,
                  l1: oT,
                  l2: oT,
                  l2_shrinkage: oT,
                  lr_power: oT,
                  T: DType,
                  use_locking: bool): ApplyFtrlV2[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyFtrlV2(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyFtrlV2*[oT: oall](scope: Scope,
                  nvar: oT,
                  accum: oT,
                  linear: oT,
                  grad: oT,
                  lr: oT,
                  l1: oT,
                  l2: oT,
                  l2_shrinkage: oT,
                  lr_power: oT,
                  use_locking: bool = false): ApplyFtrlV2[oT] =
  return iiapplyFtrlV2(scope,
                       nvar,
                       accum,
                       linear,
                       grad,
                       lr,
                       l1,
                       l2,
                       l2_shrinkage,
                       lr_power,
                       oT[].oTF,
                       use_locking)

converter applyFtrlV2ToOut*[oT: oall](op: ApplyFtrlV2[oT]): oT {.inline.} = return op.output


type ApplyGradientDescent*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyGradientDescent/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyGradientDescent[oT: oall](scope: Scope,
                           nvar: oT,
                           alpha: oT,
                           delta: oT,
                           T: DType,
                           use_locking: bool): ApplyGradientDescent[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyGradientDescent(*#, #, #, #, #, #)", constructor.}

proc applyGradientDescent*[oT: oall](scope: Scope,
                           nvar: oT,
                           alpha: oT,
                           delta: oT,
                           use_locking: bool = false): ApplyGradientDescent[oT] =
  return iiapplyGradientDescent(scope,
                                nvar,
                                alpha,
                                delta,
                                oT[].oTF,
                                use_locking)

converter applyGradientDescentToOut*[oT: oall](op: ApplyGradientDescent[oT]): oT {.inline.} = return op.output


type ApplyMomentum*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyMomentum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyMomentum[oT: oall](scope: Scope,
                    nvar: oT,
                    accum: oT,
                    lr: oT,
                    grad: oT,
                    momentum: oT,
                    T: DType,
                    use_locking: bool,
                    use_nesterov: bool): ApplyMomentum[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyMomentum(*#, #, #, #, #, #, #, #, #)", constructor.}

proc applyMomentum*[oT: oall](scope: Scope,
                    nvar: oT,
                    accum: oT,
                    lr: oT,
                    grad: oT,
                    momentum: oT,
                    use_locking: bool = false,
                    use_nesterov: bool = false): ApplyMomentum[oT] =
  return iiapplyMomentum(scope,
                         nvar,
                         accum,
                         lr,
                         grad,
                         momentum,
                         oT[].oTF,
                         use_locking,
                         use_nesterov)

converter applyMomentumToOut*[oT: oall](op: ApplyMomentum[oT]): oT {.inline.} = return op.output


type ApplyPowerSign*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyPowerSign/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyPowerSign[oT: oall](scope: Scope,
                     nvar: oT,
                     m: oT,
                     lr: oT,
                     logbase: oT,
                     sign_decay: oT,
                     beta: oT,
                     grad: oT,
                     T: DType,
                     use_locking: bool): ApplyPowerSign[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyPowerSign(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyPowerSign*[oT: oall](scope: Scope,
                     nvar: oT,
                     m: oT,
                     lr: oT,
                     logbase: oT,
                     sign_decay: oT,
                     beta: oT,
                     grad: oT,
                     use_locking: bool = false): ApplyPowerSign[oT] =
  return iiapplyPowerSign(scope,
                          nvar,
                          m,
                          lr,
                          logbase,
                          sign_decay,
                          beta,
                          grad,
                          oT[].oTF,
                          use_locking)

converter applyPowerSignToOut*[oT: oall](op: ApplyPowerSign[oT]): oT {.inline.} = return op.output


type ApplyProximalAdagrad*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyProximalAdagrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyProximalAdagrad[oT: oall](scope: Scope,
                           nvar: oT,
                           accum: oT,
                           lr: oT,
                           l1: oT,
                           l2: oT,
                           grad: oT,
                           T: DType,
                           use_locking: bool): ApplyProximalAdagrad[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyProximalAdagrad(*#, #, #, #, #, #, #, #, #)", constructor.}

proc applyProximalAdagrad*[oT: oall](scope: Scope,
                           nvar: oT,
                           accum: oT,
                           lr: oT,
                           l1: oT,
                           l2: oT,
                           grad: oT,
                           use_locking: bool = false): ApplyProximalAdagrad[oT] =
  return iiapplyProximalAdagrad(scope,
                                nvar,
                                accum,
                                lr,
                                l1,
                                l2,
                                grad,
                                oT[].oTF,
                                use_locking)

converter applyProximalAdagradToOut*[oT: oall](op: ApplyProximalAdagrad[oT]): oT {.inline.} = return op.output


type ApplyProximalGradientDescent*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyProximalGradientDescent/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyProximalGradientDescent[oT: oall](scope: Scope,
                                   nvar: oT,
                                   alpha: oT,
                                   l1: oT,
                                   l2: oT,
                                   delta: oT,
                                   T: DType,
                                   use_locking: bool): ApplyProximalGradientDescent[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyProximalGradientDescent(*#, #, #, #, #, #, #, #)", constructor.}

proc applyProximalGradientDescent*[oT: oall](scope: Scope,
                                   nvar: oT,
                                   alpha: oT,
                                   l1: oT,
                                   l2: oT,
                                   delta: oT,
                                   use_locking: bool = false): ApplyProximalGradientDescent[oT] =
  return iiapplyProximalGradientDescent(scope,
                                        nvar,
                                        alpha,
                                        l1,
                                        l2,
                                        delta,
                                        oT[].oTF,
                                        use_locking)

converter applyProximalGradientDescentToOut*[oT: oall](op: ApplyProximalGradientDescent[oT]): oT {.inline.} = return op.output


type ApplyRMSProp*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyRMSProp/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiapplyRMSProp[oT: oall](scope: Scope,
                   nvar: oT,
                   ms: oT,
                   mom: oT,
                   lr: oT,
                   rho: oT,
                   momentum: oT,
                   epsilon: oT,
                   grad: oT,
                   T: DType,
                   use_locking: bool): ApplyRMSProp[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"ApplyRMSProp(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc applyRMSProp*[oT: oall](scope: Scope,
                   nvar: oT,
                   ms: oT,
                   mom: oT,
                   lr: oT,
                   rho: oT,
                   momentum: oT,
                   epsilon: oT,
                   grad: oT,
                   use_locking: bool = false): ApplyRMSProp[oT] =
  return iiapplyRMSProp(scope,
                        nvar,
                        ms,
                        mom,
                        lr,
                        rho,
                        momentum,
                        epsilon,
                        grad,
                        oT[].oTF,
                        use_locking)

converter applyRMSPropToOut*[oT: oall](op: ApplyRMSProp[oT]): oT {.inline.} = return op.output

type ResourceApplyAdaMaxT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyAdaMax*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdaMax/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyAdaMax(scope: Scope,
                          nvar: oresource,
                          m: oresource,
                          v: oresource,
                          beta1_power: ResourceApplyAdaMaxT,
                          lr: ResourceApplyAdaMaxT,
                          beta1: ResourceApplyAdaMaxT,
                          beta2: ResourceApplyAdaMaxT,
                          epsilon: ResourceApplyAdaMaxT,
                          grad: ResourceApplyAdaMaxT,
                          use_locking: bool): ResourceApplyAdaMax {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdaMax(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyAdaMax*(scope: Scope,
                          nvar: oresource,
                          m: oresource,
                          v: oresource,
                          beta1_power: ResourceApplyAdaMaxT,
                          lr: ResourceApplyAdaMaxT,
                          beta1: ResourceApplyAdaMaxT,
                          beta2: ResourceApplyAdaMaxT,
                          epsilon: ResourceApplyAdaMaxT,
                          grad: ResourceApplyAdaMaxT,
                          use_locking: bool = false): ResourceApplyAdaMax =
  return iiresourceApplyAdaMax(scope,
                               nvar,
                               m,
                               v,
                               beta1_power,
                               lr,
                               beta1,
                               beta2,
                               epsilon,
                               grad,
                               use_locking)

type ResourceApplyAdadeltaT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyAdadelta*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdadelta/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyAdadelta(scope: Scope,
                            nvar: oresource,
                            accum: oresource,
                            accum_update: oresource,
                            lr: ResourceApplyAdadeltaT,
                            rho: ResourceApplyAdadeltaT,
                            epsilon: ResourceApplyAdadeltaT,
                            grad: ResourceApplyAdadeltaT,
                            use_locking: bool): ResourceApplyAdadelta {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdadelta(*#, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyAdadelta*(scope: Scope,
                            nvar: oresource,
                            accum: oresource,
                            accum_update: oresource,
                            lr: ResourceApplyAdadeltaT,
                            rho: ResourceApplyAdadeltaT,
                            epsilon: ResourceApplyAdadeltaT,
                            grad: ResourceApplyAdadeltaT,
                            use_locking: bool = false): ResourceApplyAdadelta =
  return iiresourceApplyAdadelta(scope,
                                 nvar,
                                 accum,
                                 accum_update,
                                 lr,
                                 rho,
                                 epsilon,
                                 grad,
                                 use_locking)

type ResourceApplyAdagradT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyAdagrad*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdagrad/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyAdagrad(scope: Scope,
                           nvar: oresource,
                           accum: oresource,
                           lr: ResourceApplyAdagradT,
                           grad: ResourceApplyAdagradT,
                           update_slots: bool,
                           use_locking: bool): ResourceApplyAdagrad {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdagrad(*#, #, #, #, #, #, #)", constructor.}

proc resourceApplyAdagrad*(scope: Scope,
                           nvar: oresource,
                           accum: oresource,
                           lr: ResourceApplyAdagradT,
                           grad: ResourceApplyAdagradT,
                           update_slots: bool = true,
                           use_locking: bool = false): ResourceApplyAdagrad =
  return iiresourceApplyAdagrad(scope,
                                nvar,
                                accum,
                                lr,
                                grad,
                                update_slots,
                                use_locking)

type ResourceApplyAdagradDAT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyAdagradDA*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdagradDA/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyAdagradDA(scope: Scope,
                             nvar: oresource,
                             gradient_accumulator: oresource,
                             gradient_squared_accumulator: oresource,
                             grad: ResourceApplyAdagradDAT,
                             lr: ResourceApplyAdagradDAT,
                             l1: ResourceApplyAdagradDAT,
                             l2: ResourceApplyAdagradDAT,
                             global_step: oint64,
                             use_locking: bool): ResourceApplyAdagradDA {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdagradDA(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyAdagradDA*(scope: Scope,
                             nvar: oresource,
                             gradient_accumulator: oresource,
                             gradient_squared_accumulator: oresource,
                             grad: ResourceApplyAdagradDAT,
                             lr: ResourceApplyAdagradDAT,
                             l1: ResourceApplyAdagradDAT,
                             l2: ResourceApplyAdagradDAT,
                             global_step: oint64,
                             use_locking: bool = false): ResourceApplyAdagradDA =
  return iiresourceApplyAdagradDA(scope,
                                  nvar,
                                  gradient_accumulator,
                                  gradient_squared_accumulator,
                                  grad,
                                  lr,
                                  l1,
                                  l2,
                                  global_step,
                                  use_locking)

type ResourceApplyAdamT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyAdam*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdam/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyAdam(scope: Scope,
                        nvar: oresource,
                        m: oresource,
                        v: oresource,
                        beta1_power: ResourceApplyAdamT,
                        beta2_power: ResourceApplyAdamT,
                        lr: ResourceApplyAdamT,
                        beta1: ResourceApplyAdamT,
                        beta2: ResourceApplyAdamT,
                        epsilon: ResourceApplyAdamT,
                        grad: ResourceApplyAdamT,
                        use_nesterov: bool,
                        use_locking: bool): ResourceApplyAdam {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdam(*#, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyAdam*(scope: Scope,
                        nvar: oresource,
                        m: oresource,
                        v: oresource,
                        beta1_power: ResourceApplyAdamT,
                        beta2_power: ResourceApplyAdamT,
                        lr: ResourceApplyAdamT,
                        beta1: ResourceApplyAdamT,
                        beta2: ResourceApplyAdamT,
                        epsilon: ResourceApplyAdamT,
                        grad: ResourceApplyAdamT,
                        use_nesterov: bool = false,
                        use_locking: bool = false): ResourceApplyAdam =
  return iiresourceApplyAdam(scope,
                             nvar,
                             m,
                             v,
                             beta1_power,
                             beta2_power,
                             lr,
                             beta1,
                             beta2,
                             epsilon,
                             grad,
                             use_nesterov,
                             use_locking)

type ResourceApplyAdamWithAmsgradT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyAdamWithAmsgrad*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdamWithAmsgrad/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyAdamWithAmsgrad(scope: Scope,
                                   nvar: oresource,
                                   m: oresource,
                                   v: oresource,
                                   vhat: oresource,
                                   beta1_power: ResourceApplyAdamWithAmsgradT,
                                   beta2_power: ResourceApplyAdamWithAmsgradT,
                                   lr: ResourceApplyAdamWithAmsgradT,
                                   beta1: ResourceApplyAdamWithAmsgradT,
                                   beta2: ResourceApplyAdamWithAmsgradT,
                                   epsilon: ResourceApplyAdamWithAmsgradT,
                                   grad: ResourceApplyAdamWithAmsgradT,
                                   use_locking: bool): ResourceApplyAdamWithAmsgrad {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAdamWithAmsgrad(*#, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyAdamWithAmsgrad*(scope: Scope,
                                   nvar: oresource,
                                   m: oresource,
                                   v: oresource,
                                   vhat: oresource,
                                   beta1_power: ResourceApplyAdamWithAmsgradT,
                                   beta2_power: ResourceApplyAdamWithAmsgradT,
                                   lr: ResourceApplyAdamWithAmsgradT,
                                   beta1: ResourceApplyAdamWithAmsgradT,
                                   beta2: ResourceApplyAdamWithAmsgradT,
                                   epsilon: ResourceApplyAdamWithAmsgradT,
                                   grad: ResourceApplyAdamWithAmsgradT,
                                   use_locking: bool = false): ResourceApplyAdamWithAmsgrad =
  return iiresourceApplyAdamWithAmsgrad(scope,
                                        nvar,
                                        m,
                                        v,
                                        vhat,
                                        beta1_power,
                                        beta2_power,
                                        lr,
                                        beta1,
                                        beta2,
                                        epsilon,
                                        grad,
                                        use_locking)

type ResourceApplyAddSignT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyAddSign*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAddSign/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyAddSign(scope: Scope,
                           nvar: oresource,
                           m: oresource,
                           lr: ResourceApplyAddSignT,
                           alpha: ResourceApplyAddSignT,
                           sign_decay: ResourceApplyAddSignT,
                           beta: ResourceApplyAddSignT,
                           grad: ResourceApplyAddSignT,
                           use_locking: bool): ResourceApplyAddSign {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyAddSign(*#, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyAddSign*(scope: Scope,
                           nvar: oresource,
                           m: oresource,
                           lr: ResourceApplyAddSignT,
                           alpha: ResourceApplyAddSignT,
                           sign_decay: ResourceApplyAddSignT,
                           beta: ResourceApplyAddSignT,
                           grad: ResourceApplyAddSignT,
                           use_locking: bool = false): ResourceApplyAddSign =
  return iiresourceApplyAddSign(scope,
                                nvar,
                                m,
                                lr,
                                alpha,
                                sign_decay,
                                beta,
                                grad,
                                use_locking)

type ResourceApplyCenteredRMSPropT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyCenteredRMSProp*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyCenteredRMSProp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyCenteredRMSProp(scope: Scope,
                                   nvar: oresource,
                                   mg: oresource,
                                   ms: oresource,
                                   mom: oresource,
                                   lr: ResourceApplyCenteredRMSPropT,
                                   rho: ResourceApplyCenteredRMSPropT,
                                   momentum: ResourceApplyCenteredRMSPropT,
                                   epsilon: ResourceApplyCenteredRMSPropT,
                                   grad: ResourceApplyCenteredRMSPropT,
                                   use_locking: bool): ResourceApplyCenteredRMSProp {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyCenteredRMSProp(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyCenteredRMSProp*(scope: Scope,
                                   nvar: oresource,
                                   mg: oresource,
                                   ms: oresource,
                                   mom: oresource,
                                   lr: ResourceApplyCenteredRMSPropT,
                                   rho: ResourceApplyCenteredRMSPropT,
                                   momentum: ResourceApplyCenteredRMSPropT,
                                   epsilon: ResourceApplyCenteredRMSPropT,
                                   grad: ResourceApplyCenteredRMSPropT,
                                   use_locking: bool = false): ResourceApplyCenteredRMSProp =
  return iiresourceApplyCenteredRMSProp(scope,
                                        nvar,
                                        mg,
                                        ms,
                                        mom,
                                        lr,
                                        rho,
                                        momentum,
                                        epsilon,
                                        grad,
                                        use_locking)

type ResourceApplyFtrlT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyFtrl*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyFtrl/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyFtrl(scope: Scope,
                        nvar: oresource,
                        accum: oresource,
                        linear: oresource,
                        grad: ResourceApplyFtrlT,
                        lr: ResourceApplyFtrlT,
                        l1: ResourceApplyFtrlT,
                        l2: ResourceApplyFtrlT,
                        lr_power: ResourceApplyFtrlT,
                        use_locking: bool): ResourceApplyFtrl {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyFtrl(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyFtrl*(scope: Scope,
                        nvar: oresource,
                        accum: oresource,
                        linear: oresource,
                        grad: ResourceApplyFtrlT,
                        lr: ResourceApplyFtrlT,
                        l1: ResourceApplyFtrlT,
                        l2: ResourceApplyFtrlT,
                        lr_power: ResourceApplyFtrlT,
                        use_locking: bool = false): ResourceApplyFtrl =
  return iiresourceApplyFtrl(scope,
                             nvar,
                             accum,
                             linear,
                             grad,
                             lr,
                             l1,
                             l2,
                             lr_power,
                             use_locking)

type ResourceApplyFtrlV2T* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyFtrlV2*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyFtrlV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyFtrlV2(scope: Scope,
                          nvar: oresource,
                          accum: oresource,
                          linear: oresource,
                          grad: ResourceApplyFtrlV2T,
                          lr: ResourceApplyFtrlV2T,
                          l1: ResourceApplyFtrlV2T,
                          l2: ResourceApplyFtrlV2T,
                          l2_shrinkage: ResourceApplyFtrlV2T,
                          lr_power: ResourceApplyFtrlV2T,
                          use_locking: bool): ResourceApplyFtrlV2 {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyFtrlV2(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyFtrlV2*(scope: Scope,
                          nvar: oresource,
                          accum: oresource,
                          linear: oresource,
                          grad: ResourceApplyFtrlV2T,
                          lr: ResourceApplyFtrlV2T,
                          l1: ResourceApplyFtrlV2T,
                          l2: ResourceApplyFtrlV2T,
                          l2_shrinkage: ResourceApplyFtrlV2T,
                          lr_power: ResourceApplyFtrlV2T,
                          use_locking: bool = false): ResourceApplyFtrlV2 =
  return iiresourceApplyFtrlV2(scope,
                               nvar,
                               accum,
                               linear,
                               grad,
                               lr,
                               l1,
                               l2,
                               l2_shrinkage,
                               lr_power,
                               use_locking)

type ResourceApplyGradientDescentT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyGradientDescent*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyGradientDescent/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyGradientDescent(scope: Scope,
                                   nvar: oresource,
                                   alpha: ResourceApplyGradientDescentT,
                                   delta: ResourceApplyGradientDescentT,
                                   use_locking: bool): ResourceApplyGradientDescent {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyGradientDescent(*#, #, #, #, #)", constructor.}

proc resourceApplyGradientDescent*(scope: Scope,
                                   nvar: oresource,
                                   alpha: ResourceApplyGradientDescentT,
                                   delta: ResourceApplyGradientDescentT,
                                   use_locking: bool = false): ResourceApplyGradientDescent =
  return iiresourceApplyGradientDescent(scope,
                                        nvar,
                                        alpha,
                                        delta,
                                        use_locking)

type ResourceApplyKerasMomentumT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyKerasMomentum*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyKerasMomentum/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyKerasMomentum(scope: Scope,
                                 nvar: oresource,
                                 accum: oresource,
                                 lr: ResourceApplyKerasMomentumT,
                                 grad: ResourceApplyKerasMomentumT,
                                 momentum: ResourceApplyKerasMomentumT,
                                 use_nesterov: bool,
                                 use_locking: bool): ResourceApplyKerasMomentum {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyKerasMomentum(*#, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyKerasMomentum*(scope: Scope,
                                 nvar: oresource,
                                 accum: oresource,
                                 lr: ResourceApplyKerasMomentumT,
                                 grad: ResourceApplyKerasMomentumT,
                                 momentum: ResourceApplyKerasMomentumT,
                                 use_nesterov: bool = false,
                                 use_locking: bool = false): ResourceApplyKerasMomentum =
  return iiresourceApplyKerasMomentum(scope,
                                      nvar,
                                      accum,
                                      lr,
                                      grad,
                                      momentum,
                                      use_nesterov,
                                      use_locking)

type ResourceApplyMomentumT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyMomentum*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyMomentum/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyMomentum(scope: Scope,
                            nvar: oresource,
                            accum: oresource,
                            lr: ResourceApplyMomentumT,
                            grad: ResourceApplyMomentumT,
                            momentum: ResourceApplyMomentumT,
                            use_nesterov: bool,
                            use_locking: bool): ResourceApplyMomentum {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyMomentum(*#, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyMomentum*(scope: Scope,
                            nvar: oresource,
                            accum: oresource,
                            lr: ResourceApplyMomentumT,
                            grad: ResourceApplyMomentumT,
                            momentum: ResourceApplyMomentumT,
                            use_nesterov: bool = false,
                            use_locking: bool = false): ResourceApplyMomentum =
  return iiresourceApplyMomentum(scope,
                                 nvar,
                                 accum,
                                 lr,
                                 grad,
                                 momentum,
                                 use_nesterov,
                                 use_locking)

type ResourceApplyPowerSignT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyPowerSign*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyPowerSign/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyPowerSign(scope: Scope,
                             nvar: oresource,
                             m: oresource,
                             lr: ResourceApplyPowerSignT,
                             logbase: ResourceApplyPowerSignT,
                             sign_decay: ResourceApplyPowerSignT,
                             beta: ResourceApplyPowerSignT,
                             grad: ResourceApplyPowerSignT,
                             use_locking: bool): ResourceApplyPowerSign {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyPowerSign(*#, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyPowerSign*(scope: Scope,
                             nvar: oresource,
                             m: oresource,
                             lr: ResourceApplyPowerSignT,
                             logbase: ResourceApplyPowerSignT,
                             sign_decay: ResourceApplyPowerSignT,
                             beta: ResourceApplyPowerSignT,
                             grad: ResourceApplyPowerSignT,
                             use_locking: bool = false): ResourceApplyPowerSign =
  return iiresourceApplyPowerSign(scope,
                                  nvar,
                                  m,
                                  lr,
                                  logbase,
                                  sign_decay,
                                  beta,
                                  grad,
                                  use_locking)

type ResourceApplyProximalAdagradT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyProximalAdagrad*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyProximalAdagrad/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyProximalAdagrad(scope: Scope,
                                   nvar: oresource,
                                   accum: oresource,
                                   lr: ResourceApplyProximalAdagradT,
                                   l1: ResourceApplyProximalAdagradT,
                                   l2: ResourceApplyProximalAdagradT,
                                   grad: ResourceApplyProximalAdagradT,
                                   use_locking: bool): ResourceApplyProximalAdagrad {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyProximalAdagrad(*#, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyProximalAdagrad*(scope: Scope,
                                   nvar: oresource,
                                   accum: oresource,
                                   lr: ResourceApplyProximalAdagradT,
                                   l1: ResourceApplyProximalAdagradT,
                                   l2: ResourceApplyProximalAdagradT,
                                   grad: ResourceApplyProximalAdagradT,
                                   use_locking: bool = false): ResourceApplyProximalAdagrad =
  return iiresourceApplyProximalAdagrad(scope,
                                        nvar,
                                        accum,
                                        lr,
                                        l1,
                                        l2,
                                        grad,
                                        use_locking)

type ResourceApplyProximalGradientDescentT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyProximalGradientDescent*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyProximalGradientDescent/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyProximalGradientDescent(scope: Scope,
                                           nvar: oresource,
                                           alpha: ResourceApplyProximalGradientDescentT,
                                           l1: ResourceApplyProximalGradientDescentT,
                                           l2: ResourceApplyProximalGradientDescentT,
                                           delta: ResourceApplyProximalGradientDescentT,
                                           use_locking: bool): ResourceApplyProximalGradientDescent {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyProximalGradientDescent(*#, #, #, #, #, #, #)", constructor.}

proc resourceApplyProximalGradientDescent*(scope: Scope,
                                           nvar: oresource,
                                           alpha: ResourceApplyProximalGradientDescentT,
                                           l1: ResourceApplyProximalGradientDescentT,
                                           l2: ResourceApplyProximalGradientDescentT,
                                           delta: ResourceApplyProximalGradientDescentT,
                                           use_locking: bool = false): ResourceApplyProximalGradientDescent =
  return iiresourceApplyProximalGradientDescent(scope,
                                                nvar,
                                                alpha,
                                                l1,
                                                l2,
                                                delta,
                                                use_locking)

type ResourceApplyRMSPropT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ResourceApplyRMSProp*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyRMSProp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceApplyRMSProp(scope: Scope,
                           nvar: oresource,
                           ms: oresource,
                           mom: oresource,
                           lr: ResourceApplyRMSPropT,
                           rho: ResourceApplyRMSPropT,
                           momentum: ResourceApplyRMSPropT,
                           epsilon: ResourceApplyRMSPropT,
                           grad: ResourceApplyRMSPropT,
                           use_locking: bool): ResourceApplyRMSProp {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceApplyRMSProp(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceApplyRMSProp*(scope: Scope,
                           nvar: oresource,
                           ms: oresource,
                           mom: oresource,
                           lr: ResourceApplyRMSPropT,
                           rho: ResourceApplyRMSPropT,
                           momentum: ResourceApplyRMSPropT,
                           epsilon: ResourceApplyRMSPropT,
                           grad: ResourceApplyRMSPropT,
                           use_locking: bool = false): ResourceApplyRMSProp =
  return iiresourceApplyRMSProp(scope,
                                nvar,
                                ms,
                                mom,
                                lr,
                                rho,
                                momentum,
                                epsilon,
                                grad,
                                use_locking)

type ResourceSparseApplyAdadeltaT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyAdadeltaTindices* = oint32 | oint64

type ResourceSparseApplyAdadelta*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyAdadelta/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyAdadelta(scope: Scope,
                                  nvar: oresource,
                                  accum: oresource,
                                  accum_update: oresource,
                                  lr: ResourceSparseApplyAdadeltaT,
                                  rho: ResourceSparseApplyAdadeltaT,
                                  epsilon: ResourceSparseApplyAdadeltaT,
                                  grad: ResourceSparseApplyAdadeltaT,
                                  indices: ResourceSparseApplyAdadeltaTindices,
                                  use_locking: bool): ResourceSparseApplyAdadelta {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyAdadelta(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyAdadelta*(scope: Scope,
                                  nvar: oresource,
                                  accum: oresource,
                                  accum_update: oresource,
                                  lr: ResourceSparseApplyAdadeltaT,
                                  rho: ResourceSparseApplyAdadeltaT,
                                  epsilon: ResourceSparseApplyAdadeltaT,
                                  grad: ResourceSparseApplyAdadeltaT,
                                  indices: ResourceSparseApplyAdadeltaTindices,
                                  use_locking: bool = false): ResourceSparseApplyAdadelta =
  return iiresourceSparseApplyAdadelta(scope,
                                       nvar,
                                       accum,
                                       accum_update,
                                       lr,
                                       rho,
                                       epsilon,
                                       grad,
                                       indices,
                                       use_locking)

type ResourceSparseApplyAdagradT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyAdagradTindices* = oint32 | oint64

type ResourceSparseApplyAdagrad*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyAdagrad/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyAdagrad(scope: Scope,
                                 nvar: oresource,
                                 accum: oresource,
                                 lr: ResourceSparseApplyAdagradT,
                                 grad: ResourceSparseApplyAdagradT,
                                 indices: ResourceSparseApplyAdagradTindices,
                                 update_slots: bool,
                                 use_locking: bool): ResourceSparseApplyAdagrad {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyAdagrad(*#, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyAdagrad*(scope: Scope,
                                 nvar: oresource,
                                 accum: oresource,
                                 lr: ResourceSparseApplyAdagradT,
                                 grad: ResourceSparseApplyAdagradT,
                                 indices: ResourceSparseApplyAdagradTindices,
                                 update_slots: bool = true,
                                 use_locking: bool = false): ResourceSparseApplyAdagrad =
  return iiresourceSparseApplyAdagrad(scope,
                                      nvar,
                                      accum,
                                      lr,
                                      grad,
                                      indices,
                                      update_slots,
                                      use_locking)

type ResourceSparseApplyAdagradDAT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyAdagradDATindices* = oint32 | oint64

type ResourceSparseApplyAdagradDA*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyAdagradDA/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyAdagradDA(scope: Scope,
                                   nvar: oresource,
                                   gradient_accumulator: oresource,
                                   gradient_squared_accumulator: oresource,
                                   grad: ResourceSparseApplyAdagradDAT,
                                   indices: ResourceSparseApplyAdagradDATindices,
                                   lr: ResourceSparseApplyAdagradDAT,
                                   l1: ResourceSparseApplyAdagradDAT,
                                   l2: ResourceSparseApplyAdagradDAT,
                                   global_step: oint64,
                                   use_locking: bool): ResourceSparseApplyAdagradDA {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyAdagradDA(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyAdagradDA*(scope: Scope,
                                   nvar: oresource,
                                   gradient_accumulator: oresource,
                                   gradient_squared_accumulator: oresource,
                                   grad: ResourceSparseApplyAdagradDAT,
                                   indices: ResourceSparseApplyAdagradDATindices,
                                   lr: ResourceSparseApplyAdagradDAT,
                                   l1: ResourceSparseApplyAdagradDAT,
                                   l2: ResourceSparseApplyAdagradDAT,
                                   global_step: oint64,
                                   use_locking: bool = false): ResourceSparseApplyAdagradDA =
  return iiresourceSparseApplyAdagradDA(scope,
                                        nvar,
                                        gradient_accumulator,
                                        gradient_squared_accumulator,
                                        grad,
                                        indices,
                                        lr,
                                        l1,
                                        l2,
                                        global_step,
                                        use_locking)

type ResourceSparseApplyCenteredRMSPropT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyCenteredRMSPropTindices* = oint32 | oint64

type ResourceSparseApplyCenteredRMSProp*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyCenteredRMSProp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyCenteredRMSProp(scope: Scope,
                                         nvar: oresource,
                                         mg: oresource,
                                         ms: oresource,
                                         mom: oresource,
                                         lr: ResourceSparseApplyCenteredRMSPropT,
                                         rho: ResourceSparseApplyCenteredRMSPropT,
                                         momentum: ResourceSparseApplyCenteredRMSPropT,
                                         epsilon: ResourceSparseApplyCenteredRMSPropT,
                                         grad: ResourceSparseApplyCenteredRMSPropT,
                                         indices: ResourceSparseApplyCenteredRMSPropTindices,
                                         use_locking: bool): ResourceSparseApplyCenteredRMSProp {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyCenteredRMSProp(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyCenteredRMSProp*(scope: Scope,
                                         nvar: oresource,
                                         mg: oresource,
                                         ms: oresource,
                                         mom: oresource,
                                         lr: ResourceSparseApplyCenteredRMSPropT,
                                         rho: ResourceSparseApplyCenteredRMSPropT,
                                         momentum: ResourceSparseApplyCenteredRMSPropT,
                                         epsilon: ResourceSparseApplyCenteredRMSPropT,
                                         grad: ResourceSparseApplyCenteredRMSPropT,
                                         indices: ResourceSparseApplyCenteredRMSPropTindices,
                                         use_locking: bool = false): ResourceSparseApplyCenteredRMSProp =
  return iiresourceSparseApplyCenteredRMSProp(scope,
                                              nvar,
                                              mg,
                                              ms,
                                              mom,
                                              lr,
                                              rho,
                                              momentum,
                                              epsilon,
                                              grad,
                                              indices,
                                              use_locking)

type ResourceSparseApplyFtrlT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyFtrlTindices* = oint32 | oint64

type ResourceSparseApplyFtrl*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyFtrl/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyFtrl(scope: Scope,
                              nvar: oresource,
                              accum: oresource,
                              linear: oresource,
                              grad: ResourceSparseApplyFtrlT,
                              indices: ResourceSparseApplyFtrlTindices,
                              lr: ResourceSparseApplyFtrlT,
                              l1: ResourceSparseApplyFtrlT,
                              l2: ResourceSparseApplyFtrlT,
                              lr_power: ResourceSparseApplyFtrlT,
                              use_locking: bool): ResourceSparseApplyFtrl {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyFtrl(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyFtrl*(scope: Scope,
                              nvar: oresource,
                              accum: oresource,
                              linear: oresource,
                              grad: ResourceSparseApplyFtrlT,
                              indices: ResourceSparseApplyFtrlTindices,
                              lr: ResourceSparseApplyFtrlT,
                              l1: ResourceSparseApplyFtrlT,
                              l2: ResourceSparseApplyFtrlT,
                              lr_power: ResourceSparseApplyFtrlT,
                              use_locking: bool = false): ResourceSparseApplyFtrl =
  return iiresourceSparseApplyFtrl(scope,
                                   nvar,
                                   accum,
                                   linear,
                                   grad,
                                   indices,
                                   lr,
                                   l1,
                                   l2,
                                   lr_power,
                                   use_locking)

type ResourceSparseApplyFtrlV2T* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyFtrlV2Tindices* = oint32 | oint64

type ResourceSparseApplyFtrlV2*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyFtrlV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyFtrlV2(scope: Scope,
                                nvar: oresource,
                                accum: oresource,
                                linear: oresource,
                                grad: ResourceSparseApplyFtrlV2T,
                                indices: ResourceSparseApplyFtrlV2Tindices,
                                lr: ResourceSparseApplyFtrlV2T,
                                l1: ResourceSparseApplyFtrlV2T,
                                l2: ResourceSparseApplyFtrlV2T,
                                l2_shrinkage: ResourceSparseApplyFtrlV2T,
                                lr_power: ResourceSparseApplyFtrlV2T,
                                use_locking: bool): ResourceSparseApplyFtrlV2 {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyFtrlV2(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyFtrlV2*(scope: Scope,
                                nvar: oresource,
                                accum: oresource,
                                linear: oresource,
                                grad: ResourceSparseApplyFtrlV2T,
                                indices: ResourceSparseApplyFtrlV2Tindices,
                                lr: ResourceSparseApplyFtrlV2T,
                                l1: ResourceSparseApplyFtrlV2T,
                                l2: ResourceSparseApplyFtrlV2T,
                                l2_shrinkage: ResourceSparseApplyFtrlV2T,
                                lr_power: ResourceSparseApplyFtrlV2T,
                                use_locking: bool = false): ResourceSparseApplyFtrlV2 =
  return iiresourceSparseApplyFtrlV2(scope,
                                     nvar,
                                     accum,
                                     linear,
                                     grad,
                                     indices,
                                     lr,
                                     l1,
                                     l2,
                                     l2_shrinkage,
                                     lr_power,
                                     use_locking)

type ResourceSparseApplyKerasMomentumT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyKerasMomentumTindices* = oint32 | oint64

type ResourceSparseApplyKerasMomentum*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyKerasMomentum/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyKerasMomentum(scope: Scope,
                                       nvar: oresource,
                                       accum: oresource,
                                       lr: ResourceSparseApplyKerasMomentumT,
                                       grad: ResourceSparseApplyKerasMomentumT,
                                       indices: ResourceSparseApplyKerasMomentumTindices,
                                       momentum: ResourceSparseApplyKerasMomentumT,
                                       use_nesterov: bool,
                                       use_locking: bool): ResourceSparseApplyKerasMomentum {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyKerasMomentum(*#, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyKerasMomentum*(scope: Scope,
                                       nvar: oresource,
                                       accum: oresource,
                                       lr: ResourceSparseApplyKerasMomentumT,
                                       grad: ResourceSparseApplyKerasMomentumT,
                                       indices: ResourceSparseApplyKerasMomentumTindices,
                                       momentum: ResourceSparseApplyKerasMomentumT,
                                       use_nesterov: bool = false,
                                       use_locking: bool = false): ResourceSparseApplyKerasMomentum =
  return iiresourceSparseApplyKerasMomentum(scope,
                                            nvar,
                                            accum,
                                            lr,
                                            grad,
                                            indices,
                                            momentum,
                                            use_nesterov,
                                            use_locking)

type ResourceSparseApplyMomentumT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyMomentumTindices* = oint32 | oint64

type ResourceSparseApplyMomentum*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyMomentum/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyMomentum(scope: Scope,
                                  nvar: oresource,
                                  accum: oresource,
                                  lr: ResourceSparseApplyMomentumT,
                                  grad: ResourceSparseApplyMomentumT,
                                  indices: ResourceSparseApplyMomentumTindices,
                                  momentum: ResourceSparseApplyMomentumT,
                                  use_nesterov: bool,
                                  use_locking: bool): ResourceSparseApplyMomentum {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyMomentum(*#, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyMomentum*(scope: Scope,
                                  nvar: oresource,
                                  accum: oresource,
                                  lr: ResourceSparseApplyMomentumT,
                                  grad: ResourceSparseApplyMomentumT,
                                  indices: ResourceSparseApplyMomentumTindices,
                                  momentum: ResourceSparseApplyMomentumT,
                                  use_nesterov: bool = false,
                                  use_locking: bool = false): ResourceSparseApplyMomentum =
  return iiresourceSparseApplyMomentum(scope,
                                       nvar,
                                       accum,
                                       lr,
                                       grad,
                                       indices,
                                       momentum,
                                       use_nesterov,
                                       use_locking)

type ResourceSparseApplyProximalAdagradT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyProximalAdagradTindices* = oint32 | oint64

type ResourceSparseApplyProximalAdagrad*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyProximalAdagrad/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyProximalAdagrad(scope: Scope,
                                         nvar: oresource,
                                         accum: oresource,
                                         lr: ResourceSparseApplyProximalAdagradT,
                                         l1: ResourceSparseApplyProximalAdagradT,
                                         l2: ResourceSparseApplyProximalAdagradT,
                                         grad: ResourceSparseApplyProximalAdagradT,
                                         indices: ResourceSparseApplyProximalAdagradTindices,
                                         use_locking: bool): ResourceSparseApplyProximalAdagrad {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyProximalAdagrad(*#, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyProximalAdagrad*(scope: Scope,
                                         nvar: oresource,
                                         accum: oresource,
                                         lr: ResourceSparseApplyProximalAdagradT,
                                         l1: ResourceSparseApplyProximalAdagradT,
                                         l2: ResourceSparseApplyProximalAdagradT,
                                         grad: ResourceSparseApplyProximalAdagradT,
                                         indices: ResourceSparseApplyProximalAdagradTindices,
                                         use_locking: bool = false): ResourceSparseApplyProximalAdagrad =
  return iiresourceSparseApplyProximalAdagrad(scope,
                                              nvar,
                                              accum,
                                              lr,
                                              l1,
                                              l2,
                                              grad,
                                              indices,
                                              use_locking)

type ResourceSparseApplyProximalGradientDescentT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyProximalGradientDescentTindices* = oint32 | oint64

type ResourceSparseApplyProximalGradientDescent*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyProximalGradientDescent/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyProximalGradientDescent(scope: Scope,
                                                 nvar: oresource,
                                                 alpha: ResourceSparseApplyProximalGradientDescentT,
                                                 l1: ResourceSparseApplyProximalGradientDescentT,
                                                 l2: ResourceSparseApplyProximalGradientDescentT,
                                                 grad: ResourceSparseApplyProximalGradientDescentT,
                                                 indices: ResourceSparseApplyProximalGradientDescentTindices,
                                                 use_locking: bool): ResourceSparseApplyProximalGradientDescent {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyProximalGradientDescent(*#, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyProximalGradientDescent*(scope: Scope,
                                                 nvar: oresource,
                                                 alpha: ResourceSparseApplyProximalGradientDescentT,
                                                 l1: ResourceSparseApplyProximalGradientDescentT,
                                                 l2: ResourceSparseApplyProximalGradientDescentT,
                                                 grad: ResourceSparseApplyProximalGradientDescentT,
                                                 indices: ResourceSparseApplyProximalGradientDescentTindices,
                                                 use_locking: bool = false): ResourceSparseApplyProximalGradientDescent =
  return iiresourceSparseApplyProximalGradientDescent(scope,
                                                      nvar,
                                                      alpha,
                                                      l1,
                                                      l2,
                                                      grad,
                                                      indices,
                                                      use_locking)

type ResourceSparseApplyRMSPropT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceSparseApplyRMSPropTindices* = oint32 | oint64

type ResourceSparseApplyRMSProp*{.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyRMSProp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceSparseApplyRMSProp(scope: Scope,
                                 nvar: oresource,
                                 ms: oresource,
                                 mom: oresource,
                                 lr: ResourceSparseApplyRMSPropT,
                                 rho: ResourceSparseApplyRMSPropT,
                                 momentum: ResourceSparseApplyRMSPropT,
                                 epsilon: ResourceSparseApplyRMSPropT,
                                 grad: ResourceSparseApplyRMSPropT,
                                 indices: ResourceSparseApplyRMSPropTindices,
                                 use_locking: bool): ResourceSparseApplyRMSProp {.header:"../../ops/nn/optim/optim.h", importcpp:"ResourceSparseApplyRMSProp(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceSparseApplyRMSProp*(scope: Scope,
                                 nvar: oresource,
                                 ms: oresource,
                                 mom: oresource,
                                 lr: ResourceSparseApplyRMSPropT,
                                 rho: ResourceSparseApplyRMSPropT,
                                 momentum: ResourceSparseApplyRMSPropT,
                                 epsilon: ResourceSparseApplyRMSPropT,
                                 grad: ResourceSparseApplyRMSPropT,
                                 indices: ResourceSparseApplyRMSPropTindices,
                                 use_locking: bool = false): ResourceSparseApplyRMSProp =
  return iiresourceSparseApplyRMSProp(scope,
                                      nvar,
                                      ms,
                                      mom,
                                      lr,
                                      rho,
                                      momentum,
                                      epsilon,
                                      grad,
                                      indices,
                                      use_locking)

type SparseAccumulatorApplyGradientdtype* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type SparseAccumulatorApplyGradient*{.header:"../../ops/nn/optim/optim.h", importcpp:"SparseAccumulatorApplyGradient/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iisparseAccumulatorApplyGradient(scope: Scope,
                                     handle: ostring,
                                     local_step: oint64,
                                     gradient_indices: oint64,
                                     gradient_values: SparseAccumulatorApplyGradientdtype,
                                     gradient_shape: oint64,
                                     has_known_shape: bool): SparseAccumulatorApplyGradient {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseAccumulatorApplyGradient(*#, #, #, #, #, #, #)", constructor.}

proc sparseAccumulatorApplyGradient*(scope: Scope,
                                     handle: ostring,
                                     local_step: oint64,
                                     gradient_indices: oint64,
                                     gradient_values: SparseAccumulatorApplyGradientdtype,
                                     gradient_shape: oint64,
                                     has_known_shape: bool = false): SparseAccumulatorApplyGradient =
  return iisparseAccumulatorApplyGradient(scope,
                                          handle,
                                          local_step,
                                          gradient_indices,
                                          gradient_values,
                                          gradient_shape,
                                          has_known_shape)

type SparseApplyAdadeltaTindices* = oint32 | oint64

type SparseApplyAdadelta*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyAdadelta/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyAdadelta[oT: oall](scope: Scope,
                          nvar: oT,
                          accum: oT,
                          accum_update: oT,
                          lr: oT,
                          rho: oT,
                          epsilon: oT,
                          grad: oT,
                          indices: SparseApplyAdadeltaTindices,
                          T: DType,
                          use_locking: bool): SparseApplyAdadelta[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyAdadelta(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyAdadelta*[oT: oall](scope: Scope,
                          nvar: oT,
                          accum: oT,
                          accum_update: oT,
                          lr: oT,
                          rho: oT,
                          epsilon: oT,
                          grad: oT,
                          indices: SparseApplyAdadeltaTindices,
                          use_locking: bool = false): SparseApplyAdadelta[oT] =
  return iisparseApplyAdadelta(scope,
                               nvar,
                               accum,
                               accum_update,
                               lr,
                               rho,
                               epsilon,
                               grad,
                               indices,
                               oT[].oTF,
                               use_locking)

converter sparseApplyAdadeltaToOut*[oT: oall](op: SparseApplyAdadelta[oT]): oT {.inline.} = return op.output

type SparseApplyAdagradTindices* = oint32 | oint64

type SparseApplyAdagrad*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyAdagrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyAdagrad[oT: oall](scope: Scope,
                         nvar: oT,
                         accum: oT,
                         lr: oT,
                         grad: oT,
                         indices: SparseApplyAdagradTindices,
                         T: DType,
                         update_slots: bool,
                         use_locking: bool): SparseApplyAdagrad[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyAdagrad(*#, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyAdagrad*[oT: oall](scope: Scope,
                         nvar: oT,
                         accum: oT,
                         lr: oT,
                         grad: oT,
                         indices: SparseApplyAdagradTindices,
                         update_slots: bool = true,
                         use_locking: bool = false): SparseApplyAdagrad[oT] =
  return iisparseApplyAdagrad(scope,
                              nvar,
                              accum,
                              lr,
                              grad,
                              indices,
                              oT[].oTF,
                              update_slots,
                              use_locking)

converter sparseApplyAdagradToOut*[oT: oall](op: SparseApplyAdagrad[oT]): oT {.inline.} = return op.output

type SparseApplyAdagradDATindices* = oint32 | oint64

type SparseApplyAdagradDA*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyAdagradDA/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyAdagradDA[oT: oall](scope: Scope,
                           nvar: oT,
                           gradient_accumulator: oT,
                           gradient_squared_accumulator: oT,
                           grad: oT,
                           indices: SparseApplyAdagradDATindices,
                           lr: oT,
                           l1: oT,
                           l2: oT,
                           global_step: oint64,
                           T: DType,
                           use_locking: bool): SparseApplyAdagradDA[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyAdagradDA(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyAdagradDA*[oT: oall](scope: Scope,
                           nvar: oT,
                           gradient_accumulator: oT,
                           gradient_squared_accumulator: oT,
                           grad: oT,
                           indices: SparseApplyAdagradDATindices,
                           lr: oT,
                           l1: oT,
                           l2: oT,
                           global_step: oint64,
                           use_locking: bool = false): SparseApplyAdagradDA[oT] =
  return iisparseApplyAdagradDA(scope,
                                nvar,
                                gradient_accumulator,
                                gradient_squared_accumulator,
                                grad,
                                indices,
                                lr,
                                l1,
                                l2,
                                global_step,
                                oT[].oTF,
                                use_locking)

converter sparseApplyAdagradDAToOut*[oT: oall](op: SparseApplyAdagradDA[oT]): oT {.inline.} = return op.output

type SparseApplyCenteredRMSPropTindices* = oint32 | oint64

type SparseApplyCenteredRMSProp*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyCenteredRMSProp/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyCenteredRMSProp[oT: oall](scope: Scope,
                                 nvar: oT,
                                 mg: oT,
                                 ms: oT,
                                 mom: oT,
                                 lr: oT,
                                 rho: oT,
                                 momentum: oT,
                                 epsilon: oT,
                                 grad: oT,
                                 indices: SparseApplyCenteredRMSPropTindices,
                                 T: DType,
                                 use_locking: bool): SparseApplyCenteredRMSProp[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyCenteredRMSProp(*#, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyCenteredRMSProp*[oT: oall](scope: Scope,
                                 nvar: oT,
                                 mg: oT,
                                 ms: oT,
                                 mom: oT,
                                 lr: oT,
                                 rho: oT,
                                 momentum: oT,
                                 epsilon: oT,
                                 grad: oT,
                                 indices: SparseApplyCenteredRMSPropTindices,
                                 use_locking: bool = false): SparseApplyCenteredRMSProp[oT] =
  return iisparseApplyCenteredRMSProp(scope,
                                      nvar,
                                      mg,
                                      ms,
                                      mom,
                                      lr,
                                      rho,
                                      momentum,
                                      epsilon,
                                      grad,
                                      indices,
                                      oT[].oTF,
                                      use_locking)

converter sparseApplyCenteredRMSPropToOut*[oT: oall](op: SparseApplyCenteredRMSProp[oT]): oT {.inline.} = return op.output

type SparseApplyFtrlTindices* = oint32 | oint64

type SparseApplyFtrl*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyFtrl/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyFtrl[oT: oall](scope: Scope,
                      nvar: oT,
                      accum: oT,
                      linear: oT,
                      grad: oT,
                      indices: SparseApplyFtrlTindices,
                      lr: oT,
                      l1: oT,
                      l2: oT,
                      lr_power: oT,
                      T: DType,
                      use_locking: bool): SparseApplyFtrl[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyFtrl(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyFtrl*[oT: oall](scope: Scope,
                      nvar: oT,
                      accum: oT,
                      linear: oT,
                      grad: oT,
                      indices: SparseApplyFtrlTindices,
                      lr: oT,
                      l1: oT,
                      l2: oT,
                      lr_power: oT,
                      use_locking: bool = false): SparseApplyFtrl[oT] =
  return iisparseApplyFtrl(scope,
                           nvar,
                           accum,
                           linear,
                           grad,
                           indices,
                           lr,
                           l1,
                           l2,
                           lr_power,
                           oT[].oTF,
                           use_locking)

converter sparseApplyFtrlToOut*[oT: oall](op: SparseApplyFtrl[oT]): oT {.inline.} = return op.output

type SparseApplyFtrlV2Tindices* = oint32 | oint64

type SparseApplyFtrlV2*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyFtrlV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyFtrlV2[oT: oall](scope: Scope,
                        nvar: oT,
                        accum: oT,
                        linear: oT,
                        grad: oT,
                        indices: SparseApplyFtrlV2Tindices,
                        lr: oT,
                        l1: oT,
                        l2: oT,
                        l2_shrinkage: oT,
                        lr_power: oT,
                        T: DType,
                        use_locking: bool): SparseApplyFtrlV2[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyFtrlV2(*#, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyFtrlV2*[oT: oall](scope: Scope,
                        nvar: oT,
                        accum: oT,
                        linear: oT,
                        grad: oT,
                        indices: SparseApplyFtrlV2Tindices,
                        lr: oT,
                        l1: oT,
                        l2: oT,
                        l2_shrinkage: oT,
                        lr_power: oT,
                        use_locking: bool = false): SparseApplyFtrlV2[oT] =
  return iisparseApplyFtrlV2(scope,
                             nvar,
                             accum,
                             linear,
                             grad,
                             indices,
                             lr,
                             l1,
                             l2,
                             l2_shrinkage,
                             lr_power,
                             oT[].oTF,
                             use_locking)

converter sparseApplyFtrlV2ToOut*[oT: oall](op: SparseApplyFtrlV2[oT]): oT {.inline.} = return op.output

type SparseApplyMomentumTindices* = oint32 | oint64

type SparseApplyMomentum*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyMomentum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyMomentum[oT: oall](scope: Scope,
                          nvar: oT,
                          accum: oT,
                          lr: oT,
                          grad: oT,
                          indices: SparseApplyMomentumTindices,
                          momentum: oT,
                          T: DType,
                          use_nesterov: bool,
                          use_locking: bool): SparseApplyMomentum[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyMomentum(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyMomentum*[oT: oall](scope: Scope,
                          nvar: oT,
                          accum: oT,
                          lr: oT,
                          grad: oT,
                          indices: SparseApplyMomentumTindices,
                          momentum: oT,
                          use_nesterov: bool = false,
                          use_locking: bool = false): SparseApplyMomentum[oT] =
  return iisparseApplyMomentum(scope,
                               nvar,
                               accum,
                               lr,
                               grad,
                               indices,
                               momentum,
                               oT[].oTF,
                               use_nesterov,
                               use_locking)

converter sparseApplyMomentumToOut*[oT: oall](op: SparseApplyMomentum[oT]): oT {.inline.} = return op.output

type SparseApplyProximalAdagradTindices* = oint32 | oint64

type SparseApplyProximalAdagrad*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyProximalAdagrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyProximalAdagrad[oT: oall](scope: Scope,
                                 nvar: oT,
                                 accum: oT,
                                 lr: oT,
                                 l1: oT,
                                 l2: oT,
                                 grad: oT,
                                 indices: SparseApplyProximalAdagradTindices,
                                 T: DType,
                                 use_locking: bool): SparseApplyProximalAdagrad[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyProximalAdagrad(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyProximalAdagrad*[oT: oall](scope: Scope,
                                 nvar: oT,
                                 accum: oT,
                                 lr: oT,
                                 l1: oT,
                                 l2: oT,
                                 grad: oT,
                                 indices: SparseApplyProximalAdagradTindices,
                                 use_locking: bool = false): SparseApplyProximalAdagrad[oT] =
  return iisparseApplyProximalAdagrad(scope,
                                      nvar,
                                      accum,
                                      lr,
                                      l1,
                                      l2,
                                      grad,
                                      indices,
                                      oT[].oTF,
                                      use_locking)

converter sparseApplyProximalAdagradToOut*[oT: oall](op: SparseApplyProximalAdagrad[oT]): oT {.inline.} = return op.output

type SparseApplyProximalGradientDescentTindices* = oint32 | oint64

type SparseApplyProximalGradientDescent*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyProximalGradientDescent/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyProximalGradientDescent[oT: oall](scope: Scope,
                                         nvar: oT,
                                         alpha: oT,
                                         l1: oT,
                                         l2: oT,
                                         grad: oT,
                                         indices: SparseApplyProximalGradientDescentTindices,
                                         T: DType,
                                         use_locking: bool): SparseApplyProximalGradientDescent[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyProximalGradientDescent(*#, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyProximalGradientDescent*[oT: oall](scope: Scope,
                                         nvar: oT,
                                         alpha: oT,
                                         l1: oT,
                                         l2: oT,
                                         grad: oT,
                                         indices: SparseApplyProximalGradientDescentTindices,
                                         use_locking: bool = false): SparseApplyProximalGradientDescent[oT] =
  return iisparseApplyProximalGradientDescent(scope,
                                              nvar,
                                              alpha,
                                              l1,
                                              l2,
                                              grad,
                                              indices,
                                              oT[].oTF,
                                              use_locking)

converter sparseApplyProximalGradientDescentToOut*[oT: oall](op: SparseApplyProximalGradientDescent[oT]): oT {.inline.} = return op.output

type SparseApplyRMSPropTindices* = oint32 | oint64

type SparseApplyRMSProp*[oT:oall] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyRMSProp/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseApplyRMSProp[oT: oall](scope: Scope,
                         nvar: oT,
                         ms: oT,
                         mom: oT,
                         lr: oT,
                         rho: oT,
                         momentum: oT,
                         epsilon: oT,
                         grad: oT,
                         indices: SparseApplyRMSPropTindices,
                         T: DType,
                         use_locking: bool): SparseApplyRMSProp[oT] {.header:"../../ops/nn/optim/optim.h", importcpp:"SparseApplyRMSProp(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseApplyRMSProp*[oT: oall](scope: Scope,
                         nvar: oT,
                         ms: oT,
                         mom: oT,
                         lr: oT,
                         rho: oT,
                         momentum: oT,
                         epsilon: oT,
                         grad: oT,
                         indices: SparseApplyRMSPropTindices,
                         use_locking: bool = false): SparseApplyRMSProp[oT] =
  return iisparseApplyRMSProp(scope,
                              nvar,
                              ms,
                              mom,
                              lr,
                              rho,
                              momentum,
                              epsilon,
                              grad,
                              indices,
                              oT[].oTF,
                              use_locking)

converter sparseApplyRMSPropToOut*[oT: oall](op: SparseApplyRMSProp[oT]): oT {.inline.} = return op.output

