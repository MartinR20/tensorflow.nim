#include "tensorflow/cc/ops/const_op.h"
#include "internal.h"

All::All(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _reduction_indices = ::tensorflow::ops::AsNodeOut(scope, reduction_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("All");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "All")
                                   .Input(_input)
                                   .Input(_reduction_indices)
                                   .Attr("keep_dims", keep_dims)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesExampleDebugOutputs::BoostedTreesExampleDebugOutputs(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::InputList bucketized_features, 
           int64_t num_bucketized_features, 
           int64_t logits_dimension) {
      if (!scope.ok())
          return;
      auto _tree_ensemble_handle = ::tensorflow::ops::AsNodeOut(scope, tree_ensemble_handle);
      if (!scope.ok())
          return;
      auto _bucketized_features = ::tensorflow::ops::AsNodeOutList(scope, bucketized_features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesExampleDebugOutputs");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesExampleDebugOutputs")
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

DebugGradientIdentity::DebugGradientIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DebugGradientIdentity");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DebugGradientIdentity")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DebugGradientRefIdentity::DebugGradientRefIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DebugGradientRefIdentity");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DebugGradientRefIdentity")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DebugIdentity::DebugIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           tensorflow::DataType T, 
           bool gated_grpc) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DebugIdentity");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DebugIdentity")
                                   .Input(_input)
                                   .Attr("device_name", device_name)
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("debug_urls", debug_urls)
                                   .Attr("T", T)
                                   .Attr("gated_grpc", gated_grpc)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DebugNanCount::DebugNanCount(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           bool gated_grpc) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DebugNanCount");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DebugNanCount")
                                   .Input(_input)
                                   .Attr("device_name", device_name)
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("debug_urls", debug_urls)
                                   .Attr("gated_grpc", gated_grpc)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DebugNumericSummary::DebugNumericSummary(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           bool gated_grpc, 
           float lower_bound, 
           float upper_bound, 
           bool mute_if_healthy) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DebugNumericSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DebugNumericSummary")
                                   .Input(_input)
                                   .Attr("device_name", device_name)
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("debug_urls", debug_urls)
                                   .Attr("gated_grpc", gated_grpc)
                                   .Attr("lower_bound", lower_bound)
                                   .Attr("upper_bound", upper_bound)
                                   .Attr("mute_if_healthy", mute_if_healthy)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeJSONExample::DecodeJSONExample(tensorflow::Scope& scope, 
           tensorflow::Input json_examples) {
      if (!scope.ok())
          return;
      auto _json_examples = ::tensorflow::ops::AsNodeOut(scope, json_examples);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeJSONExample");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeJSONExample")
                                   .Input(_json_examples)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalParseExampleDataset::ExperimentalParseExampleDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::InputList dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::string> sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tdense, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> dense_shapes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool sloppy) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _num_parallel_calls = ::tensorflow::ops::AsNodeOut(scope, num_parallel_calls);
      if (!scope.ok())
          return;
      auto _dense_defaults = ::tensorflow::ops::AsNodeOutList(scope, dense_defaults);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalParseExampleDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalParseExampleDataset")
                                   .Input(_input_dataset)
                                   .Input(_num_parallel_calls)
                                   .Input(_dense_defaults)
                                   .Attr("sparse_keys", sparse_keys)
                                   .Attr("dense_keys", dense_keys)
                                   .Attr("sparse_types", sparse_types)
                                   .Attr("Tdense", Tdense)
                                   .Attr("dense_shapes", dense_shapes)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("sloppy", sloppy)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Fact::Fact(tensorflow::Scope& scope) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Fact");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Fact")
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NcclAllReduce::NcclAllReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           tensorflow::DataType T, 
           int64_t num_devices) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NcclAllReduce");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NcclAllReduce")
                                   .Input(_input)
                                   .Attr("reduction", reduction)
                                   .Attr("shared_name", shared_name)
                                   .Attr("T", T)
                                   .Attr("num_devices", num_devices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NcclBroadcast::NcclBroadcast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T, 
           tensorflow::PartialTensorShape shape) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NcclBroadcast");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NcclBroadcast")
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("shape", shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ParseExample::ParseExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::Input names, 
           tensorflow::InputList sparse_keys, 
           tensorflow::InputList dense_keys, 
           tensorflow::InputList dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tdense, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> dense_shapes, 
           int64_t Nsparse, 
           int64_t Ndense) {
      if (!scope.ok())
          return;
      auto _serialized = ::tensorflow::ops::AsNodeOut(scope, serialized);
      if (!scope.ok())
          return;
      auto _names = ::tensorflow::ops::AsNodeOut(scope, names);
      if (!scope.ok())
          return;
      auto _sparse_keys = ::tensorflow::ops::AsNodeOutList(scope, sparse_keys);
      if (!scope.ok())
          return;
      auto _dense_keys = ::tensorflow::ops::AsNodeOutList(scope, dense_keys);
      if (!scope.ok())
          return;
      auto _dense_defaults = ::tensorflow::ops::AsNodeOutList(scope, dense_defaults);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParseExample");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParseExample")
                                   .Input(_serialized)
                                   .Input(_names)
                                   .Input(_sparse_keys)
                                   .Input(_dense_keys)
                                   .Input(_dense_defaults)
                                   .Attr("sparse_types", sparse_types)
                                   .Attr("Tdense", Tdense)
                                   .Attr("dense_shapes", dense_shapes)
                                   .Attr("Nsparse", Nsparse)
                                   .Attr("Ndense", Ndense)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

ParseSequenceExample::ParseSequenceExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::Input debug_name, 
           tensorflow::InputList context_dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::string> feature_list_dense_missing_assumed_empty, 
           tensorflow::gtl::ArraySlice<tensorflow::string> context_sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> context_dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> feature_list_sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> feature_list_dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> context_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcontext_dense, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_dense_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> context_dense_shapes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> feature_list_dense_shapes, 
           int64_t Ncontext_sparse, 
           int64_t Ncontext_dense, 
           int64_t Nfeature_list_sparse, 
           int64_t Nfeature_list_dense) {
      if (!scope.ok())
          return;
      auto _serialized = ::tensorflow::ops::AsNodeOut(scope, serialized);
      if (!scope.ok())
          return;
      auto _debug_name = ::tensorflow::ops::AsNodeOut(scope, debug_name);
      if (!scope.ok())
          return;
      auto _context_dense_defaults = ::tensorflow::ops::AsNodeOutList(scope, context_dense_defaults);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParseSequenceExample");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParseSequenceExample")
                                   .Input(_serialized)
                                   .Input(_debug_name)
                                   .Input(_context_dense_defaults)
                                   .Attr("feature_list_dense_missing_assumed_empty", feature_list_dense_missing_assumed_empty)
                                   .Attr("context_sparse_keys", context_sparse_keys)
                                   .Attr("context_dense_keys", context_dense_keys)
                                   .Attr("feature_list_sparse_keys", feature_list_sparse_keys)
                                   .Attr("feature_list_dense_keys", feature_list_dense_keys)
                                   .Attr("context_sparse_types", context_sparse_types)
                                   .Attr("Tcontext_dense", Tcontext_dense)
                                   .Attr("feature_list_dense_types", feature_list_dense_types)
                                   .Attr("context_dense_shapes", context_dense_shapes)
                                   .Attr("feature_list_sparse_types", feature_list_sparse_types)
                                   .Attr("feature_list_dense_shapes", feature_list_dense_shapes)
                                   .Attr("Ncontext_sparse", Ncontext_sparse)
                                   .Attr("Ncontext_dense", Ncontext_dense)
                                   .Attr("Nfeature_list_sparse", Nfeature_list_sparse)
                                   .Attr("Nfeature_list_dense", Nfeature_list_dense)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

ParseSingleExample::ParseSingleExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::InputList dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::string> sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tdense, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> dense_shapes, 
           int64_t num_sparse) {
      if (!scope.ok())
          return;
      auto _serialized = ::tensorflow::ops::AsNodeOut(scope, serialized);
      if (!scope.ok())
          return;
      auto _dense_defaults = ::tensorflow::ops::AsNodeOutList(scope, dense_defaults);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParseSingleExample");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParseSingleExample")
                                   .Input(_serialized)
                                   .Input(_dense_defaults)
                                   .Attr("sparse_keys", sparse_keys)
                                   .Attr("dense_keys", dense_keys)
                                   .Attr("sparse_types", sparse_types)
                                   .Attr("Tdense", Tdense)
                                   .Attr("dense_shapes", dense_shapes)
                                   .Attr("num_sparse", num_sparse)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

ParseSingleSequenceExample::ParseSingleSequenceExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::Input feature_list_dense_missing_assumed_empty, 
           tensorflow::InputList context_sparse_keys, 
           tensorflow::InputList context_dense_keys, 
           tensorflow::InputList feature_list_sparse_keys, 
           tensorflow::InputList feature_list_dense_keys, 
           tensorflow::InputList context_dense_defaults, 
           tensorflow::Input debug_name, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> context_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcontext_dense, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_dense_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> context_dense_shapes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> feature_list_dense_shapes, 
           int64_t Ncontext_sparse, 
           int64_t Ncontext_dense, 
           int64_t Nfeature_list_sparse, 
           int64_t Nfeature_list_dense) {
      if (!scope.ok())
          return;
      auto _serialized = ::tensorflow::ops::AsNodeOut(scope, serialized);
      if (!scope.ok())
          return;
      auto _feature_list_dense_missing_assumed_empty = ::tensorflow::ops::AsNodeOut(scope, feature_list_dense_missing_assumed_empty);
      if (!scope.ok())
          return;
      auto _context_sparse_keys = ::tensorflow::ops::AsNodeOutList(scope, context_sparse_keys);
      if (!scope.ok())
          return;
      auto _context_dense_keys = ::tensorflow::ops::AsNodeOutList(scope, context_dense_keys);
      if (!scope.ok())
          return;
      auto _feature_list_sparse_keys = ::tensorflow::ops::AsNodeOutList(scope, feature_list_sparse_keys);
      if (!scope.ok())
          return;
      auto _feature_list_dense_keys = ::tensorflow::ops::AsNodeOutList(scope, feature_list_dense_keys);
      if (!scope.ok())
          return;
      auto _context_dense_defaults = ::tensorflow::ops::AsNodeOutList(scope, context_dense_defaults);
      if (!scope.ok())
          return;
      auto _debug_name = ::tensorflow::ops::AsNodeOut(scope, debug_name);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParseSingleSequenceExample");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParseSingleSequenceExample")
                                   .Input(_serialized)
                                   .Input(_feature_list_dense_missing_assumed_empty)
                                   .Input(_context_sparse_keys)
                                   .Input(_context_dense_keys)
                                   .Input(_feature_list_sparse_keys)
                                   .Input(_feature_list_dense_keys)
                                   .Input(_context_dense_defaults)
                                   .Input(_debug_name)
                                   .Attr("context_sparse_types", context_sparse_types)
                                   .Attr("Tcontext_dense", Tcontext_dense)
                                   .Attr("feature_list_dense_types", feature_list_dense_types)
                                   .Attr("context_dense_shapes", context_dense_shapes)
                                   .Attr("feature_list_sparse_types", feature_list_sparse_types)
                                   .Attr("feature_list_dense_shapes", feature_list_dense_shapes)
                                   .Attr("Ncontext_sparse", Ncontext_sparse)
                                   .Attr("Ncontext_dense", Ncontext_dense)
                                   .Attr("Nfeature_list_sparse", Nfeature_list_sparse)
                                   .Attr("Nfeature_list_dense", Nfeature_list_dense)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

ReadVariableOp::ReadVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReadVariableOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReadVariableOp")
                                   .Input(_resource)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_Arg::_Arg(tensorflow::Scope& scope, 
           tensorflow::DataType T, 
           int64_t index) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_Arg");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_Arg")
                                   .Attr("T", T)
                                   .Attr("index", index)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_ArrayToList::_ArrayToList(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> out_types) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_ArrayToList");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_ArrayToList")
                                   .Input(_input)
                                   .Attr("out_types", out_types)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

_DeviceArg::_DeviceArg(tensorflow::Scope& scope, 
           tensorflow::DataType T, 
           int64_t index) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_DeviceArg");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_DeviceArg")
                                   .Attr("T", T)
                                   .Attr("index", index)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_DeviceRetval::_DeviceRetval(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t index) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_DeviceRetval");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_DeviceRetval")
                                   .Input(_input)
                                   .Attr("index", index)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

_FusedConv2D::_FusedConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::gtl::ArraySlice<tensorflow::string> fused_ops, 
           tensorflow::DataType T, 
           int64_t num_args, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations, 
           float epsilon) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _args = ::tensorflow::ops::AsNodeOutList(scope, args);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_FusedConv2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_FusedConv2D")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Input(_args)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("fused_ops", fused_ops)
                                   .Attr("T", T)
                                   .Attr("num_args", num_args)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
                                   .Attr("epsilon", epsilon)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_HostCast::_HostCast(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           bool Truncate, 
           tensorflow::DataType DstT) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_HostCast");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_HostCast")
                                   .Input(_x)
                                   .Attr("Truncate", Truncate)
                                   .Attr("DstT", DstT)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_HostRecv::_HostRecv(tensorflow::Scope& scope, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           tensorflow::DataType tensor_type, 
           int64_t send_device_incarnation, 
           bool client_terminated) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_HostRecv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_HostRecv")
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("send_device", send_device)
                                   .Attr("recv_device", recv_device)
                                   .Attr("tensor_type", tensor_type)
                                   .Attr("send_device_incarnation", send_device_incarnation)
                                   .Attr("client_terminated", client_terminated)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_HostSend::_HostSend(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           bool client_terminated, 
           int64_t send_device_incarnation) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_HostSend");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_HostSend")
                                   .Input(_tensor)
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("send_device", send_device)
                                   .Attr("recv_device", recv_device)
                                   .Attr("client_terminated", client_terminated)
                                   .Attr("send_device_incarnation", send_device_incarnation)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

_If::_If(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch) {
      if (!scope.ok())
          return;
      auto _cond = ::tensorflow::ops::AsNodeOut(scope, cond);
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_If");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_If")
                                   .Input(_cond)
                                   .Input(_input)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
                                   .Attr("then_branch", then_branch)
                                   .Attr("else_branch", else_branch)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

_ListToArray::_ListToArray(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_ListToArray");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_ListToArray")
                                   .Input(_input)
                                   .Attr("Tin", Tin)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

_MklAdd::_MklAdd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _mkl_x = ::tensorflow::ops::AsNodeOut(scope, mkl_x);
      if (!scope.ok())
          return;
      auto _mkl_y = ::tensorflow::ops::AsNodeOut(scope, mkl_y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_MklAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_MklAdd")
                                   .Input(_x)
                                   .Input(_y)
                                   .Input(_mkl_x)
                                   .Input(_mkl_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_MklMaximum::_MklMaximum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _mkl_x = ::tensorflow::ops::AsNodeOut(scope, mkl_x);
      if (!scope.ok())
          return;
      auto _mkl_y = ::tensorflow::ops::AsNodeOut(scope, mkl_y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_MklMaximum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_MklMaximum")
                                   .Input(_x)
                                   .Input(_y)
                                   .Input(_mkl_x)
                                   .Input(_mkl_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_MklMul::_MklMul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _mkl_x = ::tensorflow::ops::AsNodeOut(scope, mkl_x);
      if (!scope.ok())
          return;
      auto _mkl_y = ::tensorflow::ops::AsNodeOut(scope, mkl_y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_MklMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_MklMul")
                                   .Input(_x)
                                   .Input(_y)
                                   .Input(_mkl_x)
                                   .Input(_mkl_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_MklSquaredDifference::_MklSquaredDifference(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _mkl_x = ::tensorflow::ops::AsNodeOut(scope, mkl_x);
      if (!scope.ok())
          return;
      auto _mkl_y = ::tensorflow::ops::AsNodeOut(scope, mkl_y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_MklSquaredDifference");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_MklSquaredDifference")
                                   .Input(_x)
                                   .Input(_y)
                                   .Input(_mkl_x)
                                   .Input(_mkl_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_MklSub::_MklSub(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _mkl_x = ::tensorflow::ops::AsNodeOut(scope, mkl_x);
      if (!scope.ok())
          return;
      auto _mkl_y = ::tensorflow::ops::AsNodeOut(scope, mkl_y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_MklSub");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_MklSub")
                                   .Input(_x)
                                   .Input(_y)
                                   .Input(_mkl_x)
                                   .Input(_mkl_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_NcclBroadcastRecv::_NcclBroadcastRecv(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::string shared_name, 
           tensorflow::DataType T, 
           int64_t num_devices) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_NcclBroadcastRecv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_NcclBroadcastRecv")
                                   .Input(_shape)
                                   .Attr("shared_name", shared_name)
                                   .Attr("T", T)
                                   .Attr("num_devices", num_devices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_NcclBroadcastSend::_NcclBroadcastSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string shared_name, 
           int64_t num_devices) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_NcclBroadcastSend");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_NcclBroadcastSend")
                                   .Input(_input)
                                   .Attr("shared_name", shared_name)
                                   .Attr("num_devices", num_devices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

_NcclReduceRecv::_NcclReduceRecv(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           tensorflow::DataType T, 
           int64_t num_devices) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_NcclReduceRecv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_NcclReduceRecv")
                                   .Input(_input)
                                   .Attr("reduction", reduction)
                                   .Attr("shared_name", shared_name)
                                   .Attr("T", T)
                                   .Attr("num_devices", num_devices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_NcclReduceSend::_NcclReduceSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           int64_t num_devices) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_NcclReduceSend");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_NcclReduceSend")
                                   .Input(_input)
                                   .Attr("reduction", reduction)
                                   .Attr("shared_name", shared_name)
                                   .Attr("num_devices", num_devices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

_ParallelConcatStart::_ParallelConcatStart(tensorflow::Scope& scope, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::DataType dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_ParallelConcatStart");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_ParallelConcatStart")
                                   .Attr("shape", shape)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_ParallelConcatUpdate::_ParallelConcatUpdate(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input update, 
           tensorflow::DataType T, 
           int64_t loc) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _update = ::tensorflow::ops::AsNodeOut(scope, update);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_ParallelConcatUpdate");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_ParallelConcatUpdate")
                                   .Input(_value)
                                   .Input(_update)
                                   .Attr("T", T)
                                   .Attr("loc", loc)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_ReadVariablesOp::_ReadVariablesOp(tensorflow::Scope& scope, 
           tensorflow::InputList resources, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes) {
      if (!scope.ok())
          return;
      auto _resources = ::tensorflow::ops::AsNodeOutList(scope, resources);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_ReadVariablesOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_ReadVariablesOp")
                                   .Input(_resources)
                                   .Attr("dtypes", dtypes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

_Recv::_Recv(tensorflow::Scope& scope, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           tensorflow::DataType tensor_type, 
           int64_t send_device_incarnation, 
           bool client_terminated) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_Recv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_Recv")
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("send_device", send_device)
                                   .Attr("recv_device", recv_device)
                                   .Attr("tensor_type", tensor_type)
                                   .Attr("send_device_incarnation", send_device_incarnation)
                                   .Attr("client_terminated", client_terminated)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_Retval::_Retval(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t index) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_Retval");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_Retval")
                                   .Input(_input)
                                   .Attr("index", index)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

_ScopedAllocator::_ScopedAllocator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string sa_name, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::DataType T, 
           int64_t id, 
           int64_t expected_call_count) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_ScopedAllocator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_ScopedAllocator")
                                   .Attr("shapes", shapes)
                                   .Attr("sa_name", sa_name)
                                   .Attr("shape", shape)
                                   .Attr("T", T)
                                   .Attr("id", id)
                                   .Attr("expected_call_count", expected_call_count)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_ScopedAllocatorConcat::_ScopedAllocatorConcat(tensorflow::Scope& scope, 
           tensorflow::Input backing, 
           tensorflow::InputList inputs, 
           tensorflow::string sa_name, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::DataType T, 
           bool reshape, 
           int64_t id) {
      if (!scope.ok())
          return;
      auto _backing = ::tensorflow::ops::AsNodeOut(scope, backing);
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_ScopedAllocatorConcat");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_ScopedAllocatorConcat")
                                   .Input(_backing)
                                   .Input(_inputs)
                                   .Attr("sa_name", sa_name)
                                   .Attr("shape", shape)
                                   .Attr("T", T)
                                   .Attr("reshape", reshape)
                                   .Attr("id", id)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_ScopedAllocatorSplit::_ScopedAllocatorSplit(tensorflow::Scope& scope, 
           tensorflow::Input concat, 
           tensorflow::InputList split, 
           tensorflow::string sa_name, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::DataType T, 
           int64_t id) {
      if (!scope.ok())
          return;
      auto _concat = ::tensorflow::ops::AsNodeOut(scope, concat);
      if (!scope.ok())
          return;
      auto _split = ::tensorflow::ops::AsNodeOutList(scope, split);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_ScopedAllocatorSplit");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_ScopedAllocatorSplit")
                                   .Input(_concat)
                                   .Input(_split)
                                   .Attr("sa_name", sa_name)
                                   .Attr("shapes", shapes)
                                   .Attr("T", T)
                                   .Attr("id", id)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

_Send::_Send(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           bool client_terminated, 
           int64_t send_device_incarnation) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_Send");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_Send")
                                   .Input(_tensor)
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("send_device", send_device)
                                   .Attr("recv_device", recv_device)
                                   .Attr("client_terminated", client_terminated)
                                   .Attr("send_device_incarnation", send_device_incarnation)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

_UnaryOpsComposition::_UnaryOpsComposition(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::gtl::ArraySlice<tensorflow::string> op_names, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_UnaryOpsComposition");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_UnaryOpsComposition")
                                   .Input(_x)
                                   .Attr("op_names", op_names)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

_VarHandlesOp::_VarHandlesOp(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::string> containers, 
           tensorflow::gtl::ArraySlice<tensorflow::string> shared_names, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_VarHandlesOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_VarHandlesOp")
                                   .Attr("containers", containers)
                                   .Attr("shared_names", shared_names)
                                   .Attr("dtypes", dtypes)
                                   .Attr("shapes", shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

_While::_While(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("_While");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "_While")
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("cond", cond)
                                   .Attr("body", body)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

