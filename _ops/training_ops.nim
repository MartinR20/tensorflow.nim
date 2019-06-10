import ../core/core.nim
import ../utils/utils.nim

proc ApplyAdadelta(root: Scope, var: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdadelta(*@)".}

proc ApplyAdadelta(root: Scope, var: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, attrs: ApplyAdadeltaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdadelta(*@)".}

proc ApplyAdagrad(root: Scope, var: Out, accum: Out, lr: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdagrad(*@)".}

proc ApplyAdagrad(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, attrs: ApplyAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdagrad(*@)".}

proc ApplyAdagradDA(root: Scope, var: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdagradDA(*@)".}

proc ApplyAdagradDA(root: Scope, var: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ApplyAdagradDAAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdagradDA(*@)".}

proc ApplyAdam(root: Scope, var: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdam(*@)".}

proc ApplyAdam(root: Scope, var: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out, attrs: ApplyAdamAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdam(*@)".}

proc ApplyAddSign(root: Scope, var: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAddSign(*@)".}

proc ApplyAddSign(root: Scope, var: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ApplyAddSignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAddSign(*@)".}

proc ApplyCenteredRMSProp(root: Scope, var: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyCenteredRMSProp(*@)".}

proc ApplyCenteredRMSProp(root: Scope, var: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ApplyCenteredRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyCenteredRMSProp(*@)".}

proc ApplyFtrl(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyFtrl(*@)".}

proc ApplyFtrl(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ApplyFtrlAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyFtrl(*@)".}

proc ApplyFtrlV2(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyFtrlV2(*@)".}

proc ApplyFtrlV2(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ApplyFtrlV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyFtrlV2(*@)".}

proc ApplyGradientDescent(root: Scope, var: Out, alpha: Out, delta: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyGradientDescent(*@)".}

proc ApplyGradientDescent(root: Scope, var: Out, alpha: Out, delta: Out, attrs: ApplyGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyGradientDescent(*@)".}

proc ApplyMomentum(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, momentum: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyMomentum(*@)".}

proc ApplyMomentum(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, momentum: Out, attrs: ApplyMomentumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyMomentum(*@)".}

proc ApplyPowerSign(root: Scope, var: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyPowerSign(*@)".}

proc ApplyPowerSign(root: Scope, var: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ApplyPowerSignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyPowerSign(*@)".}

proc ApplyProximalAdagrad(root: Scope, var: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyProximalAdagrad(*@)".}

proc ApplyProximalAdagrad(root: Scope, var: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, attrs: ApplyProximalAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyProximalAdagrad(*@)".}

proc ApplyProximalGradientDescent(root: Scope, var: Out, alpha: Out, l1: Out, l2: Out, delta: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyProximalGradientDescent(*@)".}

proc ApplyProximalGradientDescent(root: Scope, var: Out, alpha: Out, l1: Out, l2: Out, delta: Out, attrs: ApplyProximalGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyProximalGradientDescent(*@)".}

proc ApplyRMSProp(root: Scope, var: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyRMSProp(*@)".}

proc ApplyRMSProp(root: Scope, var: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ApplyRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyRMSProp(*@)".}

proc ResourceApplyAdadelta(root: Scope, var: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdadelta(*@)".}

proc ResourceApplyAdadelta(root: Scope, var: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, attrs: ResourceApplyAdadeltaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdadelta(*@)".}

proc ResourceApplyAdagrad(root: Scope, var: Out, accum: Out, lr: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagrad(*@)".}

proc ResourceApplyAdagrad(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, attrs: ResourceApplyAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagrad(*@)".}

proc ResourceApplyAdagradDA(root: Scope, var: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagradDA(*@)".}

proc ResourceApplyAdagradDA(root: Scope, var: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ResourceApplyAdagradDAAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagradDA(*@)".}

proc ResourceApplyAdam(root: Scope, var: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdam(*@)".}

proc ResourceApplyAdam(root: Scope, var: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out, attrs: ResourceApplyAdamAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdam(*@)".}

proc ResourceApplyAddSign(root: Scope, var: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAddSign(*@)".}

proc ResourceApplyAddSign(root: Scope, var: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ResourceApplyAddSignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAddSign(*@)".}

proc ResourceApplyCenteredRMSProp(root: Scope, var: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyCenteredRMSProp(*@)".}

proc ResourceApplyCenteredRMSProp(root: Scope, var: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ResourceApplyCenteredRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyCenteredRMSProp(*@)".}

proc ResourceApplyFtrl(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrl(*@)".}

proc ResourceApplyFtrl(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ResourceApplyFtrlAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrl(*@)".}

proc ResourceApplyFtrlV2(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrlV2(*@)".}

proc ResourceApplyFtrlV2(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ResourceApplyFtrlV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrlV2(*@)".}

proc ResourceApplyGradientDescent(root: Scope, var: Out, alpha: Out, delta: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyGradientDescent(*@)".}

proc ResourceApplyGradientDescent(root: Scope, var: Out, alpha: Out, delta: Out, attrs: ResourceApplyGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyGradientDescent(*@)".}

proc ResourceApplyMomentum(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, momentum: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyMomentum(*@)".}

proc ResourceApplyMomentum(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, momentum: Out, attrs: ResourceApplyMomentumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyMomentum(*@)".}

proc ResourceApplyPowerSign(root: Scope, var: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyPowerSign(*@)".}

proc ResourceApplyPowerSign(root: Scope, var: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ResourceApplyPowerSignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyPowerSign(*@)".}

proc ResourceApplyProximalAdagrad(root: Scope, var: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalAdagrad(*@)".}

proc ResourceApplyProximalAdagrad(root: Scope, var: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, attrs: ResourceApplyProximalAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalAdagrad(*@)".}

proc ResourceApplyProximalGradientDescent(root: Scope, var: Out, alpha: Out, l1: Out, l2: Out, delta: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalGradientDescent(*@)".}

proc ResourceApplyProximalGradientDescent(root: Scope, var: Out, alpha: Out, l1: Out, l2: Out, delta: Out, attrs: ResourceApplyProximalGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalGradientDescent(*@)".}

proc ResourceApplyRMSProp(root: Scope, var: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyRMSProp(*@)".}

proc ResourceApplyRMSProp(root: Scope, var: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ResourceApplyRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyRMSProp(*@)".}

proc ResourceSparseApplyAdadelta(root: Scope, var: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdadelta(*@)".}

proc ResourceSparseApplyAdadelta(root: Scope, var: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyAdadeltaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdadelta(*@)".}

proc ResourceSparseApplyAdagrad(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagrad(*@)".}

proc ResourceSparseApplyAdagrad(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagrad(*@)".}

proc ResourceSparseApplyAdagradDA(root: Scope, var: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagradDA(*@)".}

proc ResourceSparseApplyAdagradDA(root: Scope, var: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ResourceSparseApplyAdagradDAAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagradDA(*@)".}

proc ResourceSparseApplyCenteredRMSProp(root: Scope, var: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyCenteredRMSProp(*@)".}

proc ResourceSparseApplyCenteredRMSProp(root: Scope, var: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyCenteredRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyCenteredRMSProp(*@)".}

proc ResourceSparseApplyFtrl(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrl(*@)".}

proc ResourceSparseApplyFtrl(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ResourceSparseApplyFtrlAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrl(*@)".}

proc ResourceSparseApplyFtrlV2(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrlV2(*@)".}

proc ResourceSparseApplyFtrlV2(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ResourceSparseApplyFtrlV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrlV2(*@)".}

proc ResourceSparseApplyMomentum(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyMomentum(*@)".}

proc ResourceSparseApplyMomentum(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out, attrs: ResourceSparseApplyMomentumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyMomentum(*@)".}

proc ResourceSparseApplyProximalAdagrad(root: Scope, var: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalAdagrad(*@)".}

proc ResourceSparseApplyProximalAdagrad(root: Scope, var: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyProximalAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalAdagrad(*@)".}

proc ResourceSparseApplyProximalGradientDescent(root: Scope, var: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalGradientDescent(*@)".}

proc ResourceSparseApplyProximalGradientDescent(root: Scope, var: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyProximalGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalGradientDescent(*@)".}

proc ResourceSparseApplyRMSProp(root: Scope, var: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyRMSProp(*@)".}

proc ResourceSparseApplyRMSProp(root: Scope, var: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyRMSProp(*@)".}

proc SparseApplyAdadelta(root: Scope, var: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdadelta(*@)".}

proc SparseApplyAdadelta(root: Scope, var: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyAdadeltaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdadelta(*@)".}

proc SparseApplyAdagrad(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdagrad(*@)".}

proc SparseApplyAdagrad(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, indices: Out, attrs: SparseApplyAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdagrad(*@)".}

proc SparseApplyAdagradDA(root: Scope, var: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdagradDA(*@)".}

proc SparseApplyAdagradDA(root: Scope, var: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: SparseApplyAdagradDAAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdagradDA(*@)".}

proc SparseApplyCenteredRMSProp(root: Scope, var: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyCenteredRMSProp(*@)".}

proc SparseApplyCenteredRMSProp(root: Scope, var: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyCenteredRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyCenteredRMSProp(*@)".}

proc SparseApplyFtrl(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyFtrl(*@)".}

proc SparseApplyFtrl(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: SparseApplyFtrlAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyFtrl(*@)".}

proc SparseApplyFtrlV2(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyFtrlV2(*@)".}

proc SparseApplyFtrlV2(root: Scope, var: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: SparseApplyFtrlV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyFtrlV2(*@)".}

proc SparseApplyMomentum(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyMomentum(*@)".}

proc SparseApplyMomentum(root: Scope, var: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out, attrs: SparseApplyMomentumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyMomentum(*@)".}

proc SparseApplyProximalAdagrad(root: Scope, var: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyProximalAdagrad(*@)".}

proc SparseApplyProximalAdagrad(root: Scope, var: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: SparseApplyProximalAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyProximalAdagrad(*@)".}

proc SparseApplyProximalGradientDescent(root: Scope, var: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyProximalGradientDescent(*@)".}

proc SparseApplyProximalGradientDescent(root: Scope, var: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: SparseApplyProximalGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyProximalGradientDescent(*@)".}

proc SparseApplyRMSProp(root: Scope, var: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyRMSProp(*@)".}

proc SparseApplyRMSProp(root: Scope, var: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyRMSProp(*@)".}

