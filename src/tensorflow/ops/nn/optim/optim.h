#pragma once
#include "tensorflow/cc/framework/ops.h"
#include "tensorflow/cc/framework/scope.h"
#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/tensor_shape.h"
#include "tensorflow/core/framework/types.h"
#include "tensorflow/core/lib/gtl/array_slice.h"
#include "math.h"

#ifndef conversions 
#define conversions
template <typename T>
tensorflow::Tensor _to_tensor(std::initializer_list<T> _list, std::initializer_list<int> _dtype) {
    auto _ten = tensorflow::Tensor();
    _ten.FromProto(_list, _dtype);
    return _ten;
}
#endif
class AccumulatorApplyGradient{
  public:
    AccumulatorApplyGradient() {}
    AccumulatorApplyGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input local_step, 
           tensorflow::Input gradient);
    tensorflow::Operation operation;
};

#pragma once
class ApplyAdaMax{
  public:
    ApplyAdaMax() {}
    ApplyAdaMax(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyAdadelta{
  public:
    ApplyAdadelta() {}
    ApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyAdagrad{
  public:
    ApplyAdagrad() {}
    ApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false, 
           bool update_slots = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyAdagradDA{
  public:
    ApplyAdagradDA() {}
    ApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyAdam{
  public:
    ApplyAdam() {}
    ApplyAdam(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input beta2_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false, 
           bool use_nesterov = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyAddSign{
  public:
    ApplyAddSign() {}
    ApplyAddSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input alpha, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyCenteredRMSProp{
  public:
    ApplyCenteredRMSProp() {}
    ApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyFtrl{
  public:
    ApplyFtrl() {}
    ApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyFtrlV2{
  public:
    ApplyFtrlV2() {}
    ApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyGradientDescent{
  public:
    ApplyGradientDescent() {}
    ApplyGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input delta, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyMomentum{
  public:
    ApplyMomentum() {}
    ApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false, 
           bool use_nesterov = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyPowerSign{
  public:
    ApplyPowerSign() {}
    ApplyPowerSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input logbase, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyProximalAdagrad{
  public:
    ApplyProximalAdagrad() {}
    ApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyProximalGradientDescent{
  public:
    ApplyProximalGradientDescent() {}
    ApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input delta, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApplyRMSProp{
  public:
    ApplyRMSProp() {}
    ApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResourceApplyAdaMax{
  public:
    ResourceApplyAdaMax() {}
    ResourceApplyAdaMax(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyAdadelta{
  public:
    ResourceApplyAdadelta() {}
    ResourceApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyAdagrad{
  public:
    ResourceApplyAdagrad() {}
    ResourceApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           bool update_slots = true, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyAdagradDA{
  public:
    ResourceApplyAdagradDA() {}
    ResourceApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyAdam{
  public:
    ResourceApplyAdam() {}
    ResourceApplyAdam(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input beta2_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyAdamWithAmsgrad{
  public:
    ResourceApplyAdamWithAmsgrad() {}
    ResourceApplyAdamWithAmsgrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input vhat, 
           tensorflow::Input beta1_power, 
           tensorflow::Input beta2_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyAddSign{
  public:
    ResourceApplyAddSign() {}
    ResourceApplyAddSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input alpha, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyCenteredRMSProp{
  public:
    ResourceApplyCenteredRMSProp() {}
    ResourceApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyFtrl{
  public:
    ResourceApplyFtrl() {}
    ResourceApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyFtrlV2{
  public:
    ResourceApplyFtrlV2() {}
    ResourceApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyGradientDescent{
  public:
    ResourceApplyGradientDescent() {}
    ResourceApplyGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input delta, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyKerasMomentum{
  public:
    ResourceApplyKerasMomentum() {}
    ResourceApplyKerasMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyMomentum{
  public:
    ResourceApplyMomentum() {}
    ResourceApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyPowerSign{
  public:
    ResourceApplyPowerSign() {}
    ResourceApplyPowerSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input logbase, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyProximalAdagrad{
  public:
    ResourceApplyProximalAdagrad() {}
    ResourceApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyProximalGradientDescent{
  public:
    ResourceApplyProximalGradientDescent() {}
    ResourceApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input delta, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceApplyRMSProp{
  public:
    ResourceApplyRMSProp() {}
    ResourceApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyAdadelta{
  public:
    ResourceSparseApplyAdadelta() {}
    ResourceSparseApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyAdagrad{
  public:
    ResourceSparseApplyAdagrad() {}
    ResourceSparseApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool update_slots = true, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyAdagradDA{
  public:
    ResourceSparseApplyAdagradDA() {}
    ResourceSparseApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyCenteredRMSProp{
  public:
    ResourceSparseApplyCenteredRMSProp() {}
    ResourceSparseApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyFtrl{
  public:
    ResourceSparseApplyFtrl() {}
    ResourceSparseApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyFtrlV2{
  public:
    ResourceSparseApplyFtrlV2() {}
    ResourceSparseApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyKerasMomentum{
  public:
    ResourceSparseApplyKerasMomentum() {}
    ResourceSparseApplyKerasMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyMomentum{
  public:
    ResourceSparseApplyMomentum() {}
    ResourceSparseApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyProximalAdagrad{
  public:
    ResourceSparseApplyProximalAdagrad() {}
    ResourceSparseApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyProximalGradientDescent{
  public:
    ResourceSparseApplyProximalGradientDescent() {}
    ResourceSparseApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class ResourceSparseApplyRMSProp{
  public:
    ResourceSparseApplyRMSProp() {}
    ResourceSparseApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

#pragma once
class SparseAccumulatorApplyGradient{
  public:
    SparseAccumulatorApplyGradient() {}
    SparseAccumulatorApplyGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input local_step, 
           tensorflow::Input gradient_indices, 
           tensorflow::Input gradient_values, 
           tensorflow::Input gradient_shape, 
           bool has_known_shape = false);
    tensorflow::Operation operation;
};

#pragma once
class SparseApplyAdadelta{
  public:
    SparseApplyAdadelta() {}
    SparseApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyAdagrad{
  public:
    SparseApplyAdagrad() {}
    SparseApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool update_slots = true, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyAdagradDA{
  public:
    SparseApplyAdagradDA() {}
    SparseApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyCenteredRMSProp{
  public:
    SparseApplyCenteredRMSProp() {}
    SparseApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyFtrl{
  public:
    SparseApplyFtrl() {}
    SparseApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyFtrlV2{
  public:
    SparseApplyFtrlV2() {}
    SparseApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyMomentum{
  public:
    SparseApplyMomentum() {}
    SparseApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyProximalAdagrad{
  public:
    SparseApplyProximalAdagrad() {}
    SparseApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyProximalGradientDescent{
  public:
    SparseApplyProximalGradientDescent() {}
    SparseApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseApplyRMSProp{
  public:
    SparseApplyRMSProp() {}
    SparseApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

