#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/nn/optim.h"

AccumulatorApplyGradient::AccumulatorApplyGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input local_step, 
           tensorflow::Input gradient) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _local_step = ::tensorflow::ops::AsNodeOut(scope, local_step);
      if (!scope.ok())
          return;
      auto _gradient = ::tensorflow::ops::AsNodeOut(scope, gradient);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AccumulatorApplyGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AccumulatorApplyGradient")
                                   .Input(_handle)
                                   .Input(_local_step)
                                   .Input(_gradient)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ApplyAdaMax::ApplyAdaMax(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      if (!scope.ok())
          return;
      auto _beta1_power = ::tensorflow::ops::AsNodeOut(scope, beta1_power);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _beta1 = ::tensorflow::ops::AsNodeOut(scope, beta1);
      if (!scope.ok())
          return;
      auto _beta2 = ::tensorflow::ops::AsNodeOut(scope, beta2);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyAdaMax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyAdaMax")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_v)
                                   .Input(_beta1_power)
                                   .Input(_lr)
                                   .Input(_beta1)
                                   .Input(_beta2)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyAdadelta::ApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _accum_update = ::tensorflow::ops::AsNodeOut(scope, accum_update);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyAdadelta");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyAdadelta")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_accum_update)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyAdagrad::ApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::DataType T, 
           bool use_locking, 
           bool update_slots) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyAdagrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyAdagrad")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
                                   .Attr("update_slots", update_slots)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyAdagradDA::ApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _gradient_accumulator = ::tensorflow::ops::AsNodeOut(scope, gradient_accumulator);
      if (!scope.ok())
          return;
      auto _gradient_squared_accumulator = ::tensorflow::ops::AsNodeOut(scope, gradient_squared_accumulator);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _global_step = ::tensorflow::ops::AsNodeOut(scope, global_step);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyAdagradDA");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyAdagradDA")
                                   .Input(_var)
                                   .Input(_gradient_accumulator)
                                   .Input(_gradient_squared_accumulator)
                                   .Input(_grad)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_global_step)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyAdam::ApplyAdam(tensorflow::Scope& scope, 
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
           tensorflow::DataType T, 
           bool use_locking, 
           bool use_nesterov) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      if (!scope.ok())
          return;
      auto _beta1_power = ::tensorflow::ops::AsNodeOut(scope, beta1_power);
      if (!scope.ok())
          return;
      auto _beta2_power = ::tensorflow::ops::AsNodeOut(scope, beta2_power);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _beta1 = ::tensorflow::ops::AsNodeOut(scope, beta1);
      if (!scope.ok())
          return;
      auto _beta2 = ::tensorflow::ops::AsNodeOut(scope, beta2);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyAdam");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyAdam")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_v)
                                   .Input(_beta1_power)
                                   .Input(_beta2_power)
                                   .Input(_lr)
                                   .Input(_beta1)
                                   .Input(_beta2)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
                                   .Attr("use_nesterov", use_nesterov)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyAddSign::ApplyAddSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input alpha, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _sign_decay = ::tensorflow::ops::AsNodeOut(scope, sign_decay);
      if (!scope.ok())
          return;
      auto _beta = ::tensorflow::ops::AsNodeOut(scope, beta);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyAddSign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyAddSign")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_lr)
                                   .Input(_alpha)
                                   .Input(_sign_decay)
                                   .Input(_beta)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyCenteredRMSProp::ApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _mg = ::tensorflow::ops::AsNodeOut(scope, mg);
      if (!scope.ok())
          return;
      auto _ms = ::tensorflow::ops::AsNodeOut(scope, ms);
      if (!scope.ok())
          return;
      auto _mom = ::tensorflow::ops::AsNodeOut(scope, mom);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyCenteredRMSProp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyCenteredRMSProp")
                                   .Input(_var)
                                   .Input(_mg)
                                   .Input(_ms)
                                   .Input(_mom)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_momentum)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyFtrl::ApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _linear = ::tensorflow::ops::AsNodeOut(scope, linear);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _lr_power = ::tensorflow::ops::AsNodeOut(scope, lr_power);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyFtrl");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyFtrl")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_linear)
                                   .Input(_grad)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_lr_power)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyFtrlV2::ApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _linear = ::tensorflow::ops::AsNodeOut(scope, linear);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _l2_shrinkage = ::tensorflow::ops::AsNodeOut(scope, l2_shrinkage);
      if (!scope.ok())
          return;
      auto _lr_power = ::tensorflow::ops::AsNodeOut(scope, lr_power);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyFtrlV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyFtrlV2")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_linear)
                                   .Input(_grad)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_l2_shrinkage)
                                   .Input(_lr_power)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyGradientDescent::ApplyGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input delta, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _delta = ::tensorflow::ops::AsNodeOut(scope, delta);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyGradientDescent");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyGradientDescent")
                                   .Input(_var)
                                   .Input(_alpha)
                                   .Input(_delta)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyMomentum::ApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           tensorflow::DataType T, 
           bool use_locking, 
           bool use_nesterov) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyMomentum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyMomentum")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Input(_momentum)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
                                   .Attr("use_nesterov", use_nesterov)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyPowerSign::ApplyPowerSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input logbase, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _logbase = ::tensorflow::ops::AsNodeOut(scope, logbase);
      if (!scope.ok())
          return;
      auto _sign_decay = ::tensorflow::ops::AsNodeOut(scope, sign_decay);
      if (!scope.ok())
          return;
      auto _beta = ::tensorflow::ops::AsNodeOut(scope, beta);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyPowerSign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyPowerSign")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_lr)
                                   .Input(_logbase)
                                   .Input(_sign_decay)
                                   .Input(_beta)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyProximalAdagrad::ApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyProximalAdagrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyProximalAdagrad")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyProximalGradientDescent::ApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input delta, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _delta = ::tensorflow::ops::AsNodeOut(scope, delta);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyProximalGradientDescent");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyProximalGradientDescent")
                                   .Input(_var)
                                   .Input(_alpha)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_delta)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApplyRMSProp::ApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _ms = ::tensorflow::ops::AsNodeOut(scope, ms);
      if (!scope.ok())
          return;
      auto _mom = ::tensorflow::ops::AsNodeOut(scope, mom);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApplyRMSProp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApplyRMSProp")
                                   .Input(_var)
                                   .Input(_ms)
                                   .Input(_mom)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_momentum)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResourceApplyAdaMax::ResourceApplyAdaMax(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      if (!scope.ok())
          return;
      auto _beta1_power = ::tensorflow::ops::AsNodeOut(scope, beta1_power);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _beta1 = ::tensorflow::ops::AsNodeOut(scope, beta1);
      if (!scope.ok())
          return;
      auto _beta2 = ::tensorflow::ops::AsNodeOut(scope, beta2);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyAdaMax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyAdaMax")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_v)
                                   .Input(_beta1_power)
                                   .Input(_lr)
                                   .Input(_beta1)
                                   .Input(_beta2)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyAdadelta::ResourceApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _accum_update = ::tensorflow::ops::AsNodeOut(scope, accum_update);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyAdadelta");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyAdadelta")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_accum_update)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyAdagrad::ResourceApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           bool update_slots, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyAdagrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyAdagrad")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Attr("update_slots", update_slots)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyAdagradDA::ResourceApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _gradient_accumulator = ::tensorflow::ops::AsNodeOut(scope, gradient_accumulator);
      if (!scope.ok())
          return;
      auto _gradient_squared_accumulator = ::tensorflow::ops::AsNodeOut(scope, gradient_squared_accumulator);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _global_step = ::tensorflow::ops::AsNodeOut(scope, global_step);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyAdagradDA");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyAdagradDA")
                                   .Input(_var)
                                   .Input(_gradient_accumulator)
                                   .Input(_gradient_squared_accumulator)
                                   .Input(_grad)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_global_step)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyAdam::ResourceApplyAdam(tensorflow::Scope& scope, 
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
           bool use_nesterov, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      if (!scope.ok())
          return;
      auto _beta1_power = ::tensorflow::ops::AsNodeOut(scope, beta1_power);
      if (!scope.ok())
          return;
      auto _beta2_power = ::tensorflow::ops::AsNodeOut(scope, beta2_power);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _beta1 = ::tensorflow::ops::AsNodeOut(scope, beta1);
      if (!scope.ok())
          return;
      auto _beta2 = ::tensorflow::ops::AsNodeOut(scope, beta2);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyAdam");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyAdam")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_v)
                                   .Input(_beta1_power)
                                   .Input(_beta2_power)
                                   .Input(_lr)
                                   .Input(_beta1)
                                   .Input(_beta2)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("use_nesterov", use_nesterov)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyAdamWithAmsgrad::ResourceApplyAdamWithAmsgrad(tensorflow::Scope& scope, 
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
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      if (!scope.ok())
          return;
      auto _vhat = ::tensorflow::ops::AsNodeOut(scope, vhat);
      if (!scope.ok())
          return;
      auto _beta1_power = ::tensorflow::ops::AsNodeOut(scope, beta1_power);
      if (!scope.ok())
          return;
      auto _beta2_power = ::tensorflow::ops::AsNodeOut(scope, beta2_power);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _beta1 = ::tensorflow::ops::AsNodeOut(scope, beta1);
      if (!scope.ok())
          return;
      auto _beta2 = ::tensorflow::ops::AsNodeOut(scope, beta2);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyAdamWithAmsgrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyAdamWithAmsgrad")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_v)
                                   .Input(_vhat)
                                   .Input(_beta1_power)
                                   .Input(_beta2_power)
                                   .Input(_lr)
                                   .Input(_beta1)
                                   .Input(_beta2)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyAddSign::ResourceApplyAddSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input alpha, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _sign_decay = ::tensorflow::ops::AsNodeOut(scope, sign_decay);
      if (!scope.ok())
          return;
      auto _beta = ::tensorflow::ops::AsNodeOut(scope, beta);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyAddSign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyAddSign")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_lr)
                                   .Input(_alpha)
                                   .Input(_sign_decay)
                                   .Input(_beta)
                                   .Input(_grad)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyCenteredRMSProp::ResourceApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _mg = ::tensorflow::ops::AsNodeOut(scope, mg);
      if (!scope.ok())
          return;
      auto _ms = ::tensorflow::ops::AsNodeOut(scope, ms);
      if (!scope.ok())
          return;
      auto _mom = ::tensorflow::ops::AsNodeOut(scope, mom);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyCenteredRMSProp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyCenteredRMSProp")
                                   .Input(_var)
                                   .Input(_mg)
                                   .Input(_ms)
                                   .Input(_mom)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_momentum)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyFtrl::ResourceApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _linear = ::tensorflow::ops::AsNodeOut(scope, linear);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _lr_power = ::tensorflow::ops::AsNodeOut(scope, lr_power);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyFtrl");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyFtrl")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_linear)
                                   .Input(_grad)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_lr_power)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyFtrlV2::ResourceApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _linear = ::tensorflow::ops::AsNodeOut(scope, linear);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _l2_shrinkage = ::tensorflow::ops::AsNodeOut(scope, l2_shrinkage);
      if (!scope.ok())
          return;
      auto _lr_power = ::tensorflow::ops::AsNodeOut(scope, lr_power);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyFtrlV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyFtrlV2")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_linear)
                                   .Input(_grad)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_l2_shrinkage)
                                   .Input(_lr_power)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyGradientDescent::ResourceApplyGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input delta, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _delta = ::tensorflow::ops::AsNodeOut(scope, delta);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyGradientDescent");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyGradientDescent")
                                   .Input(_var)
                                   .Input(_alpha)
                                   .Input(_delta)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyKerasMomentum::ResourceApplyKerasMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           bool use_nesterov, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyKerasMomentum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyKerasMomentum")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Input(_momentum)
                                   .Attr("use_nesterov", use_nesterov)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyMomentum::ResourceApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           bool use_nesterov, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyMomentum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyMomentum")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Input(_momentum)
                                   .Attr("use_nesterov", use_nesterov)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyPowerSign::ResourceApplyPowerSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input logbase, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _logbase = ::tensorflow::ops::AsNodeOut(scope, logbase);
      if (!scope.ok())
          return;
      auto _sign_decay = ::tensorflow::ops::AsNodeOut(scope, sign_decay);
      if (!scope.ok())
          return;
      auto _beta = ::tensorflow::ops::AsNodeOut(scope, beta);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyPowerSign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyPowerSign")
                                   .Input(_var)
                                   .Input(_m)
                                   .Input(_lr)
                                   .Input(_logbase)
                                   .Input(_sign_decay)
                                   .Input(_beta)
                                   .Input(_grad)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyProximalAdagrad::ResourceApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyProximalAdagrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyProximalAdagrad")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_grad)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyProximalGradientDescent::ResourceApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input delta, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _delta = ::tensorflow::ops::AsNodeOut(scope, delta);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyProximalGradientDescent");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyProximalGradientDescent")
                                   .Input(_var)
                                   .Input(_alpha)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_delta)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceApplyRMSProp::ResourceApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _ms = ::tensorflow::ops::AsNodeOut(scope, ms);
      if (!scope.ok())
          return;
      auto _mom = ::tensorflow::ops::AsNodeOut(scope, mom);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceApplyRMSProp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceApplyRMSProp")
                                   .Input(_var)
                                   .Input(_ms)
                                   .Input(_mom)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_momentum)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyAdadelta::ResourceSparseApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _accum_update = ::tensorflow::ops::AsNodeOut(scope, accum_update);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyAdadelta");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyAdadelta")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_accum_update)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyAdagrad::ResourceSparseApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool update_slots, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyAdagrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyAdagrad")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("update_slots", update_slots)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyAdagradDA::ResourceSparseApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _gradient_accumulator = ::tensorflow::ops::AsNodeOut(scope, gradient_accumulator);
      if (!scope.ok())
          return;
      auto _gradient_squared_accumulator = ::tensorflow::ops::AsNodeOut(scope, gradient_squared_accumulator);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _global_step = ::tensorflow::ops::AsNodeOut(scope, global_step);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyAdagradDA");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyAdagradDA")
                                   .Input(_var)
                                   .Input(_gradient_accumulator)
                                   .Input(_gradient_squared_accumulator)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_global_step)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyCenteredRMSProp::ResourceSparseApplyCenteredRMSProp(tensorflow::Scope& scope, 
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
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _mg = ::tensorflow::ops::AsNodeOut(scope, mg);
      if (!scope.ok())
          return;
      auto _ms = ::tensorflow::ops::AsNodeOut(scope, ms);
      if (!scope.ok())
          return;
      auto _mom = ::tensorflow::ops::AsNodeOut(scope, mom);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyCenteredRMSProp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyCenteredRMSProp")
                                   .Input(_var)
                                   .Input(_mg)
                                   .Input(_ms)
                                   .Input(_mom)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_momentum)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyFtrl::ResourceSparseApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _linear = ::tensorflow::ops::AsNodeOut(scope, linear);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _lr_power = ::tensorflow::ops::AsNodeOut(scope, lr_power);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyFtrl");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyFtrl")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_linear)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_lr_power)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyFtrlV2::ResourceSparseApplyFtrlV2(tensorflow::Scope& scope, 
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
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _linear = ::tensorflow::ops::AsNodeOut(scope, linear);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _l2_shrinkage = ::tensorflow::ops::AsNodeOut(scope, l2_shrinkage);
      if (!scope.ok())
          return;
      auto _lr_power = ::tensorflow::ops::AsNodeOut(scope, lr_power);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyFtrlV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyFtrlV2")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_linear)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_l2_shrinkage)
                                   .Input(_lr_power)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyKerasMomentum::ResourceSparseApplyKerasMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           bool use_nesterov, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyKerasMomentum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyKerasMomentum")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_momentum)
                                   .Attr("use_nesterov", use_nesterov)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyMomentum::ResourceSparseApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           bool use_nesterov, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyMomentum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyMomentum")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_momentum)
                                   .Attr("use_nesterov", use_nesterov)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyProximalAdagrad::ResourceSparseApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyProximalAdagrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyProximalAdagrad")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyProximalGradientDescent::ResourceSparseApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyProximalGradientDescent");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyProximalGradientDescent")
                                   .Input(_var)
                                   .Input(_alpha)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceSparseApplyRMSProp::ResourceSparseApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _ms = ::tensorflow::ops::AsNodeOut(scope, ms);
      if (!scope.ok())
          return;
      auto _mom = ::tensorflow::ops::AsNodeOut(scope, mom);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceSparseApplyRMSProp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceSparseApplyRMSProp")
                                   .Input(_var)
                                   .Input(_ms)
                                   .Input(_mom)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_momentum)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

SparseAccumulatorApplyGradient::SparseAccumulatorApplyGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input local_step, 
           tensorflow::Input gradient_indices, 
           tensorflow::Input gradient_values, 
           tensorflow::Input gradient_shape, 
           bool has_known_shape) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _local_step = ::tensorflow::ops::AsNodeOut(scope, local_step);
      if (!scope.ok())
          return;
      auto _gradient_indices = ::tensorflow::ops::AsNodeOut(scope, gradient_indices);
      if (!scope.ok())
          return;
      auto _gradient_values = ::tensorflow::ops::AsNodeOut(scope, gradient_values);
      if (!scope.ok())
          return;
      auto _gradient_shape = ::tensorflow::ops::AsNodeOut(scope, gradient_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseAccumulatorApplyGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseAccumulatorApplyGradient")
                                   .Input(_handle)
                                   .Input(_local_step)
                                   .Input(_gradient_indices)
                                   .Input(_gradient_values)
                                   .Input(_gradient_shape)
                                   .Attr("has_known_shape", has_known_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

SparseApplyAdadelta::SparseApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _accum_update = ::tensorflow::ops::AsNodeOut(scope, accum_update);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyAdadelta");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyAdadelta")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_accum_update)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyAdagrad::SparseApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T, 
           bool update_slots, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyAdagrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyAdagrad")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("T", T)
                                   .Attr("update_slots", update_slots)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyAdagradDA::SparseApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _gradient_accumulator = ::tensorflow::ops::AsNodeOut(scope, gradient_accumulator);
      if (!scope.ok())
          return;
      auto _gradient_squared_accumulator = ::tensorflow::ops::AsNodeOut(scope, gradient_squared_accumulator);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _global_step = ::tensorflow::ops::AsNodeOut(scope, global_step);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyAdagradDA");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyAdagradDA")
                                   .Input(_var)
                                   .Input(_gradient_accumulator)
                                   .Input(_gradient_squared_accumulator)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_global_step)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyCenteredRMSProp::SparseApplyCenteredRMSProp(tensorflow::Scope& scope, 
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
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _mg = ::tensorflow::ops::AsNodeOut(scope, mg);
      if (!scope.ok())
          return;
      auto _ms = ::tensorflow::ops::AsNodeOut(scope, ms);
      if (!scope.ok())
          return;
      auto _mom = ::tensorflow::ops::AsNodeOut(scope, mom);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyCenteredRMSProp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyCenteredRMSProp")
                                   .Input(_var)
                                   .Input(_mg)
                                   .Input(_ms)
                                   .Input(_mom)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_momentum)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyFtrl::SparseApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _linear = ::tensorflow::ops::AsNodeOut(scope, linear);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _lr_power = ::tensorflow::ops::AsNodeOut(scope, lr_power);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyFtrl");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyFtrl")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_linear)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_lr_power)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyFtrlV2::SparseApplyFtrlV2(tensorflow::Scope& scope, 
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
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _linear = ::tensorflow::ops::AsNodeOut(scope, linear);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _l2_shrinkage = ::tensorflow::ops::AsNodeOut(scope, l2_shrinkage);
      if (!scope.ok())
          return;
      auto _lr_power = ::tensorflow::ops::AsNodeOut(scope, lr_power);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyFtrlV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyFtrlV2")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_linear)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_l2_shrinkage)
                                   .Input(_lr_power)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyMomentum::SparseApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           tensorflow::DataType T, 
           bool use_nesterov, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyMomentum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyMomentum")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_momentum)
                                   .Attr("T", T)
                                   .Attr("use_nesterov", use_nesterov)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyProximalAdagrad::SparseApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _accum = ::tensorflow::ops::AsNodeOut(scope, accum);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyProximalAdagrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyProximalAdagrad")
                                   .Input(_var)
                                   .Input(_accum)
                                   .Input(_lr)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyProximalGradientDescent::SparseApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyProximalGradientDescent");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyProximalGradientDescent")
                                   .Input(_var)
                                   .Input(_alpha)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseApplyRMSProp::SparseApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _var = ::tensorflow::ops::AsNodeOut(scope, var);
      if (!scope.ok())
          return;
      auto _ms = ::tensorflow::ops::AsNodeOut(scope, ms);
      if (!scope.ok())
          return;
      auto _mom = ::tensorflow::ops::AsNodeOut(scope, mom);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      if (!scope.ok())
          return;
      auto _rho = ::tensorflow::ops::AsNodeOut(scope, rho);
      if (!scope.ok())
          return;
      auto _momentum = ::tensorflow::ops::AsNodeOut(scope, momentum);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseApplyRMSProp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseApplyRMSProp")
                                   .Input(_var)
                                   .Input(_ms)
                                   .Input(_mom)
                                   .Input(_lr)
                                   .Input(_rho)
                                   .Input(_momentum)
                                   .Input(_epsilon)
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

