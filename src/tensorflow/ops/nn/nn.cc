#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/nn/nn.h"

AvgPool::AvgPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AvgPool");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AvgPool")
                                   .Input(_value)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AvgPool3D::AvgPool3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AvgPool3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AvgPool3D")
                                   .Input(_input)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AvgPool3DGrad::AvgPool3DGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_shape, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input_shape = ::tensorflow::ops::AsNodeOut(scope, orig_input_shape);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AvgPool3DGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AvgPool3DGrad")
                                   .Input(_orig_input_shape)
                                   .Input(_grad)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AvgPoolGrad::AvgPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_shape, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input_shape = ::tensorflow::ops::AsNodeOut(scope, orig_input_shape);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AvgPoolGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AvgPoolGrad")
                                   .Input(_orig_input_shape)
                                   .Input(_grad)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchNormWithGlobalNormalization::BatchNormWithGlobalNormalization(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta, 
           tensorflow::Input gamma, 
           tensorflow::DataType T, 
           float variance_epsilon, 
           bool scale_after_normalization) {
      if (!scope.ok())
          return;
      auto _t = ::tensorflow::ops::AsNodeOut(scope, t);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      if (!scope.ok())
          return;
      auto _beta = ::tensorflow::ops::AsNodeOut(scope, beta);
      if (!scope.ok())
          return;
      auto _gamma = ::tensorflow::ops::AsNodeOut(scope, gamma);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchNormWithGlobalNormalization");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchNormWithGlobalNormalization")
                                   .Input(_t)
                                   .Input(_m)
                                   .Input(_v)
                                   .Input(_beta)
                                   .Input(_gamma)
                                   .Attr("T", T)
                                   .Attr("variance_epsilon", variance_epsilon)
                                   .Attr("scale_after_normalization", scale_after_normalization)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchNormWithGlobalNormalizationGrad::BatchNormWithGlobalNormalizationGrad(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input gamma, 
           tensorflow::Input backprop, 
           tensorflow::DataType T, 
           float variance_epsilon, 
           bool scale_after_normalization) {
      if (!scope.ok())
          return;
      auto _t = ::tensorflow::ops::AsNodeOut(scope, t);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      if (!scope.ok())
          return;
      auto _gamma = ::tensorflow::ops::AsNodeOut(scope, gamma);
      if (!scope.ok())
          return;
      auto _backprop = ::tensorflow::ops::AsNodeOut(scope, backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchNormWithGlobalNormalizationGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchNormWithGlobalNormalizationGrad")
                                   .Input(_t)
                                   .Input(_m)
                                   .Input(_v)
                                   .Input(_gamma)
                                   .Input(_backprop)
                                   .Attr("T", T)
                                   .Attr("variance_epsilon", variance_epsilon)
                                   .Attr("scale_after_normalization", scale_after_normalization)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BiasAdd::BiasAdd(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input bias, 
           tensorflow::DataType T, 
           tensorflow::string data_format) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _bias = ::tensorflow::ops::AsNodeOut(scope, bias);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BiasAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BiasAdd")
                                   .Input(_value)
                                   .Input(_bias)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BiasAddGrad::BiasAddGrad(tensorflow::Scope& scope, 
           tensorflow::Input out_backprop, 
           tensorflow::DataType T, 
           tensorflow::string data_format) {
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BiasAddGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BiasAddGrad")
                                   .Input(_out_backprop)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BiasAddV1::BiasAddV1(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input bias, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _bias = ::tensorflow::ops::AsNodeOut(scope, bias);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BiasAddV1");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BiasAddV1")
                                   .Input(_value)
                                   .Input(_bias)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CTCBeamSearchDecoder::CTCBeamSearchDecoder(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input sequence_length, 
           int64_t beam_width, 
           int64_t top_paths, 
           bool merge_repeated) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      if (!scope.ok())
          return;
      auto _sequence_length = ::tensorflow::ops::AsNodeOut(scope, sequence_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CTCBeamSearchDecoder");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CTCBeamSearchDecoder")
                                   .Input(_inputs)
                                   .Input(_sequence_length)
                                   .Attr("beam_width", beam_width)
                                   .Attr("top_paths", top_paths)
                                   .Attr("merge_repeated", merge_repeated)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CTCGreedyDecoder::CTCGreedyDecoder(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input sequence_length, 
           bool merge_repeated) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      if (!scope.ok())
          return;
      auto _sequence_length = ::tensorflow::ops::AsNodeOut(scope, sequence_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CTCGreedyDecoder");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CTCGreedyDecoder")
                                   .Input(_inputs)
                                   .Input(_sequence_length)
                                   .Attr("merge_repeated", merge_repeated)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conv2D::Conv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           bool use_cudnn_on_gpu, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conv2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conv2D")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("use_cudnn_on_gpu", use_cudnn_on_gpu)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conv2DBackpropFilter::Conv2DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           bool use_cudnn_on_gpu, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter_sizes = ::tensorflow::ops::AsNodeOut(scope, filter_sizes);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conv2DBackpropFilter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conv2DBackpropFilter")
                                   .Input(_input)
                                   .Input(_filter_sizes)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("use_cudnn_on_gpu", use_cudnn_on_gpu)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conv2DBackpropInput::Conv2DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           bool use_cudnn_on_gpu, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input_sizes = ::tensorflow::ops::AsNodeOut(scope, input_sizes);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conv2DBackpropInput");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conv2DBackpropInput")
                                   .Input(_input_sizes)
                                   .Input(_filter)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("use_cudnn_on_gpu", use_cudnn_on_gpu)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conv3D::Conv3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conv3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conv3D")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conv3DBackpropFilter::Conv3DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conv3DBackpropFilter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conv3DBackpropFilter")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conv3DBackpropFilterV2::Conv3DBackpropFilterV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter_sizes = ::tensorflow::ops::AsNodeOut(scope, filter_sizes);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conv3DBackpropFilterV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conv3DBackpropFilterV2")
                                   .Input(_input)
                                   .Input(_filter_sizes)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conv3DBackpropInput::Conv3DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conv3DBackpropInput");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conv3DBackpropInput")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conv3DBackpropInputV2::Conv3DBackpropInputV2(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input_sizes = ::tensorflow::ops::AsNodeOut(scope, input_sizes);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conv3DBackpropInputV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conv3DBackpropInputV2")
                                   .Input(_input_sizes)
                                   .Input(_filter)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CudnnRNN::CudnnRNN(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::DataType T, 
           tensorflow::string rnn_mode, 
           tensorflow::string input_mode, 
           tensorflow::string direction, 
           float dropout, 
           int64_t seed, 
           int64_t seed2, 
           bool is_training) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_h = ::tensorflow::ops::AsNodeOut(scope, input_h);
      if (!scope.ok())
          return;
      auto _input_c = ::tensorflow::ops::AsNodeOut(scope, input_c);
      if (!scope.ok())
          return;
      auto _params = ::tensorflow::ops::AsNodeOut(scope, params);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CudnnRNN");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CudnnRNN")
                                   .Input(_input)
                                   .Input(_input_h)
                                   .Input(_input_c)
                                   .Input(_params)
                                   .Attr("T", T)
                                   .Attr("rnn_mode", rnn_mode)
                                   .Attr("input_mode", input_mode)
                                   .Attr("direction", direction)
                                   .Attr("dropout", dropout)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("is_training", is_training)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CudnnRNNBackprop::CudnnRNNBackprop(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::Input output, 
           tensorflow::Input output_h, 
           tensorflow::Input output_c, 
           tensorflow::Input output_backprop, 
           tensorflow::Input output_h_backprop, 
           tensorflow::Input output_c_backprop, 
           tensorflow::Input reserve_space, 
           tensorflow::DataType T, 
           tensorflow::string rnn_mode, 
           tensorflow::string input_mode, 
           tensorflow::string direction, 
           float dropout, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_h = ::tensorflow::ops::AsNodeOut(scope, input_h);
      if (!scope.ok())
          return;
      auto _input_c = ::tensorflow::ops::AsNodeOut(scope, input_c);
      if (!scope.ok())
          return;
      auto _params = ::tensorflow::ops::AsNodeOut(scope, params);
      if (!scope.ok())
          return;
      auto _output = ::tensorflow::ops::AsNodeOut(scope, output);
      if (!scope.ok())
          return;
      auto _output_h = ::tensorflow::ops::AsNodeOut(scope, output_h);
      if (!scope.ok())
          return;
      auto _output_c = ::tensorflow::ops::AsNodeOut(scope, output_c);
      if (!scope.ok())
          return;
      auto _output_backprop = ::tensorflow::ops::AsNodeOut(scope, output_backprop);
      if (!scope.ok())
          return;
      auto _output_h_backprop = ::tensorflow::ops::AsNodeOut(scope, output_h_backprop);
      if (!scope.ok())
          return;
      auto _output_c_backprop = ::tensorflow::ops::AsNodeOut(scope, output_c_backprop);
      if (!scope.ok())
          return;
      auto _reserve_space = ::tensorflow::ops::AsNodeOut(scope, reserve_space);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CudnnRNNBackprop");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CudnnRNNBackprop")
                                   .Input(_input)
                                   .Input(_input_h)
                                   .Input(_input_c)
                                   .Input(_params)
                                   .Input(_output)
                                   .Input(_output_h)
                                   .Input(_output_c)
                                   .Input(_output_backprop)
                                   .Input(_output_h_backprop)
                                   .Input(_output_c_backprop)
                                   .Input(_reserve_space)
                                   .Attr("T", T)
                                   .Attr("rnn_mode", rnn_mode)
                                   .Attr("input_mode", input_mode)
                                   .Attr("direction", direction)
                                   .Attr("dropout", dropout)
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

CudnnRNNBackpropV2::CudnnRNNBackpropV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::Input output, 
           tensorflow::Input output_h, 
           tensorflow::Input output_c, 
           tensorflow::Input output_backprop, 
           tensorflow::Input output_h_backprop, 
           tensorflow::Input output_c_backprop, 
           tensorflow::Input reserve_space, 
           tensorflow::Input host_reserved, 
           tensorflow::DataType T, 
           tensorflow::string rnn_mode, 
           tensorflow::string input_mode, 
           tensorflow::string direction, 
           float dropout, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_h = ::tensorflow::ops::AsNodeOut(scope, input_h);
      if (!scope.ok())
          return;
      auto _input_c = ::tensorflow::ops::AsNodeOut(scope, input_c);
      if (!scope.ok())
          return;
      auto _params = ::tensorflow::ops::AsNodeOut(scope, params);
      if (!scope.ok())
          return;
      auto _output = ::tensorflow::ops::AsNodeOut(scope, output);
      if (!scope.ok())
          return;
      auto _output_h = ::tensorflow::ops::AsNodeOut(scope, output_h);
      if (!scope.ok())
          return;
      auto _output_c = ::tensorflow::ops::AsNodeOut(scope, output_c);
      if (!scope.ok())
          return;
      auto _output_backprop = ::tensorflow::ops::AsNodeOut(scope, output_backprop);
      if (!scope.ok())
          return;
      auto _output_h_backprop = ::tensorflow::ops::AsNodeOut(scope, output_h_backprop);
      if (!scope.ok())
          return;
      auto _output_c_backprop = ::tensorflow::ops::AsNodeOut(scope, output_c_backprop);
      if (!scope.ok())
          return;
      auto _reserve_space = ::tensorflow::ops::AsNodeOut(scope, reserve_space);
      if (!scope.ok())
          return;
      auto _host_reserved = ::tensorflow::ops::AsNodeOut(scope, host_reserved);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CudnnRNNBackpropV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CudnnRNNBackpropV2")
                                   .Input(_input)
                                   .Input(_input_h)
                                   .Input(_input_c)
                                   .Input(_params)
                                   .Input(_output)
                                   .Input(_output_h)
                                   .Input(_output_c)
                                   .Input(_output_backprop)
                                   .Input(_output_h_backprop)
                                   .Input(_output_c_backprop)
                                   .Input(_reserve_space)
                                   .Input(_host_reserved)
                                   .Attr("T", T)
                                   .Attr("rnn_mode", rnn_mode)
                                   .Attr("input_mode", input_mode)
                                   .Attr("direction", direction)
                                   .Attr("dropout", dropout)
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

CudnnRNNCanonicalToParams::CudnnRNNCanonicalToParams(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::Input weights, 
           tensorflow::Input biases, 
           tensorflow::DataType T, 
           int64_t num_params, 
           tensorflow::string rnn_mode, 
           tensorflow::string input_mode, 
           tensorflow::string direction, 
           float dropout, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _num_layers = ::tensorflow::ops::AsNodeOut(scope, num_layers);
      if (!scope.ok())
          return;
      auto _num_units = ::tensorflow::ops::AsNodeOut(scope, num_units);
      if (!scope.ok())
          return;
      auto _input_size = ::tensorflow::ops::AsNodeOut(scope, input_size);
      if (!scope.ok())
          return;
      auto _weights = ::tensorflow::ops::AsNodeOut(scope, weights);
      if (!scope.ok())
          return;
      auto _biases = ::tensorflow::ops::AsNodeOut(scope, biases);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CudnnRNNCanonicalToParams");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CudnnRNNCanonicalToParams")
                                   .Input(_num_layers)
                                   .Input(_num_units)
                                   .Input(_input_size)
                                   .Input(_weights)
                                   .Input(_biases)
                                   .Attr("T", T)
                                   .Attr("num_params", num_params)
                                   .Attr("rnn_mode", rnn_mode)
                                   .Attr("input_mode", input_mode)
                                   .Attr("direction", direction)
                                   .Attr("dropout", dropout)
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

CudnnRNNParamsSize::CudnnRNNParamsSize(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::DataType T, 
           tensorflow::DataType S, 
           tensorflow::string rnn_mode, 
           tensorflow::string input_mode, 
           tensorflow::string direction, 
           float dropout, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _num_layers = ::tensorflow::ops::AsNodeOut(scope, num_layers);
      if (!scope.ok())
          return;
      auto _num_units = ::tensorflow::ops::AsNodeOut(scope, num_units);
      if (!scope.ok())
          return;
      auto _input_size = ::tensorflow::ops::AsNodeOut(scope, input_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CudnnRNNParamsSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CudnnRNNParamsSize")
                                   .Input(_num_layers)
                                   .Input(_num_units)
                                   .Input(_input_size)
                                   .Attr("T", T)
                                   .Attr("S", S)
                                   .Attr("rnn_mode", rnn_mode)
                                   .Attr("input_mode", input_mode)
                                   .Attr("direction", direction)
                                   .Attr("dropout", dropout)
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

CudnnRNNParamsToCanonical::CudnnRNNParamsToCanonical(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::Input params, 
           tensorflow::DataType T, 
           int64_t num_params, 
           tensorflow::string rnn_mode, 
           tensorflow::string input_mode, 
           tensorflow::string direction, 
           float dropout, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _num_layers = ::tensorflow::ops::AsNodeOut(scope, num_layers);
      if (!scope.ok())
          return;
      auto _num_units = ::tensorflow::ops::AsNodeOut(scope, num_units);
      if (!scope.ok())
          return;
      auto _input_size = ::tensorflow::ops::AsNodeOut(scope, input_size);
      if (!scope.ok())
          return;
      auto _params = ::tensorflow::ops::AsNodeOut(scope, params);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CudnnRNNParamsToCanonical");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CudnnRNNParamsToCanonical")
                                   .Input(_num_layers)
                                   .Input(_num_units)
                                   .Input(_input_size)
                                   .Input(_params)
                                   .Attr("T", T)
                                   .Attr("num_params", num_params)
                                   .Attr("rnn_mode", rnn_mode)
                                   .Attr("input_mode", input_mode)
                                   .Attr("direction", direction)
                                   .Attr("dropout", dropout)
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

CudnnRNNV2::CudnnRNNV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::DataType T, 
           tensorflow::string rnn_mode, 
           tensorflow::string input_mode, 
           tensorflow::string direction, 
           float dropout, 
           int64_t seed, 
           int64_t seed2, 
           bool is_training) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_h = ::tensorflow::ops::AsNodeOut(scope, input_h);
      if (!scope.ok())
          return;
      auto _input_c = ::tensorflow::ops::AsNodeOut(scope, input_c);
      if (!scope.ok())
          return;
      auto _params = ::tensorflow::ops::AsNodeOut(scope, params);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CudnnRNNV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CudnnRNNV2")
                                   .Input(_input)
                                   .Input(_input_h)
                                   .Input(_input_c)
                                   .Input(_params)
                                   .Attr("T", T)
                                   .Attr("rnn_mode", rnn_mode)
                                   .Attr("input_mode", input_mode)
                                   .Attr("direction", direction)
                                   .Attr("dropout", dropout)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("is_training", is_training)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DepthwiseConv2dNative::DepthwiseConv2dNative(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DepthwiseConv2dNative");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DepthwiseConv2dNative")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DepthwiseConv2dNativeBackpropFilter::DepthwiseConv2dNativeBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter_sizes = ::tensorflow::ops::AsNodeOut(scope, filter_sizes);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DepthwiseConv2dNativeBackpropFilter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DepthwiseConv2dNativeBackpropFilter")
                                   .Input(_input)
                                   .Input(_filter_sizes)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DepthwiseConv2dNativeBackpropInput::DepthwiseConv2dNativeBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::string data_format, 
           tensorflow::gtl::ArraySlice<int64_t> dilations) {
      if (!scope.ok())
          return;
      auto _input_sizes = ::tensorflow::ops::AsNodeOut(scope, input_sizes);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DepthwiseConv2dNativeBackpropInput");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DepthwiseConv2dNativeBackpropInput")
                                   .Input(_input_sizes)
                                   .Input(_filter)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
                                   .Attr("dilations", dilations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Dilation2D::Dilation2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Dilation2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Dilation2D")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Attr("strides", strides)
                                   .Attr("rates", rates)
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

Dilation2DBackpropFilter::Dilation2DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Dilation2DBackpropFilter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Dilation2DBackpropFilter")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("rates", rates)
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

Dilation2DBackpropInput::Dilation2DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Dilation2DBackpropInput");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Dilation2DBackpropInput")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Input(_out_backprop)
                                   .Attr("strides", strides)
                                   .Attr("rates", rates)
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

FractionalAvgPool::FractionalAvgPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<float> pooling_ratio, 
           bool pseudo_random, 
           bool overlapping, 
           bool deterministic, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FractionalAvgPool");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FractionalAvgPool")
                                   .Input(_value)
                                   .Attr("pooling_ratio", pooling_ratio)
                                   .Attr("pseudo_random", pseudo_random)
                                   .Attr("overlapping", overlapping)
                                   .Attr("deterministic", deterministic)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FractionalAvgPoolGrad::FractionalAvgPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_tensor_shape, 
           tensorflow::Input out_backprop, 
           tensorflow::Input row_pooling_sequence, 
           tensorflow::Input col_pooling_sequence, 
           bool overlapping, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input_tensor_shape = ::tensorflow::ops::AsNodeOut(scope, orig_input_tensor_shape);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      if (!scope.ok())
          return;
      auto _row_pooling_sequence = ::tensorflow::ops::AsNodeOut(scope, row_pooling_sequence);
      if (!scope.ok())
          return;
      auto _col_pooling_sequence = ::tensorflow::ops::AsNodeOut(scope, col_pooling_sequence);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FractionalAvgPoolGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FractionalAvgPoolGrad")
                                   .Input(_orig_input_tensor_shape)
                                   .Input(_out_backprop)
                                   .Input(_row_pooling_sequence)
                                   .Input(_col_pooling_sequence)
                                   .Attr("overlapping", overlapping)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FractionalMaxPool::FractionalMaxPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<float> pooling_ratio, 
           bool pseudo_random, 
           bool overlapping, 
           bool deterministic, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FractionalMaxPool");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FractionalMaxPool")
                                   .Input(_value)
                                   .Attr("pooling_ratio", pooling_ratio)
                                   .Attr("pseudo_random", pseudo_random)
                                   .Attr("overlapping", overlapping)
                                   .Attr("deterministic", deterministic)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FractionalMaxPoolGrad::FractionalMaxPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input out_backprop, 
           tensorflow::Input row_pooling_sequence, 
           tensorflow::Input col_pooling_sequence, 
           bool overlapping, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input = ::tensorflow::ops::AsNodeOut(scope, orig_input);
      if (!scope.ok())
          return;
      auto _orig_output = ::tensorflow::ops::AsNodeOut(scope, orig_output);
      if (!scope.ok())
          return;
      auto _out_backprop = ::tensorflow::ops::AsNodeOut(scope, out_backprop);
      if (!scope.ok())
          return;
      auto _row_pooling_sequence = ::tensorflow::ops::AsNodeOut(scope, row_pooling_sequence);
      if (!scope.ok())
          return;
      auto _col_pooling_sequence = ::tensorflow::ops::AsNodeOut(scope, col_pooling_sequence);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FractionalMaxPoolGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FractionalMaxPoolGrad")
                                   .Input(_orig_input)
                                   .Input(_orig_output)
                                   .Input(_out_backprop)
                                   .Input(_row_pooling_sequence)
                                   .Input(_col_pooling_sequence)
                                   .Attr("overlapping", overlapping)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FusedBatchNorm::FusedBatchNorm(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input offset, 
           tensorflow::Input mean, 
           tensorflow::Input variance, 
           tensorflow::DataType T, 
           float epsilon, 
           tensorflow::string data_format, 
           bool is_training) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _scale = ::tensorflow::ops::AsNodeOut(scope, scale);
      if (!scope.ok())
          return;
      auto _offset = ::tensorflow::ops::AsNodeOut(scope, offset);
      if (!scope.ok())
          return;
      auto _mean = ::tensorflow::ops::AsNodeOut(scope, mean);
      if (!scope.ok())
          return;
      auto _variance = ::tensorflow::ops::AsNodeOut(scope, variance);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FusedBatchNorm");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FusedBatchNorm")
                                   .Input(_x)
                                   .Input(_scale)
                                   .Input(_offset)
                                   .Input(_mean)
                                   .Input(_variance)
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

FusedBatchNormV2::FusedBatchNormV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input offset, 
           tensorflow::Input mean, 
           tensorflow::Input variance, 
           tensorflow::DataType T, 
           bool is_training, 
           float epsilon, 
           tensorflow::string data_format) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _scale = ::tensorflow::ops::AsNodeOut(scope, scale);
      if (!scope.ok())
          return;
      auto _offset = ::tensorflow::ops::AsNodeOut(scope, offset);
      if (!scope.ok())
          return;
      auto _mean = ::tensorflow::ops::AsNodeOut(scope, mean);
      if (!scope.ok())
          return;
      auto _variance = ::tensorflow::ops::AsNodeOut(scope, variance);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FusedBatchNormV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FusedBatchNormV2")
                                   .Input(_x)
                                   .Input(_scale)
                                   .Input(_offset)
                                   .Input(_mean)
                                   .Input(_variance)
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

FusedPadConv2D::FusedPadConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::Input filter, 
           tensorflow::string mode, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _paddings = ::tensorflow::ops::AsNodeOut(scope, paddings);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FusedPadConv2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FusedPadConv2D")
                                   .Input(_input)
                                   .Input(_paddings)
                                   .Input(_filter)
                                   .Attr("mode", mode)
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

FusedResizeAndPadConv2D::FusedResizeAndPadConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input size, 
           tensorflow::Input paddings, 
           tensorflow::Input filter, 
           tensorflow::string mode, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           bool resize_align_corners) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      if (!scope.ok())
          return;
      auto _paddings = ::tensorflow::ops::AsNodeOut(scope, paddings);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FusedResizeAndPadConv2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FusedResizeAndPadConv2D")
                                   .Input(_input)
                                   .Input(_size)
                                   .Input(_paddings)
                                   .Input(_filter)
                                   .Attr("mode", mode)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("resize_align_corners", resize_align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GenerateVocabRemapping::GenerateVocabRemapping(tensorflow::Scope& scope, 
           tensorflow::Input new_vocab_file, 
           tensorflow::Input old_vocab_file, 
           int64_t new_vocab_offset, 
           int64_t num_new_vocab, 
           int64_t old_vocab_size) {
      if (!scope.ok())
          return;
      auto _new_vocab_file = ::tensorflow::ops::AsNodeOut(scope, new_vocab_file);
      if (!scope.ok())
          return;
      auto _old_vocab_file = ::tensorflow::ops::AsNodeOut(scope, old_vocab_file);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GenerateVocabRemapping");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GenerateVocabRemapping")
                                   .Input(_new_vocab_file)
                                   .Input(_old_vocab_file)
                                   .Attr("new_vocab_offset", new_vocab_offset)
                                   .Attr("num_new_vocab", num_new_vocab)
                                   .Attr("old_vocab_size", old_vocab_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LRN::LRN(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t depth_radius, 
           float bias, 
           float alpha, 
           float beta, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LRN");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LRN")
                                   .Input(_input)
                                   .Attr("depth_radius", depth_radius)
                                   .Attr("bias", bias)
                                   .Attr("alpha", alpha)
                                   .Attr("beta", beta)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LRNGrad::LRNGrad(tensorflow::Scope& scope, 
           tensorflow::Input input_grads, 
           tensorflow::Input input_image, 
           tensorflow::Input output_image, 
           int64_t depth_radius, 
           float bias, 
           float alpha, 
           float beta, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input_grads = ::tensorflow::ops::AsNodeOut(scope, input_grads);
      if (!scope.ok())
          return;
      auto _input_image = ::tensorflow::ops::AsNodeOut(scope, input_image);
      if (!scope.ok())
          return;
      auto _output_image = ::tensorflow::ops::AsNodeOut(scope, output_image);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LRNGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LRNGrad")
                                   .Input(_input_grads)
                                   .Input(_input_image)
                                   .Input(_output_image)
                                   .Attr("depth_radius", depth_radius)
                                   .Attr("bias", bias)
                                   .Attr("alpha", alpha)
                                   .Attr("beta", beta)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPool::MaxPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::string data_format) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPool");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPool")
                                   .Input(_input)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPool3D::MaxPool3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPool3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPool3D")
                                   .Input(_input)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPool3DGrad::MaxPool3DGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input = ::tensorflow::ops::AsNodeOut(scope, orig_input);
      if (!scope.ok())
          return;
      auto _orig_output = ::tensorflow::ops::AsNodeOut(scope, orig_output);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPool3DGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPool3DGrad")
                                   .Input(_orig_input)
                                   .Input(_orig_output)
                                   .Input(_grad)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPool3DGradGrad::MaxPool3DGradGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input = ::tensorflow::ops::AsNodeOut(scope, orig_input);
      if (!scope.ok())
          return;
      auto _orig_output = ::tensorflow::ops::AsNodeOut(scope, orig_output);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPool3DGradGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPool3DGradGrad")
                                   .Input(_orig_input)
                                   .Input(_orig_output)
                                   .Input(_grad)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPoolGrad::MaxPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input = ::tensorflow::ops::AsNodeOut(scope, orig_input);
      if (!scope.ok())
          return;
      auto _orig_output = ::tensorflow::ops::AsNodeOut(scope, orig_output);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPoolGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPoolGrad")
                                   .Input(_orig_input)
                                   .Input(_orig_output)
                                   .Input(_grad)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPoolGradGrad::MaxPoolGradGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input = ::tensorflow::ops::AsNodeOut(scope, orig_input);
      if (!scope.ok())
          return;
      auto _orig_output = ::tensorflow::ops::AsNodeOut(scope, orig_output);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPoolGradGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPoolGradGrad")
                                   .Input(_orig_input)
                                   .Input(_orig_output)
                                   .Input(_grad)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPoolGradGradV2::MaxPoolGradGradV2(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input = ::tensorflow::ops::AsNodeOut(scope, orig_input);
      if (!scope.ok())
          return;
      auto _orig_output = ::tensorflow::ops::AsNodeOut(scope, orig_output);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _ksize = ::tensorflow::ops::AsNodeOut(scope, ksize);
      if (!scope.ok())
          return;
      auto _strides = ::tensorflow::ops::AsNodeOut(scope, strides);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPoolGradGradV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPoolGradGradV2")
                                   .Input(_orig_input)
                                   .Input(_orig_output)
                                   .Input(_grad)
                                   .Input(_ksize)
                                   .Input(_strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPoolGradGradWithArgmax::MaxPoolGradGradWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input grad, 
           tensorflow::Input argmax, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _argmax = ::tensorflow::ops::AsNodeOut(scope, argmax);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPoolGradGradWithArgmax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPoolGradGradWithArgmax")
                                   .Input(_input)
                                   .Input(_grad)
                                   .Input(_argmax)
                                   .Attr("ksize", ksize)
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

MaxPoolGradV2::MaxPoolGradV2(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::string data_format, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _orig_input = ::tensorflow::ops::AsNodeOut(scope, orig_input);
      if (!scope.ok())
          return;
      auto _orig_output = ::tensorflow::ops::AsNodeOut(scope, orig_output);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _ksize = ::tensorflow::ops::AsNodeOut(scope, ksize);
      if (!scope.ok())
          return;
      auto _strides = ::tensorflow::ops::AsNodeOut(scope, strides);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPoolGradV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPoolGradV2")
                                   .Input(_orig_input)
                                   .Input(_orig_output)
                                   .Input(_grad)
                                   .Input(_ksize)
                                   .Input(_strides)
                                   .Attr("padding", padding)
                                   .Attr("data_format", data_format)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPoolGradWithArgmax::MaxPoolGradWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input grad, 
           tensorflow::Input argmax, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _argmax = ::tensorflow::ops::AsNodeOut(scope, argmax);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPoolGradWithArgmax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPoolGradWithArgmax")
                                   .Input(_input)
                                   .Input(_grad)
                                   .Input(_argmax)
                                   .Attr("ksize", ksize)
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

MaxPoolV2::MaxPoolV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::DataType T, 
           tensorflow::string data_format) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _ksize = ::tensorflow::ops::AsNodeOut(scope, ksize);
      if (!scope.ok())
          return;
      auto _strides = ::tensorflow::ops::AsNodeOut(scope, strides);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPoolV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPoolV2")
                                   .Input(_input)
                                   .Input(_ksize)
                                   .Input(_strides)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
                                   .Attr("data_format", data_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MaxPoolWithArgmax::MaxPoolWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType Targmax, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MaxPoolWithArgmax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MaxPoolWithArgmax")
                                   .Input(_input)
                                   .Attr("ksize", ksize)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("Targmax", Targmax)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MirrorPadGrad::MirrorPadGrad(tensorflow::Scope& scope, 
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
      const auto unique_name = scope.GetUniqueNameForOp("MirrorPadGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MirrorPadGrad")
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

NegTrain::NegTrain(tensorflow::Scope& scope, 
           tensorflow::Input w_in, 
           tensorflow::Input w_out, 
           tensorflow::Input examples, 
           tensorflow::Input labels, 
           tensorflow::Input lr, 
           tensorflow::gtl::ArraySlice<int64_t> vocab_count, 
           int64_t num_negative_samples) {
      if (!scope.ok())
          return;
      auto _w_in = ::tensorflow::ops::AsNodeOut(scope, w_in);
      if (!scope.ok())
          return;
      auto _w_out = ::tensorflow::ops::AsNodeOut(scope, w_out);
      if (!scope.ok())
          return;
      auto _examples = ::tensorflow::ops::AsNodeOut(scope, examples);
      if (!scope.ok())
          return;
      auto _labels = ::tensorflow::ops::AsNodeOut(scope, labels);
      if (!scope.ok())
          return;
      auto _lr = ::tensorflow::ops::AsNodeOut(scope, lr);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NegTrain");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NegTrain")
                                   .Input(_w_in)
                                   .Input(_w_out)
                                   .Input(_examples)
                                   .Input(_labels)
                                   .Input(_lr)
                                   .Attr("vocab_count", vocab_count)
                                   .Attr("num_negative_samples", num_negative_samples)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

QuantizedAvgPool::QuantizedAvgPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _min_input = ::tensorflow::ops::AsNodeOut(scope, min_input);
      if (!scope.ok())
          return;
      auto _max_input = ::tensorflow::ops::AsNodeOut(scope, max_input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedAvgPool");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedAvgPool")
                                   .Input(_input)
                                   .Input(_min_input)
                                   .Input(_max_input)
                                   .Attr("ksize", ksize)
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

QuantizedBatchNormWithGlobalNormalization::QuantizedBatchNormWithGlobalNormalization(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input t_min, 
           tensorflow::Input t_max, 
           tensorflow::Input m, 
           tensorflow::Input m_min, 
           tensorflow::Input m_max, 
           tensorflow::Input v, 
           tensorflow::Input v_min, 
           tensorflow::Input v_max, 
           tensorflow::Input beta, 
           tensorflow::Input beta_min, 
           tensorflow::Input beta_max, 
           tensorflow::Input gamma, 
           tensorflow::Input gamma_min, 
           tensorflow::Input gamma_max, 
           bool scale_after_normalization, 
           tensorflow::DataType out_type, 
           float variance_epsilon) {
      if (!scope.ok())
          return;
      auto _t = ::tensorflow::ops::AsNodeOut(scope, t);
      if (!scope.ok())
          return;
      auto _t_min = ::tensorflow::ops::AsNodeOut(scope, t_min);
      if (!scope.ok())
          return;
      auto _t_max = ::tensorflow::ops::AsNodeOut(scope, t_max);
      if (!scope.ok())
          return;
      auto _m = ::tensorflow::ops::AsNodeOut(scope, m);
      if (!scope.ok())
          return;
      auto _m_min = ::tensorflow::ops::AsNodeOut(scope, m_min);
      if (!scope.ok())
          return;
      auto _m_max = ::tensorflow::ops::AsNodeOut(scope, m_max);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      if (!scope.ok())
          return;
      auto _v_min = ::tensorflow::ops::AsNodeOut(scope, v_min);
      if (!scope.ok())
          return;
      auto _v_max = ::tensorflow::ops::AsNodeOut(scope, v_max);
      if (!scope.ok())
          return;
      auto _beta = ::tensorflow::ops::AsNodeOut(scope, beta);
      if (!scope.ok())
          return;
      auto _beta_min = ::tensorflow::ops::AsNodeOut(scope, beta_min);
      if (!scope.ok())
          return;
      auto _beta_max = ::tensorflow::ops::AsNodeOut(scope, beta_max);
      if (!scope.ok())
          return;
      auto _gamma = ::tensorflow::ops::AsNodeOut(scope, gamma);
      if (!scope.ok())
          return;
      auto _gamma_min = ::tensorflow::ops::AsNodeOut(scope, gamma_min);
      if (!scope.ok())
          return;
      auto _gamma_max = ::tensorflow::ops::AsNodeOut(scope, gamma_max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedBatchNormWithGlobalNormalization");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedBatchNormWithGlobalNormalization")
                                   .Input(_t)
                                   .Input(_t_min)
                                   .Input(_t_max)
                                   .Input(_m)
                                   .Input(_m_min)
                                   .Input(_m_max)
                                   .Input(_v)
                                   .Input(_v_min)
                                   .Input(_v_max)
                                   .Input(_beta)
                                   .Input(_beta_min)
                                   .Input(_beta_max)
                                   .Input(_gamma)
                                   .Input(_gamma_min)
                                   .Input(_gamma_max)
                                   .Attr("scale_after_normalization", scale_after_normalization)
                                   .Attr("out_type", out_type)
                                   .Attr("variance_epsilon", variance_epsilon)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedBiasAdd::QuantizedBiasAdd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input bias, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::Input min_bias, 
           tensorflow::Input max_bias, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _bias = ::tensorflow::ops::AsNodeOut(scope, bias);
      if (!scope.ok())
          return;
      auto _min_input = ::tensorflow::ops::AsNodeOut(scope, min_input);
      if (!scope.ok())
          return;
      auto _max_input = ::tensorflow::ops::AsNodeOut(scope, max_input);
      if (!scope.ok())
          return;
      auto _min_bias = ::tensorflow::ops::AsNodeOut(scope, min_bias);
      if (!scope.ok())
          return;
      auto _max_bias = ::tensorflow::ops::AsNodeOut(scope, max_bias);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedBiasAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedBiasAdd")
                                   .Input(_input)
                                   .Input(_bias)
                                   .Input(_min_input)
                                   .Input(_max_input)
                                   .Input(_min_bias)
                                   .Input(_max_bias)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedConv2D::QuantizedConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::Input min_filter, 
           tensorflow::Input max_filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::gtl::ArraySlice<int64_t> dilations, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _filter = ::tensorflow::ops::AsNodeOut(scope, filter);
      if (!scope.ok())
          return;
      auto _min_input = ::tensorflow::ops::AsNodeOut(scope, min_input);
      if (!scope.ok())
          return;
      auto _max_input = ::tensorflow::ops::AsNodeOut(scope, max_input);
      if (!scope.ok())
          return;
      auto _min_filter = ::tensorflow::ops::AsNodeOut(scope, min_filter);
      if (!scope.ok())
          return;
      auto _max_filter = ::tensorflow::ops::AsNodeOut(scope, max_filter);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedConv2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedConv2D")
                                   .Input(_input)
                                   .Input(_filter)
                                   .Input(_min_input)
                                   .Input(_max_input)
                                   .Input(_min_filter)
                                   .Input(_max_filter)
                                   .Attr("strides", strides)
                                   .Attr("padding", padding)
                                   .Attr("dilations", dilations)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedMaxPool::QuantizedMaxPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _min_input = ::tensorflow::ops::AsNodeOut(scope, min_input);
      if (!scope.ok())
          return;
      auto _max_input = ::tensorflow::ops::AsNodeOut(scope, max_input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedMaxPool");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedMaxPool")
                                   .Input(_input)
                                   .Input(_min_input)
                                   .Input(_max_input)
                                   .Attr("ksize", ksize)
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

QuantizedRelu6::QuantizedRelu6(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      if (!scope.ok())
          return;
      auto _min_features = ::tensorflow::ops::AsNodeOut(scope, min_features);
      if (!scope.ok())
          return;
      auto _max_features = ::tensorflow::ops::AsNodeOut(scope, max_features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedRelu6");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedRelu6")
                                   .Input(_features)
                                   .Input(_min_features)
                                   .Input(_max_features)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SeluGrad::SeluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input outputs, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _outputs = ::tensorflow::ops::AsNodeOut(scope, outputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SeluGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SeluGrad")
                                   .Input(_gradients)
                                   .Input(_outputs)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSoftmaxCrossEntropyWithLogits::SparseSoftmaxCrossEntropyWithLogits(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input labels, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      if (!scope.ok())
          return;
      auto _labels = ::tensorflow::ops::AsNodeOut(scope, labels);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSoftmaxCrossEntropyWithLogits");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSoftmaxCrossEntropyWithLogits")
                                   .Input(_features)
                                   .Input(_labels)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

