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
class RaggedRange{
  public:
    RaggedRange() {}
    RaggedRange(tensorflow::Scope& scope, 
           tensorflow::Input starts, 
           tensorflow::Input limits, 
           tensorflow::Input deltas);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RaggedTensorToSparse{
  public:
    RaggedTensorToSparse() {}
    RaggedTensorToSparse(tensorflow::Scope& scope, 
           tensorflow::Input rt_nested_splits, 
           tensorflow::Input rt_dense_values, 
           int64_t RAGGED_RANK = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

