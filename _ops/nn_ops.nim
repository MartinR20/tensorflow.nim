import ../core/core.nim
import ../utils/utils.nim

proc AvgPool(root: Scope, value: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool(*@)".}

proc AvgPool(root: Scope, value: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPoolAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool(*@)".}

proc AvgPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool3D(*@)".}

proc AvgPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPool3DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool3D(*@)".}

proc AvgPool3DGrad(root: Scope, orig_input_shape: Out, grad: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool3DGrad(*@)".}

proc AvgPool3DGrad(root: Scope, orig_input_shape: Out, grad: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPool3DGradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool3DGrad(*@)".}

proc BiasAdd(root: Scope, value: Out, bias: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BiasAdd(*@)".}

proc BiasAdd(root: Scope, value: Out, bias: Out, attrs: BiasAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BiasAdd(*@)".}

proc BiasAddGrad(root: Scope, out_backprop: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BiasAddGrad(*@)".}

proc BiasAddGrad(root: Scope, out_backprop: Out, attrs: BiasAddGradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BiasAddGrad(*@)".}

proc Conv2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2D(*@)".}

proc Conv2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2D(*@)".}

proc Conv2DBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2DBackpropFilter(*@)".}

proc Conv2DBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DBackpropFilterAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2DBackpropFilter(*@)".}

proc Conv2DBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2DBackpropInput(*@)".}

proc Conv2DBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DBackpropInputAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2DBackpropInput(*@)".}

proc Conv3D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3D(*@)".}

proc Conv3D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3D(*@)".}

proc Conv3DBackpropFilterV2(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3DBackpropFilterV2(*@)".}

proc Conv3DBackpropFilterV2(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DBackpropFilterV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3DBackpropFilterV2(*@)".}

proc Conv3DBackpropInputV2(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3DBackpropInputV2(*@)".}

proc Conv3DBackpropInputV2(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DBackpropInputV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3DBackpropInputV2(*@)".}

proc DataFormatDimMap(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DataFormatDimMap(*@)".}

proc DataFormatDimMap(root: Scope, x: Out, attrs: DataFormatDimMapAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DataFormatDimMap(*@)".}

proc DataFormatVecPermute(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DataFormatVecPermute(*@)".}

proc DataFormatVecPermute(root: Scope, x: Out, attrs: DataFormatVecPermuteAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DataFormatVecPermute(*@)".}

proc DepthwiseConv2dNative(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNative(*@)".}

proc DepthwiseConv2dNative(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNative(*@)".}

proc DepthwiseConv2dNativeBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropFilter(*@)".}

proc DepthwiseConv2dNativeBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeBackpropFilterAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropFilter(*@)".}

proc DepthwiseConv2dNativeBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropInput(*@)".}

proc DepthwiseConv2dNativeBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeBackpropInputAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropInput(*@)".}

proc Dilation2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Dilation2D(*@)".}

proc Dilation2DBackpropFilter(root: Scope, input: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Dilation2DBackpropFilter(*@)".}

proc Dilation2DBackpropInput(root: Scope, input: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Dilation2DBackpropInput(*@)".}

proc Elu(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Elu(*@)".}

proc FractionalAvgPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float]): Out {.header:std_ops, importcpp:"tensorflow::ops::FractionalAvgPool(*@)".}

proc FractionalAvgPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float], attrs: FractionalAvgPoolAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FractionalAvgPool(*@)".}

proc FractionalMaxPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float]): Out {.header:std_ops, importcpp:"tensorflow::ops::FractionalMaxPool(*@)".}

proc FractionalMaxPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float], attrs: FractionalMaxPoolAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FractionalMaxPool(*@)".}

proc FusedBatchNorm(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNorm(*@)".}

proc FusedBatchNorm(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out, attrs: FusedBatchNormAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNorm(*@)".}

proc FusedBatchNormGrad(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormGrad(*@)".}

proc FusedBatchNormGrad(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out, attrs: FusedBatchNormGradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormGrad(*@)".}

proc FusedBatchNormGradV2(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormGradV2(*@)".}

proc FusedBatchNormGradV2(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out, attrs: FusedBatchNormGradV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormGradV2(*@)".}

proc FusedBatchNormV2(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormV2(*@)".}

proc FusedBatchNormV2(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out, attrs: FusedBatchNormV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormV2(*@)".}

proc FusedPadConv2D(root: Scope, input: Out, paddings: Out, filter: Out, mode: cppstring, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedPadConv2D(*@)".}

proc FusedResizeAndPadConv2D(root: Scope, input: Out, size: Out, paddings: Out, filter: Out, mode: cppstring, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedResizeAndPadConv2D(*@)".}

proc FusedResizeAndPadConv2D(root: Scope, input: Out, size: Out, paddings: Out, filter: Out, mode: cppstring, strides: ArraySlice[int], padding: cppstring, attrs: FusedResizeAndPadConv2DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedResizeAndPadConv2D(*@)".}

proc InTopK(root: Scope, predictions: Out, targets: Out, k: int): Out {.header:std_ops, importcpp:"tensorflow::ops::InTopK(*@)".}

proc InTopKV2(root: Scope, predictions: Out, targets: Out, k: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InTopKV2(*@)".}

proc L2Loss(root: Scope, t: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::L2Loss(*@)".}

proc LRN(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LRN(*@)".}

proc LRN(root: Scope, input: Out, attrs: LRNAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::LRN(*@)".}

proc LogSoftmax(root: Scope, logits: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LogSoftmax(*@)".}

proc MaxPool(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPool(*@)".}

proc MaxPool(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPoolAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPool(*@)".}

proc MaxPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPool3D(*@)".}

proc MaxPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPool3DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPool3D(*@)".}

proc MaxPoolGradGradWithArgmax(root: Scope, input: Out, grad: Out, argmax: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPoolGradGradWithArgmax(*@)".}

proc MaxPoolV2(root: Scope, input: Out, ksize: Out, strides: Out, padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPoolV2(*@)".}

proc MaxPoolV2(root: Scope, input: Out, ksize: Out, strides: Out, padding: cppstring, attrs: MaxPoolV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPoolV2(*@)".}

proc MaxPoolWithArgmax(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPoolWithArgmax(*@)".}

proc MaxPoolWithArgmax(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPoolWithArgmaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPoolWithArgmax(*@)".}

proc NthElement(root: Scope, input: Out, n: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::NthElement(*@)".}

proc NthElement(root: Scope, input: Out, n: Out, attrs: NthElementAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::NthElement(*@)".}

proc QuantizedAvgPool(root: Scope, input: Out, min_input: Out, max_input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedAvgPool(*@)".}

proc QuantizedBatchNormWithGlobalNormalization(root: Scope, t: Out, t_min: Out, t_max: Out, m: Out, m_min: Out, m_max: Out, v: Out, v_min: Out, v_max: Out, beta: Out, beta_min: Out, beta_max: Out, gamma: Out, gamma_min: Out, gamma_max: Out, out_type: DType, variance_epsilon: float, scale_after_normalization: bool): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedBatchNormWithGlobalNormalization(*@)".}

proc QuantizedBiasAdd(root: Scope, input: Out, bias: Out, min_input: Out, max_input: Out, min_bias: Out, max_bias: Out, out_type: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedBiasAdd(*@)".}

proc QuantizedConv2D(root: Scope, input: Out, filter: Out, min_input: Out, max_input: Out, min_filter: Out, max_filter: Out, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedConv2D(*@)".}

proc QuantizedConv2D(root: Scope, input: Out, filter: Out, min_input: Out, max_input: Out, min_filter: Out, max_filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: QuantizedConv2DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedConv2D(*@)".}

proc QuantizedMaxPool(root: Scope, input: Out, min_input: Out, max_input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedMaxPool(*@)".}

proc QuantizedRelu(root: Scope, features: Out, min_features: Out, max_features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedRelu(*@)".}

proc QuantizedRelu(root: Scope, features: Out, min_features: Out, max_features: Out, attrs: QuantizedReluAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedRelu(*@)".}

proc QuantizedRelu6(root: Scope, features: Out, min_features: Out, max_features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedRelu6(*@)".}

proc QuantizedRelu6(root: Scope, features: Out, min_features: Out, max_features: Out, attrs: QuantizedRelu6Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedRelu6(*@)".}

proc QuantizedReluX(root: Scope, features: Out, max_value: Out, min_features: Out, max_features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedReluX(*@)".}

proc QuantizedReluX(root: Scope, features: Out, max_value: Out, min_features: Out, max_features: Out, attrs: QuantizedReluXAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedReluX(*@)".}

proc Relu(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Relu(*@)".}

proc Relu6(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Relu6(*@)".}

proc Selu(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Selu(*@)".}

proc Softmax(root: Scope, logits: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Softmax(*@)".}

proc SoftmaxCrossEntropyWithLogits(root: Scope, features: Out, labels: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SoftmaxCrossEntropyWithLogits(*@)".}

proc Softplus(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Softplus(*@)".}

proc Softsign(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Softsign(*@)".}

proc SparseSoftmaxCrossEntropyWithLogits(root: Scope, features: Out, labels: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSoftmaxCrossEntropyWithLogits(*@)".}

proc TopK(root: Scope, input: Out, k: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TopK(*@)".}

proc TopK(root: Scope, input: Out, k: Out, attrs: TopKAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TopK(*@)".}

