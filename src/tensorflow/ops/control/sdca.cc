#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/control/sdca.h"

SdcaFprint::SdcaFprint(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SdcaFprint");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SdcaFprint")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SdcaOptimizer::SdcaOptimizer(tensorflow::Scope& scope, 
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
           bool adaptative, 
           int64_t num_sparse_features, 
           int64_t num_sparse_features_with_values, 
           int64_t num_dense_features, 
           float l1, 
           float l2, 
           int64_t num_loss_partitions, 
           int64_t num_inner_iterations) {
      if (!scope.ok())
          return;
      auto _sparse_example_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_example_indices);
      if (!scope.ok())
          return;
      auto _sparse_feature_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_feature_indices);
      if (!scope.ok())
          return;
      auto _sparse_feature_values = ::tensorflow::ops::AsNodeOut(scope, sparse_feature_values);
      if (!scope.ok())
          return;
      auto _dense_features = ::tensorflow::ops::AsNodeOut(scope, dense_features);
      if (!scope.ok())
          return;
      auto _example_weights = ::tensorflow::ops::AsNodeOut(scope, example_weights);
      if (!scope.ok())
          return;
      auto _example_labels = ::tensorflow::ops::AsNodeOut(scope, example_labels);
      if (!scope.ok())
          return;
      auto _sparse_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_indices);
      if (!scope.ok())
          return;
      auto _sparse_weights = ::tensorflow::ops::AsNodeOut(scope, sparse_weights);
      if (!scope.ok())
          return;
      auto _dense_weights = ::tensorflow::ops::AsNodeOut(scope, dense_weights);
      if (!scope.ok())
          return;
      auto _example_state_data = ::tensorflow::ops::AsNodeOut(scope, example_state_data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SdcaOptimizer");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SdcaOptimizer")
                                   .Input(_sparse_example_indices)
                                   .Input(_sparse_feature_indices)
                                   .Input(_sparse_feature_values)
                                   .Input(_dense_features)
                                   .Input(_example_weights)
                                   .Input(_example_labels)
                                   .Input(_sparse_indices)
                                   .Input(_sparse_weights)
                                   .Input(_dense_weights)
                                   .Input(_example_state_data)
                                   .Attr("loss_type", loss_type)
                                   .Attr("adaptative", adaptative)
                                   .Attr("num_sparse_features", num_sparse_features)
                                   .Attr("num_sparse_features_with_values", num_sparse_features_with_values)
                                   .Attr("num_dense_features", num_dense_features)
                                   .Attr("l1", l1)
                                   .Attr("l2", l2)
                                   .Attr("num_loss_partitions", num_loss_partitions)
                                   .Attr("num_inner_iterations", num_inner_iterations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SdcaOptimizerV2::SdcaOptimizerV2(tensorflow::Scope& scope, 
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
           bool adaptive, 
           int64_t num_sparse_features, 
           int64_t num_sparse_features_with_values, 
           int64_t num_dense_features, 
           float l1, 
           float l2, 
           int64_t num_loss_partitions, 
           int64_t num_inner_iterations) {
      if (!scope.ok())
          return;
      auto _sparse_example_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_example_indices);
      if (!scope.ok())
          return;
      auto _sparse_feature_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_feature_indices);
      if (!scope.ok())
          return;
      auto _sparse_feature_values = ::tensorflow::ops::AsNodeOut(scope, sparse_feature_values);
      if (!scope.ok())
          return;
      auto _dense_features = ::tensorflow::ops::AsNodeOut(scope, dense_features);
      if (!scope.ok())
          return;
      auto _example_weights = ::tensorflow::ops::AsNodeOut(scope, example_weights);
      if (!scope.ok())
          return;
      auto _example_labels = ::tensorflow::ops::AsNodeOut(scope, example_labels);
      if (!scope.ok())
          return;
      auto _sparse_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_indices);
      if (!scope.ok())
          return;
      auto _sparse_weights = ::tensorflow::ops::AsNodeOut(scope, sparse_weights);
      if (!scope.ok())
          return;
      auto _dense_weights = ::tensorflow::ops::AsNodeOut(scope, dense_weights);
      if (!scope.ok())
          return;
      auto _example_state_data = ::tensorflow::ops::AsNodeOut(scope, example_state_data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SdcaOptimizerV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SdcaOptimizerV2")
                                   .Input(_sparse_example_indices)
                                   .Input(_sparse_feature_indices)
                                   .Input(_sparse_feature_values)
                                   .Input(_dense_features)
                                   .Input(_example_weights)
                                   .Input(_example_labels)
                                   .Input(_sparse_indices)
                                   .Input(_sparse_weights)
                                   .Input(_dense_weights)
                                   .Input(_example_state_data)
                                   .Attr("loss_type", loss_type)
                                   .Attr("adaptive", adaptive)
                                   .Attr("num_sparse_features", num_sparse_features)
                                   .Attr("num_sparse_features_with_values", num_sparse_features_with_values)
                                   .Attr("num_dense_features", num_dense_features)
                                   .Attr("l1", l1)
                                   .Attr("l2", l2)
                                   .Attr("num_loss_partitions", num_loss_partitions)
                                   .Attr("num_inner_iterations", num_inner_iterations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SdcaShrinkL1::SdcaShrinkL1(tensorflow::Scope& scope, 
           tensorflow::Input weights, 
           int64_t num_features, 
           float l1, 
           float l2) {
      if (!scope.ok())
          return;
      auto _weights = ::tensorflow::ops::AsNodeOut(scope, weights);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SdcaShrinkL1");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SdcaShrinkL1")
                                   .Input(_weights)
                                   .Attr("num_features", num_features)
                                   .Attr("l1", l1)
                                   .Attr("l2", l2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

