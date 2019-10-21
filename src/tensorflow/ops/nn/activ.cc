#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/nn/activ.h"

Elu::Elu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Elu");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Elu")
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EluGrad::EluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input outputs, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _outputs = ::tensorflow::ops::AsNodeOut(scope, outputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EluGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EluGrad")
                                   .Input(_gradients)
                                   .Input(_outputs)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LeakyRelu::LeakyRelu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           float alpha, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LeakyRelu");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LeakyRelu")
                                   .Input(_features)
                                   .Attr("alpha", alpha)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LeakyReluGrad::LeakyReluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           float alpha, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LeakyReluGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LeakyReluGrad")
                                   .Input(_gradients)
                                   .Input(_features)
                                   .Attr("alpha", alpha)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LogSoftmax::LogSoftmax(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _logits = ::tensorflow::ops::AsNodeOut(scope, logits);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LogSoftmax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LogSoftmax")
                                   .Input(_logits)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedRelu::QuantizedRelu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      if (!scope.ok())
          return;
      auto _min_features = ::tensorflow::ops::AsNodeOut(scope, min_features);
      if (!scope.ok())
          return;
      auto _max_features = ::tensorflow::ops::AsNodeOut(scope, max_features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedRelu");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedRelu")
                                   .Input(_features)
                                   .Input(_min_features)
                                   .Input(_max_features)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedReluX::QuantizedReluX(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input max_value, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      if (!scope.ok())
          return;
      auto _max_value = ::tensorflow::ops::AsNodeOut(scope, max_value);
      if (!scope.ok())
          return;
      auto _min_features = ::tensorflow::ops::AsNodeOut(scope, min_features);
      if (!scope.ok())
          return;
      auto _max_features = ::tensorflow::ops::AsNodeOut(scope, max_features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedReluX");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedReluX")
                                   .Input(_features)
                                   .Input(_max_value)
                                   .Input(_min_features)
                                   .Input(_max_features)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Relu::Relu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Relu");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Relu")
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Relu6::Relu6(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Relu6");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Relu6")
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Relu6Grad::Relu6Grad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Relu6Grad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Relu6Grad")
                                   .Input(_gradients)
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReluGrad::ReluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReluGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReluGrad")
                                   .Input(_gradients)
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Selu::Selu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Selu");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Selu")
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Sigmoid::Sigmoid(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Sigmoid");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Sigmoid")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SigmoidGrad::SigmoidGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _dy = ::tensorflow::ops::AsNodeOut(scope, dy);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SigmoidGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SigmoidGrad")
                                   .Input(_y)
                                   .Input(_dy)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Softmax::Softmax(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _logits = ::tensorflow::ops::AsNodeOut(scope, logits);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Softmax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Softmax")
                                   .Input(_logits)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SoftmaxCrossEntropyWithLogits::SoftmaxCrossEntropyWithLogits(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input labels, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      if (!scope.ok())
          return;
      auto _labels = ::tensorflow::ops::AsNodeOut(scope, labels);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SoftmaxCrossEntropyWithLogits");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SoftmaxCrossEntropyWithLogits")
                                   .Input(_features)
                                   .Input(_labels)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Softplus::Softplus(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Softplus");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Softplus")
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SoftplusGrad::SoftplusGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SoftplusGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SoftplusGrad")
                                   .Input(_gradients)
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SoftsignGrad::SoftsignGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SoftsignGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SoftsignGrad")
                                   .Input(_gradients)
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSoftmax::SparseSoftmax(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _sp_indices = ::tensorflow::ops::AsNodeOut(scope, sp_indices);
      if (!scope.ok())
          return;
      auto _sp_values = ::tensorflow::ops::AsNodeOut(scope, sp_values);
      if (!scope.ok())
          return;
      auto _sp_shape = ::tensorflow::ops::AsNodeOut(scope, sp_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSoftmax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSoftmax")
                                   .Input(_sp_indices)
                                   .Input(_sp_values)
                                   .Input(_sp_shape)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

