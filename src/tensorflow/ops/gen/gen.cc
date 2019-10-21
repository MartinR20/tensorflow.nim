#include "tensorflow/cc/ops/const_op.h"
#include "gen.h"

Assign::Assign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input value, 
           tensorflow::DataType T, 
           bool validate_shape, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Assign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Assign")
                                   .Input(_ref)
                                   .Input(_value)
                                   .Attr("T", T)
                                   .Attr("validate_shape", validate_shape)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchToSpace::BatchToSpace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input crops, 
           tensorflow::DataType T, 
           int64_t block_size) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _crops = ::tensorflow::ops::AsNodeOut(scope, crops);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchToSpace");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchToSpace")
                                   .Input(_input)
                                   .Input(_crops)
                                   .Attr("T", T)
                                   .Attr("block_size", block_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Bitcast::Bitcast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Bitcast");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Bitcast")
                                   .Input(_input)
                                   .Attr("type", type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BroadcastArgs::BroadcastArgs(tensorflow::Scope& scope, 
           tensorflow::Input s0, 
           tensorflow::Input s1, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _s0 = ::tensorflow::ops::AsNodeOut(scope, s0);
      if (!scope.ok())
          return;
      auto _s1 = ::tensorflow::ops::AsNodeOut(scope, s1);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BroadcastArgs");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BroadcastArgs")
                                   .Input(_s0)
                                   .Input(_s1)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BroadcastGradientArgs::BroadcastGradientArgs(tensorflow::Scope& scope, 
           tensorflow::Input s0, 
           tensorflow::Input s1, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _s0 = ::tensorflow::ops::AsNodeOut(scope, s0);
      if (!scope.ok())
          return;
      auto _s1 = ::tensorflow::ops::AsNodeOut(scope, s1);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BroadcastGradientArgs");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BroadcastGradientArgs")
                                   .Input(_s0)
                                   .Input(_s1)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BroadcastTo::BroadcastTo(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input shape, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BroadcastTo");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BroadcastTo")
                                   .Input(_input)
                                   .Input(_shape)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ClipByValue::ClipByValue(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input clip_value_min, 
           tensorflow::Input clip_value_max, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _t = ::tensorflow::ops::AsNodeOut(scope, t);
      if (!scope.ok())
          return;
      auto _clip_value_min = ::tensorflow::ops::AsNodeOut(scope, clip_value_min);
      if (!scope.ok())
          return;
      auto _clip_value_max = ::tensorflow::ops::AsNodeOut(scope, clip_value_max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ClipByValue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ClipByValue")
                                   .Input(_t)
                                   .Input(_clip_value_min)
                                   .Input(_clip_value_max)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Concat::Concat(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList values, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _concat_dim = ::tensorflow::ops::AsNodeOut(scope, concat_dim);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Concat");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Concat")
                                   .Input(_concat_dim)
                                   .Input(_values)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ConcatOffset::ConcatOffset(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList shape) {
      if (!scope.ok())
          return;
      auto _concat_dim = ::tensorflow::ops::AsNodeOut(scope, concat_dim);
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOutList(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ConcatOffset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ConcatOffset")
                                   .Input(_concat_dim)
                                   .Input(_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

ConcatV2::ConcatV2(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::Input axis, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      if (!scope.ok())
          return;
      auto _axis = ::tensorflow::ops::AsNodeOut(scope, axis);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ConcatV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ConcatV2")
                                   .Input(_values)
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

Const::Const(tensorflow::Scope& scope, 
           tensorflow::Tensor value, 
           tensorflow::DataType dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Const");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Const")
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

DynamicPartition::DynamicPartition(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input partitions, 
           int64_t num_partitions, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _partitions = ::tensorflow::ops::AsNodeOut(scope, partitions);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DynamicPartition");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DynamicPartition")
                                   .Input(_data)
                                   .Input(_partitions)
                                   .Attr("num_partitions", num_partitions)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DynamicStitch::DynamicStitch(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList data, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOutList(scope, indices);
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOutList(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DynamicStitch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DynamicStitch")
                                   .Input(_indices)
                                   .Input(_data)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EditDistance::EditDistance(tensorflow::Scope& scope, 
           tensorflow::Input hypothesis_indices, 
           tensorflow::Input hypothesis_values, 
           tensorflow::Input hypothesis_shape, 
           tensorflow::Input truth_indices, 
           tensorflow::Input truth_values, 
           tensorflow::Input truth_shape, 
           bool normalize) {
      if (!scope.ok())
          return;
      auto _hypothesis_indices = ::tensorflow::ops::AsNodeOut(scope, hypothesis_indices);
      if (!scope.ok())
          return;
      auto _hypothesis_values = ::tensorflow::ops::AsNodeOut(scope, hypothesis_values);
      if (!scope.ok())
          return;
      auto _hypothesis_shape = ::tensorflow::ops::AsNodeOut(scope, hypothesis_shape);
      if (!scope.ok())
          return;
      auto _truth_indices = ::tensorflow::ops::AsNodeOut(scope, truth_indices);
      if (!scope.ok())
          return;
      auto _truth_values = ::tensorflow::ops::AsNodeOut(scope, truth_values);
      if (!scope.ok())
          return;
      auto _truth_shape = ::tensorflow::ops::AsNodeOut(scope, truth_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EditDistance");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EditDistance")
                                   .Input(_hypothesis_indices)
                                   .Input(_hypothesis_values)
                                   .Input(_hypothesis_shape)
                                   .Input(_truth_indices)
                                   .Input(_truth_values)
                                   .Input(_truth_shape)
                                   .Attr("normalize", normalize)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Empty::Empty(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::DataType dtype, 
           bool init) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Empty");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Empty")
                                   .Input(_shape)
                                   .Attr("dtype", dtype)
                                   .Attr("init", init)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EnsureShape::EnsureShape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EnsureShape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EnsureShape")
                                   .Input(_input)
                                   .Attr("shape", shape)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExpandDims::ExpandDims(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input dim, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _dim = ::tensorflow::ops::AsNodeOut(scope, dim);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExpandDims");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExpandDims")
                                   .Input(_input)
                                   .Input(_dim)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExtractVolumePatches::ExtractVolumePatches(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksizes, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExtractVolumePatches");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExtractVolumePatches")
                                   .Input(_input)
                                   .Attr("ksizes", ksizes)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Fill::Fill(tensorflow::Scope& scope, 
           tensorflow::Input dims, 
           tensorflow::Input value, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _dims = ::tensorflow::ops::AsNodeOut(scope, dims);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Fill");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Fill")
                                   .Input(_dims)
                                   .Input(_value)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Gather::Gather(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           bool validate_indices, 
           tensorflow::DataType Tparams) {
      if (!scope.ok())
          return;
      auto _params = ::tensorflow::ops::AsNodeOut(scope, params);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Gather");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Gather")
                                   .Input(_params)
                                   .Input(_indices)
                                   .Attr("validate_indices", validate_indices)
                                   .Attr("Tparams", Tparams)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GatherNd::GatherNd(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           tensorflow::DataType Tparams) {
      if (!scope.ok())
          return;
      auto _params = ::tensorflow::ops::AsNodeOut(scope, params);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GatherNd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GatherNd")
                                   .Input(_params)
                                   .Input(_indices)
                                   .Attr("Tparams", Tparams)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GuaranteeConst::GuaranteeConst(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GuaranteeConst");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GuaranteeConst")
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

HistogramFixedWidth::HistogramFixedWidth(tensorflow::Scope& scope, 
           tensorflow::Input values, 
           tensorflow::Input value_range, 
           tensorflow::Input nbins, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      if (!scope.ok())
          return;
      auto _value_range = ::tensorflow::ops::AsNodeOut(scope, value_range);
      if (!scope.ok())
          return;
      auto _nbins = ::tensorflow::ops::AsNodeOut(scope, nbins);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("HistogramFixedWidth");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "HistogramFixedWidth")
                                   .Input(_values)
                                   .Input(_value_range)
                                   .Input(_nbins)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Identity::Identity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Identity");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Identity")
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

IdentityN::IdentityN(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IdentityN");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IdentityN")
                                   .Input(_input)
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

OnesLike::OnesLike(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OnesLike");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OnesLike")
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

Pad::Pad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _paddings = ::tensorflow::ops::AsNodeOut(scope, paddings);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Pad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Pad")
                                   .Input(_input)
                                   .Input(_paddings)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Placeholder::Placeholder(tensorflow::Scope& scope, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape shape) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Placeholder");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Placeholder")
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

Print::Print(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> U, 
           tensorflow::string message, 
           tensorflow::DataType T, 
           int64_t first_n, 
           int64_t summarize) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOutList(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Print");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Print")
                                   .Input(_input)
                                   .Input(_data)
                                   .Attr("U", U)
                                   .Attr("message", message)
                                   .Attr("T", T)
                                   .Attr("first_n", first_n)
                                   .Attr("summarize", summarize)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Range::Range(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input limit, 
           tensorflow::Input delta, 
           tensorflow::DataType Tidx) {
      if (!scope.ok())
          return;
      auto _start = ::tensorflow::ops::AsNodeOut(scope, start);
      if (!scope.ok())
          return;
      auto _limit = ::tensorflow::ops::AsNodeOut(scope, limit);
      if (!scope.ok())
          return;
      auto _delta = ::tensorflow::ops::AsNodeOut(scope, delta);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Range");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Range")
                                   .Input(_start)
                                   .Input(_limit)
                                   .Input(_delta)
                                   .Attr("Tidx", Tidx)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Rank::Rank(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Rank");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Rank")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RealDiv::RealDiv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RealDiv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RealDiv")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Reshape::Reshape(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input shape, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Reshape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Reshape")
                                   .Input(_tensor)
                                   .Input(_shape)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Reverse::Reverse(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _dims = ::tensorflow::ops::AsNodeOut(scope, dims);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Reverse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Reverse")
                                   .Input(_tensor)
                                   .Input(_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Roll::Roll(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input shift, 
           tensorflow::Input axis, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _shift = ::tensorflow::ops::AsNodeOut(scope, shift);
      if (!scope.ok())
          return;
      auto _axis = ::tensorflow::ops::AsNodeOut(scope, axis);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Roll");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Roll")
                                   .Input(_input)
                                   .Input(_shift)
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

ScatterNd::ScatterNd(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::Input shape, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterNd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterNd")
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Input(_shape)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Shape::Shape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Shape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Shape")
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

ShapeN::ShapeN(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ShapeN");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ShapeN")
                                   .Input(_input)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

Size::Size(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Size");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Size")
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

Slice::Slice(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input begin, 
           tensorflow::Input size, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _begin = ::tensorflow::ops::AsNodeOut(scope, begin);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Slice");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Slice")
                                   .Input(_input)
                                   .Input(_begin)
                                   .Input(_size)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SpaceToBatch::SpaceToBatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::DataType T, 
           int64_t block_size) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _paddings = ::tensorflow::ops::AsNodeOut(scope, paddings);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SpaceToBatch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SpaceToBatch")
                                   .Input(_input)
                                   .Input(_paddings)
                                   .Attr("T", T)
                                   .Attr("block_size", block_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SpaceToBatchND::SpaceToBatchND(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input block_shape, 
           tensorflow::Input paddings, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _block_shape = ::tensorflow::ops::AsNodeOut(scope, block_shape);
      if (!scope.ok())
          return;
      auto _paddings = ::tensorflow::ops::AsNodeOut(scope, paddings);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SpaceToBatchND");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SpaceToBatchND")
                                   .Input(_input)
                                   .Input(_block_shape)
                                   .Input(_paddings)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Split::Split(tensorflow::Scope& scope, 
           tensorflow::Input split_dim, 
           tensorflow::Input value, 
           int64_t num_split, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _split_dim = ::tensorflow::ops::AsNodeOut(scope, split_dim);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Split");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Split")
                                   .Input(_split_dim)
                                   .Input(_value)
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

Squeeze::Squeeze(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> squeeze_dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Squeeze");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Squeeze")
                                   .Input(_input)
                                   .Attr("squeeze_dims", squeeze_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Stack::Stack(tensorflow::Scope& scope, 
           tensorflow::string stack_name, 
           tensorflow::DataType elem_type) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Stack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Stack")
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

StridedSlice::StridedSlice(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::DataType T, 
           int64_t shrink_axis_mask, 
           int64_t begin_mask, 
           int64_t end_mask, 
           int64_t ellipsis_mask, 
           int64_t new_axis_mask) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _begin = ::tensorflow::ops::AsNodeOut(scope, begin);
      if (!scope.ok())
          return;
      auto _end = ::tensorflow::ops::AsNodeOut(scope, end);
      if (!scope.ok())
          return;
      auto _strides = ::tensorflow::ops::AsNodeOut(scope, strides);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StridedSlice");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StridedSlice")
                                   .Input(_input)
                                   .Input(_begin)
                                   .Input(_end)
                                   .Input(_strides)
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

Tile::Tile(tensorflow::Scope& scope, 
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
      const auto unique_name = scope.GetUniqueNameForOp("Tile");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Tile")
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

Timestamp::Timestamp(tensorflow::Scope& scope) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Timestamp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Timestamp")
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Transpose::Transpose(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input perm, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _perm = ::tensorflow::ops::AsNodeOut(scope, perm);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Transpose");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Transpose")
                                   .Input(_x)
                                   .Input(_perm)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TruncateDiv::TruncateDiv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TruncateDiv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TruncateDiv")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TruncateMod::TruncateMod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TruncateMod");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TruncateMod")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Unique::Unique(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T, 
           tensorflow::DataType out_idx) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Unique");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Unique")
                                   .Input(_x)
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

UniqueWithCounts::UniqueWithCounts(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T, 
           tensorflow::DataType out_idx) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UniqueWithCounts");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UniqueWithCounts")
                                   .Input(_x)
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

UnravelIndex::UnravelIndex(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input dims, 
           tensorflow::DataType Tidx) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _dims = ::tensorflow::ops::AsNodeOut(scope, dims);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnravelIndex");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnravelIndex")
                                   .Input(_indices)
                                   .Input(_dims)
                                   .Attr("Tidx", Tidx)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Variable::Variable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::DataType dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Variable");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Variable")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
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

VariableV2::VariableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::PartialTensorShape shape, 
           tensorflow::DataType dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("VariableV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "VariableV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
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

Where::Where(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Where");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Where")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

While::While(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("While");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "While")
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("cond", cond)
                                   .Attr("body", body)
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

ZerosLike::ZerosLike(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ZerosLike");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ZerosLike")
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

