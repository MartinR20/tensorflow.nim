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
class AvgPool{
  public:
    AvgPool() {}
    AvgPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AvgPool3D{
  public:
    AvgPool3D() {}
    AvgPool3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AvgPool3DGrad{
  public:
    AvgPool3DGrad() {}
    AvgPool3DGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_shape, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AvgPoolGrad{
  public:
    AvgPoolGrad() {}
    AvgPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_shape, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchNormWithGlobalNormalization{
  public:
    BatchNormWithGlobalNormalization() {}
    BatchNormWithGlobalNormalization(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta, 
           tensorflow::Input gamma, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           float variance_epsilon = 0.0, 
           bool scale_after_normalization = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchNormWithGlobalNormalizationGrad{
  public:
    BatchNormWithGlobalNormalizationGrad() {}
    BatchNormWithGlobalNormalizationGrad(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input gamma, 
           tensorflow::Input backprop, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           float variance_epsilon = 0.0, 
           bool scale_after_normalization = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BiasAdd{
  public:
    BiasAdd() {}
    BiasAdd(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input bias, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BiasAddGrad{
  public:
    BiasAddGrad() {}
    BiasAddGrad(tensorflow::Scope& scope, 
           tensorflow::Input out_backprop, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BiasAddV1{
  public:
    BiasAddV1() {}
    BiasAddV1(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input bias, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CTCBeamSearchDecoder{
  public:
    CTCBeamSearchDecoder() {}
    CTCBeamSearchDecoder(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input sequence_length, 
           int64_t beam_width = 0, 
           int64_t top_paths = 0, 
           bool merge_repeated = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CTCGreedyDecoder{
  public:
    CTCGreedyDecoder() {}
    CTCGreedyDecoder(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input sequence_length, 
           bool merge_repeated = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv2D{
  public:
    Conv2D() {}
    Conv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_cudnn_on_gpu = true, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv2DBackpropFilter{
  public:
    Conv2DBackpropFilter() {}
    Conv2DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_cudnn_on_gpu = true, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv2DBackpropInput{
  public:
    Conv2DBackpropInput() {}
    Conv2DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_cudnn_on_gpu = true, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3D{
  public:
    Conv3D() {}
    Conv3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3DBackpropFilter{
  public:
    Conv3DBackpropFilter() {}
    Conv3DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3DBackpropFilterV2{
  public:
    Conv3DBackpropFilterV2() {}
    Conv3DBackpropFilterV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3DBackpropInput{
  public:
    Conv3DBackpropInput() {}
    Conv3DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3DBackpropInputV2{
  public:
    Conv3DBackpropInputV2() {}
    Conv3DBackpropInputV2(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNN{
  public:
    CudnnRNN() {}
    CudnnRNN(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           bool is_training = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNBackprop{
  public:
    CudnnRNNBackprop() {}
    CudnnRNNBackprop(tensorflow::Scope& scope, 
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
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNBackpropV2{
  public:
    CudnnRNNBackpropV2() {}
    CudnnRNNBackpropV2(tensorflow::Scope& scope, 
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
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNCanonicalToParams{
  public:
    CudnnRNNCanonicalToParams() {}
    CudnnRNNCanonicalToParams(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::Input weights, 
           tensorflow::Input biases, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_params = 0, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNParamsSize{
  public:
    CudnnRNNParamsSize() {}
    CudnnRNNParamsSize(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType S = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNParamsToCanonical{
  public:
    CudnnRNNParamsToCanonical() {}
    CudnnRNNParamsToCanonical(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::Input params, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_params = 0, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNV2{
  public:
    CudnnRNNV2() {}
    CudnnRNNV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           bool is_training = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DepthwiseConv2dNative{
  public:
    DepthwiseConv2dNative() {}
    DepthwiseConv2dNative(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DepthwiseConv2dNativeBackpropFilter{
  public:
    DepthwiseConv2dNativeBackpropFilter() {}
    DepthwiseConv2dNativeBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DepthwiseConv2dNativeBackpropInput{
  public:
    DepthwiseConv2dNativeBackpropInput() {}
    DepthwiseConv2dNativeBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Dilation2D{
  public:
    Dilation2D() {}
    Dilation2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Dilation2DBackpropFilter{
  public:
    Dilation2DBackpropFilter() {}
    Dilation2DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Dilation2DBackpropInput{
  public:
    Dilation2DBackpropInput() {}
    Dilation2DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FractionalAvgPool{
  public:
    FractionalAvgPool() {}
    FractionalAvgPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<float> pooling_ratio, 
           bool pseudo_random = false, 
           bool overlapping = false, 
           bool deterministic = false, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FractionalAvgPoolGrad{
  public:
    FractionalAvgPoolGrad() {}
    FractionalAvgPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_tensor_shape, 
           tensorflow::Input out_backprop, 
           tensorflow::Input row_pooling_sequence, 
           tensorflow::Input col_pooling_sequence, 
           bool overlapping = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FractionalMaxPool{
  public:
    FractionalMaxPool() {}
    FractionalMaxPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<float> pooling_ratio, 
           bool pseudo_random = false, 
           bool overlapping = false, 
           bool deterministic = false, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FractionalMaxPoolGrad{
  public:
    FractionalMaxPoolGrad() {}
    FractionalMaxPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input out_backprop, 
           tensorflow::Input row_pooling_sequence, 
           tensorflow::Input col_pooling_sequence, 
           bool overlapping = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FusedBatchNorm{
  public:
    FusedBatchNorm() {}
    FusedBatchNorm(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input offset, 
           tensorflow::Input mean, 
           tensorflow::Input variance, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           float epsilon = 9.999999747378752e-05, 
           tensorflow::string data_format = "NHWC", 
           bool is_training = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FusedBatchNormV2{
  public:
    FusedBatchNormV2() {}
    FusedBatchNormV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input offset, 
           tensorflow::Input mean, 
           tensorflow::Input variance, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool is_training = true, 
           float epsilon = 9.999999747378752e-05, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FusedPadConv2D{
  public:
    FusedPadConv2D() {}
    FusedPadConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::Input filter, 
           tensorflow::string mode, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FusedResizeAndPadConv2D{
  public:
    FusedResizeAndPadConv2D() {}
    FusedResizeAndPadConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input size, 
           tensorflow::Input paddings, 
           tensorflow::Input filter, 
           tensorflow::string mode, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool resize_align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GenerateVocabRemapping{
  public:
    GenerateVocabRemapping() {}
    GenerateVocabRemapping(tensorflow::Scope& scope, 
           tensorflow::Input new_vocab_file, 
           tensorflow::Input old_vocab_file, 
           int64_t new_vocab_offset = 0, 
           int64_t num_new_vocab = 0, 
           int64_t old_vocab_size = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LRN{
  public:
    LRN() {}
    LRN(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t depth_radius = 5, 
           float bias = 1.0, 
           float alpha = 1.0, 
           float beta = 0.5, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LRNGrad{
  public:
    LRNGrad() {}
    LRNGrad(tensorflow::Scope& scope, 
           tensorflow::Input input_grads, 
           tensorflow::Input input_image, 
           tensorflow::Input output_image, 
           int64_t depth_radius = 5, 
           float bias = 1.0, 
           float alpha = 1.0, 
           float beta = 0.5, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPool{
  public:
    MaxPool() {}
    MaxPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_FLOAT, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPool3D{
  public:
    MaxPool3D() {}
    MaxPool3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPool3DGrad{
  public:
    MaxPool3DGrad() {}
    MaxPool3DGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPool3DGradGrad{
  public:
    MaxPool3DGradGrad() {}
    MaxPool3DGradGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGrad{
  public:
    MaxPoolGrad() {}
    MaxPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradGrad{
  public:
    MaxPoolGradGrad() {}
    MaxPoolGradGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradGradV2{
  public:
    MaxPoolGradGradV2() {}
    MaxPoolGradGradV2(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradGradWithArgmax{
  public:
    MaxPoolGradGradWithArgmax() {}
    MaxPoolGradGradWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input grad, 
           tensorflow::Input argmax, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradV2{
  public:
    MaxPoolGradV2() {}
    MaxPoolGradV2(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradWithArgmax{
  public:
    MaxPoolGradWithArgmax() {}
    MaxPoolGradWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input grad, 
           tensorflow::Input argmax, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolV2{
  public:
    MaxPoolV2() {}
    MaxPoolV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_FLOAT, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolWithArgmax{
  public:
    MaxPoolWithArgmax() {}
    MaxPoolWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType Targmax = tensorflow::DT_INT64, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MirrorPadGrad{
  public:
    MirrorPadGrad() {}
    MirrorPadGrad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::string mode, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NegTrain{
  public:
    NegTrain() {}
    NegTrain(tensorflow::Scope& scope, 
           tensorflow::Input w_in, 
           tensorflow::Input w_out, 
           tensorflow::Input examples, 
           tensorflow::Input labels, 
           tensorflow::Input lr, 
           tensorflow::gtl::ArraySlice<int64_t> vocab_count, 
           int64_t num_negative_samples = 0);
    tensorflow::Operation operation;
};

class QuantizedAvgPool{
  public:
    QuantizedAvgPool() {}
    QuantizedAvgPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedBatchNormWithGlobalNormalization{
  public:
    QuantizedBatchNormWithGlobalNormalization() {}
    QuantizedBatchNormWithGlobalNormalization(tensorflow::Scope& scope, 
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
           bool scale_after_normalization = false, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID, 
           float variance_epsilon = 0.0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedBiasAdd{
  public:
    QuantizedBiasAdd() {}
    QuantizedBiasAdd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input bias, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::Input min_bias, 
           tensorflow::Input max_bias, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedConv2D{
  public:
    QuantizedConv2D() {}
    QuantizedConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::Input min_filter, 
           tensorflow::Input max_filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1}, 
           tensorflow::DataType out_type = tensorflow::DT_QINT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedMaxPool{
  public:
    QuantizedMaxPool() {}
    QuantizedMaxPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedRelu6{
  public:
    QuantizedRelu6() {}
    QuantizedRelu6(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type = tensorflow::DT_QUINT8);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SeluGrad{
  public:
    SeluGrad() {}
    SeluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input outputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSoftmaxCrossEntropyWithLogits{
  public:
    SparseSoftmaxCrossEntropyWithLogits() {}
    SparseSoftmaxCrossEntropyWithLogits(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input labels, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

