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
class SdcaFprint{
  public:
    SdcaFprint() {}
    SdcaFprint(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SdcaOptimizer{
  public:
    SdcaOptimizer() {}
    SdcaOptimizer(tensorflow::Scope& scope, 
           tensorflow::Input sparse_example_indices, 
           tensorflow::Input sparse_feature_indices, 
           tensorflow::Input sparse_feature_values, 
           tensorflow::Input dense_features, 
           tensorflow::Input example_weights, 
           tensorflow::Input example_labels, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_weights, 
           tensorflow::Input dense_weights, 
           tensorflow::Input example_state_data, 
           tensorflow::string loss_type, 
           bool adaptative = false, 
           int64_t num_sparse_features = 0, 
           int64_t num_sparse_features_with_values = 0, 
           int64_t num_dense_features = 0, 
           float l1 = 0.0, 
           float l2 = 0.0, 
           int64_t num_loss_partitions = 0, 
           int64_t num_inner_iterations = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SdcaOptimizerV2{
  public:
    SdcaOptimizerV2() {}
    SdcaOptimizerV2(tensorflow::Scope& scope, 
           tensorflow::Input sparse_example_indices, 
           tensorflow::Input sparse_feature_indices, 
           tensorflow::Input sparse_feature_values, 
           tensorflow::Input dense_features, 
           tensorflow::Input example_weights, 
           tensorflow::Input example_labels, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_weights, 
           tensorflow::Input dense_weights, 
           tensorflow::Input example_state_data, 
           tensorflow::string loss_type, 
           bool adaptive = false, 
           int64_t num_sparse_features = 0, 
           int64_t num_sparse_features_with_values = 0, 
           int64_t num_dense_features = 0, 
           float l1 = 0.0, 
           float l2 = 0.0, 
           int64_t num_loss_partitions = 0, 
           int64_t num_inner_iterations = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SdcaShrinkL1{
  public:
    SdcaShrinkL1() {}
    SdcaShrinkL1(tensorflow::Scope& scope, 
           tensorflow::Input weights, 
           int64_t num_features = 0, 
           float l1 = 0.0, 
           float l2 = 0.0);
    tensorflow::Operation operation;
};

