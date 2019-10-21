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
class All{
  public:
    All() {}
    All(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesExampleDebugOutputs{
  public:
    BoostedTreesExampleDebugOutputs() {}
    BoostedTreesExampleDebugOutputs(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input bucketized_features, 
           int64_t num_bucketized_features = 0, 
           int64_t logits_dimension = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DebugGradientIdentity{
  public:
    DebugGradientIdentity() {}
    DebugGradientIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DebugGradientRefIdentity{
  public:
    DebugGradientRefIdentity() {}
    DebugGradientRefIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DebugIdentity{
  public:
    DebugIdentity() {}
    DebugIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool gated_grpc = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DebugNanCount{
  public:
    DebugNanCount() {}
    DebugNanCount(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           bool gated_grpc = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DebugNumericSummary{
  public:
    DebugNumericSummary() {}
    DebugNumericSummary(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           bool gated_grpc = false, 
           float lower_bound = -INFINITY, 
           float upper_bound = INFINITY, 
           bool mute_if_healthy = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodeJSONExample{
  public:
    DecodeJSONExample() {}
    DecodeJSONExample(tensorflow::Scope& scope, 
           tensorflow::Input json_examples);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalParseExampleDataset{
  public:
    ExperimentalParseExampleDataset() {}
    ExperimentalParseExampleDataset(tensorflow::Scope& scope, 
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
           bool sloppy = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Fact{
  public:
    Fact() {}
    Fact(tensorflow::Scope& scope);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class NcclAllReduce{
  public:
    NcclAllReduce() {}
    NcclAllReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class NcclBroadcast{
  public:
    NcclBroadcast() {}
    NcclBroadcast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ParseExample{
  public:
    ParseExample() {}
    ParseExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::Input names, 
           tensorflow::Input sparse_keys, 
           tensorflow::Input dense_keys, 
           tensorflow::InputList dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tdense, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> dense_shapes, 
           int64_t Nsparse = 0, 
           int64_t Ndense = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ParseSequenceExample{
  public:
    ParseSequenceExample() {}
    ParseSequenceExample(tensorflow::Scope& scope, 
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
           int64_t Ncontext_sparse = 0, 
           int64_t Ncontext_dense = 0, 
           int64_t Nfeature_list_sparse = 0, 
           int64_t Nfeature_list_dense = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ParseSingleExample{
  public:
    ParseSingleExample() {}
    ParseSingleExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::InputList dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::string> sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tdense, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> dense_shapes, 
           int64_t num_sparse = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ParseSingleSequenceExample{
  public:
    ParseSingleSequenceExample() {}
    ParseSingleSequenceExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::Input feature_list_dense_missing_assumed_empty, 
           tensorflow::Input context_sparse_keys, 
           tensorflow::Input context_dense_keys, 
           tensorflow::Input feature_list_sparse_keys, 
           tensorflow::Input feature_list_dense_keys, 
           tensorflow::InputList context_dense_defaults, 
           tensorflow::Input debug_name, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> context_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcontext_dense, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_dense_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> context_dense_shapes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> feature_list_dense_shapes, 
           int64_t Ncontext_sparse = 0, 
           int64_t Ncontext_dense = 0, 
           int64_t Nfeature_list_sparse = 0, 
           int64_t Nfeature_list_dense = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ReadVariableOp{
  public:
    ReadVariableOp() {}
    ReadVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _Arg{
  public:
    _Arg() {}
    _Arg(tensorflow::Scope& scope, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t index = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _ArrayToList{
  public:
    _ArrayToList() {}
    _ArrayToList(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> out_types);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class _DeviceArg{
  public:
    _DeviceArg() {}
    _DeviceArg(tensorflow::Scope& scope, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t index = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _DeviceRetval{
  public:
    _DeviceRetval() {}
    _DeviceRetval(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t index = 0);
    tensorflow::Operation operation;
};

#pragma once
class _FusedConv2D{
  public:
    _FusedConv2D() {}
    _FusedConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input args, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::gtl::ArraySlice<tensorflow::string> fused_ops, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_args = 0, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1}, 
           float epsilon = 9.999999747378752e-05);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _HostCast{
  public:
    _HostCast() {}
    _HostCast(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           bool Truncate = false, 
           tensorflow::DataType DstT = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _HostRecv{
  public:
    _HostRecv() {}
    _HostRecv(tensorflow::Scope& scope, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           tensorflow::DataType tensor_type = tensorflow::DT_INVALID, 
           int64_t send_device_incarnation = 0, 
           bool client_terminated = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _HostSend{
  public:
    _HostSend() {}
    _HostSend(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           bool client_terminated = false, 
           int64_t send_device_incarnation = 0);
    tensorflow::Operation operation;
};

#pragma once
class _If{
  public:
    _If() {}
    _If(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class _ListToArray{
  public:
    _ListToArray() {}
    _ListToArray(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class _MklAdd{
  public:
    _MklAdd() {}
    _MklAdd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _MklMaximum{
  public:
    _MklMaximum() {}
    _MklMaximum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _MklMul{
  public:
    _MklMul() {}
    _MklMul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _MklSquaredDifference{
  public:
    _MklSquaredDifference() {}
    _MklSquaredDifference(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _MklSub{
  public:
    _MklSub() {}
    _MklSub(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _NcclBroadcastRecv{
  public:
    _NcclBroadcastRecv() {}
    _NcclBroadcastRecv(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::string shared_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _NcclBroadcastSend{
  public:
    _NcclBroadcastSend() {}
    _NcclBroadcastSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string shared_name, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
};

#pragma once
class _NcclReduceRecv{
  public:
    _NcclReduceRecv() {}
    _NcclReduceRecv(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _NcclReduceSend{
  public:
    _NcclReduceSend() {}
    _NcclReduceSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
};

#pragma once
class _ParallelConcatStart{
  public:
    _ParallelConcatStart() {}
    _ParallelConcatStart(tensorflow::Scope& scope, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _ParallelConcatUpdate{
  public:
    _ParallelConcatUpdate() {}
    _ParallelConcatUpdate(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input update, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t loc = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _ReadVariablesOp{
  public:
    _ReadVariablesOp() {}
    _ReadVariablesOp(tensorflow::Scope& scope, 
           tensorflow::InputList resources, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class _Recv{
  public:
    _Recv() {}
    _Recv(tensorflow::Scope& scope, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           tensorflow::DataType tensor_type = tensorflow::DT_INVALID, 
           int64_t send_device_incarnation = 0, 
           bool client_terminated = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _Retval{
  public:
    _Retval() {}
    _Retval(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t index = 0);
    tensorflow::Operation operation;
};

#pragma once
class _ScopedAllocator{
  public:
    _ScopedAllocator() {}
    _ScopedAllocator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string sa_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t id = 0, 
           int64_t expected_call_count = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _ScopedAllocatorConcat{
  public:
    _ScopedAllocatorConcat() {}
    _ScopedAllocatorConcat(tensorflow::Scope& scope, 
           tensorflow::Input backing, 
           tensorflow::InputList inputs, 
           tensorflow::string sa_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool reshape = false, 
           int64_t id = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _ScopedAllocatorSplit{
  public:
    _ScopedAllocatorSplit() {}
    _ScopedAllocatorSplit(tensorflow::Scope& scope, 
           tensorflow::Input concat, 
           tensorflow::InputList split, 
           tensorflow::string sa_name, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t id = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class _Send{
  public:
    _Send() {}
    _Send(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           bool client_terminated = false, 
           int64_t send_device_incarnation = 0);
    tensorflow::Operation operation;
};

#pragma once
class _UnaryOpsComposition{
  public:
    _UnaryOpsComposition() {}
    _UnaryOpsComposition(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::gtl::ArraySlice<tensorflow::string> op_names, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class _VarHandlesOp{
  public:
    _VarHandlesOp() {}
    _VarHandlesOp(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::string> containers, 
           tensorflow::gtl::ArraySlice<tensorflow::string> shared_names, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class _While{
  public:
    _While() {}
    _While(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

