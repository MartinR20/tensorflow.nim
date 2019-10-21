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
class DecodeWav{
  public:
    DecodeWav() {}
    DecodeWav(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t desired_channels = -1, 
           int64_t desired_samples = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class EncodeWav{
  public:
    EncodeWav() {}
    EncodeWav(tensorflow::Scope& scope, 
           tensorflow::Input audio, 
           tensorflow::Input sample_rate);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

