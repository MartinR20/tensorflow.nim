import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, attrs: ApplyAdadeltaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdadelta(*#, #, #, #, #, #, #, #, #)".}

proc iApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, attrs: ApplyAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdagrad(*#, #, #, #, #, #)".}

proc iApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ApplyAdagradDAAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdagradDA(*#, #, #, #, #, #, #, #, #, #)".}

proc iApplyAdam(root: Scope, vvar: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out, attrs: ApplyAdamAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAdam(*#, #, #, #, #, #, #, #, #, #, #, #)".}

proc iApplyAddSign(root: Scope, vvar: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ApplyAddSignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyAddSign(*#, #, #, #, #, #, #, #, #)".}

proc iApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ApplyCenteredRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyCenteredRMSProp(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ApplyFtrlAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyFtrl(*#, #, #, #, #, #, #, #, #, #)".}

proc iApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ApplyFtrlV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyFtrlV2(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iApplyGradientDescent(root: Scope, vvar: Out, alpha: Out, delta: Out, attrs: ApplyGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyGradientDescent(*#, #, #, #, #)".}

proc iApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, momentum: Out, attrs: ApplyMomentumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyMomentum(*#, #, #, #, #, #, #)".}

proc iApplyPowerSign(root: Scope, vvar: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ApplyPowerSignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyPowerSign(*#, #, #, #, #, #, #, #, #)".}

proc iApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, attrs: ApplyProximalAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyProximalAdagrad(*#, #, #, #, #, #, #, #)".}

proc iApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, delta: Out, attrs: ApplyProximalGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyProximalGradientDescent(*#, #, #, #, #, #, #)".}

proc iApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ApplyRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApplyRMSProp(*#, #, #, #, #, #, #, #, #, #)".}

proc iResourceApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, attrs: ResourceApplyAdadeltaAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdadelta(*#, #, #, #, #, #, #, #, #)".}

proc iResourceApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, attrs: ResourceApplyAdagradAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagrad(*#, #, #, #, #, #)".}

proc iResourceApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ResourceApplyAdagradDAAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagradDA(*#, #, #, #, #, #, #, #, #, #)".}

proc iResourceApplyAdam(root: Scope, vvar: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out, attrs: ResourceApplyAdamAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAdam(*#, #, #, #, #, #, #, #, #, #, #, #)".}

proc iResourceApplyAddSign(root: Scope, vvar: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ResourceApplyAddSignAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyAddSign(*#, #, #, #, #, #, #, #, #)".}

proc iResourceApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ResourceApplyCenteredRMSPropAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyCenteredRMSProp(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iResourceApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ResourceApplyFtrlAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrl(*#, #, #, #, #, #, #, #, #, #)".}

proc iResourceApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ResourceApplyFtrlV2Attrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrlV2(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iResourceApplyGradientDescent(root: Scope, vvar: Out, alpha: Out, delta: Out, attrs: ResourceApplyGradientDescentAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyGradientDescent(*#, #, #, #, #)".}

proc iResourceApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, momentum: Out, attrs: ResourceApplyMomentumAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyMomentum(*#, #, #, #, #, #, #)".}

proc iResourceApplyPowerSign(root: Scope, vvar: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ResourceApplyPowerSignAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyPowerSign(*#, #, #, #, #, #, #, #, #)".}

proc iResourceApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, attrs: ResourceApplyProximalAdagradAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalAdagrad(*#, #, #, #, #, #, #, #)".}

proc iResourceApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, delta: Out, attrs: ResourceApplyProximalGradientDescentAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalGradientDescent(*#, #, #, #, #, #, #)".}

proc iResourceApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ResourceApplyRMSPropAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceApplyRMSProp(*#, #, #, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyAdadeltaAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdadelta(*#, #, #, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyAdagradAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagrad(*#, #, #, #, #, #, #)".}

proc iResourceSparseApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ResourceSparseApplyAdagradDAAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagradDA(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyCenteredRMSPropAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyCenteredRMSProp(*#, #, #, #, #, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ResourceSparseApplyFtrlAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrl(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ResourceSparseApplyFtrlV2Attrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrlV2(*#, #, #, #, #, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out, attrs: ResourceSparseApplyMomentumAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyMomentum(*#, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyProximalAdagradAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalAdagrad(*#, #, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyProximalGradientDescentAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalGradientDescent(*#, #, #, #, #, #, #, #)".}

proc iResourceSparseApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyRMSPropAttrs) {.header:std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyRMSProp(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iSparseApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyAdadeltaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdadelta(*#, #, #, #, #, #, #, #, #, #)".}

proc iSparseApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, attrs: SparseApplyAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdagrad(*#, #, #, #, #, #, #)".}

proc iSparseApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: SparseApplyAdagradDAAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyAdagradDA(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iSparseApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyCenteredRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyCenteredRMSProp(*#, #, #, #, #, #, #, #, #, #, #, #)".}

proc iSparseApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: SparseApplyFtrlAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyFtrl(*#, #, #, #, #, #, #, #, #, #, #)".}

proc iSparseApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: SparseApplyFtrlV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyFtrlV2(*#, #, #, #, #, #, #, #, #, #, #, #)".}

proc iSparseApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out, attrs: SparseApplyMomentumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyMomentum(*#, #, #, #, #, #, #, #)".}

proc iSparseApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: SparseApplyProximalAdagradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyProximalAdagrad(*#, #, #, #, #, #, #, #, #)".}

proc iSparseApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: SparseApplyProximalGradientDescentAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyProximalGradientDescent(*#, #, #, #, #, #, #, #)".}

proc iSparseApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyRMSPropAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseApplyRMSProp(*#, #, #, #, #, #, #, #, #, #, #)".}

proc ApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, attrs: ApplyAdadeltaAttrs): Out =
  iApplyAdadelta(root, vvar, accum, accum_update, lr, rho, epsilon, grad, attrs)

proc ApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, useLocking = none(bool)): Out =
  var attrs = ApplyAdadeltaAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyAdadelta(root, vvar, accum, accum_update, lr, rho, epsilon, grad, attrs)

proc ApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, attrs: ApplyAdagradAttrs): Out =
  iApplyAdagrad(root, vvar, accum, lr, grad, attrs)

proc ApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, updateSlots = none(bool), useLocking = none(bool)): Out =
  var attrs = ApplyAdagradAttrs()

  if updateSlots.isSome:
    attrs = attrs.UpdateSlots(updateSlots.get())
  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyAdagrad(root, vvar, accum, lr, grad, attrs)

proc ApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ApplyAdagradDAAttrs): Out =
  iApplyAdagradDA(root, vvar, gradient_accumulator, gradient_squared_accumulator, grad, lr, l1, l2, global_step, attrs)

proc ApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out, useLocking = none(bool)): Out =
  var attrs = ApplyAdagradDAAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyAdagradDA(root, vvar, gradient_accumulator, gradient_squared_accumulator, grad, lr, l1, l2, global_step, attrs)

proc ApplyAdam(root: Scope, vvar: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out, attrs: ApplyAdamAttrs): Out =
  iApplyAdam(root, vvar, m, v, beta1_power, beta2_power, lr, beta1, beta2, epsilon, grad, attrs)

proc ApplyAdam(root: Scope, vvar: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out, useLocking = none(bool), useNesterov = none(bool)): Out =
  var attrs = ApplyAdamAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())
  if useNesterov.isSome:
    attrs = attrs.UseNesterov(useNesterov.get())

  return ApplyAdam(root, vvar, m, v, beta1_power, beta2_power, lr, beta1, beta2, epsilon, grad, attrs)

proc ApplyAddSign(root: Scope, vvar: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ApplyAddSignAttrs): Out =
  iApplyAddSign(root, vvar, m, lr, alpha, sign_decay, beta, grad, attrs)

proc ApplyAddSign(root: Scope, vvar: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out, useLocking = none(bool)): Out =
  var attrs = ApplyAddSignAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyAddSign(root, vvar, m, lr, alpha, sign_decay, beta, grad, attrs)

proc ApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ApplyCenteredRMSPropAttrs): Out =
  iApplyCenteredRMSProp(root, vvar, mg, ms, mom, lr, rho, momentum, epsilon, grad, attrs)

proc ApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, useLocking = none(bool)): Out =
  var attrs = ApplyCenteredRMSPropAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyCenteredRMSProp(root, vvar, mg, ms, mom, lr, rho, momentum, epsilon, grad, attrs)

proc ApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ApplyFtrlAttrs): Out =
  iApplyFtrl(root, vvar, accum, linear, grad, lr, l1, l2, lr_power, attrs)

proc ApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, useLocking = none(bool)): Out =
  var attrs = ApplyFtrlAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyFtrl(root, vvar, accum, linear, grad, lr, l1, l2, lr_power, attrs)

proc ApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ApplyFtrlV2Attrs): Out =
  iApplyFtrlV2(root, vvar, accum, linear, grad, lr, l1, l2, l2_shrinkage, lr_power, attrs)

proc ApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, useLocking = none(bool)): Out =
  var attrs = ApplyFtrlV2Attrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyFtrlV2(root, vvar, accum, linear, grad, lr, l1, l2, l2_shrinkage, lr_power, attrs)

proc ApplyGradientDescent(root: Scope, vvar: Out, alpha: Out, delta: Out, attrs: ApplyGradientDescentAttrs): Out =
  iApplyGradientDescent(root, vvar, alpha, delta, attrs)

proc ApplyGradientDescent(root: Scope, vvar: Out, alpha: Out, delta: Out, useLocking = none(bool)): Out =
  var attrs = ApplyGradientDescentAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyGradientDescent(root, vvar, alpha, delta, attrs)

proc ApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, momentum: Out, attrs: ApplyMomentumAttrs): Out =
  iApplyMomentum(root, vvar, accum, lr, grad, momentum, attrs)

proc ApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, momentum: Out, useLocking = none(bool), useNesterov = none(bool)): Out =
  var attrs = ApplyMomentumAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())
  if useNesterov.isSome:
    attrs = attrs.UseNesterov(useNesterov.get())

  return ApplyMomentum(root, vvar, accum, lr, grad, momentum, attrs)

proc ApplyPowerSign(root: Scope, vvar: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ApplyPowerSignAttrs): Out =
  iApplyPowerSign(root, vvar, m, lr, logbase, sign_decay, beta, grad, attrs)

proc ApplyPowerSign(root: Scope, vvar: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out, useLocking = none(bool)): Out =
  var attrs = ApplyPowerSignAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyPowerSign(root, vvar, m, lr, logbase, sign_decay, beta, grad, attrs)

proc ApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, attrs: ApplyProximalAdagradAttrs): Out =
  iApplyProximalAdagrad(root, vvar, accum, lr, l1, l2, grad, attrs)

proc ApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, useLocking = none(bool)): Out =
  var attrs = ApplyProximalAdagradAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyProximalAdagrad(root, vvar, accum, lr, l1, l2, grad, attrs)

proc ApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, delta: Out, attrs: ApplyProximalGradientDescentAttrs): Out =
  iApplyProximalGradientDescent(root, vvar, alpha, l1, l2, delta, attrs)

proc ApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, delta: Out, useLocking = none(bool)): Out =
  var attrs = ApplyProximalGradientDescentAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyProximalGradientDescent(root, vvar, alpha, l1, l2, delta, attrs)

proc ApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ApplyRMSPropAttrs): Out =
  iApplyRMSProp(root, vvar, ms, mom, lr, rho, momentum, epsilon, grad, attrs)

proc ApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, useLocking = none(bool)): Out =
  var attrs = ApplyRMSPropAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ApplyRMSProp(root, vvar, ms, mom, lr, rho, momentum, epsilon, grad, attrs)

proc ResourceApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, attrs: ResourceApplyAdadeltaAttrs) =
  iResourceApplyAdadelta(root, vvar, accum, accum_update, lr, rho, epsilon, grad, attrs)

proc ResourceApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyAdadeltaAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyAdadelta(root, vvar, accum, accum_update, lr, rho, epsilon, grad, attrs)

proc ResourceApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, attrs: ResourceApplyAdagradAttrs) =
  iResourceApplyAdagrad(root, vvar, accum, lr, grad, attrs)

proc ResourceApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, updateSlots = none(bool), useLocking = none(bool)) =
  var attrs = ResourceApplyAdagradAttrs()

  if updateSlots.isSome:
    attrs = attrs.UpdateSlots(updateSlots.get())
  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyAdagrad(root, vvar, accum, lr, grad, attrs)

proc ResourceApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ResourceApplyAdagradDAAttrs) =
  iResourceApplyAdagradDA(root, vvar, gradient_accumulator, gradient_squared_accumulator, grad, lr, l1, l2, global_step, attrs)

proc ResourceApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, lr: Out, l1: Out, l2: Out, global_step: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyAdagradDAAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyAdagradDA(root, vvar, gradient_accumulator, gradient_squared_accumulator, grad, lr, l1, l2, global_step, attrs)

proc ResourceApplyAdam(root: Scope, vvar: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out, attrs: ResourceApplyAdamAttrs) =
  iResourceApplyAdam(root, vvar, m, v, beta1_power, beta2_power, lr, beta1, beta2, epsilon, grad, attrs)

proc ResourceApplyAdam(root: Scope, vvar: Out, m: Out, v: Out, beta1_power: Out, beta2_power: Out, lr: Out, beta1: Out, beta2: Out, epsilon: Out, grad: Out, useLocking = none(bool), useNesterov = none(bool)) =
  var attrs = ResourceApplyAdamAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())
  if useNesterov.isSome:
    attrs = attrs.UseNesterov(useNesterov.get())

  ResourceApplyAdam(root, vvar, m, v, beta1_power, beta2_power, lr, beta1, beta2, epsilon, grad, attrs)

proc ResourceApplyAddSign(root: Scope, vvar: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ResourceApplyAddSignAttrs) =
  iResourceApplyAddSign(root, vvar, m, lr, alpha, sign_decay, beta, grad, attrs)

proc ResourceApplyAddSign(root: Scope, vvar: Out, m: Out, lr: Out, alpha: Out, sign_decay: Out, beta: Out, grad: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyAddSignAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyAddSign(root, vvar, m, lr, alpha, sign_decay, beta, grad, attrs)

proc ResourceApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ResourceApplyCenteredRMSPropAttrs) =
  iResourceApplyCenteredRMSProp(root, vvar, mg, ms, mom, lr, rho, momentum, epsilon, grad, attrs)

proc ResourceApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyCenteredRMSPropAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyCenteredRMSProp(root, vvar, mg, ms, mom, lr, rho, momentum, epsilon, grad, attrs)

proc ResourceApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ResourceApplyFtrlAttrs) =
  iResourceApplyFtrl(root, vvar, accum, linear, grad, lr, l1, l2, lr_power, attrs)

proc ResourceApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyFtrlAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyFtrl(root, vvar, accum, linear, grad, lr, l1, l2, lr_power, attrs)

proc ResourceApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ResourceApplyFtrlV2Attrs) =
  iResourceApplyFtrlV2(root, vvar, accum, linear, grad, lr, l1, l2, l2_shrinkage, lr_power, attrs)

proc ResourceApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyFtrlV2Attrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyFtrlV2(root, vvar, accum, linear, grad, lr, l1, l2, l2_shrinkage, lr_power, attrs)

proc ResourceApplyGradientDescent(root: Scope, vvar: Out, alpha: Out, delta: Out, attrs: ResourceApplyGradientDescentAttrs) =
  iResourceApplyGradientDescent(root, vvar, alpha, delta, attrs)

proc ResourceApplyGradientDescent(root: Scope, vvar: Out, alpha: Out, delta: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyGradientDescentAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyGradientDescent(root, vvar, alpha, delta, attrs)

proc ResourceApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, momentum: Out, attrs: ResourceApplyMomentumAttrs) =
  iResourceApplyMomentum(root, vvar, accum, lr, grad, momentum, attrs)

proc ResourceApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, momentum: Out, useLocking = none(bool), useNesterov = none(bool)) =
  var attrs = ResourceApplyMomentumAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())
  if useNesterov.isSome:
    attrs = attrs.UseNesterov(useNesterov.get())

  ResourceApplyMomentum(root, vvar, accum, lr, grad, momentum, attrs)

proc ResourceApplyPowerSign(root: Scope, vvar: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out, attrs: ResourceApplyPowerSignAttrs) =
  iResourceApplyPowerSign(root, vvar, m, lr, logbase, sign_decay, beta, grad, attrs)

proc ResourceApplyPowerSign(root: Scope, vvar: Out, m: Out, lr: Out, logbase: Out, sign_decay: Out, beta: Out, grad: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyPowerSignAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyPowerSign(root, vvar, m, lr, logbase, sign_decay, beta, grad, attrs)

proc ResourceApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, attrs: ResourceApplyProximalAdagradAttrs) =
  iResourceApplyProximalAdagrad(root, vvar, accum, lr, l1, l2, grad, attrs)

proc ResourceApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyProximalAdagradAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyProximalAdagrad(root, vvar, accum, lr, l1, l2, grad, attrs)

proc ResourceApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, delta: Out, attrs: ResourceApplyProximalGradientDescentAttrs) =
  iResourceApplyProximalGradientDescent(root, vvar, alpha, l1, l2, delta, attrs)

proc ResourceApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, delta: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyProximalGradientDescentAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyProximalGradientDescent(root, vvar, alpha, l1, l2, delta, attrs)

proc ResourceApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, attrs: ResourceApplyRMSPropAttrs) =
  iResourceApplyRMSProp(root, vvar, ms, mom, lr, rho, momentum, epsilon, grad, attrs)

proc ResourceApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, useLocking = none(bool)) =
  var attrs = ResourceApplyRMSPropAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceApplyRMSProp(root, vvar, ms, mom, lr, rho, momentum, epsilon, grad, attrs)

proc ResourceSparseApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyAdadeltaAttrs) =
  iResourceSparseApplyAdadelta(root, vvar, accum, accum_update, lr, rho, epsilon, grad, indices, attrs)

proc ResourceSparseApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out, useLocking = none(bool)) =
  var attrs = ResourceSparseApplyAdadeltaAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyAdadelta(root, vvar, accum, accum_update, lr, rho, epsilon, grad, indices, attrs)

proc ResourceSparseApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyAdagradAttrs) =
  iResourceSparseApplyAdagrad(root, vvar, accum, lr, grad, indices, attrs)

proc ResourceSparseApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, updateSlots = none(bool), useLocking = none(bool)) =
  var attrs = ResourceSparseApplyAdagradAttrs()

  if updateSlots.isSome:
    attrs = attrs.UpdateSlots(updateSlots.get())
  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyAdagrad(root, vvar, accum, lr, grad, indices, attrs)

proc ResourceSparseApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: ResourceSparseApplyAdagradDAAttrs) =
  iResourceSparseApplyAdagradDA(root, vvar, gradient_accumulator, gradient_squared_accumulator, grad, indices, lr, l1, l2, global_step, attrs)

proc ResourceSparseApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out, useLocking = none(bool)) =
  var attrs = ResourceSparseApplyAdagradDAAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyAdagradDA(root, vvar, gradient_accumulator, gradient_squared_accumulator, grad, indices, lr, l1, l2, global_step, attrs)

proc ResourceSparseApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyCenteredRMSPropAttrs) =
  iResourceSparseApplyCenteredRMSProp(root, vvar, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices, attrs)

proc ResourceSparseApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, useLocking = none(bool)) =
  var attrs = ResourceSparseApplyCenteredRMSPropAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyCenteredRMSProp(root, vvar, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices, attrs)

proc ResourceSparseApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: ResourceSparseApplyFtrlAttrs) =
  iResourceSparseApplyFtrl(root, vvar, accum, linear, grad, indices, lr, l1, l2, lr_power, attrs)

proc ResourceSparseApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, useLocking = none(bool)) =
  var attrs = ResourceSparseApplyFtrlAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyFtrl(root, vvar, accum, linear, grad, indices, lr, l1, l2, lr_power, attrs)

proc ResourceSparseApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: ResourceSparseApplyFtrlV2Attrs) =
  iResourceSparseApplyFtrlV2(root, vvar, accum, linear, grad, indices, lr, l1, l2, l2_shrinkage, lr_power, attrs)

proc ResourceSparseApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, useLocking = none(bool)) =
  var attrs = ResourceSparseApplyFtrlV2Attrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyFtrlV2(root, vvar, accum, linear, grad, indices, lr, l1, l2, l2_shrinkage, lr_power, attrs)

proc ResourceSparseApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out, attrs: ResourceSparseApplyMomentumAttrs) =
  iResourceSparseApplyMomentum(root, vvar, accum, lr, grad, indices, momentum, attrs)

proc ResourceSparseApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out, useLocking = none(bool), useNesterov = none(bool)) =
  var attrs = ResourceSparseApplyMomentumAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())
  if useNesterov.isSome:
    attrs = attrs.UseNesterov(useNesterov.get())

  ResourceSparseApplyMomentum(root, vvar, accum, lr, grad, indices, momentum, attrs)

proc ResourceSparseApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyProximalAdagradAttrs) =
  iResourceSparseApplyProximalAdagrad(root, vvar, accum, lr, l1, l2, grad, indices, attrs)

proc ResourceSparseApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out, useLocking = none(bool)) =
  var attrs = ResourceSparseApplyProximalAdagradAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyProximalAdagrad(root, vvar, accum, lr, l1, l2, grad, indices, attrs)

proc ResourceSparseApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyProximalGradientDescentAttrs) =
  iResourceSparseApplyProximalGradientDescent(root, vvar, alpha, l1, l2, grad, indices, attrs)

proc ResourceSparseApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out, useLocking = none(bool)) =
  var attrs = ResourceSparseApplyProximalGradientDescentAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyProximalGradientDescent(root, vvar, alpha, l1, l2, grad, indices, attrs)

proc ResourceSparseApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: ResourceSparseApplyRMSPropAttrs) =
  iResourceSparseApplyRMSProp(root, vvar, ms, mom, lr, rho, momentum, epsilon, grad, indices, attrs)

proc ResourceSparseApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, useLocking = none(bool)) =
  var attrs = ResourceSparseApplyRMSPropAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  ResourceSparseApplyRMSProp(root, vvar, ms, mom, lr, rho, momentum, epsilon, grad, indices, attrs)

proc SparseApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyAdadeltaAttrs): Out =
  iSparseApplyAdadelta(root, vvar, accum, accum_update, lr, rho, epsilon, grad, indices, attrs)

proc SparseApplyAdadelta(root: Scope, vvar: Out, accum: Out, accum_update: Out, lr: Out, rho: Out, epsilon: Out, grad: Out, indices: Out, useLocking = none(bool)): Out =
  var attrs = SparseApplyAdadeltaAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyAdadelta(root, vvar, accum, accum_update, lr, rho, epsilon, grad, indices, attrs)

proc SparseApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, attrs: SparseApplyAdagradAttrs): Out =
  iSparseApplyAdagrad(root, vvar, accum, lr, grad, indices, attrs)

proc SparseApplyAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, updateSlots = none(bool), useLocking = none(bool)): Out =
  var attrs = SparseApplyAdagradAttrs()

  if updateSlots.isSome:
    attrs = attrs.UpdateSlots(updateSlots.get())
  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyAdagrad(root, vvar, accum, lr, grad, indices, attrs)

proc SparseApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out, attrs: SparseApplyAdagradDAAttrs): Out =
  iSparseApplyAdagradDA(root, vvar, gradient_accumulator, gradient_squared_accumulator, grad, indices, lr, l1, l2, global_step, attrs)

proc SparseApplyAdagradDA(root: Scope, vvar: Out, gradient_accumulator: Out, gradient_squared_accumulator: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, global_step: Out, useLocking = none(bool)): Out =
  var attrs = SparseApplyAdagradDAAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyAdagradDA(root, vvar, gradient_accumulator, gradient_squared_accumulator, grad, indices, lr, l1, l2, global_step, attrs)

proc SparseApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyCenteredRMSPropAttrs): Out =
  iSparseApplyCenteredRMSProp(root, vvar, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices, attrs)

proc SparseApplyCenteredRMSProp(root: Scope, vvar: Out, mg: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, useLocking = none(bool)): Out =
  var attrs = SparseApplyCenteredRMSPropAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyCenteredRMSProp(root, vvar, mg, ms, mom, lr, rho, momentum, epsilon, grad, indices, attrs)

proc SparseApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, attrs: SparseApplyFtrlAttrs): Out =
  iSparseApplyFtrl(root, vvar, accum, linear, grad, indices, lr, l1, l2, lr_power, attrs)

proc SparseApplyFtrl(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, lr_power: Out, useLocking = none(bool)): Out =
  var attrs = SparseApplyFtrlAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyFtrl(root, vvar, accum, linear, grad, indices, lr, l1, l2, lr_power, attrs)

proc SparseApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, attrs: SparseApplyFtrlV2Attrs): Out =
  iSparseApplyFtrlV2(root, vvar, accum, linear, grad, indices, lr, l1, l2, l2_shrinkage, lr_power, attrs)

proc SparseApplyFtrlV2(root: Scope, vvar: Out, accum: Out, linear: Out, grad: Out, indices: Out, lr: Out, l1: Out, l2: Out, l2_shrinkage: Out, lr_power: Out, useLocking = none(bool)): Out =
  var attrs = SparseApplyFtrlV2Attrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyFtrlV2(root, vvar, accum, linear, grad, indices, lr, l1, l2, l2_shrinkage, lr_power, attrs)

proc SparseApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out, attrs: SparseApplyMomentumAttrs): Out =
  iSparseApplyMomentum(root, vvar, accum, lr, grad, indices, momentum, attrs)

proc SparseApplyMomentum(root: Scope, vvar: Out, accum: Out, lr: Out, grad: Out, indices: Out, momentum: Out, useLocking = none(bool), useNesterov = none(bool)): Out =
  var attrs = SparseApplyMomentumAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())
  if useNesterov.isSome:
    attrs = attrs.UseNesterov(useNesterov.get())

  return SparseApplyMomentum(root, vvar, accum, lr, grad, indices, momentum, attrs)

proc SparseApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: SparseApplyProximalAdagradAttrs): Out =
  iSparseApplyProximalAdagrad(root, vvar, accum, lr, l1, l2, grad, indices, attrs)

proc SparseApplyProximalAdagrad(root: Scope, vvar: Out, accum: Out, lr: Out, l1: Out, l2: Out, grad: Out, indices: Out, useLocking = none(bool)): Out =
  var attrs = SparseApplyProximalAdagradAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyProximalAdagrad(root, vvar, accum, lr, l1, l2, grad, indices, attrs)

proc SparseApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out, attrs: SparseApplyProximalGradientDescentAttrs): Out =
  iSparseApplyProximalGradientDescent(root, vvar, alpha, l1, l2, grad, indices, attrs)

proc SparseApplyProximalGradientDescent(root: Scope, vvar: Out, alpha: Out, l1: Out, l2: Out, grad: Out, indices: Out, useLocking = none(bool)): Out =
  var attrs = SparseApplyProximalGradientDescentAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyProximalGradientDescent(root, vvar, alpha, l1, l2, grad, indices, attrs)

proc SparseApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, attrs: SparseApplyRMSPropAttrs): Out =
  iSparseApplyRMSProp(root, vvar, ms, mom, lr, rho, momentum, epsilon, grad, indices, attrs)

proc SparseApplyRMSProp(root: Scope, vvar: Out, ms: Out, mom: Out, lr: Out, rho: Out, momentum: Out, epsilon: Out, grad: Out, indices: Out, useLocking = none(bool)): Out =
  var attrs = SparseApplyRMSPropAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return SparseApplyRMSProp(root, vvar, ms, mom, lr, rho, momentum, epsilon, grad, indices, attrs)

export ApplyAdadelta,
       ApplyAdagrad,
       ApplyAdagradDA,
       ApplyAdam,
       ApplyAddSign,
       ApplyCenteredRMSProp,
       ApplyFtrl,
       ApplyFtrlV2,
       ApplyGradientDescent,
       ApplyMomentum,
       ApplyPowerSign,
       ApplyProximalAdagrad,
       ApplyProximalGradientDescent,
       ApplyRMSProp,
       ResourceApplyAdadelta,
       ResourceApplyAdagrad,
       ResourceApplyAdagradDA,
       ResourceApplyAdam,
       ResourceApplyAddSign,
       ResourceApplyCenteredRMSProp,
       ResourceApplyFtrl,
       ResourceApplyFtrlV2,
       ResourceApplyGradientDescent,
       ResourceApplyMomentum,
       ResourceApplyPowerSign,
       ResourceApplyProximalAdagrad,
       ResourceApplyProximalGradientDescent,
       ResourceApplyRMSProp,
       ResourceSparseApplyAdadelta,
       ResourceSparseApplyAdagrad,
       ResourceSparseApplyAdagradDA,
       ResourceSparseApplyCenteredRMSProp,
       ResourceSparseApplyFtrl,
       ResourceSparseApplyFtrlV2,
       ResourceSparseApplyMomentum,
       ResourceSparseApplyProximalAdagrad,
       ResourceSparseApplyProximalGradientDescent,
       ResourceSparseApplyRMSProp,
       SparseApplyAdadelta,
       SparseApplyAdagrad,
       SparseApplyAdagradDA,
       SparseApplyCenteredRMSProp,
       SparseApplyFtrl,
       SparseApplyFtrlV2,
       SparseApplyMomentum,
       SparseApplyProximalAdagrad,
       SparseApplyProximalGradientDescent,
       SparseApplyRMSProp