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
class AccumulateNV2{
  public:
    AccumulateNV2() {}
    AccumulateNV2(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AccumulatorNumAccumulated{
  public:
    AccumulatorNumAccumulated() {}
    AccumulatorNumAccumulated(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AccumulatorSetGlobalStep{
  public:
    AccumulatorSetGlobalStep() {}
    AccumulatorSetGlobalStep(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input new_global_step);
    tensorflow::Operation operation;
};

class AccumulatorTakeGradient{
  public:
    AccumulatorTakeGradient() {}
    AccumulatorTakeGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input num_required, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Any{
  public:
    Any() {}
    Any(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AssignAddVariableOp{
  public:
    AssignAddVariableOp() {}
    AssignAddVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value);
    tensorflow::Operation operation;
};

class AssignSub{
  public:
    AssignSub() {}
    AssignSub(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AssignSubVariableOp{
  public:
    AssignSubVariableOp() {}
    AssignSubVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value);
    tensorflow::Operation operation;
};

class AssignVariableOp{
  public:
    AssignVariableOp() {}
    AssignVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value);
    tensorflow::Operation operation;
};

class Barrier{
  public:
    Barrier() {}
    Barrier(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BarrierClose{
  public:
    BarrierClose() {}
    BarrierClose(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues = false);
    tensorflow::Operation operation;
};

class BarrierIncompleteSize{
  public:
    BarrierIncompleteSize() {}
    BarrierIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BarrierInsertMany{
  public:
    BarrierInsertMany() {}
    BarrierInsertMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input keys, 
           tensorflow::Input values, 
           int64_t component_index = 0);
    tensorflow::Operation operation;
};

class BarrierReadySize{
  public:
    BarrierReadySize() {}
    BarrierReadySize(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BarrierTakeMany{
  public:
    BarrierTakeMany() {}
    BarrierTakeMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input num_elements, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           bool allow_small_batch = false, 
           bool wait_for_incomplete = false, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Batch{
  public:
    Batch() {}
    Batch(tensorflow::Scope& scope, 
           tensorflow::InputList in_tensors, 
           tensorflow::gtl::ArraySlice<int64_t> allowed_batch_sizes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string batching_queue, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           int64_t num_batch_threads = 0, 
           int64_t max_batch_size = 0, 
           int64_t max_enqueued_batches = 10, 
           int64_t batch_timeout_micros = 0, 
           int64_t grad_timeout_micros = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class BatchSelfAdjointEigV2{
  public:
    BatchSelfAdjointEigV2() {}
    BatchSelfAdjointEigV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_v = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchToSpaceND{
  public:
    BatchToSpaceND() {}
    BatchToSpaceND(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input block_shape, 
           tensorflow::Input crops, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Bincount{
  public:
    Bincount() {}
    Bincount(tensorflow::Scope& scope, 
           tensorflow::Input arr, 
           tensorflow::Input size, 
           tensorflow::Input weights, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Bucketize{
  public:
    Bucketize() {}
    Bucketize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<float> boundaries);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Cast{
  public:
    Cast() {}
    Cast(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           bool Truncate = false, 
           tensorflow::DataType DstT = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CollectiveBcastSend{
  public:
    CollectiveBcastSend() {}
    CollectiveBcastSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t group_size = 0, 
           int64_t group_key = 0, 
           int64_t instance_key = 0, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CollectiveReduce{
  public:
    CollectiveReduce() {}
    CollectiveReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string merge_op, 
           tensorflow::string final_op, 
           tensorflow::gtl::ArraySlice<int64_t> subdiv_offsets, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t group_size = 0, 
           int64_t group_key = 0, 
           int64_t instance_key = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CompareAndBitpack{
  public:
    CompareAndBitpack() {}
    CompareAndBitpack(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input threshold);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ComputeAccidentalHits{
  public:
    ComputeAccidentalHits() {}
    ComputeAccidentalHits(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           tensorflow::Input sampled_candidates, 
           int64_t num_true = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ConditionalAccumulator{
  public:
    ConditionalAccumulator() {}
    ConditionalAccumulator(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::string reduction_type = "MEAN");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Copy{
  public:
    Copy() {}
    Copy(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_ops_spec, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CopyHost{
  public:
    CopyHost() {}
    CopyHost(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_ops_spec, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DataFormatDimMap{
  public:
    DataFormatDimMap() {}
    DataFormatDimMap(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INT32, 
           tensorflow::string src_format = "NHWC", 
           tensorflow::string dst_format = "NCHW");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeProtoV2{
  public:
    DecodeProtoV2() {}
    DecodeProtoV2(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::string message_type, 
           tensorflow::gtl::ArraySlice<tensorflow::string> field_names, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::string descriptor_source = "local://", 
           tensorflow::string message_format = "binary", 
           bool sanitize = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeepCopy{
  public:
    DeepCopy() {}
    DeepCopy(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeleteSessionTensor{
  public:
    DeleteSessionTensor() {}
    DeleteSessionTensor(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class DenseToDenseSetOperation{
  public:
    DenseToDenseSetOperation() {}
    DenseToDenseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1, 
           tensorflow::Input set2, 
           tensorflow::string set_operation, 
           bool validate_indices = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DenseToSparseSetOperation{
  public:
    DenseToSparseSetOperation() {}
    DenseToSparseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1, 
           tensorflow::Input set2_indices, 
           tensorflow::Input set2_values, 
           tensorflow::Input set2_shape, 
           tensorflow::string set_operation, 
           bool validate_indices = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DepthToSpace{
  public:
    DepthToSpace() {}
    DepthToSpace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t block_size = 0, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeserializeManySparse{
  public:
    DeserializeManySparse() {}
    DeserializeManySparse(tensorflow::Scope& scope, 
           tensorflow::Input serialized_sparse, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DestroyResourceOp{
  public:
    DestroyResourceOp() {}
    DestroyResourceOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           bool ignore_lookup_error = true);
    tensorflow::Operation operation;
};

class DestroyTemporaryVariable{
  public:
    DestroyTemporaryVariable() {}
    DestroyTemporaryVariable(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::string var_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EmptyTensorList{
  public:
    EmptyTensorList() {}
    EmptyTensorList(tensorflow::Scope& scope, 
           tensorflow::Input element_shape, 
           tensorflow::Input max_num_elements, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EncodeProto{
  public:
    EncodeProto() {}
    EncodeProto(tensorflow::Scope& scope, 
           tensorflow::Input sizes, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::string> field_names, 
           tensorflow::string message_type, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinput_types, 
           tensorflow::string descriptor_source = "local://");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalThreadPoolHandle{
  public:
    ExperimentalThreadPoolHandle() {}
    ExperimentalThreadPoolHandle(tensorflow::Scope& scope, 
           tensorflow::string display_name, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t num_threads = 0, 
           int64_t max_intra_op_parallelism = 1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxArgs{
  public:
    FakeQuantWithMinMaxArgs() {}
    FakeQuantWithMinMaxArgs(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           float min = -6.0, 
           float max = 6.0, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxArgsGradient{
  public:
    FakeQuantWithMinMaxArgsGradient() {}
    FakeQuantWithMinMaxArgsGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           float min = -6.0, 
           float max = 6.0, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxVars{
  public:
    FakeQuantWithMinMaxVars() {}
    FakeQuantWithMinMaxVars(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxVarsGradient{
  public:
    FakeQuantWithMinMaxVarsGradient() {}
    FakeQuantWithMinMaxVarsGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxVarsPerChannel{
  public:
    FakeQuantWithMinMaxVarsPerChannel() {}
    FakeQuantWithMinMaxVarsPerChannel(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxVarsPerChannelGradient{
  public:
    FakeQuantWithMinMaxVarsPerChannelGradient() {}
    FakeQuantWithMinMaxVarsPerChannelGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FusedBatchNormGrad{
  public:
    FusedBatchNormGrad() {}
    FusedBatchNormGrad(tensorflow::Scope& scope, 
           tensorflow::Input y_backprop, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input reserve_space_1, 
           tensorflow::Input reserve_space_2, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           float epsilon = 9.999999747378752e-05, 
           tensorflow::string data_format = "NHWC", 
           bool is_training = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FusedBatchNormGradV2{
  public:
    FusedBatchNormGradV2() {}
    FusedBatchNormGradV2(tensorflow::Scope& scope, 
           tensorflow::Input y_backprop, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input reserve_space_1, 
           tensorflow::Input reserve_space_2, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool is_training = true, 
           float epsilon = 9.999999747378752e-05, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GatherV2{
  public:
    GatherV2() {}
    GatherV2(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           tensorflow::Input axis, 
           tensorflow::DataType Tparams = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GetSessionHandle{
  public:
    GetSessionHandle() {}
    GetSessionHandle(tensorflow::Scope& scope, 
           tensorflow::Input value);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GetSessionHandleV2{
  public:
    GetSessionHandleV2() {}
    GetSessionHandleV2(tensorflow::Scope& scope, 
           tensorflow::Input value);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GetSessionTensor{
  public:
    GetSessionTensor() {}
    GetSessionTensor(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class HostConst{
  public:
    HostConst() {}
    HostConst(tensorflow::Scope& scope, 
           tensorflow::Tensor value, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ImmutableConst{
  public:
    ImmutableConst() {}
    ImmutableConst(tensorflow::Scope& scope, 
           tensorflow::string memory_region_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InplaceUpdate{
  public:
    InplaceUpdate() {}
    InplaceUpdate(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input i, 
           tensorflow::Input v, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InvertPermutation{
  public:
    InvertPermutation() {}
    InvertPermutation(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IsVariableInitialized{
  public:
    IsVariableInitialized() {}
    IsVariableInitialized(tensorflow::Scope& scope, 
           tensorflow::Input ref);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ListDiff{
  public:
    ListDiff() {}
    ListDiff(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LoadAndRemapMatrix{
  public:
    LoadAndRemapMatrix() {}
    LoadAndRemapMatrix(tensorflow::Scope& scope, 
           tensorflow::Input ckpt_path, 
           tensorflow::Input old_tensor_name, 
           tensorflow::Input row_remapping, 
           tensorflow::Input col_remapping, 
           tensorflow::Input initializing_values, 
           int64_t num_rows = 0, 
           int64_t num_cols = 0, 
           int64_t max_rows_in_memory = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MirrorPad{
  public:
    MirrorPad() {}
    MirrorPad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::string mode, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableHashTableV2{
  public:
    MutableHashTableV2() {}
    MutableHashTableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NcclReduce{
  public:
    NcclReduce() {}
    NcclReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NoOp{
  public:
    NoOp() {}
    NoOp(tensorflow::Scope& scope);
    tensorflow::Operation operation;
};

class NonMaxSuppressionV3{
  public:
    NonMaxSuppressionV3() {}
    NonMaxSuppressionV3(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold, 
           tensorflow::Input score_threshold);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NonMaxSuppressionV4{
  public:
    NonMaxSuppressionV4() {}
    NonMaxSuppressionV4(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold, 
           tensorflow::Input score_threshold, 
           bool pad_to_max_output_size = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NonMaxSuppressionWithOverlaps{
  public:
    NonMaxSuppressionWithOverlaps() {}
    NonMaxSuppressionWithOverlaps(tensorflow::Scope& scope, 
           tensorflow::Input overlaps, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input overlap_threshold, 
           tensorflow::Input score_threshold);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NthElement{
  public:
    NthElement() {}
    NthElement(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input n, 
           bool reverse = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OneHot{
  public:
    OneHot() {}
    OneHot(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input depth, 
           tensorflow::Input on_value, 
           tensorflow::Input off_value, 
           int64_t axis = -1, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OptionalFromValue{
  public:
    OptionalFromValue() {}
    OptionalFromValue(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OptionalGetValue{
  public:
    OptionalGetValue() {}
    OptionalGetValue(tensorflow::Scope& scope, 
           tensorflow::Input optional, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class OptionalHasValue{
  public:
    OptionalHasValue() {}
    OptionalHasValue(tensorflow::Scope& scope, 
           tensorflow::Input optional);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OptionalNone{
  public:
    OptionalNone() {}
    OptionalNone(tensorflow::Scope& scope);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Pack{
  public:
    Pack() {}
    Pack(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t axis = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PaddedBatchDataset{
  public:
    PaddedBatchDataset() {}
    PaddedBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::InputList padded_shapes, 
           tensorflow::InputList padding_values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParallelConcat{
  public:
    ParallelConcat() {}
    ParallelConcat(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PlaceholderV2{
  public:
    PlaceholderV2() {}
    PlaceholderV2(tensorflow::Scope& scope, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PlaceholderWithDefault{
  public:
    PlaceholderWithDefault() {}
    PlaceholderWithDefault(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PopulationCount{
  public:
    PopulationCount() {}
    PopulationCount(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PrintV2{
  public:
    PrintV2() {}
    PrintV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string output_stream = "stderr");
    tensorflow::Operation operation;
};

class QuantizeAndDequantize{
  public:
    QuantizeAndDequantize() {}
    QuantizeAndDequantize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool signed_input = true, 
           int64_t num_bits = 8, 
           bool range_given = false, 
           float input_min = 0.0, 
           float input_max = 0.0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizeAndDequantizeV2{
  public:
    QuantizeAndDequantizeV2() {}
    QuantizeAndDequantizeV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           bool signed_input = true, 
           int64_t num_bits = 8, 
           bool range_given = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string round_mode = "HALF_TO_EVEN");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizeAndDequantizeV3{
  public:
    QuantizeAndDequantizeV3() {}
    QuantizeAndDequantizeV3(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::Input num_bits, 
           bool signed_input = true, 
           bool range_given = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizeDownAndShrinkRange{
  public:
    QuantizeDownAndShrinkRange() {}
    QuantizeDownAndShrinkRange(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedConcat{
  public:
    QuantizedConcat() {}
    QuantizedConcat(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList values, 
           tensorflow::InputList input_mins, 
           tensorflow::InputList input_maxes, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedReshape{
  public:
    QuantizedReshape() {}
    QuantizedReshape(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input shape, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RaggedGather{
  public:
    RaggedGather() {}
    RaggedGather(tensorflow::Scope& scope, 
           tensorflow::Input params_nested_splits, 
           tensorflow::Input params_dense_values, 
           tensorflow::Input indices, 
           int64_t OUTPUT_RAGGED_RANK = 0, 
           int64_t PARAMS_RAGGED_RANK = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RefMerge{
  public:
    RefMerge() {}
    RefMerge(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceGather{
  public:
    ResourceGather() {}
    ResourceGather(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           bool validate_indices = true, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceScatterMax{
  public:
    ResourceScatterMax() {}
    ResourceScatterMax(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

class ResourceScatterMin{
  public:
    ResourceScatterMin() {}
    ResourceScatterMin(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

class ResourceScatterNdUpdate{
  public:
    ResourceScatterNdUpdate() {}
    ResourceScatterNdUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           bool use_locking = true);
    tensorflow::Operation operation;
};

class ResourceScatterUpdate{
  public:
    ResourceScatterUpdate() {}
    ResourceScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

class ResourceStridedSliceAssign{
  public:
    ResourceStridedSliceAssign() {}
    ResourceStridedSliceAssign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input value, 
           int64_t new_axis_mask = 0, 
           int64_t shrink_axis_mask = 0, 
           int64_t begin_mask = 0, 
           int64_t end_mask = 0, 
           int64_t ellipsis_mask = 0);
    tensorflow::Operation operation;
};

class ReverseSequence{
  public:
    ReverseSequence() {}
    ReverseSequence(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input seq_lengths, 
           int64_t seq_dim = 0, 
           int64_t batch_dim = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReverseV2{
  public:
    ReverseV2() {}
    ReverseV2(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ScatterNdSub{
  public:
    ScatterNdSub() {}
    ScatterNdSub(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ScatterNdUpdate{
  public:
    ScatterNdUpdate() {}
    ScatterNdUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ScatterUpdate{
  public:
    ScatterUpdate() {}
    ScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Select{
  public:
    Select() {}
    Select(tensorflow::Scope& scope, 
           tensorflow::Input condition, 
           tensorflow::Input t, 
           tensorflow::Input e, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SelfAdjointEigV2{
  public:
    SelfAdjointEigV2() {}
    SelfAdjointEigV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_v = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SerializeManySparse{
  public:
    SerializeManySparse() {}
    SerializeManySparse(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::DataType out_type = tensorflow::DT_STRING);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SerializeSparse{
  public:
    SerializeSparse() {}
    SerializeSparse(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::DataType out_type = tensorflow::DT_STRING);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SetSize{
  public:
    SetSize() {}
    SetSize(tensorflow::Scope& scope, 
           tensorflow::Input set_indices, 
           tensorflow::Input set_values, 
           tensorflow::Input set_shape, 
           bool validate_indices = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Skipgram{
  public:
    Skipgram() {}
    Skipgram(tensorflow::Scope& scope, 
           tensorflow::string filename, 
           int64_t batch_size = 0, 
           int64_t window_size = 5, 
           int64_t min_count = 5, 
           float subsample = 0.001000000047497451);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Snapshot{
  public:
    Snapshot() {}
    Snapshot(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SpaceToDepth{
  public:
    SpaceToDepth() {}
    SpaceToDepth(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t block_size = 0, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseAddGrad{
  public:
    SparseAddGrad() {}
    SparseAddGrad(tensorflow::Scope& scope, 
           tensorflow::Input backprop_val_grad, 
           tensorflow::Input a_indices, 
           tensorflow::Input b_indices, 
           tensorflow::Input sum_indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseConcat{
  public:
    SparseConcat() {}
    SparseConcat(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList values, 
           tensorflow::InputList shapes, 
           int64_t concat_dim = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseConditionalAccumulator{
  public:
    SparseConditionalAccumulator() {}
    SparseConditionalAccumulator(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::string reduction_type = "MEAN");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseCross{
  public:
    SparseCross() {}
    SparseCross(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList values, 
           tensorflow::InputList shapes, 
           tensorflow::InputList dense_inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dense_types, 
           bool hashed_output = false, 
           int64_t num_buckets = 0, 
           int64_t hash_key = 0, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID, 
           tensorflow::DataType internal_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseDenseCwiseAdd{
  public:
    SparseDenseCwiseAdd() {}
    SparseDenseCwiseAdd(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::Input dense, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseDenseCwiseDiv{
  public:
    SparseDenseCwiseDiv() {}
    SparseDenseCwiseDiv(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::Input dense, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseFillEmptyRows{
  public:
    SparseFillEmptyRows() {}
    SparseFillEmptyRows(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input dense_shape, 
           tensorflow::Input default_value);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseFillEmptyRowsGrad{
  public:
    SparseFillEmptyRowsGrad() {}
    SparseFillEmptyRowsGrad(tensorflow::Scope& scope, 
           tensorflow::Input reverse_index_map, 
           tensorflow::Input grad_values, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseReduceMax{
  public:
    SparseReduceMax() {}
    SparseReduceMax(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseReorder{
  public:
    SparseReorder() {}
    SparseReorder(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseReshape{
  public:
    SparseReshape() {}
    SparseReshape(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_shape, 
           tensorflow::Input new_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSlice{
  public:
    SparseSlice() {}
    SparseSlice(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input shape, 
           tensorflow::Input start, 
           tensorflow::Input size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSliceGrad{
  public:
    SparseSliceGrad() {}
    SparseSliceGrad(tensorflow::Scope& scope, 
           tensorflow::Input backprop_val_grad, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_start, 
           tensorflow::Input output_indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSparseMaximum{
  public:
    SparseSparseMaximum() {}
    SparseSparseMaximum(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b_indices, 
           tensorflow::Input b_values, 
           tensorflow::Input b_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSparseMinimum{
  public:
    SparseSparseMinimum() {}
    SparseSparseMinimum(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b_indices, 
           tensorflow::Input b_values, 
           tensorflow::Input b_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSplit{
  public:
    SparseSplit() {}
    SparseSplit(tensorflow::Scope& scope, 
           tensorflow::Input split_dim, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input shape, 
           int64_t num_split = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseToDense{
  public:
    SparseToDense() {}
    SparseToDense(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input output_shape, 
           tensorflow::Input sparse_values, 
           tensorflow::Input default_value, 
           bool validate_indices = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseToSparseSetOperation{
  public:
    SparseToSparseSetOperation() {}
    SparseToSparseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1_indices, 
           tensorflow::Input set1_values, 
           tensorflow::Input set1_shape, 
           tensorflow::Input set2_indices, 
           tensorflow::Input set2_values, 
           tensorflow::Input set2_shape, 
           tensorflow::string set_operation, 
           bool validate_indices = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SplitV{
  public:
    SplitV() {}
    SplitV(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input size_splits, 
           tensorflow::Input split_dim, 
           int64_t num_split = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackPush{
  public:
    StackPush() {}
    StackPush(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input elem, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool swap_memory = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackV2{
  public:
    StackV2() {}
    StackV2(tensorflow::Scope& scope, 
           tensorflow::Input max_size, 
           tensorflow::string stack_name, 
           tensorflow::DataType elem_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Stage{
  public:
    Stage() {}
    Stage(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class StagePeek{
  public:
    StagePeek() {}
    StagePeek(tensorflow::Scope& scope, 
           tensorflow::Input index, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class StageSize{
  public:
    StageSize() {}
    StageSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StridedSliceAssign{
  public:
    StridedSliceAssign() {}
    StridedSliceAssign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t shrink_axis_mask = 0, 
           int64_t begin_mask = 0, 
           int64_t end_mask = 0, 
           int64_t ellipsis_mask = 0, 
           int64_t new_axis_mask = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StridedSliceGrad{
  public:
    StridedSliceGrad() {}
    StridedSliceGrad(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t shrink_axis_mask = 0, 
           int64_t begin_mask = 0, 
           int64_t end_mask = 0, 
           int64_t ellipsis_mask = 0, 
           int64_t new_axis_mask = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TemporaryVariable{
  public:
    TemporaryVariable() {}
    TemporaryVariable(tensorflow::Scope& scope, 
           tensorflow::string var_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListConcat{
  public:
    TensorListConcat() {}
    TensorListConcat(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListConcatLists{
  public:
    TensorListConcatLists() {}
    TensorListConcatLists(tensorflow::Scope& scope, 
           tensorflow::Input input_a, 
           tensorflow::Input input_b, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListElementShape{
  public:
    TensorListElementShape() {}
    TensorListElementShape(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType shape_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListFromTensor{
  public:
    TensorListFromTensor() {}
    TensorListFromTensor(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input element_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListGather{
  public:
    TensorListGather() {}
    TensorListGather(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input indices, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListGetItem{
  public:
    TensorListGetItem() {}
    TensorListGetItem(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input index, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListLength{
  public:
    TensorListLength() {}
    TensorListLength(tensorflow::Scope& scope, 
           tensorflow::Input input_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListPopBack{
  public:
    TensorListPopBack() {}
    TensorListPopBack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListPushBack{
  public:
    TensorListPushBack() {}
    TensorListPushBack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input tensor);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListPushBackBatch{
  public:
    TensorListPushBackBatch() {}
    TensorListPushBackBatch(tensorflow::Scope& scope, 
           tensorflow::Input input_handles, 
           tensorflow::Input tensor);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListReserve{
  public:
    TensorListReserve() {}
    TensorListReserve(tensorflow::Scope& scope, 
           tensorflow::Input element_shape, 
           tensorflow::Input num_elements, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListScatter{
  public:
    TensorListScatter() {}
    TensorListScatter(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input element_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListSetItem{
  public:
    TensorListSetItem() {}
    TensorListSetItem(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input index, 
           tensorflow::Input item);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListSplit{
  public:
    TensorListSplit() {}
    TensorListSplit(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input element_shape, 
           tensorflow::Input lengths);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListStack{
  public:
    TensorListStack() {}
    TensorListStack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID, 
           int64_t num_elements = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorScatterAdd{
  public:
    TensorScatterAdd() {}
    TensorScatterAdd(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorScatterUpdate{
  public:
    TensorScatterUpdate() {}
    TensorScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TileGrad{
  public:
    TileGrad() {}
    TileGrad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input multiples, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Unbatch{
  public:
    Unbatch() {}
    Unbatch(tensorflow::Scope& scope, 
           tensorflow::Input batched_tensor, 
           tensorflow::Input batch_index, 
           tensorflow::Input id, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t timeout_micros = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnbatchGrad{
  public:
    UnbatchGrad() {}
    UnbatchGrad(tensorflow::Scope& scope, 
           tensorflow::Input original_input, 
           tensorflow::Input batch_index, 
           tensorflow::Input grad, 
           tensorflow::Input id, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UniqueV2{
  public:
    UniqueV2() {}
    UniqueV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UniqueWithCountsV2{
  public:
    UniqueWithCountsV2() {}
    UniqueWithCountsV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Unpack{
  public:
    Unpack() {}
    Unpack(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           int64_t num = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t axis = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Unstage{
  public:
    Unstage() {}
    Unstage(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class VarHandleOp{
  public:
    VarHandleOp() {}
    VarHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class VarIsInitializedOp{
  public:
    VarIsInitializedOp() {}
    VarIsInitializedOp(tensorflow::Scope& scope, 
           tensorflow::Input resource);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class VariableShape{
  public:
    VariableShape() {}
    VariableShape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

