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
class CTCLoss{
  public:
    CTCLoss() {}
    CTCLoss(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input labels_indices, 
           tensorflow::Input labels_values, 
           tensorflow::Input sequence_length, 
           bool preprocess_collapse_repeated = false, 
           bool ctc_merge_repeated = true, 
           bool ignore_longer_outputs_than_inputs = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class L2Loss{
  public:
    L2Loss() {}
    L2Loss(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

