#include "tensorflow/cc/ops/const_op.h"
#include "boosted.h"

BoostedTreesBucketize::BoostedTreesBucketize(tensorflow::Scope& scope, 
           tensorflow::Input float_values, 
           tensorflow::Input bucket_boundaries, 
           int64_t num_features) {
      if (!scope.ok())
          return;
      auto _float_values = ::tensorflow::ops::AsNodeOut(scope, float_values);
      if (!scope.ok())
          return;
      auto _bucket_boundaries = ::tensorflow::ops::AsNodeOut(scope, bucket_boundaries);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesBucketize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesBucketize")
                                   .Input(_float_values)
                                   .Input(_bucket_boundaries)
                                   .Attr("num_features", num_features)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesCalculateBestGainsPerFeature::BoostedTreesCalculateBestGainsPerFeature(tensorflow::Scope& scope, 
           tensorflow::Input node_id_range, 
           tensorflow::Input stats_summary_list, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input tree_complexity, 
           tensorflow::Input min_node_weight, 
           int64_t max_splits, 
           int64_t num_features) {
      if (!scope.ok())
          return;
      auto _node_id_range = ::tensorflow::ops::AsNodeOut(scope, node_id_range);
      if (!scope.ok())
          return;
      auto _stats_summary_list = ::tensorflow::ops::AsNodeOut(scope, stats_summary_list);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      if (!scope.ok())
          return;
      auto _tree_complexity = ::tensorflow::ops::AsNodeOut(scope, tree_complexity);
      if (!scope.ok())
          return;
      auto _min_node_weight = ::tensorflow::ops::AsNodeOut(scope, min_node_weight);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesCalculateBestGainsPerFeature");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesCalculateBestGainsPerFeature")
                                   .Input(_node_id_range)
                                   .Input(_stats_summary_list)
                                   .Input(_l1)
                                   .Input(_l2)
                                   .Input(_tree_complexity)
                                   .Input(_min_node_weight)
                                   .Attr("max_splits", max_splits)
                                   .Attr("num_features", num_features)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesCenterBias::BoostedTreesCenterBias(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input mean_gradients, 
           tensorflow::Input mean_hessians, 
           tensorflow::Input l1, 
           tensorflow::Input l2) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      if (!scope.ok())
          return;
      auto _mean_gradients = ::tensorflow::ops::AsNodeOut(scope, mean_gradients);
      if (!scope.ok())
          return;
      auto _mean_hessians = ::tensorflow::ops::AsNodeOut(scope, mean_hessians);
      if (!scope.ok())
          return;
      auto _l1 = ::tensorflow::ops::AsNodeOut(scope, l1);
      if (!scope.ok())
          return;
      auto _l2 = ::tensorflow::ops::AsNodeOut(scope, l2);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesCenterBias");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesCenterBias")
                                   .Input(_tree_ensemble_handle)
                                   .Input(_mean_gradients)
                                   .Input(_mean_hessians)
                                   .Input(_l1)
                                   .Input(_l2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesCreateEnsemble::BoostedTreesCreateEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input stamp_token, 
           tensorflow::Input tree_ensemble_serialized) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      if (!scope.ok())
          return;
      auto _stamp_token = ::tensorflow::ops::AsNodeOut(scope, stamp_token);
      if (!scope.ok())
          return;
      auto _tree_ensemble_serialized = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_serialized);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesCreateEnsemble");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesCreateEnsemble")
                                   .Input(_tree_ensemble_handle)
                                   .Input(_stamp_token)
                                   .Input(_tree_ensemble_serialized)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

BoostedTreesCreateQuantileStreamResource::BoostedTreesCreateQuantileStreamResource(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input epsilon, 
           tensorflow::Input num_streams, 
           int64_t max_elements) {
      if (!scope.ok())
          return;
      auto _quantile_stream_resource_handle = ::tensorflow::ops::AsNodeOut(scope, quantile_stream_resource_handle);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      if (!scope.ok())
          return;
      auto _num_streams = ::tensorflow::ops::AsNodeOut(scope, num_streams);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesCreateQuantileStreamResource");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesCreateQuantileStreamResource")
                                   .Input(_quantile_stream_resource_handle)
                                   .Input(_epsilon)
                                   .Input(_num_streams)
                                   .Attr("max_elements", max_elements)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

BoostedTreesDeserializeEnsemble::BoostedTreesDeserializeEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input stamp_token, 
           tensorflow::Input tree_ensemble_serialized) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      if (!scope.ok())
          return;
      auto _stamp_token = ::tensorflow::ops::AsNodeOut(scope, stamp_token);
      if (!scope.ok())
          return;
      auto _tree_ensemble_serialized = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_serialized);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesDeserializeEnsemble");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesDeserializeEnsemble")
                                   .Input(_tree_ensemble_handle)
                                   .Input(_stamp_token)
                                   .Input(_tree_ensemble_serialized)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

BoostedTreesEnsembleResourceHandleOp::BoostedTreesEnsembleResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesEnsembleResourceHandleOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesEnsembleResourceHandleOp")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesGetEnsembleStates::BoostedTreesGetEnsembleStates(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesGetEnsembleStates");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesGetEnsembleStates")
                                   .Input(_tree_ensemble_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesMakeQuantileSummaries::BoostedTreesMakeQuantileSummaries(tensorflow::Scope& scope, 
           tensorflow::Input float_values, 
           tensorflow::Input example_weights, 
           tensorflow::Input epsilon, 
           int64_t num_features) {
      if (!scope.ok())
          return;
      auto _float_values = ::tensorflow::ops::AsNodeOut(scope, float_values);
      if (!scope.ok())
          return;
      auto _example_weights = ::tensorflow::ops::AsNodeOut(scope, example_weights);
      if (!scope.ok())
          return;
      auto _epsilon = ::tensorflow::ops::AsNodeOut(scope, epsilon);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesMakeQuantileSummaries");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesMakeQuantileSummaries")
                                   .Input(_float_values)
                                   .Input(_example_weights)
                                   .Input(_epsilon)
                                   .Attr("num_features", num_features)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesPredict::BoostedTreesPredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input bucketized_features, 
           int64_t num_bucketized_features, 
           int64_t logits_dimension) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      if (!scope.ok())
          return;
      auto _bucketized_features = ::tensorflow::ops::AsNodeOut(scope, bucketized_features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesPredict");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesPredict")
                                   .Input(_tree_ensemble_handle)
                                   .Input(_bucketized_features)
                                   .Attr("num_bucketized_features", num_bucketized_features)
                                   .Attr("logits_dimension", logits_dimension)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesQuantileStreamResourceAddSummaries::BoostedTreesQuantileStreamResourceAddSummaries(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input summaries, 
           int64_t num_features) {
      if (!scope.ok())
          return;
      auto _quantile_stream_resource_handle = ::tensorflow::ops::AsNodeOut(scope, quantile_stream_resource_handle);
      if (!scope.ok())
          return;
      auto _summaries = ::tensorflow::ops::AsNodeOut(scope, summaries);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesQuantileStreamResourceAddSummaries");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesQuantileStreamResourceAddSummaries")
                                   .Input(_quantile_stream_resource_handle)
                                   .Input(_summaries)
                                   .Attr("num_features", num_features)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

BoostedTreesQuantileStreamResourceDeserialize::BoostedTreesQuantileStreamResourceDeserialize(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input bucket_boundaries, 
           int64_t num_streams) {
      if (!scope.ok())
          return;
      auto _quantile_stream_resource_handle = ::tensorflow::ops::AsNodeOut(scope, quantile_stream_resource_handle);
      if (!scope.ok())
          return;
      auto _bucket_boundaries = ::tensorflow::ops::AsNodeOut(scope, bucket_boundaries);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesQuantileStreamResourceDeserialize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesQuantileStreamResourceDeserialize")
                                   .Input(_quantile_stream_resource_handle)
                                   .Input(_bucket_boundaries)
                                   .Attr("num_streams", num_streams)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

BoostedTreesQuantileStreamResourceFlush::BoostedTreesQuantileStreamResourceFlush(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input num_buckets, 
           bool generate_quantiles) {
      if (!scope.ok())
          return;
      auto _quantile_stream_resource_handle = ::tensorflow::ops::AsNodeOut(scope, quantile_stream_resource_handle);
      if (!scope.ok())
          return;
      auto _num_buckets = ::tensorflow::ops::AsNodeOut(scope, num_buckets);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesQuantileStreamResourceFlush");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesQuantileStreamResourceFlush")
                                   .Input(_quantile_stream_resource_handle)
                                   .Input(_num_buckets)
                                   .Attr("generate_quantiles", generate_quantiles)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

BoostedTreesQuantileStreamResourceGetBucketBoundaries::BoostedTreesQuantileStreamResourceGetBucketBoundaries(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           int64_t num_features) {
      if (!scope.ok())
          return;
      auto _quantile_stream_resource_handle = ::tensorflow::ops::AsNodeOut(scope, quantile_stream_resource_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesQuantileStreamResourceGetBucketBoundaries");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesQuantileStreamResourceGetBucketBoundaries")
                                   .Input(_quantile_stream_resource_handle)
                                   .Attr("num_features", num_features)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesQuantileStreamResourceHandleOp::BoostedTreesQuantileStreamResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesQuantileStreamResourceHandleOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesQuantileStreamResourceHandleOp")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesSerializeEnsemble::BoostedTreesSerializeEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesSerializeEnsemble");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesSerializeEnsemble")
                                   .Input(_tree_ensemble_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesTrainingPredict::BoostedTreesTrainingPredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input cached_tree_ids, 
           tensorflow::Input cached_node_ids, 
           tensorflow::Input bucketized_features, 
           int64_t num_bucketized_features, 
           int64_t logits_dimension) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      if (!scope.ok())
          return;
      auto _cached_tree_ids = ::tensorflow::ops::AsNodeOut(scope, cached_tree_ids);
      if (!scope.ok())
          return;
      auto _cached_node_ids = ::tensorflow::ops::AsNodeOut(scope, cached_node_ids);
      if (!scope.ok())
          return;
      auto _bucketized_features = ::tensorflow::ops::AsNodeOut(scope, bucketized_features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesTrainingPredict");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesTrainingPredict")
                                   .Input(_tree_ensemble_handle)
                                   .Input(_cached_tree_ids)
                                   .Input(_cached_node_ids)
                                   .Input(_bucketized_features)
                                   .Attr("num_bucketized_features", num_bucketized_features)
                                   .Attr("logits_dimension", logits_dimension)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesUpdateEnsemble::BoostedTreesUpdateEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input feature_ids, 
           tensorflow::Input node_ids, 
           tensorflow::Input gains, 
           tensorflow::Input thresholds, 
           tensorflow::Input left_node_contribs, 
           tensorflow::Input right_node_contribs, 
           tensorflow::Input max_depth, 
           tensorflow::Input learning_rate, 
           int64_t pruning_mode, 
           int64_t num_features) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      if (!scope.ok())
          return;
      auto _feature_ids = ::tensorflow::ops::AsNodeOut(scope, feature_ids);
      if (!scope.ok())
          return;
      auto _node_ids = ::tensorflow::ops::AsNodeOut(scope, node_ids);
      if (!scope.ok())
          return;
      auto _gains = ::tensorflow::ops::AsNodeOut(scope, gains);
      if (!scope.ok())
          return;
      auto _thresholds = ::tensorflow::ops::AsNodeOut(scope, thresholds);
      if (!scope.ok())
          return;
      auto _left_node_contribs = ::tensorflow::ops::AsNodeOut(scope, left_node_contribs);
      if (!scope.ok())
          return;
      auto _right_node_contribs = ::tensorflow::ops::AsNodeOut(scope, right_node_contribs);
      if (!scope.ok())
          return;
      auto _max_depth = ::tensorflow::ops::AsNodeOut(scope, max_depth);
      if (!scope.ok())
          return;
      auto _learning_rate = ::tensorflow::ops::AsNodeOut(scope, learning_rate);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesUpdateEnsemble");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesUpdateEnsemble")
                                   .Input(_tree_ensemble_handle)
                                   .Input(_feature_ids)
                                   .Input(_node_ids)
                                   .Input(_gains)
                                   .Input(_thresholds)
                                   .Input(_left_node_contribs)
                                   .Input(_right_node_contribs)
                                   .Input(_max_depth)
                                   .Input(_learning_rate)
                                   .Attr("pruning_mode", pruning_mode)
                                   .Attr("num_features", num_features)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

IsBoostedTreesEnsembleInitialized::IsBoostedTreesEnsembleInitialized(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IsBoostedTreesEnsembleInitialized");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IsBoostedTreesEnsembleInitialized")
                                   .Input(_tree_ensemble_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IsBoostedTreesQuantileStreamResourceInitialized::IsBoostedTreesQuantileStreamResourceInitialized(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle) {
      if (!scope.ok())
          return;
      auto _quantile_stream_resource_handle = ::tensorflow::ops::AsNodeOut(scope, quantile_stream_resource_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IsBoostedTreesQuantileStreamResourceInitialized");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IsBoostedTreesQuantileStreamResourceInitialized")
                                   .Input(_quantile_stream_resource_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorForestCreateTreeVariable::TensorForestCreateTreeVariable(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input tree_config) {
      if (!scope.ok())
          return;
      auto _tree_handle = ::tensorflow::ops::AsNodeOut(scope, tree_handle);
      if (!scope.ok())
          return;
      auto _tree_config = ::tensorflow::ops::AsNodeOut(scope, tree_config);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorForestCreateTreeVariable");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorForestCreateTreeVariable")
                                   .Input(_tree_handle)
                                   .Input(_tree_config)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

TensorForestTreeDeserialize::TensorForestTreeDeserialize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input tree_config) {
      if (!scope.ok())
          return;
      auto _tree_handle = ::tensorflow::ops::AsNodeOut(scope, tree_handle);
      if (!scope.ok())
          return;
      auto _tree_config = ::tensorflow::ops::AsNodeOut(scope, tree_config);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorForestTreeDeserialize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorForestTreeDeserialize")
                                   .Input(_tree_handle)
                                   .Input(_tree_config)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

TensorForestTreeIsInitializedOp::TensorForestTreeIsInitializedOp(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle) {
      if (!scope.ok())
          return;
      auto _tree_handle = ::tensorflow::ops::AsNodeOut(scope, tree_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorForestTreeIsInitializedOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorForestTreeIsInitializedOp")
                                   .Input(_tree_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorForestTreePredict::TensorForestTreePredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input dense_features, 
           int64_t logits_dimension) {
      if (!scope.ok())
          return;
      auto _tree_handle = ::tensorflow::ops::AsNodeOut(scope, tree_handle);
      if (!scope.ok())
          return;
      auto _dense_features = ::tensorflow::ops::AsNodeOut(scope, dense_features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorForestTreePredict");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorForestTreePredict")
                                   .Input(_tree_handle)
                                   .Input(_dense_features)
                                   .Attr("logits_dimension", logits_dimension)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorForestTreeResourceHandleOp::TensorForestTreeResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorForestTreeResourceHandleOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorForestTreeResourceHandleOp")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorForestTreeSerialize::TensorForestTreeSerialize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle) {
      if (!scope.ok())
          return;
      auto _tree_handle = ::tensorflow::ops::AsNodeOut(scope, tree_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorForestTreeSerialize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorForestTreeSerialize")
                                   .Input(_tree_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorForestTreeSize::TensorForestTreeSize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle) {
      if (!scope.ok())
          return;
      auto _tree_handle = ::tensorflow::ops::AsNodeOut(scope, tree_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorForestTreeSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorForestTreeSize")
                                   .Input(_tree_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

