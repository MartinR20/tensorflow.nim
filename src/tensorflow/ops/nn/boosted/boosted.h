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
class BoostedTreesBucketize{
  public:
    BoostedTreesBucketize() {}
    BoostedTreesBucketize(tensorflow::Scope& scope, 
           tensorflow::Input float_values, 
           tensorflow::Input bucket_boundaries, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesCalculateBestGainsPerFeature{
  public:
    BoostedTreesCalculateBestGainsPerFeature() {}
    BoostedTreesCalculateBestGainsPerFeature(tensorflow::Scope& scope, 
           tensorflow::Input node_id_range, 
           tensorflow::Input stats_summary_list, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input tree_complexity, 
           tensorflow::Input min_node_weight, 
           int64_t max_splits = 0, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesCenterBias{
  public:
    BoostedTreesCenterBias() {}
    BoostedTreesCenterBias(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input mean_gradients, 
           tensorflow::Input mean_hessians, 
           tensorflow::Input l1, 
           tensorflow::Input l2);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesCreateEnsemble{
  public:
    BoostedTreesCreateEnsemble() {}
    BoostedTreesCreateEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input stamp_token, 
           tensorflow::Input tree_ensemble_serialized);
    tensorflow::Operation operation;
};

#pragma once
class BoostedTreesCreateQuantileStreamResource{
  public:
    BoostedTreesCreateQuantileStreamResource() {}
    BoostedTreesCreateQuantileStreamResource(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input epsilon, 
           tensorflow::Input num_streams, 
           int64_t max_elements = 1099511627776);
    tensorflow::Operation operation;
};

#pragma once
class BoostedTreesDeserializeEnsemble{
  public:
    BoostedTreesDeserializeEnsemble() {}
    BoostedTreesDeserializeEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input stamp_token, 
           tensorflow::Input tree_ensemble_serialized);
    tensorflow::Operation operation;
};

#pragma once
class BoostedTreesEnsembleResourceHandleOp{
  public:
    BoostedTreesEnsembleResourceHandleOp() {}
    BoostedTreesEnsembleResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesGetEnsembleStates{
  public:
    BoostedTreesGetEnsembleStates() {}
    BoostedTreesGetEnsembleStates(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesMakeQuantileSummaries{
  public:
    BoostedTreesMakeQuantileSummaries() {}
    BoostedTreesMakeQuantileSummaries(tensorflow::Scope& scope, 
           tensorflow::Input float_values, 
           tensorflow::Input example_weights, 
           tensorflow::Input epsilon, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesPredict{
  public:
    BoostedTreesPredict() {}
    BoostedTreesPredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input bucketized_features, 
           int64_t num_bucketized_features = 0, 
           int64_t logits_dimension = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesQuantileStreamResourceAddSummaries{
  public:
    BoostedTreesQuantileStreamResourceAddSummaries() {}
    BoostedTreesQuantileStreamResourceAddSummaries(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input summaries, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
};

#pragma once
class BoostedTreesQuantileStreamResourceDeserialize{
  public:
    BoostedTreesQuantileStreamResourceDeserialize() {}
    BoostedTreesQuantileStreamResourceDeserialize(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input bucket_boundaries, 
           int64_t num_streams = 0);
    tensorflow::Operation operation;
};

#pragma once
class BoostedTreesQuantileStreamResourceFlush{
  public:
    BoostedTreesQuantileStreamResourceFlush() {}
    BoostedTreesQuantileStreamResourceFlush(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input num_buckets, 
           bool generate_quantiles = false);
    tensorflow::Operation operation;
};

#pragma once
class BoostedTreesQuantileStreamResourceGetBucketBoundaries{
  public:
    BoostedTreesQuantileStreamResourceGetBucketBoundaries() {}
    BoostedTreesQuantileStreamResourceGetBucketBoundaries(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesQuantileStreamResourceHandleOp{
  public:
    BoostedTreesQuantileStreamResourceHandleOp() {}
    BoostedTreesQuantileStreamResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesSerializeEnsemble{
  public:
    BoostedTreesSerializeEnsemble() {}
    BoostedTreesSerializeEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesTrainingPredict{
  public:
    BoostedTreesTrainingPredict() {}
    BoostedTreesTrainingPredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input cached_tree_ids, 
           tensorflow::Input cached_node_ids, 
           tensorflow::Input bucketized_features, 
           int64_t num_bucketized_features = 0, 
           int64_t logits_dimension = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesUpdateEnsemble{
  public:
    BoostedTreesUpdateEnsemble() {}
    BoostedTreesUpdateEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input feature_ids, 
           tensorflow::Input node_ids, 
           tensorflow::Input gains, 
           tensorflow::Input thresholds, 
           tensorflow::Input left_node_contribs, 
           tensorflow::Input right_node_contribs, 
           tensorflow::Input max_depth, 
           tensorflow::Input learning_rate, 
           int64_t pruning_mode = 0, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
};

#pragma once
class IsBoostedTreesEnsembleInitialized{
  public:
    IsBoostedTreesEnsembleInitialized() {}
    IsBoostedTreesEnsembleInitialized(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IsBoostedTreesQuantileStreamResourceInitialized{
  public:
    IsBoostedTreesQuantileStreamResourceInitialized() {}
    IsBoostedTreesQuantileStreamResourceInitialized(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorForestCreateTreeVariable{
  public:
    TensorForestCreateTreeVariable() {}
    TensorForestCreateTreeVariable(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input tree_config);
    tensorflow::Operation operation;
};

#pragma once
class TensorForestTreeDeserialize{
  public:
    TensorForestTreeDeserialize() {}
    TensorForestTreeDeserialize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input tree_config);
    tensorflow::Operation operation;
};

#pragma once
class TensorForestTreeIsInitializedOp{
  public:
    TensorForestTreeIsInitializedOp() {}
    TensorForestTreeIsInitializedOp(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorForestTreePredict{
  public:
    TensorForestTreePredict() {}
    TensorForestTreePredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input dense_features, 
           int64_t logits_dimension = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorForestTreeResourceHandleOp{
  public:
    TensorForestTreeResourceHandleOp() {}
    TensorForestTreeResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorForestTreeSerialize{
  public:
    TensorForestTreeSerialize() {}
    TensorForestTreeSerialize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorForestTreeSize{
  public:
    TensorForestTreeSize() {}
    TensorForestTreeSize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

