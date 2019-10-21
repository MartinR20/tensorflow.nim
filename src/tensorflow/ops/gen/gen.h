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
class Assign{
  public:
    Assign() {}
    Assign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool validate_shape = true, 
           bool use_locking = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchToSpace{
  public:
    BatchToSpace() {}
    BatchToSpace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input crops, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t block_size = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Bitcast{
  public:
    Bitcast() {}
    Bitcast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BroadcastArgs{
  public:
    BroadcastArgs() {}
    BroadcastArgs(tensorflow::Scope& scope, 
           tensorflow::Input s0, 
           tensorflow::Input s1, 
           tensorflow::DataType T = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BroadcastGradientArgs{
  public:
    BroadcastGradientArgs() {}
    BroadcastGradientArgs(tensorflow::Scope& scope, 
           tensorflow::Input s0, 
           tensorflow::Input s1, 
           tensorflow::DataType T = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BroadcastTo{
  public:
    BroadcastTo() {}
    BroadcastTo(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input shape, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ClipByValue{
  public:
    ClipByValue() {}
    ClipByValue(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input clip_value_min, 
           tensorflow::Input clip_value_max, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Concat{
  public:
    Concat() {}
    Concat(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList values, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ConcatOffset{
  public:
    ConcatOffset() {}
    ConcatOffset(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList shape);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class ConcatV2{
  public:
    ConcatV2() {}
    ConcatV2(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Const{
  public:
    Const() {}
    Const(tensorflow::Scope& scope, 
           tensorflow::Tensor value, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DynamicPartition{
  public:
    DynamicPartition() {}
    DynamicPartition(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input partitions, 
           int64_t num_partitions = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DynamicStitch{
  public:
    DynamicStitch() {}
    DynamicStitch(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class EditDistance{
  public:
    EditDistance() {}
    EditDistance(tensorflow::Scope& scope, 
           tensorflow::Input hypothesis_indices, 
           tensorflow::Input hypothesis_values, 
           tensorflow::Input hypothesis_shape, 
           tensorflow::Input truth_indices, 
           tensorflow::Input truth_values, 
           tensorflow::Input truth_shape, 
           bool normalize = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Empty{
  public:
    Empty() {}
    Empty(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           bool init = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class EnsureShape{
  public:
    EnsureShape() {}
    EnsureShape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExpandDims{
  public:
    ExpandDims() {}
    ExpandDims(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input dim, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExtractVolumePatches{
  public:
    ExtractVolumePatches() {}
    ExtractVolumePatches(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksizes, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Fill{
  public:
    Fill() {}
    Fill(tensorflow::Scope& scope, 
           tensorflow::Input dims, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Gather{
  public:
    Gather() {}
    Gather(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           bool validate_indices = true, 
           tensorflow::DataType Tparams = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class GatherNd{
  public:
    GatherNd() {}
    GatherNd(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           tensorflow::DataType Tparams = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class GuaranteeConst{
  public:
    GuaranteeConst() {}
    GuaranteeConst(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class HistogramFixedWidth{
  public:
    HistogramFixedWidth() {}
    HistogramFixedWidth(tensorflow::Scope& scope, 
           tensorflow::Input values, 
           tensorflow::Input value_range, 
           tensorflow::Input nbins, 
           tensorflow::DataType dtype = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Identity{
  public:
    Identity() {}
    Identity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IdentityN{
  public:
    IdentityN() {}
    IdentityN(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class OnesLike{
  public:
    OnesLike() {}
    OnesLike(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Pad{
  public:
    Pad() {}
    Pad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Placeholder{
  public:
    Placeholder() {}
    Placeholder(tensorflow::Scope& scope, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Print{
  public:
    Print() {}
    Print(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> U, 
           tensorflow::string message, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t first_n = -1, 
           int64_t summarize = 3);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Range{
  public:
    Range() {}
    Range(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input limit, 
           tensorflow::Input delta, 
           tensorflow::DataType Tidx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Rank{
  public:
    Rank() {}
    Rank(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RealDiv{
  public:
    RealDiv() {}
    RealDiv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Reshape{
  public:
    Reshape() {}
    Reshape(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input shape, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Reverse{
  public:
    Reverse() {}
    Reverse(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input dims, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Roll{
  public:
    Roll() {}
    Roll(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input shift, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterNd{
  public:
    ScatterNd() {}
    ScatterNd(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::Input shape, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Shape{
  public:
    Shape() {}
    Shape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ShapeN{
  public:
    ShapeN() {}
    ShapeN(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class Size{
  public:
    Size() {}
    Size(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Slice{
  public:
    Slice() {}
    Slice(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input begin, 
           tensorflow::Input size, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SpaceToBatch{
  public:
    SpaceToBatch() {}
    SpaceToBatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t block_size = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SpaceToBatchND{
  public:
    SpaceToBatchND() {}
    SpaceToBatchND(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input block_shape, 
           tensorflow::Input paddings, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Split{
  public:
    Split() {}
    Split(tensorflow::Scope& scope, 
           tensorflow::Input split_dim, 
           tensorflow::Input value, 
           int64_t num_split = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Squeeze{
  public:
    Squeeze() {}
    Squeeze(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> squeeze_dims, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Stack{
  public:
    Stack() {}
    Stack(tensorflow::Scope& scope, 
           tensorflow::string stack_name, 
           tensorflow::DataType elem_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StridedSlice{
  public:
    StridedSlice() {}
    StridedSlice(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t shrink_axis_mask = 0, 
           int64_t begin_mask = 0, 
           int64_t end_mask = 0, 
           int64_t ellipsis_mask = 0, 
           int64_t new_axis_mask = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Tile{
  public:
    Tile() {}
    Tile(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input multiples, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Timestamp{
  public:
    Timestamp() {}
    Timestamp(tensorflow::Scope& scope);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Transpose{
  public:
    Transpose() {}
    Transpose(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input perm, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TruncateDiv{
  public:
    TruncateDiv() {}
    TruncateDiv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TruncateMod{
  public:
    TruncateMod() {}
    TruncateMod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Unique{
  public:
    Unique() {}
    Unique(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UniqueWithCounts{
  public:
    UniqueWithCounts() {}
    UniqueWithCounts(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnravelIndex{
  public:
    UnravelIndex() {}
    UnravelIndex(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input dims, 
           tensorflow::DataType Tidx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Variable{
  public:
    Variable() {}
    Variable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class VariableV2{
  public:
    VariableV2() {}
    VariableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Where{
  public:
    Where() {}
    Where(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class While{
  public:
    While() {}
    While(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class ZerosLike{
  public:
    ZerosLike() {}
    ZerosLike(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

