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
class Elu{
  public:
    Elu() {}
    Elu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class EluGrad{
  public:
    EluGrad() {}
    EluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input outputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LeakyRelu{
  public:
    LeakyRelu() {}
    LeakyRelu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           float alpha = 0.2000000029802322, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LeakyReluGrad{
  public:
    LeakyReluGrad() {}
    LeakyReluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           float alpha = 0.2000000029802322, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LogSoftmax{
  public:
    LogSoftmax() {}
    LogSoftmax(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class QuantizedRelu{
  public:
    QuantizedRelu() {}
    QuantizedRelu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type = tensorflow::DT_QUINT8);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class QuantizedReluX{
  public:
    QuantizedReluX() {}
    QuantizedReluX(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input max_value, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type = tensorflow::DT_QUINT8);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Relu{
  public:
    Relu() {}
    Relu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Relu6{
  public:
    Relu6() {}
    Relu6(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Relu6Grad{
  public:
    Relu6Grad() {}
    Relu6Grad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ReluGrad{
  public:
    ReluGrad() {}
    ReluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Selu{
  public:
    Selu() {}
    Selu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Sigmoid{
  public:
    Sigmoid() {}
    Sigmoid(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SigmoidGrad{
  public:
    SigmoidGrad() {}
    SigmoidGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Softmax{
  public:
    Softmax() {}
    Softmax(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SoftmaxCrossEntropyWithLogits{
  public:
    SoftmaxCrossEntropyWithLogits() {}
    SoftmaxCrossEntropyWithLogits(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input labels, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Softplus{
  public:
    Softplus() {}
    Softplus(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SoftplusGrad{
  public:
    SoftplusGrad() {}
    SoftplusGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SoftsignGrad{
  public:
    SoftsignGrad() {}
    SoftsignGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSoftmax{
  public:
    SparseSoftmax() {}
    SparseSoftmax(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

