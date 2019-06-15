import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAvgPool(root: Scope, value: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPoolAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool(*#, #, #, #, #, #)".}

proc iAvgPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPool3DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool3D(*#, #, #, #, #, #)".}

proc iAvgPool3DGrad(root: Scope, orig_input_shape: Out, grad: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPool3DGradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AvgPool3DGrad(*#, #, #, #, #, #, #)".}

proc iBiasAdd(root: Scope, value: Out, bias: Out, attrs: BiasAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BiasAdd(*#, #, #, #)".}

proc iBiasAddGrad(root: Scope, out_backprop: Out, attrs: BiasAddGradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BiasAddGrad(*#, #, #)".}

proc iConv2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2D(*#, #, #, #, #, #)".}

proc iConv2DBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DBackpropFilterAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2DBackpropFilter(*#, #, #, #, #, #, #)".}

proc iConv2DBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DBackpropInputAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv2DBackpropInput(*#, #, #, #, #, #, #)".}

proc iConv3D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3D(*#, #, #, #, #, #)".}

proc iConv3DBackpropFilterV2(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DBackpropFilterV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3DBackpropFilterV2(*#, #, #, #, #, #, #)".}

proc iConv3DBackpropInputV2(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DBackpropInputV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Conv3DBackpropInputV2(*#, #, #, #, #, #, #)".}

proc iDataFormatDimMap(root: Scope, x: Out, attrs: DataFormatDimMapAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DataFormatDimMap(*#, #, #)".}

proc iDataFormatVecPermute(root: Scope, x: Out, attrs: DataFormatVecPermuteAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DataFormatVecPermute(*#, #, #)".}

proc iDepthwiseConv2dNative(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNative(*#, #, #, #, #, #)".}

proc iDepthwiseConv2dNativeBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeBackpropFilterAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropFilter(*#, #, #, #, #, #, #)".}

proc iDepthwiseConv2dNativeBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeBackpropInputAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropInput(*#, #, #, #, #, #, #)".}

proc iDilation2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Dilation2D(*#, #, #, #, #, #)".}

proc iDilation2DBackpropFilter(root: Scope, input: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Dilation2DBackpropFilter(*#, #, #, #, #, #, #)".}

proc iDilation2DBackpropInput(root: Scope, input: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::Dilation2DBackpropInput(*#, #, #, #, #, #, #)".}

proc iElu(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Elu(*#, #)".}

proc iFractionalAvgPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float], attrs: FractionalAvgPoolAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FractionalAvgPool(*#, #, #, #)".}

proc iFractionalMaxPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float], attrs: FractionalMaxPoolAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FractionalMaxPool(*#, #, #, #)".}

proc iFusedBatchNorm(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out, attrs: FusedBatchNormAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNorm(*#, #, #, #, #, #, #)".}

proc iFusedBatchNormGrad(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out, attrs: FusedBatchNormGradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormGrad(*#, #, #, #, #, #, #)".}

proc iFusedBatchNormGradV2(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out, attrs: FusedBatchNormGradV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormGradV2(*#, #, #, #, #, #, #)".}

proc iFusedBatchNormV2(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out, attrs: FusedBatchNormV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedBatchNormV2(*#, #, #, #, #, #, #)".}

proc iFusedPadConv2D(root: Scope, input: Out, paddings: Out, filter: Out, mode: cppstring, strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedPadConv2D(*#, #, #, #, #, #, #)".}

proc iFusedResizeAndPadConv2D(root: Scope, input: Out, size: Out, paddings: Out, filter: Out, mode: cppstring, strides: ArraySlice[int], padding: cppstring, attrs: FusedResizeAndPadConv2DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FusedResizeAndPadConv2D(*#, #, #, #, #, #, #, #, #)".}

proc iInTopK(root: Scope, predictions: Out, targets: Out, k: int): Out {.header:std_ops, importcpp:"tensorflow::ops::InTopK(*#, #, #, #)".}

proc iInTopKV2(root: Scope, predictions: Out, targets: Out, k: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InTopKV2(*#, #, #, #)".}

proc iL2Loss(root: Scope, t: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::L2Loss(*#, #)".}

proc iLRN(root: Scope, input: Out, attrs: LRNAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::LRN(*#, #, #)".}

proc iLogSoftmax(root: Scope, logits: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LogSoftmax(*#, #)".}

proc iMaxPool(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPoolAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPool(*#, #, #, #, #, #)".}

proc iMaxPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPool3DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPool3D(*#, #, #, #, #, #)".}

proc iMaxPoolGradGradWithArgmax(root: Scope, input: Out, grad: Out, argmax: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPoolGradGradWithArgmax(*#, #, #, #, #, #, #)".}

proc iMaxPoolV2(root: Scope, input: Out, ksize: Out, strides: Out, padding: cppstring, attrs: MaxPoolV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPoolV2(*#, #, #, #, #, #)".}

proc iMaxPoolWithArgmax(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPoolWithArgmaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MaxPoolWithArgmax(*#, #, #, #, #, #)".}

proc iNthElement(root: Scope, input: Out, n: Out, attrs: NthElementAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::NthElement(*#, #, #, #)".}

proc iQuantizedAvgPool(root: Scope, input: Out, min_input: Out, max_input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedAvgPool(*#, #, #, #, #, #, #)".}

proc iQuantizedBatchNormWithGlobalNormalization(root: Scope, t: Out, t_min: Out, t_max: Out, m: Out, m_min: Out, m_max: Out, v: Out, v_min: Out, v_max: Out, beta: Out, beta_min: Out, beta_max: Out, gamma: Out, gamma_min: Out, gamma_max: Out, out_type: core.DType, variance_epsilon: float, scale_after_normalization: bool): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedBatchNormWithGlobalNormalization(*#, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #)".}

proc iQuantizedBiasAdd(root: Scope, input: Out, bias: Out, min_input: Out, max_input: Out, min_bias: Out, max_bias: Out, out_type: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedBiasAdd(*#, #, #, #, #, #, #, #)".}

proc iQuantizedConv2D(root: Scope, input: Out, filter: Out, min_input: Out, max_input: Out, min_filter: Out, max_filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: QuantizedConv2DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedConv2D(*#, #, #, #, #, #, #, #, #, #)".}

proc iQuantizedMaxPool(root: Scope, input: Out, min_input: Out, max_input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedMaxPool(*#, #, #, #, #, #, #)".}

proc iQuantizedRelu(root: Scope, features: Out, min_features: Out, max_features: Out, attrs: QuantizedReluAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedRelu(*#, #, #, #, #)".}

proc iQuantizedRelu6(root: Scope, features: Out, min_features: Out, max_features: Out, attrs: QuantizedRelu6Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedRelu6(*#, #, #, #, #)".}

proc iQuantizedReluX(root: Scope, features: Out, max_value: Out, min_features: Out, max_features: Out, attrs: QuantizedReluXAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedReluX(*#, #, #, #, #, #)".}

proc iRelu(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Relu(*#, #)".}

proc iRelu6(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Relu6(*#, #)".}

proc iSelu(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Selu(*#, #)".}

proc iSoftmax(root: Scope, logits: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Softmax(*#, #)".}

proc iSoftmaxCrossEntropyWithLogits(root: Scope, features: Out, labels: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SoftmaxCrossEntropyWithLogits(*#, #, #)".}

proc iSoftplus(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Softplus(*#, #)".}

proc iSoftsign(root: Scope, features: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Softsign(*#, #)".}

proc iSparseSoftmaxCrossEntropyWithLogits(root: Scope, features: Out, labels: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSoftmaxCrossEntropyWithLogits(*#, #, #)".}

proc iTopK(root: Scope, input: Out, k: Out, attrs: TopKAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TopK(*#, #, #, #)".}

proc AvgPool(root: Scope, value: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPoolAttrs): Out =
  iAvgPool(root, value, ksize, strides, padding, attrs)

proc AvgPool(root: Scope, value: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string, attrs: AvgPoolAttrs): Out =
  let cppstr4 = newCPPString(padding)
  return AvgPool(root, value, ksize, strides, cppstr4, attrs)

proc AvgPool(root: Scope, value: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, dataFormat = none(string)): Out =
  var attrs = AvgPoolAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return AvgPool(root, value, ksize, strides, padding, attrs)

proc AvgPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPool3DAttrs): Out =
  iAvgPool3D(root, input, ksize, strides, padding, attrs)

proc AvgPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string, attrs: AvgPool3DAttrs): Out =
  let cppstr4 = newCPPString(padding)
  return AvgPool3D(root, input, ksize, strides, cppstr4, attrs)

proc AvgPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, dataFormat = none(string)): Out =
  var attrs = AvgPool3DAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return AvgPool3D(root, input, ksize, strides, padding, attrs)

proc AvgPool3DGrad(root: Scope, orig_input_shape: Out, grad: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: AvgPool3DGradAttrs): Out =
  iAvgPool3DGrad(root, orig_input_shape, grad, ksize, strides, padding, attrs)

proc AvgPool3DGrad(root: Scope, orig_input_shape: Out, grad: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string, attrs: AvgPool3DGradAttrs): Out =
  let cppstr5 = newCPPString(padding)
  return AvgPool3DGrad(root, orig_input_shape, grad, ksize, strides, cppstr5, attrs)

proc AvgPool3DGrad(root: Scope, orig_input_shape: Out, grad: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, dataFormat = none(string)): Out =
  var attrs = AvgPool3DGradAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return AvgPool3DGrad(root, orig_input_shape, grad, ksize, strides, padding, attrs)

proc BiasAdd(root: Scope, value: Out, bias: Out, attrs: BiasAddAttrs): Out =
  iBiasAdd(root, value, bias, attrs)

proc BiasAdd(root: Scope, value: Out, bias: Out, dataFormat = none(string)): Out =
  var attrs = BiasAddAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return BiasAdd(root, value, bias, attrs)

proc BiasAddGrad(root: Scope, out_backprop: Out, attrs: BiasAddGradAttrs): Out =
  iBiasAddGrad(root, out_backprop, attrs)

proc BiasAddGrad(root: Scope, out_backprop: Out, dataFormat = none(string)): Out =
  var attrs = BiasAddGradAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return BiasAddGrad(root, out_backprop, attrs)

proc Conv2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DAttrs): Out =
  iConv2D(root, input, filter, strides, padding, attrs)

proc Conv2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: string, attrs: Conv2DAttrs): Out =
  let cppstr4 = newCPPString(padding)
  return Conv2D(root, input, filter, strides, cppstr4, attrs)

proc Conv2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int]), useCudnnOnGpu = none(bool)): Out =
  var attrs = Conv2DAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())
  if useCudnnOnGpu.isSome:
    attrs = attrs.UseCudnnOnGpu(useCudnnOnGpu.get())

  return Conv2D(root, input, filter, strides, padding, attrs)

proc Conv2DBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DBackpropFilterAttrs): Out =
  iConv2DBackpropFilter(root, input, filter_sizes, out_backprop, strides, padding, attrs)

proc Conv2DBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: string, attrs: Conv2DBackpropFilterAttrs): Out =
  let cppstr5 = newCPPString(padding)
  return Conv2DBackpropFilter(root, input, filter_sizes, out_backprop, strides, cppstr5, attrs)

proc Conv2DBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int]), useCudnnOnGpu = none(bool)): Out =
  var attrs = Conv2DBackpropFilterAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())
  if useCudnnOnGpu.isSome:
    attrs = attrs.UseCudnnOnGpu(useCudnnOnGpu.get())

  return Conv2DBackpropFilter(root, input, filter_sizes, out_backprop, strides, padding, attrs)

proc Conv2DBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv2DBackpropInputAttrs): Out =
  iConv2DBackpropInput(root, input_sizes, filter, out_backprop, strides, padding, attrs)

proc Conv2DBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: string, attrs: Conv2DBackpropInputAttrs): Out =
  let cppstr5 = newCPPString(padding)
  return Conv2DBackpropInput(root, input_sizes, filter, out_backprop, strides, cppstr5, attrs)

proc Conv2DBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int]), useCudnnOnGpu = none(bool)): Out =
  var attrs = Conv2DBackpropInputAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())
  if useCudnnOnGpu.isSome:
    attrs = attrs.UseCudnnOnGpu(useCudnnOnGpu.get())

  return Conv2DBackpropInput(root, input_sizes, filter, out_backprop, strides, padding, attrs)

proc Conv3D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DAttrs): Out =
  iConv3D(root, input, filter, strides, padding, attrs)

proc Conv3D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: string, attrs: Conv3DAttrs): Out =
  let cppstr4 = newCPPString(padding)
  return Conv3D(root, input, filter, strides, cppstr4, attrs)

proc Conv3D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int])): Out =
  var attrs = Conv3DAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())

  return Conv3D(root, input, filter, strides, padding, attrs)

proc Conv3DBackpropFilterV2(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DBackpropFilterV2Attrs): Out =
  iConv3DBackpropFilterV2(root, input, filter_sizes, out_backprop, strides, padding, attrs)

proc Conv3DBackpropFilterV2(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: string, attrs: Conv3DBackpropFilterV2Attrs): Out =
  let cppstr5 = newCPPString(padding)
  return Conv3DBackpropFilterV2(root, input, filter_sizes, out_backprop, strides, cppstr5, attrs)

proc Conv3DBackpropFilterV2(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int])): Out =
  var attrs = Conv3DBackpropFilterV2Attrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())

  return Conv3DBackpropFilterV2(root, input, filter_sizes, out_backprop, strides, padding, attrs)

proc Conv3DBackpropInputV2(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: Conv3DBackpropInputV2Attrs): Out =
  iConv3DBackpropInputV2(root, input_sizes, filter, out_backprop, strides, padding, attrs)

proc Conv3DBackpropInputV2(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: string, attrs: Conv3DBackpropInputV2Attrs): Out =
  let cppstr5 = newCPPString(padding)
  return Conv3DBackpropInputV2(root, input_sizes, filter, out_backprop, strides, cppstr5, attrs)

proc Conv3DBackpropInputV2(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int])): Out =
  var attrs = Conv3DBackpropInputV2Attrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())

  return Conv3DBackpropInputV2(root, input_sizes, filter, out_backprop, strides, padding, attrs)

proc DataFormatDimMap(root: Scope, x: Out, attrs: DataFormatDimMapAttrs): Out =
  iDataFormatDimMap(root, x, attrs)

proc DataFormatDimMap(root: Scope, x: Out, dstFormat = none(string), srcFormat = none(string)): Out =
  var attrs = DataFormatDimMapAttrs()

  if dstFormat.isSome:
    attrs = attrs.DstFormat(newCPPString(dstFormat.get()))
  if srcFormat.isSome:
    attrs = attrs.SrcFormat(newCPPString(srcFormat.get()))

  return DataFormatDimMap(root, x, attrs)

proc DataFormatVecPermute(root: Scope, x: Out, attrs: DataFormatVecPermuteAttrs): Out =
  iDataFormatVecPermute(root, x, attrs)

proc DataFormatVecPermute(root: Scope, x: Out, dstFormat = none(string), srcFormat = none(string)): Out =
  var attrs = DataFormatVecPermuteAttrs()

  if dstFormat.isSome:
    attrs = attrs.DstFormat(newCPPString(dstFormat.get()))
  if srcFormat.isSome:
    attrs = attrs.SrcFormat(newCPPString(srcFormat.get()))

  return DataFormatVecPermute(root, x, attrs)

proc DepthwiseConv2dNative(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeAttrs): Out =
  iDepthwiseConv2dNative(root, input, filter, strides, padding, attrs)

proc DepthwiseConv2dNative(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: string, attrs: DepthwiseConv2dNativeAttrs): Out =
  let cppstr4 = newCPPString(padding)
  return DepthwiseConv2dNative(root, input, filter, strides, cppstr4, attrs)

proc DepthwiseConv2dNative(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int])): Out =
  var attrs = DepthwiseConv2dNativeAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())

  return DepthwiseConv2dNative(root, input, filter, strides, padding, attrs)

proc DepthwiseConv2dNativeBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeBackpropFilterAttrs): Out =
  iDepthwiseConv2dNativeBackpropFilter(root, input, filter_sizes, out_backprop, strides, padding, attrs)

proc DepthwiseConv2dNativeBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: string, attrs: DepthwiseConv2dNativeBackpropFilterAttrs): Out =
  let cppstr5 = newCPPString(padding)
  return DepthwiseConv2dNativeBackpropFilter(root, input, filter_sizes, out_backprop, strides, cppstr5, attrs)

proc DepthwiseConv2dNativeBackpropFilter(root: Scope, input: Out, filter_sizes: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int])): Out =
  var attrs = DepthwiseConv2dNativeBackpropFilterAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())

  return DepthwiseConv2dNativeBackpropFilter(root, input, filter_sizes, out_backprop, strides, padding, attrs)

proc DepthwiseConv2dNativeBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, attrs: DepthwiseConv2dNativeBackpropInputAttrs): Out =
  iDepthwiseConv2dNativeBackpropInput(root, input_sizes, filter, out_backprop, strides, padding, attrs)

proc DepthwiseConv2dNativeBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: string, attrs: DepthwiseConv2dNativeBackpropInputAttrs): Out =
  let cppstr5 = newCPPString(padding)
  return DepthwiseConv2dNativeBackpropInput(root, input_sizes, filter, out_backprop, strides, cppstr5, attrs)

proc DepthwiseConv2dNativeBackpropInput(root: Scope, input_sizes: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], padding: cppstring, dataFormat = none(string), dilations = none(ArraySlice[int])): Out =
  var attrs = DepthwiseConv2dNativeBackpropInputAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())

  return DepthwiseConv2dNativeBackpropInput(root, input_sizes, filter, out_backprop, strides, padding, attrs)

proc Dilation2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out =
  iDilation2D(root, input, filter, strides, rates, padding)

proc Dilation2D(root: Scope, input: Out, filter: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: string): Out =
  let cppstr5 = newCPPString(padding)
  return Dilation2D(root, input, filter, strides, rates, cppstr5)

proc Dilation2DBackpropFilter(root: Scope, input: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out =
  iDilation2DBackpropFilter(root, input, filter, out_backprop, strides, rates, padding)

proc Dilation2DBackpropFilter(root: Scope, input: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: string): Out =
  let cppstr6 = newCPPString(padding)
  return Dilation2DBackpropFilter(root, input, filter, out_backprop, strides, rates, cppstr6)

proc Dilation2DBackpropInput(root: Scope, input: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out =
  iDilation2DBackpropInput(root, input, filter, out_backprop, strides, rates, padding)

proc Dilation2DBackpropInput(root: Scope, input: Out, filter: Out, out_backprop: Out, strides: ArraySlice[int], rates: ArraySlice[int], padding: string): Out =
  let cppstr6 = newCPPString(padding)
  return Dilation2DBackpropInput(root, input, filter, out_backprop, strides, rates, cppstr6)

proc Elu(root: Scope, features: Out): Out =
  iElu(root, features)

proc FractionalAvgPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float], attrs: FractionalAvgPoolAttrs): Out =
  iFractionalAvgPool(root, value, pooling_ratio, attrs)

proc FractionalAvgPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float], deterministic = none(bool), overlapping = none(bool), pseudoRandom = none(bool), seed = none(int), seed2 = none(int)): Out =
  var attrs = FractionalAvgPoolAttrs()

  if deterministic.isSome:
    attrs = attrs.Deterministic(deterministic.get())
  if overlapping.isSome:
    attrs = attrs.Overlapping(overlapping.get())
  if pseudoRandom.isSome:
    attrs = attrs.PseudoRandom(pseudoRandom.get())
  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return FractionalAvgPool(root, value, pooling_ratio, attrs)

proc FractionalMaxPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float], attrs: FractionalMaxPoolAttrs): Out =
  iFractionalMaxPool(root, value, pooling_ratio, attrs)

proc FractionalMaxPool(root: Scope, value: Out, pooling_ratio: ArraySlice[float], deterministic = none(bool), overlapping = none(bool), pseudoRandom = none(bool), seed = none(int), seed2 = none(int)): Out =
  var attrs = FractionalMaxPoolAttrs()

  if deterministic.isSome:
    attrs = attrs.Deterministic(deterministic.get())
  if overlapping.isSome:
    attrs = attrs.Overlapping(overlapping.get())
  if pseudoRandom.isSome:
    attrs = attrs.PseudoRandom(pseudoRandom.get())
  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return FractionalMaxPool(root, value, pooling_ratio, attrs)

proc FusedBatchNorm(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out, attrs: FusedBatchNormAttrs): Out =
  iFusedBatchNorm(root, x, scale, offset, mean, variance, attrs)

proc FusedBatchNorm(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out, dataFormat = none(string), epsilon = none(float), isTraining = none(bool)): Out =
  var attrs = FusedBatchNormAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if epsilon.isSome:
    attrs = attrs.Epsilon(epsilon.get())
  if isTraining.isSome:
    attrs = attrs.IsTraining(isTraining.get())

  return FusedBatchNorm(root, x, scale, offset, mean, variance, attrs)

proc FusedBatchNormGrad(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out, attrs: FusedBatchNormGradAttrs): Out =
  iFusedBatchNormGrad(root, y_backprop, x, scale, reserve_space_1, reserve_space_2, attrs)

proc FusedBatchNormGrad(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out, dataFormat = none(string), epsilon = none(float), isTraining = none(bool)): Out =
  var attrs = FusedBatchNormGradAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if epsilon.isSome:
    attrs = attrs.Epsilon(epsilon.get())
  if isTraining.isSome:
    attrs = attrs.IsTraining(isTraining.get())

  return FusedBatchNormGrad(root, y_backprop, x, scale, reserve_space_1, reserve_space_2, attrs)

proc FusedBatchNormGradV2(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out, attrs: FusedBatchNormGradV2Attrs): Out =
  iFusedBatchNormGradV2(root, y_backprop, x, scale, reserve_space_1, reserve_space_2, attrs)

proc FusedBatchNormGradV2(root: Scope, y_backprop: Out, x: Out, scale: Out, reserve_space_1: Out, reserve_space_2: Out, dataFormat = none(string), epsilon = none(float), isTraining = none(bool)): Out =
  var attrs = FusedBatchNormGradV2Attrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if epsilon.isSome:
    attrs = attrs.Epsilon(epsilon.get())
  if isTraining.isSome:
    attrs = attrs.IsTraining(isTraining.get())

  return FusedBatchNormGradV2(root, y_backprop, x, scale, reserve_space_1, reserve_space_2, attrs)

proc FusedBatchNormV2(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out, attrs: FusedBatchNormV2Attrs): Out =
  iFusedBatchNormV2(root, x, scale, offset, mean, variance, attrs)

proc FusedBatchNormV2(root: Scope, x: Out, scale: Out, offset: Out, mean: Out, variance: Out, dataFormat = none(string), epsilon = none(float), isTraining = none(bool)): Out =
  var attrs = FusedBatchNormV2Attrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))
  if epsilon.isSome:
    attrs = attrs.Epsilon(epsilon.get())
  if isTraining.isSome:
    attrs = attrs.IsTraining(isTraining.get())

  return FusedBatchNormV2(root, x, scale, offset, mean, variance, attrs)

proc FusedPadConv2D(root: Scope, input: Out, paddings: Out, filter: Out, mode: cppstring, strides: ArraySlice[int], padding: cppstring): Out =
  iFusedPadConv2D(root, input, paddings, filter, mode, strides, padding)

proc FusedPadConv2D(root: Scope, input: Out, paddings: Out, filter: Out, mode: string, strides: ArraySlice[int], padding: string): Out =
  let cppstr4 = newCPPString(mode)
  let cppstr6 = newCPPString(padding)
  return FusedPadConv2D(root, input, paddings, filter, cppstr4, strides, cppstr6)

proc FusedResizeAndPadConv2D(root: Scope, input: Out, size: Out, paddings: Out, filter: Out, mode: cppstring, strides: ArraySlice[int], padding: cppstring, attrs: FusedResizeAndPadConv2DAttrs): Out =
  iFusedResizeAndPadConv2D(root, input, size, paddings, filter, mode, strides, padding, attrs)

proc FusedResizeAndPadConv2D(root: Scope, input: Out, size: Out, paddings: Out, filter: Out, mode: string, strides: ArraySlice[int], padding: string, attrs: FusedResizeAndPadConv2DAttrs): Out =
  let cppstr5 = newCPPString(mode)
  let cppstr7 = newCPPString(padding)
  return FusedResizeAndPadConv2D(root, input, size, paddings, filter, cppstr5, strides, cppstr7, attrs)

proc FusedResizeAndPadConv2D(root: Scope, input: Out, size: Out, paddings: Out, filter: Out, mode: cppstring, strides: ArraySlice[int], padding: cppstring, resizeAlignCorners = none(bool)): Out =
  var attrs = FusedResizeAndPadConv2DAttrs()

  if resizeAlignCorners.isSome:
    attrs = attrs.ResizeAlignCorners(resizeAlignCorners.get())

  return FusedResizeAndPadConv2D(root, input, size, paddings, filter, mode, strides, padding, attrs)

proc InTopK(root: Scope, predictions: Out, targets: Out, k: int): Out =
  iInTopK(root, predictions, targets, k)

proc InTopKV2(root: Scope, predictions: Out, targets: Out, k: Out): Out =
  iInTopKV2(root, predictions, targets, k)

proc L2Loss(root: Scope, t: Out): Out =
  iL2Loss(root, t)

proc LRN(root: Scope, input: Out, attrs: LRNAttrs): Out =
  iLRN(root, input, attrs)

proc LRN(root: Scope, input: Out, alpha = none(float), beta = none(float), bias = none(float), depthRadius = none(int)): Out =
  var attrs = LRNAttrs()

  if alpha.isSome:
    attrs = attrs.Alpha(alpha.get())
  if beta.isSome:
    attrs = attrs.Beta(beta.get())
  if bias.isSome:
    attrs = attrs.Bias(bias.get())
  if depthRadius.isSome:
    attrs = attrs.DepthRadius(depthRadius.get())

  return LRN(root, input, attrs)

proc LogSoftmax(root: Scope, logits: Out): Out =
  iLogSoftmax(root, logits)

proc MaxPool(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPoolAttrs): Out =
  iMaxPool(root, input, ksize, strides, padding, attrs)

proc MaxPool(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string, attrs: MaxPoolAttrs): Out =
  let cppstr4 = newCPPString(padding)
  return MaxPool(root, input, ksize, strides, cppstr4, attrs)

proc MaxPool(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, dataFormat = none(string)): Out =
  var attrs = MaxPoolAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return MaxPool(root, input, ksize, strides, padding, attrs)

proc MaxPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPool3DAttrs): Out =
  iMaxPool3D(root, input, ksize, strides, padding, attrs)

proc MaxPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string, attrs: MaxPool3DAttrs): Out =
  let cppstr4 = newCPPString(padding)
  return MaxPool3D(root, input, ksize, strides, cppstr4, attrs)

proc MaxPool3D(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, dataFormat = none(string)): Out =
  var attrs = MaxPool3DAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return MaxPool3D(root, input, ksize, strides, padding, attrs)

proc MaxPoolGradGradWithArgmax(root: Scope, input: Out, grad: Out, argmax: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out =
  iMaxPoolGradGradWithArgmax(root, input, grad, argmax, ksize, strides, padding)

proc MaxPoolGradGradWithArgmax(root: Scope, input: Out, grad: Out, argmax: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string): Out =
  let cppstr6 = newCPPString(padding)
  return MaxPoolGradGradWithArgmax(root, input, grad, argmax, ksize, strides, cppstr6)

proc MaxPoolV2(root: Scope, input: Out, ksize: Out, strides: Out, padding: cppstring, attrs: MaxPoolV2Attrs): Out =
  iMaxPoolV2(root, input, ksize, strides, padding, attrs)

proc MaxPoolV2(root: Scope, input: Out, ksize: Out, strides: Out, padding: string, attrs: MaxPoolV2Attrs): Out =
  let cppstr4 = newCPPString(padding)
  return MaxPoolV2(root, input, ksize, strides, cppstr4, attrs)

proc MaxPoolV2(root: Scope, input: Out, ksize: Out, strides: Out, padding: cppstring, dataFormat = none(string)): Out =
  var attrs = MaxPoolV2Attrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return MaxPoolV2(root, input, ksize, strides, padding, attrs)

proc MaxPoolWithArgmax(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, attrs: MaxPoolWithArgmaxAttrs): Out =
  iMaxPoolWithArgmax(root, input, ksize, strides, padding, attrs)

proc MaxPoolWithArgmax(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string, attrs: MaxPoolWithArgmaxAttrs): Out =
  let cppstr4 = newCPPString(padding)
  return MaxPoolWithArgmax(root, input, ksize, strides, cppstr4, attrs)

proc MaxPoolWithArgmax(root: Scope, input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring, targmax = none(core.DType)): Out =
  var attrs = MaxPoolWithArgmaxAttrs()

  if targmax.isSome:
    attrs = attrs.Targmax(targmax.get())

  return MaxPoolWithArgmax(root, input, ksize, strides, padding, attrs)

proc NthElement(root: Scope, input: Out, n: Out, attrs: NthElementAttrs): Out =
  iNthElement(root, input, n, attrs)

proc NthElement(root: Scope, input: Out, n: Out, reverse = none(bool)): Out =
  var attrs = NthElementAttrs()

  if reverse.isSome:
    attrs = attrs.Reverse(reverse.get())

  return NthElement(root, input, n, attrs)

proc QuantizedAvgPool(root: Scope, input: Out, min_input: Out, max_input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out =
  iQuantizedAvgPool(root, input, min_input, max_input, ksize, strides, padding)

proc QuantizedAvgPool(root: Scope, input: Out, min_input: Out, max_input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string): Out =
  let cppstr6 = newCPPString(padding)
  return QuantizedAvgPool(root, input, min_input, max_input, ksize, strides, cppstr6)

proc QuantizedBatchNormWithGlobalNormalization(root: Scope, t: Out, t_min: Out, t_max: Out, m: Out, m_min: Out, m_max: Out, v: Out, v_min: Out, v_max: Out, beta: Out, beta_min: Out, beta_max: Out, gamma: Out, gamma_min: Out, gamma_max: Out, out_type: core.DType, variance_epsilon: float, scale_after_normalization: bool): Out =
  iQuantizedBatchNormWithGlobalNormalization(root, t, t_min, t_max, m, m_min, m_max, v, v_min, v_max, beta, beta_min, beta_max, gamma, gamma_min, gamma_max, out_type, variance_epsilon, scale_after_normalization)

proc QuantizedBiasAdd(root: Scope, input: Out, bias: Out, min_input: Out, max_input: Out, min_bias: Out, max_bias: Out, out_type: core.DType): Out =
  iQuantizedBiasAdd(root, input, bias, min_input, max_input, min_bias, max_bias, out_type)

proc QuantizedConv2D(root: Scope, input: Out, filter: Out, min_input: Out, max_input: Out, min_filter: Out, max_filter: Out, strides: ArraySlice[int], padding: cppstring, attrs: QuantizedConv2DAttrs): Out =
  iQuantizedConv2D(root, input, filter, min_input, max_input, min_filter, max_filter, strides, padding, attrs)

proc QuantizedConv2D(root: Scope, input: Out, filter: Out, min_input: Out, max_input: Out, min_filter: Out, max_filter: Out, strides: ArraySlice[int], padding: string, attrs: QuantizedConv2DAttrs): Out =
  let cppstr8 = newCPPString(padding)
  return QuantizedConv2D(root, input, filter, min_input, max_input, min_filter, max_filter, strides, cppstr8, attrs)

proc QuantizedConv2D(root: Scope, input: Out, filter: Out, min_input: Out, max_input: Out, min_filter: Out, max_filter: Out, strides: ArraySlice[int], padding: cppstring, dilations = none(ArraySlice[int]), outType = none(core.DType)): Out =
  var attrs = QuantizedConv2DAttrs()

  if dilations.isSome:
    attrs = attrs.Dilations(dilations.get())
  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return QuantizedConv2D(root, input, filter, min_input, max_input, min_filter, max_filter, strides, padding, attrs)

proc QuantizedMaxPool(root: Scope, input: Out, min_input: Out, max_input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out =
  iQuantizedMaxPool(root, input, min_input, max_input, ksize, strides, padding)

proc QuantizedMaxPool(root: Scope, input: Out, min_input: Out, max_input: Out, ksize: ArraySlice[int], strides: ArraySlice[int], padding: string): Out =
  let cppstr6 = newCPPString(padding)
  return QuantizedMaxPool(root, input, min_input, max_input, ksize, strides, cppstr6)

proc QuantizedRelu(root: Scope, features: Out, min_features: Out, max_features: Out, attrs: QuantizedReluAttrs): Out =
  iQuantizedRelu(root, features, min_features, max_features, attrs)

proc QuantizedRelu(root: Scope, features: Out, min_features: Out, max_features: Out, outType = none(core.DType)): Out =
  var attrs = QuantizedReluAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return QuantizedRelu(root, features, min_features, max_features, attrs)

proc QuantizedRelu6(root: Scope, features: Out, min_features: Out, max_features: Out, attrs: QuantizedRelu6Attrs): Out =
  iQuantizedRelu6(root, features, min_features, max_features, attrs)

proc QuantizedRelu6(root: Scope, features: Out, min_features: Out, max_features: Out, outType = none(core.DType)): Out =
  var attrs = QuantizedRelu6Attrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return QuantizedRelu6(root, features, min_features, max_features, attrs)

proc QuantizedReluX(root: Scope, features: Out, max_value: Out, min_features: Out, max_features: Out, attrs: QuantizedReluXAttrs): Out =
  iQuantizedReluX(root, features, max_value, min_features, max_features, attrs)

proc QuantizedReluX(root: Scope, features: Out, max_value: Out, min_features: Out, max_features: Out, outType = none(core.DType)): Out =
  var attrs = QuantizedReluXAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return QuantizedReluX(root, features, max_value, min_features, max_features, attrs)

proc Relu(root: Scope, features: Out): Out =
  iRelu(root, features)

proc Relu6(root: Scope, features: Out): Out =
  iRelu6(root, features)

proc Selu(root: Scope, features: Out): Out =
  iSelu(root, features)

proc Softmax(root: Scope, logits: Out): Out =
  iSoftmax(root, logits)

proc SoftmaxCrossEntropyWithLogits(root: Scope, features: Out, labels: Out): Out =
  iSoftmaxCrossEntropyWithLogits(root, features, labels)

proc Softplus(root: Scope, features: Out): Out =
  iSoftplus(root, features)

proc Softsign(root: Scope, features: Out): Out =
  iSoftsign(root, features)

proc SparseSoftmaxCrossEntropyWithLogits(root: Scope, features: Out, labels: Out): Out =
  iSparseSoftmaxCrossEntropyWithLogits(root, features, labels)

proc TopK(root: Scope, input: Out, k: Out, attrs: TopKAttrs): Out =
  iTopK(root, input, k, attrs)

proc TopK(root: Scope, input: Out, k: Out, sorted = none(bool)): Out =
  var attrs = TopKAttrs()

  if sorted.isSome:
    attrs = attrs.Sorted(sorted.get())

  return TopK(root, input, k, attrs)

export AvgPool,
       AvgPool3D,
       AvgPool3DGrad,
       BiasAdd,
       BiasAddGrad,
       Conv2D,
       Conv2DBackpropFilter,
       Conv2DBackpropInput,
       Conv3D,
       Conv3DBackpropFilterV2,
       Conv3DBackpropInputV2,
       DataFormatDimMap,
       DataFormatVecPermute,
       DepthwiseConv2dNative,
       DepthwiseConv2dNativeBackpropFilter,
       DepthwiseConv2dNativeBackpropInput,
       Dilation2D,
       Dilation2DBackpropFilter,
       Dilation2DBackpropInput,
       Elu,
       FractionalAvgPool,
       FractionalMaxPool,
       FusedBatchNorm,
       FusedBatchNormGrad,
       FusedBatchNormGradV2,
       FusedBatchNormV2,
       FusedPadConv2D,
       FusedResizeAndPadConv2D,
       InTopK,
       InTopKV2,
       L2Loss,
       LRN,
       LogSoftmax,
       MaxPool,
       MaxPool3D,
       MaxPoolGradGradWithArgmax,
       MaxPoolV2,
       MaxPoolWithArgmax,
       NthElement,
       QuantizedAvgPool,
       QuantizedBatchNormWithGlobalNormalization,
       QuantizedBiasAdd,
       QuantizedConv2D,
       QuantizedMaxPool,
       QuantizedRelu,
       QuantizedRelu6,
       QuantizedReluX,
       Relu,
       Relu6,
       Selu,
       Softmax,
       SoftmaxCrossEntropyWithLogits,
       Softplus,
       Softsign,
       SparseSoftmaxCrossEntropyWithLogits,
       TopK