#include "tensorflow/cc/ops/const_op.h"
#include "array.h"

AccumulateNV2::AccumulateNV2(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T, 
           tensorflow::PartialTensorShape shape) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AccumulateNV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AccumulateNV2")
                                   .Input(_inputs)
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

AccumulatorNumAccumulated::AccumulatorNumAccumulated(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AccumulatorNumAccumulated");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AccumulatorNumAccumulated")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AccumulatorSetGlobalStep::AccumulatorSetGlobalStep(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input new_global_step) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _new_global_step = ::tensorflow::ops::AsNodeOut(scope, new_global_step);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AccumulatorSetGlobalStep");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AccumulatorSetGlobalStep")
                                   .Input(_handle)
                                   .Input(_new_global_step)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

AccumulatorTakeGradient::AccumulatorTakeGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input num_required, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _num_required = ::tensorflow::ops::AsNodeOut(scope, num_required);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AccumulatorTakeGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AccumulatorTakeGradient")
                                   .Input(_handle)
                                   .Input(_num_required)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Any::Any(tensorflow::Scope& scope, 
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
      const auto unique_name = scope.GetUniqueNameForOp("Any");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Any")
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

AssignAddVariableOp::AssignAddVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AssignAddVariableOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AssignAddVariableOp")
                                   .Input(_resource)
                                   .Input(_value)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

AssignSub::AssignSub(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input value, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AssignSub");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AssignSub")
                                   .Input(_ref)
                                   .Input(_value)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AssignSubVariableOp::AssignSubVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AssignSubVariableOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AssignSubVariableOp")
                                   .Input(_resource)
                                   .Input(_value)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

AssignVariableOp::AssignVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AssignVariableOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AssignVariableOp")
                                   .Input(_resource)
                                   .Input(_value)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

Barrier::Barrier(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Barrier");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Barrier")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BarrierClose::BarrierClose(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BarrierClose");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BarrierClose")
                                   .Input(_handle)
                                   .Attr("cancel_pending_enqueues", cancel_pending_enqueues)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

BarrierIncompleteSize::BarrierIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BarrierIncompleteSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BarrierIncompleteSize")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BarrierInsertMany::BarrierInsertMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input keys, 
           tensorflow::Input values, 
           int64_t component_index) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BarrierInsertMany");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BarrierInsertMany")
                                   .Input(_handle)
                                   .Input(_keys)
                                   .Input(_values)
                                   .Attr("component_index", component_index)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

BarrierReadySize::BarrierReadySize(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BarrierReadySize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BarrierReadySize")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BarrierTakeMany::BarrierTakeMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input num_elements, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           bool allow_small_batch, 
           bool wait_for_incomplete, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _num_elements = ::tensorflow::ops::AsNodeOut(scope, num_elements);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BarrierTakeMany");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BarrierTakeMany")
                                   .Input(_handle)
                                   .Input(_num_elements)
                                   .Attr("component_types", component_types)
                                   .Attr("allow_small_batch", allow_small_batch)
                                   .Attr("wait_for_incomplete", wait_for_incomplete)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Batch::Batch(tensorflow::Scope& scope, 
           tensorflow::InputList in_tensors, 
           tensorflow::gtl::ArraySlice<int64_t> allowed_batch_sizes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string batching_queue, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           int64_t num_batch_threads, 
           int64_t max_batch_size, 
           int64_t max_enqueued_batches, 
           int64_t batch_timeout_micros, 
           int64_t grad_timeout_micros) {
      if (!scope.ok())
          return;
      auto _in_tensors = ::tensorflow::ops::AsNodeOutList(scope, in_tensors);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Batch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Batch")
                                   .Input(_in_tensors)
                                   .Attr("allowed_batch_sizes", allowed_batch_sizes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("batching_queue", batching_queue)
                                   .Attr("T", T)
                                   .Attr("num_batch_threads", num_batch_threads)
                                   .Attr("max_batch_size", max_batch_size)
                                   .Attr("max_enqueued_batches", max_enqueued_batches)
                                   .Attr("batch_timeout_micros", batch_timeout_micros)
                                   .Attr("grad_timeout_micros", grad_timeout_micros)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

BatchSelfAdjointEigV2::BatchSelfAdjointEigV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_v, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchSelfAdjointEigV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchSelfAdjointEigV2")
                                   .Input(_input)
                                   .Attr("compute_v", compute_v)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchToSpaceND::BatchToSpaceND(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input block_shape, 
           tensorflow::Input crops, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _block_shape = ::tensorflow::ops::AsNodeOut(scope, block_shape);
      if (!scope.ok())
          return;
      auto _crops = ::tensorflow::ops::AsNodeOut(scope, crops);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchToSpaceND");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchToSpaceND")
                                   .Input(_input)
                                   .Input(_block_shape)
                                   .Input(_crops)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Bincount::Bincount(tensorflow::Scope& scope, 
           tensorflow::Input arr, 
           tensorflow::Input size, 
           tensorflow::Input weights, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _arr = ::tensorflow::ops::AsNodeOut(scope, arr);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      if (!scope.ok())
          return;
      auto _weights = ::tensorflow::ops::AsNodeOut(scope, weights);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Bincount");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Bincount")
                                   .Input(_arr)
                                   .Input(_size)
                                   .Input(_weights)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Bucketize::Bucketize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<float> boundaries) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Bucketize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Bucketize")
                                   .Input(_input)
                                   .Attr("boundaries", boundaries)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Cast::Cast(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           bool Truncate, 
           tensorflow::DataType DstT) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Cast");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Cast")
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

CollectiveBcastSend::CollectiveBcastSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T, 
           int64_t group_size, 
           int64_t group_key, 
           int64_t instance_key, 
           tensorflow::PartialTensorShape shape) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CollectiveBcastSend");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CollectiveBcastSend")
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("group_size", group_size)
                                   .Attr("group_key", group_key)
                                   .Attr("instance_key", instance_key)
                                   .Attr("shape", shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CollectiveReduce::CollectiveReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string merge_op, 
           tensorflow::string final_op, 
           tensorflow::gtl::ArraySlice<int64_t> subdiv_offsets, 
           tensorflow::DataType T, 
           int64_t group_size, 
           int64_t group_key, 
           int64_t instance_key) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CollectiveReduce");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CollectiveReduce")
                                   .Input(_input)
                                   .Attr("merge_op", merge_op)
                                   .Attr("final_op", final_op)
                                   .Attr("subdiv_offsets", subdiv_offsets)
                                   .Attr("T", T)
                                   .Attr("group_size", group_size)
                                   .Attr("group_key", group_key)
                                   .Attr("instance_key", instance_key)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CompareAndBitpack::CompareAndBitpack(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input threshold) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _threshold = ::tensorflow::ops::AsNodeOut(scope, threshold);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CompareAndBitpack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CompareAndBitpack")
                                   .Input(_input)
                                   .Input(_threshold)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ComputeAccidentalHits::ComputeAccidentalHits(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           tensorflow::Input sampled_candidates, 
           int64_t num_true, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _true_classes = ::tensorflow::ops::AsNodeOut(scope, true_classes);
      if (!scope.ok())
          return;
      auto _sampled_candidates = ::tensorflow::ops::AsNodeOut(scope, sampled_candidates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ComputeAccidentalHits");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ComputeAccidentalHits")
                                   .Input(_true_classes)
                                   .Input(_sampled_candidates)
                                   .Attr("num_true", num_true)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ConditionalAccumulator::ConditionalAccumulator(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::string reduction_type) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ConditionalAccumulator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ConditionalAccumulator")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("dtype", dtype)
                                   .Attr("shape", shape)
                                   .Attr("reduction_type", reduction_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Copy::Copy(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_ops_spec, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Copy");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Copy")
                                   .Input(_input)
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("debug_ops_spec", debug_ops_spec)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CopyHost::CopyHost(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_ops_spec, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CopyHost");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CopyHost")
                                   .Input(_input)
                                   .Attr("tensor_name", tensor_name)
                                   .Attr("debug_ops_spec", debug_ops_spec)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DataFormatDimMap::DataFormatDimMap(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T, 
           tensorflow::string src_format, 
           tensorflow::string dst_format) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DataFormatDimMap");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DataFormatDimMap")
                                   .Input(_x)
                                   .Attr("T", T)
                                   .Attr("src_format", src_format)
                                   .Attr("dst_format", dst_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeProtoV2::DecodeProtoV2(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::string message_type, 
           tensorflow::gtl::ArraySlice<tensorflow::string> field_names, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::string descriptor_source, 
           tensorflow::string message_format, 
           bool sanitize) {
      if (!scope.ok())
          return;
      auto _bytes = ::tensorflow::ops::AsNodeOut(scope, bytes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeProtoV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeProtoV2")
                                   .Input(_bytes)
                                   .Attr("message_type", message_type)
                                   .Attr("field_names", field_names)
                                   .Attr("output_types", output_types)
                                   .Attr("descriptor_source", descriptor_source)
                                   .Attr("message_format", message_format)
                                   .Attr("sanitize", sanitize)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DeepCopy::DeepCopy(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DeepCopy");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DeepCopy")
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

DeleteSessionTensor::DeleteSessionTensor(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DeleteSessionTensor");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DeleteSessionTensor")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

DenseToDenseSetOperation::DenseToDenseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1, 
           tensorflow::Input set2, 
           tensorflow::string set_operation, 
           bool validate_indices) {
      if (!scope.ok())
          return;
      auto _set1 = ::tensorflow::ops::AsNodeOut(scope, set1);
      if (!scope.ok())
          return;
      auto _set2 = ::tensorflow::ops::AsNodeOut(scope, set2);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DenseToDenseSetOperation");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DenseToDenseSetOperation")
                                   .Input(_set1)
                                   .Input(_set2)
                                   .Attr("set_operation", set_operation)
                                   .Attr("validate_indices", validate_indices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DenseToSparseSetOperation::DenseToSparseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1, 
           tensorflow::Input set2_indices, 
           tensorflow::Input set2_values, 
           tensorflow::Input set2_shape, 
           tensorflow::string set_operation, 
           bool validate_indices) {
      if (!scope.ok())
          return;
      auto _set1 = ::tensorflow::ops::AsNodeOut(scope, set1);
      if (!scope.ok())
          return;
      auto _set2_indices = ::tensorflow::ops::AsNodeOut(scope, set2_indices);
      if (!scope.ok())
          return;
      auto _set2_values = ::tensorflow::ops::AsNodeOut(scope, set2_values);
      if (!scope.ok())
          return;
      auto _set2_shape = ::tensorflow::ops::AsNodeOut(scope, set2_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DenseToSparseSetOperation");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DenseToSparseSetOperation")
                                   .Input(_set1)
                                   .Input(_set2_indices)
                                   .Input(_set2_values)
                                   .Input(_set2_shape)
                                   .Attr("set_operation", set_operation)
                                   .Attr("validate_indices", validate_indices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DepthToSpace::DepthToSpace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T, 
           int64_t block_size, 
           tensorflow::string data_format) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DepthToSpace");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DepthToSpace")
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("block_size", block_size)
                                   .Attr("data_format", data_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DeserializeManySparse::DeserializeManySparse(tensorflow::Scope& scope, 
           tensorflow::Input serialized_sparse, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _serialized_sparse = ::tensorflow::ops::AsNodeOut(scope, serialized_sparse);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DeserializeManySparse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DeserializeManySparse")
                                   .Input(_serialized_sparse)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DestroyResourceOp::DestroyResourceOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           bool ignore_lookup_error) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DestroyResourceOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DestroyResourceOp")
                                   .Input(_resource)
                                   .Attr("ignore_lookup_error", ignore_lookup_error)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

DestroyTemporaryVariable::DestroyTemporaryVariable(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::string var_name, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DestroyTemporaryVariable");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DestroyTemporaryVariable")
                                   .Input(_ref)
                                   .Attr("var_name", var_name)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EmptyTensorList::EmptyTensorList(tensorflow::Scope& scope, 
           tensorflow::Input element_shape, 
           tensorflow::Input max_num_elements, 
           tensorflow::DataType element_dtype) {
      if (!scope.ok())
          return;
      auto _element_shape = ::tensorflow::ops::AsNodeOut(scope, element_shape);
      if (!scope.ok())
          return;
      auto _max_num_elements = ::tensorflow::ops::AsNodeOut(scope, max_num_elements);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EmptyTensorList");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EmptyTensorList")
                                   .Input(_element_shape)
                                   .Input(_max_num_elements)
                                   .Attr("element_dtype", element_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EncodeProto::EncodeProto(tensorflow::Scope& scope, 
           tensorflow::Input sizes, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::string> field_names, 
           tensorflow::string message_type, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinput_types, 
           tensorflow::string descriptor_source) {
      if (!scope.ok())
          return;
      auto _sizes = ::tensorflow::ops::AsNodeOut(scope, sizes);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EncodeProto");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EncodeProto")
                                   .Input(_sizes)
                                   .Input(_values)
                                   .Attr("field_names", field_names)
                                   .Attr("message_type", message_type)
                                   .Attr("Tinput_types", Tinput_types)
                                   .Attr("descriptor_source", descriptor_source)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalThreadPoolHandle::ExperimentalThreadPoolHandle(tensorflow::Scope& scope, 
           tensorflow::string display_name, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t num_threads, 
           int64_t max_intra_op_parallelism) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalThreadPoolHandle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalThreadPoolHandle")
                                   .Attr("display_name", display_name)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("num_threads", num_threads)
                                   .Attr("max_intra_op_parallelism", max_intra_op_parallelism)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FakeQuantWithMinMaxArgs::FakeQuantWithMinMaxArgs(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           float min, 
           float max, 
           int64_t num_bits, 
           bool narrow_range) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FakeQuantWithMinMaxArgs");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FakeQuantWithMinMaxArgs")
                                   .Input(_inputs)
                                   .Attr("min", min)
                                   .Attr("max", max)
                                   .Attr("num_bits", num_bits)
                                   .Attr("narrow_range", narrow_range)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FakeQuantWithMinMaxArgsGradient::FakeQuantWithMinMaxArgsGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           float min, 
           float max, 
           int64_t num_bits, 
           bool narrow_range) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FakeQuantWithMinMaxArgsGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FakeQuantWithMinMaxArgsGradient")
                                   .Input(_gradients)
                                   .Input(_inputs)
                                   .Attr("min", min)
                                   .Attr("max", max)
                                   .Attr("num_bits", num_bits)
                                   .Attr("narrow_range", narrow_range)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FakeQuantWithMinMaxVars::FakeQuantWithMinMaxVars(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits, 
           bool narrow_range) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      if (!scope.ok())
          return;
      auto _min = ::tensorflow::ops::AsNodeOut(scope, min);
      if (!scope.ok())
          return;
      auto _max = ::tensorflow::ops::AsNodeOut(scope, max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FakeQuantWithMinMaxVars");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FakeQuantWithMinMaxVars")
                                   .Input(_inputs)
                                   .Input(_min)
                                   .Input(_max)
                                   .Attr("num_bits", num_bits)
                                   .Attr("narrow_range", narrow_range)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FakeQuantWithMinMaxVarsGradient::FakeQuantWithMinMaxVarsGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits, 
           bool narrow_range) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      if (!scope.ok())
          return;
      auto _min = ::tensorflow::ops::AsNodeOut(scope, min);
      if (!scope.ok())
          return;
      auto _max = ::tensorflow::ops::AsNodeOut(scope, max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FakeQuantWithMinMaxVarsGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FakeQuantWithMinMaxVarsGradient")
                                   .Input(_gradients)
                                   .Input(_inputs)
                                   .Input(_min)
                                   .Input(_max)
                                   .Attr("num_bits", num_bits)
                                   .Attr("narrow_range", narrow_range)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FakeQuantWithMinMaxVarsPerChannel::FakeQuantWithMinMaxVarsPerChannel(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits, 
           bool narrow_range) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      if (!scope.ok())
          return;
      auto _min = ::tensorflow::ops::AsNodeOut(scope, min);
      if (!scope.ok())
          return;
      auto _max = ::tensorflow::ops::AsNodeOut(scope, max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FakeQuantWithMinMaxVarsPerChannel");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FakeQuantWithMinMaxVarsPerChannel")
                                   .Input(_inputs)
                                   .Input(_min)
                                   .Input(_max)
                                   .Attr("num_bits", num_bits)
                                   .Attr("narrow_range", narrow_range)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FakeQuantWithMinMaxVarsPerChannelGradient::FakeQuantWithMinMaxVarsPerChannelGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits, 
           bool narrow_range) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      if (!scope.ok())
          return;
      auto _min = ::tensorflow::ops::AsNodeOut(scope, min);
      if (!scope.ok())
          return;
      auto _max = ::tensorflow::ops::AsNodeOut(scope, max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FakeQuantWithMinMaxVarsPerChannelGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FakeQuantWithMinMaxVarsPerChannelGradient")
                                   .Input(_gradients)
                                   .Input(_inputs)
                                   .Input(_min)
                                   .Input(_max)
                                   .Attr("num_bits", num_bits)
                                   .Attr("narrow_range", narrow_range)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FusedBatchNormGrad::FusedBatchNormGrad(tensorflow::Scope& scope, 
           tensorflow::Input y_backprop, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input reserve_space_1, 
           tensorflow::Input reserve_space_2, 
           tensorflow::DataType T, 
           float epsilon, 
           tensorflow::string data_format, 
           bool is_training) {
      if (!scope.ok())
          return;
      auto _y_backprop = ::tensorflow::ops::AsNodeOut(scope, y_backprop);
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _scale = ::tensorflow::ops::AsNodeOut(scope, scale);
      if (!scope.ok())
          return;
      auto _reserve_space_1 = ::tensorflow::ops::AsNodeOut(scope, reserve_space_1);
      if (!scope.ok())
          return;
      auto _reserve_space_2 = ::tensorflow::ops::AsNodeOut(scope, reserve_space_2);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FusedBatchNormGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FusedBatchNormGrad")
                                   .Input(_y_backprop)
                                   .Input(_x)
                                   .Input(_scale)
                                   .Input(_reserve_space_1)
                                   .Input(_reserve_space_2)
                                   .Attr("T", T)
                                   .Attr("epsilon", epsilon)
                                   .Attr("data_format", data_format)
                                   .Attr("is_training", is_training)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FusedBatchNormGradV2::FusedBatchNormGradV2(tensorflow::Scope& scope, 
           tensorflow::Input y_backprop, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input reserve_space_1, 
           tensorflow::Input reserve_space_2, 
           tensorflow::DataType T, 
           bool is_training, 
           float epsilon, 
           tensorflow::string data_format) {
      if (!scope.ok())
          return;
      auto _y_backprop = ::tensorflow::ops::AsNodeOut(scope, y_backprop);
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _scale = ::tensorflow::ops::AsNodeOut(scope, scale);
      if (!scope.ok())
          return;
      auto _reserve_space_1 = ::tensorflow::ops::AsNodeOut(scope, reserve_space_1);
      if (!scope.ok())
          return;
      auto _reserve_space_2 = ::tensorflow::ops::AsNodeOut(scope, reserve_space_2);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FusedBatchNormGradV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FusedBatchNormGradV2")
                                   .Input(_y_backprop)
                                   .Input(_x)
                                   .Input(_scale)
                                   .Input(_reserve_space_1)
                                   .Input(_reserve_space_2)
                                   .Attr("T", T)
                                   .Attr("is_training", is_training)
                                   .Attr("epsilon", epsilon)
                                   .Attr("data_format", data_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GatherV2::GatherV2(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           tensorflow::Input axis, 
           tensorflow::DataType Tparams) {
      if (!scope.ok())
          return;
      auto _params = ::tensorflow::ops::AsNodeOut(scope, params);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _axis = ::tensorflow::ops::AsNodeOut(scope, axis);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GatherV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GatherV2")
                                   .Input(_params)
                                   .Input(_indices)
                                   .Input(_axis)
                                   .Attr("Tparams", Tparams)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GetSessionHandle::GetSessionHandle(tensorflow::Scope& scope, 
           tensorflow::Input value) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GetSessionHandle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GetSessionHandle")
                                   .Input(_value)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GetSessionHandleV2::GetSessionHandleV2(tensorflow::Scope& scope, 
           tensorflow::Input value) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GetSessionHandleV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GetSessionHandleV2")
                                   .Input(_value)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GetSessionTensor::GetSessionTensor(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GetSessionTensor");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GetSessionTensor")
                                   .Input(_handle)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

HostConst::HostConst(tensorflow::Scope& scope, 
           tensorflow::Tensor value, 
           tensorflow::DataType dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("HostConst");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "HostConst")
                                   .Attr("value", value)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ImmutableConst::ImmutableConst(tensorflow::Scope& scope, 
           tensorflow::string memory_region_name, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape shape) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ImmutableConst");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ImmutableConst")
                                   .Attr("memory_region_name", memory_region_name)
                                   .Attr("dtype", dtype)
                                   .Attr("shape", shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InplaceUpdate::InplaceUpdate(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input i, 
           tensorflow::Input v, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _i = ::tensorflow::ops::AsNodeOut(scope, i);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InplaceUpdate");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InplaceUpdate")
                                   .Input(_x)
                                   .Input(_i)
                                   .Input(_v)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InvertPermutation::InvertPermutation(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InvertPermutation");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InvertPermutation")
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

IsVariableInitialized::IsVariableInitialized(tensorflow::Scope& scope, 
           tensorflow::Input ref) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IsVariableInitialized");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IsVariableInitialized")
                                   .Input(_ref)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ListDiff::ListDiff(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T, 
           tensorflow::DataType out_idx) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ListDiff");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ListDiff")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
                                   .Attr("out_idx", out_idx)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LoadAndRemapMatrix::LoadAndRemapMatrix(tensorflow::Scope& scope, 
           tensorflow::Input ckpt_path, 
           tensorflow::Input old_tensor_name, 
           tensorflow::Input row_remapping, 
           tensorflow::Input col_remapping, 
           tensorflow::Input initializing_values, 
           int64_t num_rows, 
           int64_t num_cols, 
           int64_t max_rows_in_memory) {
      if (!scope.ok())
          return;
      auto _ckpt_path = ::tensorflow::ops::AsNodeOut(scope, ckpt_path);
      if (!scope.ok())
          return;
      auto _old_tensor_name = ::tensorflow::ops::AsNodeOut(scope, old_tensor_name);
      if (!scope.ok())
          return;
      auto _row_remapping = ::tensorflow::ops::AsNodeOut(scope, row_remapping);
      if (!scope.ok())
          return;
      auto _col_remapping = ::tensorflow::ops::AsNodeOut(scope, col_remapping);
      if (!scope.ok())
          return;
      auto _initializing_values = ::tensorflow::ops::AsNodeOut(scope, initializing_values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LoadAndRemapMatrix");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LoadAndRemapMatrix")
                                   .Input(_ckpt_path)
                                   .Input(_old_tensor_name)
                                   .Input(_row_remapping)
                                   .Input(_col_remapping)
                                   .Input(_initializing_values)
                                   .Attr("num_rows", num_rows)
                                   .Attr("num_cols", num_cols)
                                   .Attr("max_rows_in_memory", max_rows_in_memory)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MirrorPad::MirrorPad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::string mode, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _paddings = ::tensorflow::ops::AsNodeOut(scope, paddings);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MirrorPad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MirrorPad")
                                   .Input(_input)
                                   .Input(_paddings)
                                   .Attr("mode", mode)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MutableHashTableV2::MutableHashTableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing, 
           tensorflow::DataType key_dtype, 
           tensorflow::DataType value_dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MutableHashTableV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MutableHashTableV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("use_node_name_sharing", use_node_name_sharing)
                                   .Attr("key_dtype", key_dtype)
                                   .Attr("value_dtype", value_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NcclReduce::NcclReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::DataType T, 
           int64_t num_devices) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NcclReduce");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NcclReduce")
                                   .Input(_input)
                                   .Attr("reduction", reduction)
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

NoOp::NoOp(tensorflow::Scope& scope) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NoOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NoOp")
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

NonMaxSuppressionV3::NonMaxSuppressionV3(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold, 
           tensorflow::Input score_threshold) {
      if (!scope.ok())
          return;
      auto _boxes = ::tensorflow::ops::AsNodeOut(scope, boxes);
      if (!scope.ok())
          return;
      auto _scores = ::tensorflow::ops::AsNodeOut(scope, scores);
      if (!scope.ok())
          return;
      auto _max_output_size = ::tensorflow::ops::AsNodeOut(scope, max_output_size);
      if (!scope.ok())
          return;
      auto _iou_threshold = ::tensorflow::ops::AsNodeOut(scope, iou_threshold);
      if (!scope.ok())
          return;
      auto _score_threshold = ::tensorflow::ops::AsNodeOut(scope, score_threshold);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NonMaxSuppressionV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NonMaxSuppressionV3")
                                   .Input(_boxes)
                                   .Input(_scores)
                                   .Input(_max_output_size)
                                   .Input(_iou_threshold)
                                   .Input(_score_threshold)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NonMaxSuppressionV4::NonMaxSuppressionV4(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold, 
           tensorflow::Input score_threshold, 
           bool pad_to_max_output_size) {
      if (!scope.ok())
          return;
      auto _boxes = ::tensorflow::ops::AsNodeOut(scope, boxes);
      if (!scope.ok())
          return;
      auto _scores = ::tensorflow::ops::AsNodeOut(scope, scores);
      if (!scope.ok())
          return;
      auto _max_output_size = ::tensorflow::ops::AsNodeOut(scope, max_output_size);
      if (!scope.ok())
          return;
      auto _iou_threshold = ::tensorflow::ops::AsNodeOut(scope, iou_threshold);
      if (!scope.ok())
          return;
      auto _score_threshold = ::tensorflow::ops::AsNodeOut(scope, score_threshold);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NonMaxSuppressionV4");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NonMaxSuppressionV4")
                                   .Input(_boxes)
                                   .Input(_scores)
                                   .Input(_max_output_size)
                                   .Input(_iou_threshold)
                                   .Input(_score_threshold)
                                   .Attr("pad_to_max_output_size", pad_to_max_output_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NonMaxSuppressionWithOverlaps::NonMaxSuppressionWithOverlaps(tensorflow::Scope& scope, 
           tensorflow::Input overlaps, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input overlap_threshold, 
           tensorflow::Input score_threshold) {
      if (!scope.ok())
          return;
      auto _overlaps = ::tensorflow::ops::AsNodeOut(scope, overlaps);
      if (!scope.ok())
          return;
      auto _scores = ::tensorflow::ops::AsNodeOut(scope, scores);
      if (!scope.ok())
          return;
      auto _max_output_size = ::tensorflow::ops::AsNodeOut(scope, max_output_size);
      if (!scope.ok())
          return;
      auto _overlap_threshold = ::tensorflow::ops::AsNodeOut(scope, overlap_threshold);
      if (!scope.ok())
          return;
      auto _score_threshold = ::tensorflow::ops::AsNodeOut(scope, score_threshold);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NonMaxSuppressionWithOverlaps");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NonMaxSuppressionWithOverlaps")
                                   .Input(_overlaps)
                                   .Input(_scores)
                                   .Input(_max_output_size)
                                   .Input(_overlap_threshold)
                                   .Input(_score_threshold)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NthElement::NthElement(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input n, 
           bool reverse, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _n = ::tensorflow::ops::AsNodeOut(scope, n);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NthElement");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NthElement")
                                   .Input(_input)
                                   .Input(_n)
                                   .Attr("reverse", reverse)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

OneHot::OneHot(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input depth, 
           tensorflow::Input on_value, 
           tensorflow::Input off_value, 
           int64_t axis, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _depth = ::tensorflow::ops::AsNodeOut(scope, depth);
      if (!scope.ok())
          return;
      auto _on_value = ::tensorflow::ops::AsNodeOut(scope, on_value);
      if (!scope.ok())
          return;
      auto _off_value = ::tensorflow::ops::AsNodeOut(scope, off_value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OneHot");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OneHot")
                                   .Input(_indices)
                                   .Input(_depth)
                                   .Input(_on_value)
                                   .Input(_off_value)
                                   .Attr("axis", axis)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

OptionalFromValue::OptionalFromValue(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types) {
      if (!scope.ok())
          return;
      auto _components = ::tensorflow::ops::AsNodeOutList(scope, components);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OptionalFromValue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OptionalFromValue")
                                   .Input(_components)
                                   .Attr("Toutput_types", Toutput_types)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

OptionalGetValue::OptionalGetValue(tensorflow::Scope& scope, 
           tensorflow::Input optional, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _optional = ::tensorflow::ops::AsNodeOut(scope, optional);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OptionalGetValue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OptionalGetValue")
                                   .Input(_optional)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

OptionalHasValue::OptionalHasValue(tensorflow::Scope& scope, 
           tensorflow::Input optional) {
      if (!scope.ok())
          return;
      auto _optional = ::tensorflow::ops::AsNodeOut(scope, optional);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OptionalHasValue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OptionalHasValue")
                                   .Input(_optional)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

OptionalNone::OptionalNone(tensorflow::Scope& scope) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OptionalNone");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OptionalNone")
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Pack::Pack(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::DataType T, 
           int64_t axis) {
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Pack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Pack")
                                   .Input(_values)
                                   .Attr("T", T)
                                   .Attr("axis", axis)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PaddedBatchDataset::PaddedBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::InputList padded_shapes, 
           tensorflow::InputList padding_values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _batch_size = ::tensorflow::ops::AsNodeOut(scope, batch_size);
      if (!scope.ok())
          return;
      auto _padded_shapes = ::tensorflow::ops::AsNodeOutList(scope, padded_shapes);
      if (!scope.ok())
          return;
      auto _padding_values = ::tensorflow::ops::AsNodeOutList(scope, padding_values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PaddedBatchDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PaddedBatchDataset")
                                   .Input(_input_dataset)
                                   .Input(_batch_size)
                                   .Input(_padded_shapes)
                                   .Input(_padding_values)
                                   .Attr("Toutput_types", Toutput_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ParallelConcat::ParallelConcat(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::DataType T, 
           tensorflow::PartialTensorShape shape) {
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParallelConcat");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParallelConcat")
                                   .Input(_values)
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

PlaceholderV2::PlaceholderV2(tensorflow::Scope& scope, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape shape) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PlaceholderV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PlaceholderV2")
                                   .Attr("dtype", dtype)
                                   .Attr("shape", shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PlaceholderWithDefault::PlaceholderWithDefault(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape shape) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PlaceholderWithDefault");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PlaceholderWithDefault")
                                   .Input(_input)
                                   .Attr("dtype", dtype)
                                   .Attr("shape", shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PopulationCount::PopulationCount(tensorflow::Scope& scope, 
           tensorflow::Input x) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PopulationCount");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PopulationCount")
                                   .Input(_x)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PrintV2::PrintV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string output_stream) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PrintV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PrintV2")
                                   .Input(_input)
                                   .Attr("output_stream", output_stream)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

QuantizeAndDequantize::QuantizeAndDequantize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool signed_input, 
           int64_t num_bits, 
           bool range_given, 
           float input_min, 
           float input_max, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizeAndDequantize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizeAndDequantize")
                                   .Input(_input)
                                   .Attr("signed_input", signed_input)
                                   .Attr("num_bits", num_bits)
                                   .Attr("range_given", range_given)
                                   .Attr("input_min", input_min)
                                   .Attr("input_max", input_max)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizeAndDequantizeV2::QuantizeAndDequantizeV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           bool signed_input, 
           int64_t num_bits, 
           bool range_given, 
           tensorflow::DataType T, 
           tensorflow::string round_mode) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_min = ::tensorflow::ops::AsNodeOut(scope, input_min);
      if (!scope.ok())
          return;
      auto _input_max = ::tensorflow::ops::AsNodeOut(scope, input_max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizeAndDequantizeV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizeAndDequantizeV2")
                                   .Input(_input)
                                   .Input(_input_min)
                                   .Input(_input_max)
                                   .Attr("signed_input", signed_input)
                                   .Attr("num_bits", num_bits)
                                   .Attr("range_given", range_given)
                                   .Attr("T", T)
                                   .Attr("round_mode", round_mode)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizeAndDequantizeV3::QuantizeAndDequantizeV3(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::Input num_bits, 
           bool signed_input, 
           bool range_given, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_min = ::tensorflow::ops::AsNodeOut(scope, input_min);
      if (!scope.ok())
          return;
      auto _input_max = ::tensorflow::ops::AsNodeOut(scope, input_max);
      if (!scope.ok())
          return;
      auto _num_bits = ::tensorflow::ops::AsNodeOut(scope, num_bits);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizeAndDequantizeV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizeAndDequantizeV3")
                                   .Input(_input)
                                   .Input(_input_min)
                                   .Input(_input_max)
                                   .Input(_num_bits)
                                   .Attr("signed_input", signed_input)
                                   .Attr("range_given", range_given)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizeDownAndShrinkRange::QuantizeDownAndShrinkRange(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_min = ::tensorflow::ops::AsNodeOut(scope, input_min);
      if (!scope.ok())
          return;
      auto _input_max = ::tensorflow::ops::AsNodeOut(scope, input_max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizeDownAndShrinkRange");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizeDownAndShrinkRange")
                                   .Input(_input)
                                   .Input(_input_min)
                                   .Input(_input_max)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedConcat::QuantizedConcat(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList values, 
           tensorflow::InputList input_mins, 
           tensorflow::InputList input_maxes, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _concat_dim = ::tensorflow::ops::AsNodeOut(scope, concat_dim);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      if (!scope.ok())
          return;
      auto _input_mins = ::tensorflow::ops::AsNodeOutList(scope, input_mins);
      if (!scope.ok())
          return;
      auto _input_maxes = ::tensorflow::ops::AsNodeOutList(scope, input_maxes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedConcat");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedConcat")
                                   .Input(_concat_dim)
                                   .Input(_values)
                                   .Input(_input_mins)
                                   .Input(_input_maxes)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedReshape::QuantizedReshape(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input shape, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _input_min = ::tensorflow::ops::AsNodeOut(scope, input_min);
      if (!scope.ok())
          return;
      auto _input_max = ::tensorflow::ops::AsNodeOut(scope, input_max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedReshape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedReshape")
                                   .Input(_tensor)
                                   .Input(_shape)
                                   .Input(_input_min)
                                   .Input(_input_max)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RaggedGather::RaggedGather(tensorflow::Scope& scope, 
           tensorflow::Input params_nested_splits, 
           tensorflow::Input params_dense_values, 
           tensorflow::Input indices, 
           int64_t OUTPUT_RAGGED_RANK, 
           int64_t PARAMS_RAGGED_RANK) {
      if (!scope.ok())
          return;
      auto _params_nested_splits = ::tensorflow::ops::AsNodeOut(scope, params_nested_splits);
      if (!scope.ok())
          return;
      auto _params_dense_values = ::tensorflow::ops::AsNodeOut(scope, params_dense_values);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RaggedGather");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RaggedGather")
                                   .Input(_params_nested_splits)
                                   .Input(_params_dense_values)
                                   .Input(_indices)
                                   .Attr("OUTPUT_RAGGED_RANK", OUTPUT_RAGGED_RANK)
                                   .Attr("PARAMS_RAGGED_RANK", PARAMS_RAGGED_RANK)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RefMerge::RefMerge(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RefMerge");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RefMerge")
                                   .Input(_inputs)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResourceGather::ResourceGather(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           bool validate_indices, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceGather");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceGather")
                                   .Input(_resource)
                                   .Input(_indices)
                                   .Attr("validate_indices", validate_indices)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResourceScatterMax::ResourceScatterMax(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterMax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterMax")
                                   .Input(_resource)
                                   .Input(_indices)
                                   .Input(_updates)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceScatterMin::ResourceScatterMin(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterMin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterMin")
                                   .Input(_resource)
                                   .Input(_indices)
                                   .Input(_updates)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceScatterNdUpdate::ResourceScatterNdUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterNdUpdate");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterNdUpdate")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceScatterUpdate::ResourceScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterUpdate");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterUpdate")
                                   .Input(_resource)
                                   .Input(_indices)
                                   .Input(_updates)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceStridedSliceAssign::ResourceStridedSliceAssign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input value, 
           int64_t new_axis_mask, 
           int64_t shrink_axis_mask, 
           int64_t begin_mask, 
           int64_t end_mask, 
           int64_t ellipsis_mask) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _begin = ::tensorflow::ops::AsNodeOut(scope, begin);
      if (!scope.ok())
          return;
      auto _end = ::tensorflow::ops::AsNodeOut(scope, end);
      if (!scope.ok())
          return;
      auto _strides = ::tensorflow::ops::AsNodeOut(scope, strides);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceStridedSliceAssign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceStridedSliceAssign")
                                   .Input(_ref)
                                   .Input(_begin)
                                   .Input(_end)
                                   .Input(_strides)
                                   .Input(_value)
                                   .Attr("new_axis_mask", new_axis_mask)
                                   .Attr("shrink_axis_mask", shrink_axis_mask)
                                   .Attr("begin_mask", begin_mask)
                                   .Attr("end_mask", end_mask)
                                   .Attr("ellipsis_mask", ellipsis_mask)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ReverseSequence::ReverseSequence(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input seq_lengths, 
           int64_t seq_dim, 
           int64_t batch_dim, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _seq_lengths = ::tensorflow::ops::AsNodeOut(scope, seq_lengths);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReverseSequence");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReverseSequence")
                                   .Input(_input)
                                   .Input(_seq_lengths)
                                   .Attr("seq_dim", seq_dim)
                                   .Attr("batch_dim", batch_dim)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReverseV2::ReverseV2(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input axis, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _axis = ::tensorflow::ops::AsNodeOut(scope, axis);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReverseV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReverseV2")
                                   .Input(_tensor)
                                   .Input(_axis)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterNdSub::ScatterNdSub(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterNdSub");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterNdSub")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterNdUpdate::ScatterNdUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterNdUpdate");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterNdUpdate")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterUpdate::ScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterUpdate");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterUpdate")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Select::Select(tensorflow::Scope& scope, 
           tensorflow::Input condition, 
           tensorflow::Input t, 
           tensorflow::Input e, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _condition = ::tensorflow::ops::AsNodeOut(scope, condition);
      if (!scope.ok())
          return;
      auto _t = ::tensorflow::ops::AsNodeOut(scope, t);
      if (!scope.ok())
          return;
      auto _e = ::tensorflow::ops::AsNodeOut(scope, e);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Select");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Select")
                                   .Input(_condition)
                                   .Input(_t)
                                   .Input(_e)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SelfAdjointEigV2::SelfAdjointEigV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_v, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SelfAdjointEigV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SelfAdjointEigV2")
                                   .Input(_input)
                                   .Attr("compute_v", compute_v)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SerializeManySparse::SerializeManySparse(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _sparse_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_indices);
      if (!scope.ok())
          return;
      auto _sparse_values = ::tensorflow::ops::AsNodeOut(scope, sparse_values);
      if (!scope.ok())
          return;
      auto _sparse_shape = ::tensorflow::ops::AsNodeOut(scope, sparse_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SerializeManySparse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SerializeManySparse")
                                   .Input(_sparse_indices)
                                   .Input(_sparse_values)
                                   .Input(_sparse_shape)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SerializeSparse::SerializeSparse(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _sparse_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_indices);
      if (!scope.ok())
          return;
      auto _sparse_values = ::tensorflow::ops::AsNodeOut(scope, sparse_values);
      if (!scope.ok())
          return;
      auto _sparse_shape = ::tensorflow::ops::AsNodeOut(scope, sparse_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SerializeSparse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SerializeSparse")
                                   .Input(_sparse_indices)
                                   .Input(_sparse_values)
                                   .Input(_sparse_shape)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SetSize::SetSize(tensorflow::Scope& scope, 
           tensorflow::Input set_indices, 
           tensorflow::Input set_values, 
           tensorflow::Input set_shape, 
           bool validate_indices) {
      if (!scope.ok())
          return;
      auto _set_indices = ::tensorflow::ops::AsNodeOut(scope, set_indices);
      if (!scope.ok())
          return;
      auto _set_values = ::tensorflow::ops::AsNodeOut(scope, set_values);
      if (!scope.ok())
          return;
      auto _set_shape = ::tensorflow::ops::AsNodeOut(scope, set_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SetSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SetSize")
                                   .Input(_set_indices)
                                   .Input(_set_values)
                                   .Input(_set_shape)
                                   .Attr("validate_indices", validate_indices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Skipgram::Skipgram(tensorflow::Scope& scope, 
           tensorflow::string filename, 
           int64_t batch_size, 
           int64_t window_size, 
           int64_t min_count, 
           float subsample) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Skipgram");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Skipgram")
                                   .Attr("filename", filename)
                                   .Attr("batch_size", batch_size)
                                   .Attr("window_size", window_size)
                                   .Attr("min_count", min_count)
                                   .Attr("subsample", subsample)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Snapshot::Snapshot(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Snapshot");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Snapshot")
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

SpaceToDepth::SpaceToDepth(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T, 
           int64_t block_size, 
           tensorflow::string data_format) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SpaceToDepth");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SpaceToDepth")
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("block_size", block_size)
                                   .Attr("data_format", data_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseAddGrad::SparseAddGrad(tensorflow::Scope& scope, 
           tensorflow::Input backprop_val_grad, 
           tensorflow::Input a_indices, 
           tensorflow::Input b_indices, 
           tensorflow::Input sum_indices, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _backprop_val_grad = ::tensorflow::ops::AsNodeOut(scope, backprop_val_grad);
      if (!scope.ok())
          return;
      auto _a_indices = ::tensorflow::ops::AsNodeOut(scope, a_indices);
      if (!scope.ok())
          return;
      auto _b_indices = ::tensorflow::ops::AsNodeOut(scope, b_indices);
      if (!scope.ok())
          return;
      auto _sum_indices = ::tensorflow::ops::AsNodeOut(scope, sum_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseAddGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseAddGrad")
                                   .Input(_backprop_val_grad)
                                   .Input(_a_indices)
                                   .Input(_b_indices)
                                   .Input(_sum_indices)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseConcat::SparseConcat(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList values, 
           tensorflow::InputList shapes, 
           int64_t concat_dim) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOutList(scope, indices);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      if (!scope.ok())
          return;
      auto _shapes = ::tensorflow::ops::AsNodeOutList(scope, shapes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseConcat");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseConcat")
                                   .Input(_indices)
                                   .Input(_values)
                                   .Input(_shapes)
                                   .Attr("concat_dim", concat_dim)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseConditionalAccumulator::SparseConditionalAccumulator(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::string reduction_type) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseConditionalAccumulator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseConditionalAccumulator")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("dtype", dtype)
                                   .Attr("shape", shape)
                                   .Attr("reduction_type", reduction_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseCross::SparseCross(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList values, 
           tensorflow::InputList shapes, 
           tensorflow::InputList dense_inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dense_types, 
           bool hashed_output, 
           int64_t num_buckets, 
           int64_t hash_key, 
           tensorflow::DataType out_type, 
           tensorflow::DataType internal_type) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOutList(scope, indices);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      if (!scope.ok())
          return;
      auto _shapes = ::tensorflow::ops::AsNodeOutList(scope, shapes);
      if (!scope.ok())
          return;
      auto _dense_inputs = ::tensorflow::ops::AsNodeOutList(scope, dense_inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseCross");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseCross")
                                   .Input(_indices)
                                   .Input(_values)
                                   .Input(_shapes)
                                   .Input(_dense_inputs)
                                   .Attr("sparse_types", sparse_types)
                                   .Attr("dense_types", dense_types)
                                   .Attr("hashed_output", hashed_output)
                                   .Attr("num_buckets", num_buckets)
                                   .Attr("hash_key", hash_key)
                                   .Attr("out_type", out_type)
                                   .Attr("internal_type", internal_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseDenseCwiseAdd::SparseDenseCwiseAdd(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::Input dense, 
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
      if (!scope.ok())
          return;
      auto _dense = ::tensorflow::ops::AsNodeOut(scope, dense);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseDenseCwiseAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseDenseCwiseAdd")
                                   .Input(_sp_indices)
                                   .Input(_sp_values)
                                   .Input(_sp_shape)
                                   .Input(_dense)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseDenseCwiseDiv::SparseDenseCwiseDiv(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::Input dense, 
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
      if (!scope.ok())
          return;
      auto _dense = ::tensorflow::ops::AsNodeOut(scope, dense);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseDenseCwiseDiv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseDenseCwiseDiv")
                                   .Input(_sp_indices)
                                   .Input(_sp_values)
                                   .Input(_sp_shape)
                                   .Input(_dense)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseFillEmptyRows::SparseFillEmptyRows(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input dense_shape, 
           tensorflow::Input default_value) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      if (!scope.ok())
          return;
      auto _dense_shape = ::tensorflow::ops::AsNodeOut(scope, dense_shape);
      if (!scope.ok())
          return;
      auto _default_value = ::tensorflow::ops::AsNodeOut(scope, default_value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseFillEmptyRows");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseFillEmptyRows")
                                   .Input(_indices)
                                   .Input(_values)
                                   .Input(_dense_shape)
                                   .Input(_default_value)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseFillEmptyRowsGrad::SparseFillEmptyRowsGrad(tensorflow::Scope& scope, 
           tensorflow::Input reverse_index_map, 
           tensorflow::Input grad_values, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _reverse_index_map = ::tensorflow::ops::AsNodeOut(scope, reverse_index_map);
      if (!scope.ok())
          return;
      auto _grad_values = ::tensorflow::ops::AsNodeOut(scope, grad_values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseFillEmptyRowsGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseFillEmptyRowsGrad")
                                   .Input(_reverse_index_map)
                                   .Input(_grad_values)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseReduceMax::SparseReduceMax(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input_indices = ::tensorflow::ops::AsNodeOut(scope, input_indices);
      if (!scope.ok())
          return;
      auto _input_values = ::tensorflow::ops::AsNodeOut(scope, input_values);
      if (!scope.ok())
          return;
      auto _input_shape = ::tensorflow::ops::AsNodeOut(scope, input_shape);
      if (!scope.ok())
          return;
      auto _reduction_axes = ::tensorflow::ops::AsNodeOut(scope, reduction_axes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseReduceMax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseReduceMax")
                                   .Input(_input_indices)
                                   .Input(_input_values)
                                   .Input(_input_shape)
                                   .Input(_reduction_axes)
                                   .Attr("keep_dims", keep_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseReorder::SparseReorder(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape) {
      if (!scope.ok())
          return;
      auto _input_indices = ::tensorflow::ops::AsNodeOut(scope, input_indices);
      if (!scope.ok())
          return;
      auto _input_values = ::tensorflow::ops::AsNodeOut(scope, input_values);
      if (!scope.ok())
          return;
      auto _input_shape = ::tensorflow::ops::AsNodeOut(scope, input_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseReorder");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseReorder")
                                   .Input(_input_indices)
                                   .Input(_input_values)
                                   .Input(_input_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseReshape::SparseReshape(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_shape, 
           tensorflow::Input new_shape) {
      if (!scope.ok())
          return;
      auto _input_indices = ::tensorflow::ops::AsNodeOut(scope, input_indices);
      if (!scope.ok())
          return;
      auto _input_shape = ::tensorflow::ops::AsNodeOut(scope, input_shape);
      if (!scope.ok())
          return;
      auto _new_shape = ::tensorflow::ops::AsNodeOut(scope, new_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseReshape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseReshape")
                                   .Input(_input_indices)
                                   .Input(_input_shape)
                                   .Input(_new_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSlice::SparseSlice(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input shape, 
           tensorflow::Input start, 
           tensorflow::Input size) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _start = ::tensorflow::ops::AsNodeOut(scope, start);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSlice");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSlice")
                                   .Input(_indices)
                                   .Input(_values)
                                   .Input(_shape)
                                   .Input(_start)
                                   .Input(_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSliceGrad::SparseSliceGrad(tensorflow::Scope& scope, 
           tensorflow::Input backprop_val_grad, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_start, 
           tensorflow::Input output_indices, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _backprop_val_grad = ::tensorflow::ops::AsNodeOut(scope, backprop_val_grad);
      if (!scope.ok())
          return;
      auto _input_indices = ::tensorflow::ops::AsNodeOut(scope, input_indices);
      if (!scope.ok())
          return;
      auto _input_start = ::tensorflow::ops::AsNodeOut(scope, input_start);
      if (!scope.ok())
          return;
      auto _output_indices = ::tensorflow::ops::AsNodeOut(scope, output_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSliceGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSliceGrad")
                                   .Input(_backprop_val_grad)
                                   .Input(_input_indices)
                                   .Input(_input_start)
                                   .Input(_output_indices)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSparseMaximum::SparseSparseMaximum(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b_indices, 
           tensorflow::Input b_values, 
           tensorflow::Input b_shape) {
      if (!scope.ok())
          return;
      auto _a_indices = ::tensorflow::ops::AsNodeOut(scope, a_indices);
      if (!scope.ok())
          return;
      auto _a_values = ::tensorflow::ops::AsNodeOut(scope, a_values);
      if (!scope.ok())
          return;
      auto _a_shape = ::tensorflow::ops::AsNodeOut(scope, a_shape);
      if (!scope.ok())
          return;
      auto _b_indices = ::tensorflow::ops::AsNodeOut(scope, b_indices);
      if (!scope.ok())
          return;
      auto _b_values = ::tensorflow::ops::AsNodeOut(scope, b_values);
      if (!scope.ok())
          return;
      auto _b_shape = ::tensorflow::ops::AsNodeOut(scope, b_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSparseMaximum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSparseMaximum")
                                   .Input(_a_indices)
                                   .Input(_a_values)
                                   .Input(_a_shape)
                                   .Input(_b_indices)
                                   .Input(_b_values)
                                   .Input(_b_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSparseMinimum::SparseSparseMinimum(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b_indices, 
           tensorflow::Input b_values, 
           tensorflow::Input b_shape) {
      if (!scope.ok())
          return;
      auto _a_indices = ::tensorflow::ops::AsNodeOut(scope, a_indices);
      if (!scope.ok())
          return;
      auto _a_values = ::tensorflow::ops::AsNodeOut(scope, a_values);
      if (!scope.ok())
          return;
      auto _a_shape = ::tensorflow::ops::AsNodeOut(scope, a_shape);
      if (!scope.ok())
          return;
      auto _b_indices = ::tensorflow::ops::AsNodeOut(scope, b_indices);
      if (!scope.ok())
          return;
      auto _b_values = ::tensorflow::ops::AsNodeOut(scope, b_values);
      if (!scope.ok())
          return;
      auto _b_shape = ::tensorflow::ops::AsNodeOut(scope, b_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSparseMinimum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSparseMinimum")
                                   .Input(_a_indices)
                                   .Input(_a_values)
                                   .Input(_a_shape)
                                   .Input(_b_indices)
                                   .Input(_b_values)
                                   .Input(_b_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSplit::SparseSplit(tensorflow::Scope& scope, 
           tensorflow::Input split_dim, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input shape, 
           int64_t num_split) {
      if (!scope.ok())
          return;
      auto _split_dim = ::tensorflow::ops::AsNodeOut(scope, split_dim);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSplit");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSplit")
                                   .Input(_split_dim)
                                   .Input(_indices)
                                   .Input(_values)
                                   .Input(_shape)
                                   .Attr("num_split", num_split)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseToDense::SparseToDense(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input output_shape, 
           tensorflow::Input sparse_values, 
           tensorflow::Input default_value, 
           bool validate_indices, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _sparse_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_indices);
      if (!scope.ok())
          return;
      auto _output_shape = ::tensorflow::ops::AsNodeOut(scope, output_shape);
      if (!scope.ok())
          return;
      auto _sparse_values = ::tensorflow::ops::AsNodeOut(scope, sparse_values);
      if (!scope.ok())
          return;
      auto _default_value = ::tensorflow::ops::AsNodeOut(scope, default_value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseToDense");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseToDense")
                                   .Input(_sparse_indices)
                                   .Input(_output_shape)
                                   .Input(_sparse_values)
                                   .Input(_default_value)
                                   .Attr("validate_indices", validate_indices)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseToSparseSetOperation::SparseToSparseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1_indices, 
           tensorflow::Input set1_values, 
           tensorflow::Input set1_shape, 
           tensorflow::Input set2_indices, 
           tensorflow::Input set2_values, 
           tensorflow::Input set2_shape, 
           tensorflow::string set_operation, 
           bool validate_indices) {
      if (!scope.ok())
          return;
      auto _set1_indices = ::tensorflow::ops::AsNodeOut(scope, set1_indices);
      if (!scope.ok())
          return;
      auto _set1_values = ::tensorflow::ops::AsNodeOut(scope, set1_values);
      if (!scope.ok())
          return;
      auto _set1_shape = ::tensorflow::ops::AsNodeOut(scope, set1_shape);
      if (!scope.ok())
          return;
      auto _set2_indices = ::tensorflow::ops::AsNodeOut(scope, set2_indices);
      if (!scope.ok())
          return;
      auto _set2_values = ::tensorflow::ops::AsNodeOut(scope, set2_values);
      if (!scope.ok())
          return;
      auto _set2_shape = ::tensorflow::ops::AsNodeOut(scope, set2_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseToSparseSetOperation");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseToSparseSetOperation")
                                   .Input(_set1_indices)
                                   .Input(_set1_values)
                                   .Input(_set1_shape)
                                   .Input(_set2_indices)
                                   .Input(_set2_values)
                                   .Input(_set2_shape)
                                   .Attr("set_operation", set_operation)
                                   .Attr("validate_indices", validate_indices)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SplitV::SplitV(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input size_splits, 
           tensorflow::Input split_dim, 
           int64_t num_split, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _size_splits = ::tensorflow::ops::AsNodeOut(scope, size_splits);
      if (!scope.ok())
          return;
      auto _split_dim = ::tensorflow::ops::AsNodeOut(scope, split_dim);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SplitV");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SplitV")
                                   .Input(_value)
                                   .Input(_size_splits)
                                   .Input(_split_dim)
                                   .Attr("num_split", num_split)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StackPush::StackPush(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input elem, 
           tensorflow::DataType T, 
           bool swap_memory) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _elem = ::tensorflow::ops::AsNodeOut(scope, elem);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StackPush");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StackPush")
                                   .Input(_handle)
                                   .Input(_elem)
                                   .Attr("T", T)
                                   .Attr("swap_memory", swap_memory)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StackV2::StackV2(tensorflow::Scope& scope, 
           tensorflow::Input max_size, 
           tensorflow::string stack_name, 
           tensorflow::DataType elem_type) {
      if (!scope.ok())
          return;
      auto _max_size = ::tensorflow::ops::AsNodeOut(scope, max_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StackV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StackV2")
                                   .Input(_max_size)
                                   .Attr("stack_name", stack_name)
                                   .Attr("elem_type", elem_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Stage::Stage(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Stage");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Stage")
                                   .Input(_values)
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

StagePeek::StagePeek(tensorflow::Scope& scope, 
           tensorflow::Input index, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StagePeek");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StagePeek")
                                   .Input(_index)
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

StageSize::StageSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StageSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StageSize")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StridedSliceAssign::StridedSliceAssign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input value, 
           tensorflow::DataType T, 
           int64_t shrink_axis_mask, 
           int64_t begin_mask, 
           int64_t end_mask, 
           int64_t ellipsis_mask, 
           int64_t new_axis_mask) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _begin = ::tensorflow::ops::AsNodeOut(scope, begin);
      if (!scope.ok())
          return;
      auto _end = ::tensorflow::ops::AsNodeOut(scope, end);
      if (!scope.ok())
          return;
      auto _strides = ::tensorflow::ops::AsNodeOut(scope, strides);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StridedSliceAssign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StridedSliceAssign")
                                   .Input(_ref)
                                   .Input(_begin)
                                   .Input(_end)
                                   .Input(_strides)
                                   .Input(_value)
                                   .Attr("T", T)
                                   .Attr("shrink_axis_mask", shrink_axis_mask)
                                   .Attr("begin_mask", begin_mask)
                                   .Attr("end_mask", end_mask)
                                   .Attr("ellipsis_mask", ellipsis_mask)
                                   .Attr("new_axis_mask", new_axis_mask)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StridedSliceGrad::StridedSliceGrad(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input dy, 
           tensorflow::DataType T, 
           int64_t shrink_axis_mask, 
           int64_t begin_mask, 
           int64_t end_mask, 
           int64_t ellipsis_mask, 
           int64_t new_axis_mask) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _begin = ::tensorflow::ops::AsNodeOut(scope, begin);
      if (!scope.ok())
          return;
      auto _end = ::tensorflow::ops::AsNodeOut(scope, end);
      if (!scope.ok())
          return;
      auto _strides = ::tensorflow::ops::AsNodeOut(scope, strides);
      if (!scope.ok())
          return;
      auto _dy = ::tensorflow::ops::AsNodeOut(scope, dy);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StridedSliceGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StridedSliceGrad")
                                   .Input(_shape)
                                   .Input(_begin)
                                   .Input(_end)
                                   .Input(_strides)
                                   .Input(_dy)
                                   .Attr("T", T)
                                   .Attr("shrink_axis_mask", shrink_axis_mask)
                                   .Attr("begin_mask", begin_mask)
                                   .Attr("end_mask", end_mask)
                                   .Attr("ellipsis_mask", ellipsis_mask)
                                   .Attr("new_axis_mask", new_axis_mask)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TemporaryVariable::TemporaryVariable(tensorflow::Scope& scope, 
           tensorflow::string var_name, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::DataType dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TemporaryVariable");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TemporaryVariable")
                                   .Attr("var_name", var_name)
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

TensorListConcat::TensorListConcat(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListConcat");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListConcat")
                                   .Input(_input_handle)
                                   .Attr("element_dtype", element_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListConcatLists::TensorListConcatLists(tensorflow::Scope& scope, 
           tensorflow::Input input_a, 
           tensorflow::Input input_b, 
           tensorflow::DataType element_dtype) {
      if (!scope.ok())
          return;
      auto _input_a = ::tensorflow::ops::AsNodeOut(scope, input_a);
      if (!scope.ok())
          return;
      auto _input_b = ::tensorflow::ops::AsNodeOut(scope, input_b);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListConcatLists");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListConcatLists")
                                   .Input(_input_a)
                                   .Input(_input_b)
                                   .Attr("element_dtype", element_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListElementShape::TensorListElementShape(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType shape_type) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListElementShape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListElementShape")
                                   .Input(_input_handle)
                                   .Attr("shape_type", shape_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListFromTensor::TensorListFromTensor(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input element_shape) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _element_shape = ::tensorflow::ops::AsNodeOut(scope, element_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListFromTensor");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListFromTensor")
                                   .Input(_tensor)
                                   .Input(_element_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListGather::TensorListGather(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input indices, 
           tensorflow::DataType element_dtype) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListGather");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListGather")
                                   .Input(_input_handle)
                                   .Input(_indices)
                                   .Attr("element_dtype", element_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListGetItem::TensorListGetItem(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input index, 
           tensorflow::DataType element_dtype) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListGetItem");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListGetItem")
                                   .Input(_input_handle)
                                   .Input(_index)
                                   .Attr("element_dtype", element_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListLength::TensorListLength(tensorflow::Scope& scope, 
           tensorflow::Input input_handle) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListLength");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListLength")
                                   .Input(_input_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListPopBack::TensorListPopBack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListPopBack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListPopBack")
                                   .Input(_input_handle)
                                   .Attr("element_dtype", element_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListPushBack::TensorListPushBack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input tensor) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListPushBack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListPushBack")
                                   .Input(_input_handle)
                                   .Input(_tensor)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListPushBackBatch::TensorListPushBackBatch(tensorflow::Scope& scope, 
           tensorflow::Input input_handles, 
           tensorflow::Input tensor) {
      if (!scope.ok())
          return;
      auto _input_handles = ::tensorflow::ops::AsNodeOut(scope, input_handles);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListPushBackBatch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListPushBackBatch")
                                   .Input(_input_handles)
                                   .Input(_tensor)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListReserve::TensorListReserve(tensorflow::Scope& scope, 
           tensorflow::Input element_shape, 
           tensorflow::Input num_elements, 
           tensorflow::DataType element_dtype) {
      if (!scope.ok())
          return;
      auto _element_shape = ::tensorflow::ops::AsNodeOut(scope, element_shape);
      if (!scope.ok())
          return;
      auto _num_elements = ::tensorflow::ops::AsNodeOut(scope, num_elements);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListReserve");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListReserve")
                                   .Input(_element_shape)
                                   .Input(_num_elements)
                                   .Attr("element_dtype", element_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListScatter::TensorListScatter(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input element_shape) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _element_shape = ::tensorflow::ops::AsNodeOut(scope, element_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListScatter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListScatter")
                                   .Input(_tensor)
                                   .Input(_indices)
                                   .Input(_element_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListSetItem::TensorListSetItem(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input index, 
           tensorflow::Input item) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      if (!scope.ok())
          return;
      auto _item = ::tensorflow::ops::AsNodeOut(scope, item);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListSetItem");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListSetItem")
                                   .Input(_input_handle)
                                   .Input(_index)
                                   .Input(_item)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListSplit::TensorListSplit(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input element_shape, 
           tensorflow::Input lengths) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _element_shape = ::tensorflow::ops::AsNodeOut(scope, element_shape);
      if (!scope.ok())
          return;
      auto _lengths = ::tensorflow::ops::AsNodeOut(scope, lengths);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListSplit");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListSplit")
                                   .Input(_tensor)
                                   .Input(_element_shape)
                                   .Input(_lengths)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorListStack::TensorListStack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype, 
           int64_t num_elements) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorListStack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorListStack")
                                   .Input(_input_handle)
                                   .Attr("element_dtype", element_dtype)
                                   .Attr("num_elements", num_elements)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorScatterAdd::TensorScatterAdd(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorScatterAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorScatterAdd")
                                   .Input(_tensor)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorScatterUpdate::TensorScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorScatterUpdate");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorScatterUpdate")
                                   .Input(_tensor)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TileGrad::TileGrad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input multiples, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _multiples = ::tensorflow::ops::AsNodeOut(scope, multiples);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TileGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TileGrad")
                                   .Input(_input)
                                   .Input(_multiples)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Unbatch::Unbatch(tensorflow::Scope& scope, 
           tensorflow::Input batched_tensor, 
           tensorflow::Input batch_index, 
           tensorflow::Input id, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t timeout_micros, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _batched_tensor = ::tensorflow::ops::AsNodeOut(scope, batched_tensor);
      if (!scope.ok())
          return;
      auto _batch_index = ::tensorflow::ops::AsNodeOut(scope, batch_index);
      if (!scope.ok())
          return;
      auto _id = ::tensorflow::ops::AsNodeOut(scope, id);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Unbatch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Unbatch")
                                   .Input(_batched_tensor)
                                   .Input(_batch_index)
                                   .Input(_id)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("timeout_micros", timeout_micros)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnbatchGrad::UnbatchGrad(tensorflow::Scope& scope, 
           tensorflow::Input original_input, 
           tensorflow::Input batch_index, 
           tensorflow::Input grad, 
           tensorflow::Input id, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _original_input = ::tensorflow::ops::AsNodeOut(scope, original_input);
      if (!scope.ok())
          return;
      auto _batch_index = ::tensorflow::ops::AsNodeOut(scope, batch_index);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _id = ::tensorflow::ops::AsNodeOut(scope, id);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnbatchGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnbatchGrad")
                                   .Input(_original_input)
                                   .Input(_batch_index)
                                   .Input(_grad)
                                   .Input(_id)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UniqueV2::UniqueV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           tensorflow::DataType T, 
           tensorflow::DataType out_idx) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _axis = ::tensorflow::ops::AsNodeOut(scope, axis);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UniqueV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UniqueV2")
                                   .Input(_x)
                                   .Input(_axis)
                                   .Attr("T", T)
                                   .Attr("out_idx", out_idx)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UniqueWithCountsV2::UniqueWithCountsV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           tensorflow::DataType T, 
           tensorflow::DataType out_idx) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _axis = ::tensorflow::ops::AsNodeOut(scope, axis);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UniqueWithCountsV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UniqueWithCountsV2")
                                   .Input(_x)
                                   .Input(_axis)
                                   .Attr("T", T)
                                   .Attr("out_idx", out_idx)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Unpack::Unpack(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           int64_t num, 
           tensorflow::DataType T, 
           int64_t axis) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Unpack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Unpack")
                                   .Input(_value)
                                   .Attr("num", num)
                                   .Attr("T", T)
                                   .Attr("axis", axis)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Unstage::Unstage(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Unstage");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Unstage")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

VarHandleOp::VarHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape shape) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("VarHandleOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "VarHandleOp")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("dtype", dtype)
                                   .Attr("shape", shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

VarIsInitializedOp::VarIsInitializedOp(tensorflow::Scope& scope, 
           tensorflow::Input resource) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("VarIsInitializedOp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "VarIsInitializedOp")
                                   .Input(_resource)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

VariableShape::VariableShape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("VariableShape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "VariableShape")
                                   .Input(_input)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

