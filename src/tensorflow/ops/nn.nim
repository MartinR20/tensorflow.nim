import ../core

{.compile:"../../ops/nn/nn.cc".}


type AvgPool*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"AvgPool/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiavgPool[oT: oall](scope: Scope,
              value: oT,
              ksize: ArraySlice[int],
              strides: ArraySlice[int],
              padding: cstring,
              data_format: cstring,
              T: DType): AvgPool[oT] {.header:"../../ops/nn/nn.h", importcpp:"AvgPool(*#, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc avgPool*[oT: oall](scope: Scope,
              value: oT,
              ksize: openArray[int],
              strides: openArray[int],
              padding: cstring,
              data_format: cstring = "NHWC"): AvgPool[oT] =
  return iiavgPool(scope,
                   value,
                   newArraySlice(ksize),
                   newArraySlice(strides),
                   padding,
                   data_format,
                   oT[].oTF)

converter avgPoolToOut*[oT: oall](op: AvgPool[oT]): oT {.inline.} = return op.output


type AvgPool3D*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"AvgPool3D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiavgPool3D[oT: oall](scope: Scope,
                input: oT,
                ksize: ArraySlice[int],
                strides: ArraySlice[int],
                padding: cstring,
                data_format: cstring,
                T: DType): AvgPool3D[oT] {.header:"../../ops/nn/nn.h", importcpp:"AvgPool3D(*#, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc avgPool3D*[oT: oall](scope: Scope,
                input: oT,
                ksize: openArray[int],
                strides: openArray[int],
                padding: cstring,
                data_format: cstring = "NDHWC"): AvgPool3D[oT] =
  return iiavgPool3D(scope,
                     input,
                     newArraySlice(ksize),
                     newArraySlice(strides),
                     padding,
                     data_format,
                     oT[].oTF)

converter avgPool3DToOut*[oT: oall](op: AvgPool3D[oT]): oT {.inline.} = return op.output


type AvgPool3DGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"AvgPool3DGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiavgPool3DGrad[oT: oall](scope: Scope,
                    orig_input_shape: oint32,
                    grad: oT,
                    ksize: ArraySlice[int],
                    strides: ArraySlice[int],
                    padding: cstring,
                    data_format: cstring,
                    T: DType): AvgPool3DGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"AvgPool3DGrad(*#, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc avgPool3DGrad*[oT: oall](scope: Scope,
                    orig_input_shape: oint32,
                    grad: oT,
                    ksize: openArray[int],
                    strides: openArray[int],
                    padding: cstring,
                    data_format: cstring = "NDHWC"): AvgPool3DGrad[oT] =
  return iiavgPool3DGrad(scope,
                         orig_input_shape,
                         grad,
                         newArraySlice(ksize),
                         newArraySlice(strides),
                         padding,
                         data_format,
                         oT[].oTF)

converter avgPool3DGradToOut*[oT: oall](op: AvgPool3DGrad[oT]): oT {.inline.} = return op.output


type AvgPoolGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"AvgPoolGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiavgPoolGrad[oT: oall](scope: Scope,
                  orig_input_shape: oint32,
                  grad: oT,
                  ksize: ArraySlice[int],
                  strides: ArraySlice[int],
                  padding: cstring,
                  data_format: cstring,
                  T: DType): AvgPoolGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"AvgPoolGrad(*#, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc avgPoolGrad*[oT: oall](scope: Scope,
                  orig_input_shape: oint32,
                  grad: oT,
                  ksize: openArray[int],
                  strides: openArray[int],
                  padding: cstring,
                  data_format: cstring = "NHWC"): AvgPoolGrad[oT] =
  return iiavgPoolGrad(scope,
                       orig_input_shape,
                       grad,
                       newArraySlice(ksize),
                       newArraySlice(strides),
                       padding,
                       data_format,
                       oT[].oTF)

converter avgPoolGradToOut*[oT: oall](op: AvgPoolGrad[oT]): oT {.inline.} = return op.output


type BatchNormWithGlobalNormalization*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"BatchNormWithGlobalNormalization/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchNormWithGlobalNormalization[oT: oall](scope: Scope,
                                       t: oT,
                                       m: oT,
                                       v: oT,
                                       beta: oT,
                                       gamma: oT,
                                       T: DType,
                                       variance_epsilon: float32,
                                       scale_after_normalization: bool): BatchNormWithGlobalNormalization[oT] {.header:"../../ops/nn/nn.h", importcpp:"BatchNormWithGlobalNormalization(*#, #, #, #, #, #, #, #, #)", constructor.}

proc batchNormWithGlobalNormalization*[oT: oall](scope: Scope,
                                       t: oT,
                                       m: oT,
                                       v: oT,
                                       beta: oT,
                                       gamma: oT,
                                       variance_epsilon: float32 = 0.0.float32,
                                       scale_after_normalization: bool = false): BatchNormWithGlobalNormalization[oT] =
  return iibatchNormWithGlobalNormalization(scope,
                                            t,
                                            m,
                                            v,
                                            beta,
                                            gamma,
                                            oT[].oTF,
                                            variance_epsilon,
                                            scale_after_normalization)

converter batchNormWithGlobalNormalizationToOut*[oT: oall](op: BatchNormWithGlobalNormalization[oT]): oT {.inline.} = return op.output


type BatchNormWithGlobalNormalizationGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"BatchNormWithGlobalNormalizationGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchNormWithGlobalNormalizationGrad[oT: oall](scope: Scope,
                                           t: oT,
                                           m: oT,
                                           v: oT,
                                           gamma: oT,
                                           backprop: oT,
                                           T: DType,
                                           variance_epsilon: float32,
                                           scale_after_normalization: bool): BatchNormWithGlobalNormalizationGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"BatchNormWithGlobalNormalizationGrad(*#, #, #, #, #, #, #, #, #)", constructor.}

proc batchNormWithGlobalNormalizationGrad*[oT: oall](scope: Scope,
                                           t: oT,
                                           m: oT,
                                           v: oT,
                                           gamma: oT,
                                           backprop: oT,
                                           variance_epsilon: float32 = 0.0.float32,
                                           scale_after_normalization: bool = false): BatchNormWithGlobalNormalizationGrad[oT] =
  return iibatchNormWithGlobalNormalizationGrad(scope,
                                                t,
                                                m,
                                                v,
                                                gamma,
                                                backprop,
                                                oT[].oTF,
                                                variance_epsilon,
                                                scale_after_normalization)

converter batchNormWithGlobalNormalizationGradToOut*[oT: oall](op: BatchNormWithGlobalNormalizationGrad[oT]): oT {.inline.} = return op.output


type BiasAdd*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"BiasAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibiasAdd[oT: oall](scope: Scope,
              value: oT,
              bias: oT,
              T: DType,
              data_format: cstring): BiasAdd[oT] {.header:"../../ops/nn/nn.h", importcpp:"BiasAdd(*#, #, #, #, tensorflow::string(#))", constructor.}

proc biasAdd*[oT: oall](scope: Scope,
              value: oT,
              bias: oT,
              data_format: cstring = "NHWC"): BiasAdd[oT] =
  return iibiasAdd(scope,
                   value,
                   bias,
                   oT[].oTF,
                   data_format)

converter biasAddToOut*[oT: oall](op: BiasAdd[oT]): oT {.inline.} = return op.output


type BiasAddGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"BiasAddGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibiasAddGrad[oT: oall](scope: Scope,
                  out_backprop: oT,
                  T: DType,
                  data_format: cstring): BiasAddGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"BiasAddGrad(*#, #, #, tensorflow::string(#))", constructor.}

proc biasAddGrad*[oT: oall](scope: Scope,
                  out_backprop: oT,
                  data_format: cstring = "NHWC"): BiasAddGrad[oT] =
  return iibiasAddGrad(scope,
                       out_backprop,
                       oT[].oTF,
                       data_format)

converter biasAddGradToOut*[oT: oall](op: BiasAddGrad[oT]): oT {.inline.} = return op.output


type BiasAddV1*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"BiasAddV1/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibiasAddV1[oT: oall](scope: Scope,
                value: oT,
                bias: oT,
                T: DType): BiasAddV1[oT] {.header:"../../ops/nn/nn.h", importcpp:"BiasAddV1(*#, #, #, #)", constructor.}

proc biasAddV1*[oT: oall](scope: Scope,
                value: oT,
                bias: oT): BiasAddV1[oT] =
  return iibiasAddV1(scope,
                     value,
                     bias,
                     oT[].oTF)

converter biasAddV1ToOut*[oT: oall](op: BiasAddV1[oT]): oT {.inline.} = return op.output


type CTCBeamSearchDecoder* {.header:"../../ops/nn/nn.h", importcpp:"CTCBeamSearchDecoder/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iicTCBeamSearchDecoder(scope: Scope,
                           inputs: ofloat,
                           sequence_length: oint32,
                           beam_width: int64,
                           top_paths: int64,
                           merge_repeated: bool): CTCBeamSearchDecoder {.header:"../../ops/nn/nn.h", importcpp:"CTCBeamSearchDecoder(*#, #, #, #, #, #)", constructor.}

proc cTCBeamSearchDecoder*(scope: Scope,
                           inputs: ofloat,
                           sequence_length: oint32,
                           beam_width: int64 = 0.int,
                           top_paths: int64 = 0.int,
                           merge_repeated: bool = true): CTCBeamSearchDecoder =
  return iicTCBeamSearchDecoder(scope,
                                inputs,
                                sequence_length,
                                beam_width,
                                top_paths,
                                merge_repeated)

converter cTCBeamSearchDecoderToOut*(op: CTCBeamSearchDecoder): oint64 {.inline.} = return op.output


type CTCGreedyDecoder* {.header:"../../ops/nn/nn.h", importcpp:"CTCGreedyDecoder/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iicTCGreedyDecoder(scope: Scope,
                       inputs: ofloat,
                       sequence_length: oint32,
                       merge_repeated: bool): CTCGreedyDecoder {.header:"../../ops/nn/nn.h", importcpp:"CTCGreedyDecoder(*#, #, #, #)", constructor.}

proc cTCGreedyDecoder*(scope: Scope,
                       inputs: ofloat,
                       sequence_length: oint32,
                       merge_repeated: bool = false): CTCGreedyDecoder =
  return iicTCGreedyDecoder(scope,
                            inputs,
                            sequence_length,
                            merge_repeated)

converter cTCGreedyDecoderToOut*(op: CTCGreedyDecoder): oint64 {.inline.} = return op.output


type Conv2D*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Conv2D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconv2D[oT: oall](scope: Scope,
             input: oT,
             filter: oT,
             strides: ArraySlice[int],
             padding: cstring,
             T: DType,
             use_cudnn_on_gpu: bool,
             data_format: cstring,
             dilations: ArraySlice[int]): Conv2D[oT] {.header:"../../ops/nn/nn.h", importcpp:"Conv2D(*#, #, #, #, tensorflow::string(#), #, #, tensorflow::string(#), #)", constructor.}

proc conv2D*[oT: oall](scope: Scope,
             input: oT,
             filter: oT,
             strides: openArray[int],
             padding: cstring,
             use_cudnn_on_gpu: bool = true,
             data_format: cstring = "NHWC",
             dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int]): Conv2D[oT] =
  return iiconv2D(scope,
                  input,
                  filter,
                  newArraySlice(strides),
                  padding,
                  oT[].oTF,
                  use_cudnn_on_gpu,
                  data_format,
                  newArraySlice(dilations))

converter conv2DToOut*[oT: oall](op: Conv2D[oT]): oT {.inline.} = return op.output


type Conv2DBackpropFilter*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Conv2DBackpropFilter/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconv2DBackpropFilter[oT: oall](scope: Scope,
                           input: oT,
                           filter_sizes: oint32,
                           out_backprop: oT,
                           strides: ArraySlice[int],
                           padding: cstring,
                           T: DType,
                           use_cudnn_on_gpu: bool,
                           data_format: cstring,
                           dilations: ArraySlice[int]): Conv2DBackpropFilter[oT] {.header:"../../ops/nn/nn.h", importcpp:"Conv2DBackpropFilter(*#, #, #, #, #, tensorflow::string(#), #, #, tensorflow::string(#), #)", constructor.}

proc conv2DBackpropFilter*[oT: oall](scope: Scope,
                           input: oT,
                           filter_sizes: oint32,
                           out_backprop: oT,
                           strides: openArray[int],
                           padding: cstring,
                           use_cudnn_on_gpu: bool = true,
                           data_format: cstring = "NHWC",
                           dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int]): Conv2DBackpropFilter[oT] =
  return iiconv2DBackpropFilter(scope,
                                input,
                                filter_sizes,
                                out_backprop,
                                newArraySlice(strides),
                                padding,
                                oT[].oTF,
                                use_cudnn_on_gpu,
                                data_format,
                                newArraySlice(dilations))

converter conv2DBackpropFilterToOut*[oT: oall](op: Conv2DBackpropFilter[oT]): oT {.inline.} = return op.output


type Conv2DBackpropInput*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Conv2DBackpropInput/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconv2DBackpropInput[oT: oall](scope: Scope,
                          input_sizes: oint32,
                          filter: oT,
                          out_backprop: oT,
                          strides: ArraySlice[int],
                          padding: cstring,
                          T: DType,
                          use_cudnn_on_gpu: bool,
                          data_format: cstring,
                          dilations: ArraySlice[int]): Conv2DBackpropInput[oT] {.header:"../../ops/nn/nn.h", importcpp:"Conv2DBackpropInput(*#, #, #, #, #, tensorflow::string(#), #, #, tensorflow::string(#), #)", constructor.}

proc conv2DBackpropInput*[oT: oall](scope: Scope,
                          input_sizes: oint32,
                          filter: oT,
                          out_backprop: oT,
                          strides: openArray[int],
                          padding: cstring,
                          use_cudnn_on_gpu: bool = true,
                          data_format: cstring = "NHWC",
                          dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int]): Conv2DBackpropInput[oT] =
  return iiconv2DBackpropInput(scope,
                               input_sizes,
                               filter,
                               out_backprop,
                               newArraySlice(strides),
                               padding,
                               oT[].oTF,
                               use_cudnn_on_gpu,
                               data_format,
                               newArraySlice(dilations))

converter conv2DBackpropInputToOut*[oT: oall](op: Conv2DBackpropInput[oT]): oT {.inline.} = return op.output


type Conv3D*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Conv3D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconv3D[oT: oall](scope: Scope,
             input: oT,
             filter: oT,
             strides: ArraySlice[int],
             padding: cstring,
             T: DType,
             data_format: cstring,
             dilations: ArraySlice[int]): Conv3D[oT] {.header:"../../ops/nn/nn.h", importcpp:"Conv3D(*#, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc conv3D*[oT: oall](scope: Scope,
             input: oT,
             filter: oT,
             strides: openArray[int],
             padding: cstring,
             data_format: cstring = "NDHWC",
             dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int, 1.int]): Conv3D[oT] =
  return iiconv3D(scope,
                  input,
                  filter,
                  newArraySlice(strides),
                  padding,
                  oT[].oTF,
                  data_format,
                  newArraySlice(dilations))

converter conv3DToOut*[oT: oall](op: Conv3D[oT]): oT {.inline.} = return op.output


type Conv3DBackpropFilter*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Conv3DBackpropFilter/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconv3DBackpropFilter[oT: oall](scope: Scope,
                           input: oT,
                           filter: oT,
                           out_backprop: oT,
                           strides: ArraySlice[int],
                           padding: cstring,
                           T: DType,
                           dilations: ArraySlice[int]): Conv3DBackpropFilter[oT] {.header:"../../ops/nn/nn.h", importcpp:"Conv3DBackpropFilter(*#, #, #, #, #, tensorflow::string(#), #, #)", constructor.}

proc conv3DBackpropFilter*[oT: oall](scope: Scope,
                           input: oT,
                           filter: oT,
                           out_backprop: oT,
                           strides: openArray[int],
                           padding: cstring,
                           dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int, 1.int]): Conv3DBackpropFilter[oT] =
  return iiconv3DBackpropFilter(scope,
                                input,
                                filter,
                                out_backprop,
                                newArraySlice(strides),
                                padding,
                                oT[].oTF,
                                newArraySlice(dilations))

converter conv3DBackpropFilterToOut*[oT: oall](op: Conv3DBackpropFilter[oT]): oT {.inline.} = return op.output


type Conv3DBackpropFilterV2*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Conv3DBackpropFilterV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconv3DBackpropFilterV2[oT: oall](scope: Scope,
                             input: oT,
                             filter_sizes: oint32,
                             out_backprop: oT,
                             strides: ArraySlice[int],
                             padding: cstring,
                             T: DType,
                             data_format: cstring,
                             dilations: ArraySlice[int]): Conv3DBackpropFilterV2[oT] {.header:"../../ops/nn/nn.h", importcpp:"Conv3DBackpropFilterV2(*#, #, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc conv3DBackpropFilterV2*[oT: oall](scope: Scope,
                             input: oT,
                             filter_sizes: oint32,
                             out_backprop: oT,
                             strides: openArray[int],
                             padding: cstring,
                             data_format: cstring = "NDHWC",
                             dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int, 1.int]): Conv3DBackpropFilterV2[oT] =
  return iiconv3DBackpropFilterV2(scope,
                                  input,
                                  filter_sizes,
                                  out_backprop,
                                  newArraySlice(strides),
                                  padding,
                                  oT[].oTF,
                                  data_format,
                                  newArraySlice(dilations))

converter conv3DBackpropFilterV2ToOut*[oT: oall](op: Conv3DBackpropFilterV2[oT]): oT {.inline.} = return op.output


type Conv3DBackpropInput*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Conv3DBackpropInput/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconv3DBackpropInput[oT: oall](scope: Scope,
                          input: oT,
                          filter: oT,
                          out_backprop: oT,
                          strides: ArraySlice[int],
                          padding: cstring,
                          T: DType,
                          dilations: ArraySlice[int]): Conv3DBackpropInput[oT] {.header:"../../ops/nn/nn.h", importcpp:"Conv3DBackpropInput(*#, #, #, #, #, tensorflow::string(#), #, #)", constructor.}

proc conv3DBackpropInput*[oT: oall](scope: Scope,
                          input: oT,
                          filter: oT,
                          out_backprop: oT,
                          strides: openArray[int],
                          padding: cstring,
                          dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int, 1.int]): Conv3DBackpropInput[oT] =
  return iiconv3DBackpropInput(scope,
                               input,
                               filter,
                               out_backprop,
                               newArraySlice(strides),
                               padding,
                               oT[].oTF,
                               newArraySlice(dilations))

converter conv3DBackpropInputToOut*[oT: oall](op: Conv3DBackpropInput[oT]): oT {.inline.} = return op.output

type Conv3DBackpropInputV2Tshape* = oint32 | oint64

type Conv3DBackpropInputV2*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Conv3DBackpropInputV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconv3DBackpropInputV2[oT: oall](scope: Scope,
                            input_sizes: Conv3DBackpropInputV2Tshape,
                            filter: oT,
                            out_backprop: oT,
                            strides: ArraySlice[int],
                            padding: cstring,
                            T: DType,
                            data_format: cstring,
                            dilations: ArraySlice[int]): Conv3DBackpropInputV2[oT] {.header:"../../ops/nn/nn.h", importcpp:"Conv3DBackpropInputV2(*#, #, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc conv3DBackpropInputV2*[oT: oall](scope: Scope,
                            input_sizes: Conv3DBackpropInputV2Tshape,
                            filter: oT,
                            out_backprop: oT,
                            strides: openArray[int],
                            padding: cstring,
                            data_format: cstring = "NDHWC",
                            dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int, 1.int]): Conv3DBackpropInputV2[oT] =
  return iiconv3DBackpropInputV2(scope,
                                 input_sizes,
                                 filter,
                                 out_backprop,
                                 newArraySlice(strides),
                                 padding,
                                 oT[].oTF,
                                 data_format,
                                 newArraySlice(dilations))

converter conv3DBackpropInputV2ToOut*[oT: oall](op: Conv3DBackpropInputV2[oT]): oT {.inline.} = return op.output


type CudnnRNN*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNN/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicudnnRNN[oT: oall](scope: Scope,
               input: oT,
               input_h: oT,
               input_c: oT,
               params: oT,
               T: DType,
               rnn_mode: cstring,
               input_mode: cstring,
               direction: cstring,
               dropout: float32,
               seed: int64,
               seed2: int64,
               is_training: bool): CudnnRNN[oT] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNN(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #, #)", constructor.}

proc cudnnRNN*[oT: oall](scope: Scope,
               input: oT,
               input_h: oT,
               input_c: oT,
               params: oT,
               rnn_mode: cstring = "lstm",
               input_mode: cstring = "linear_input",
               direction: cstring = "unidirectional",
               dropout: float32 = 0.0.float32,
               seed: int64 = 0.int,
               seed2: int64 = 0.int,
               is_training: bool = true): CudnnRNN[oT] =
  return iicudnnRNN(scope,
                    input,
                    input_h,
                    input_c,
                    params,
                    oT[].oTF,
                    rnn_mode,
                    input_mode,
                    direction,
                    dropout,
                    seed,
                    seed2,
                    is_training)

converter cudnnRNNToOut*[oT: oall](op: CudnnRNN[oT]): oT {.inline.} = return op.output


type CudnnRNNBackprop*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNBackprop/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicudnnRNNBackprop[oT: oall](scope: Scope,
                       input: oT,
                       input_h: oT,
                       input_c: oT,
                       params: oT,
                       output: oT,
                       output_h: oT,
                       output_c: oT,
                       output_backprop: oT,
                       output_h_backprop: oT,
                       output_c_backprop: oT,
                       reserve_space: oT,
                       T: DType,
                       rnn_mode: cstring,
                       input_mode: cstring,
                       direction: cstring,
                       dropout: float32,
                       seed: int64,
                       seed2: int64): CudnnRNNBackprop[oT] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNBackprop(*#, #, #, #, #, #, #, #, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc cudnnRNNBackprop*[oT: oall](scope: Scope,
                       input: oT,
                       input_h: oT,
                       input_c: oT,
                       params: oT,
                       output: oT,
                       output_h: oT,
                       output_c: oT,
                       output_backprop: oT,
                       output_h_backprop: oT,
                       output_c_backprop: oT,
                       reserve_space: oT,
                       rnn_mode: cstring = "lstm",
                       input_mode: cstring = "linear_input",
                       direction: cstring = "unidirectional",
                       dropout: float32 = 0.0.float32,
                       seed: int64 = 0.int,
                       seed2: int64 = 0.int): CudnnRNNBackprop[oT] =
  return iicudnnRNNBackprop(scope,
                            input,
                            input_h,
                            input_c,
                            params,
                            output,
                            output_h,
                            output_c,
                            output_backprop,
                            output_h_backprop,
                            output_c_backprop,
                            reserve_space,
                            oT[].oTF,
                            rnn_mode,
                            input_mode,
                            direction,
                            dropout,
                            seed,
                            seed2)

converter cudnnRNNBackpropToOut*[oT: oall](op: CudnnRNNBackprop[oT]): oT {.inline.} = return op.output


type CudnnRNNBackpropV2*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNBackpropV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicudnnRNNBackpropV2[oT: oall](scope: Scope,
                         input: oT,
                         input_h: oT,
                         input_c: oT,
                         params: oT,
                         output: oT,
                         output_h: oT,
                         output_c: oT,
                         output_backprop: oT,
                         output_h_backprop: oT,
                         output_c_backprop: oT,
                         reserve_space: oT,
                         host_reserved: oint8,
                         T: DType,
                         rnn_mode: cstring,
                         input_mode: cstring,
                         direction: cstring,
                         dropout: float32,
                         seed: int64,
                         seed2: int64): CudnnRNNBackpropV2[oT] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNBackpropV2(*#, #, #, #, #, #, #, #, #, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc cudnnRNNBackpropV2*[oT: oall](scope: Scope,
                         input: oT,
                         input_h: oT,
                         input_c: oT,
                         params: oT,
                         output: oT,
                         output_h: oT,
                         output_c: oT,
                         output_backprop: oT,
                         output_h_backprop: oT,
                         output_c_backprop: oT,
                         reserve_space: oT,
                         host_reserved: oint8,
                         rnn_mode: cstring = "lstm",
                         input_mode: cstring = "linear_input",
                         direction: cstring = "unidirectional",
                         dropout: float32 = 0.0.float32,
                         seed: int64 = 0.int,
                         seed2: int64 = 0.int): CudnnRNNBackpropV2[oT] =
  return iicudnnRNNBackpropV2(scope,
                              input,
                              input_h,
                              input_c,
                              params,
                              output,
                              output_h,
                              output_c,
                              output_backprop,
                              output_h_backprop,
                              output_c_backprop,
                              reserve_space,
                              host_reserved,
                              oT[].oTF,
                              rnn_mode,
                              input_mode,
                              direction,
                              dropout,
                              seed,
                              seed2)

converter cudnnRNNBackpropV2ToOut*[oT: oall](op: CudnnRNNBackpropV2[oT]): oT {.inline.} = return op.output


type CudnnRNNCanonicalToParams*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNCanonicalToParams/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicudnnRNNCanonicalToParams[oT: oall](scope: Scope,
                                num_layers: oint32,
                                num_units: oint32,
                                input_size: oint32,
                                weights: oT,
                                biases: oT,
                                T: DType,
                                num_params: int64,
                                rnn_mode: cstring,
                                input_mode: cstring,
                                direction: cstring,
                                dropout: float32,
                                seed: int64,
                                seed2: int64): CudnnRNNCanonicalToParams[oT] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNCanonicalToParams(*#, #, #, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc cudnnRNNCanonicalToParams*[oT: oall](scope: Scope,
                                num_layers: oint32,
                                num_units: oint32,
                                input_size: oint32,
                                weights: oT,
                                biases: oT,
                                num_params: int64 = 0.int,
                                rnn_mode: cstring = "lstm",
                                input_mode: cstring = "linear_input",
                                direction: cstring = "unidirectional",
                                dropout: float32 = 0.0.float32,
                                seed: int64 = 0.int,
                                seed2: int64 = 0.int): CudnnRNNCanonicalToParams[oT] =
  return iicudnnRNNCanonicalToParams(scope,
                                     num_layers,
                                     num_units,
                                     input_size,
                                     weights,
                                     biases,
                                     oT[].oTF,
                                     num_params,
                                     rnn_mode,
                                     input_mode,
                                     direction,
                                     dropout,
                                     seed,
                                     seed2)

converter cudnnRNNCanonicalToParamsToOut*[oT: oall](op: CudnnRNNCanonicalToParams[oT]): oT {.inline.} = return op.output


type CudnnRNNParamsSize*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNParamsSize/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicudnnRNNParamsSize[oT: oall](scope: Scope,
                         num_layers: oint32,
                         num_units: oint32,
                         input_size: oint32,
                         T: DType,
                         S: DType,
                         rnn_mode: cstring,
                         input_mode: cstring,
                         direction: cstring,
                         dropout: float32,
                         seed: int64,
                         seed2: int64,
                         explicitT: type(oT)): CudnnRNNParamsSize[oT] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNParamsSize(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc cudnnRNNParamsSize*(scope: Scope,
                         num_layers: oint32,
                         num_units: oint32,
                         input_size: oint32,
                         T: type(ohalf) | type(ofloat) | type(odouble) = oinvalid,
                         S: type = oinvalid,
                         rnn_mode: cstring = "lstm",
                         input_mode: cstring = "linear_input",
                         direction: cstring = "unidirectional",
                         dropout: float32 = 0.0.float32,
                         seed: int64 = 0.int,
                         seed2: int64 = 0.int): auto =
  return iicudnnRNNParamsSize(scope,
                              num_layers,
                              num_units,
                              input_size,
                              T[].oTF,
                              oT[].oTF,
                              rnn_mode,
                              input_mode,
                              direction,
                              dropout,
                              seed,
                              seed2,
                              S)

converter cudnnRNNParamsSizeToOut*[oT: oall](op: CudnnRNNParamsSize[oT]): oT {.inline.} = return op.output


type CudnnRNNParamsToCanonical*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNParamsToCanonical/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicudnnRNNParamsToCanonical[oT: oall](scope: Scope,
                                num_layers: oint32,
                                num_units: oint32,
                                input_size: oint32,
                                params: oT,
                                T: DType,
                                num_params: int64,
                                rnn_mode: cstring,
                                input_mode: cstring,
                                direction: cstring,
                                dropout: float32,
                                seed: int64,
                                seed2: int64): CudnnRNNParamsToCanonical[oT] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNParamsToCanonical(*#, #, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc cudnnRNNParamsToCanonical*[oT: oall](scope: Scope,
                                num_layers: oint32,
                                num_units: oint32,
                                input_size: oint32,
                                params: oT,
                                num_params: int64 = 0.int,
                                rnn_mode: cstring = "lstm",
                                input_mode: cstring = "linear_input",
                                direction: cstring = "unidirectional",
                                dropout: float32 = 0.0.float32,
                                seed: int64 = 0.int,
                                seed2: int64 = 0.int): CudnnRNNParamsToCanonical[oT] =
  return iicudnnRNNParamsToCanonical(scope,
                                     num_layers,
                                     num_units,
                                     input_size,
                                     params,
                                     oT[].oTF,
                                     num_params,
                                     rnn_mode,
                                     input_mode,
                                     direction,
                                     dropout,
                                     seed,
                                     seed2)

converter cudnnRNNParamsToCanonicalToOut*[oT: oall](op: CudnnRNNParamsToCanonical[oT]): oT {.inline.} = return op.output


type CudnnRNNV2*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicudnnRNNV2[oT: oall](scope: Scope,
                 input: oT,
                 input_h: oT,
                 input_c: oT,
                 params: oT,
                 T: DType,
                 rnn_mode: cstring,
                 input_mode: cstring,
                 direction: cstring,
                 dropout: float32,
                 seed: int64,
                 seed2: int64,
                 is_training: bool): CudnnRNNV2[oT] {.header:"../../ops/nn/nn.h", importcpp:"CudnnRNNV2(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #, #)", constructor.}

proc cudnnRNNV2*[oT: oall](scope: Scope,
                 input: oT,
                 input_h: oT,
                 input_c: oT,
                 params: oT,
                 rnn_mode: cstring = "lstm",
                 input_mode: cstring = "linear_input",
                 direction: cstring = "unidirectional",
                 dropout: float32 = 0.0.float32,
                 seed: int64 = 0.int,
                 seed2: int64 = 0.int,
                 is_training: bool = true): CudnnRNNV2[oT] =
  return iicudnnRNNV2(scope,
                      input,
                      input_h,
                      input_c,
                      params,
                      oT[].oTF,
                      rnn_mode,
                      input_mode,
                      direction,
                      dropout,
                      seed,
                      seed2,
                      is_training)

converter cudnnRNNV2ToOut*[oT: oall](op: CudnnRNNV2[oT]): oT {.inline.} = return op.output


type DepthwiseConv2dNative*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"DepthwiseConv2dNative/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidepthwiseConv2dNative[oT: oall](scope: Scope,
                            input: oT,
                            filter: oT,
                            strides: ArraySlice[int],
                            padding: cstring,
                            T: DType,
                            data_format: cstring,
                            dilations: ArraySlice[int]): DepthwiseConv2dNative[oT] {.header:"../../ops/nn/nn.h", importcpp:"DepthwiseConv2dNative(*#, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc depthwiseConv2dNative*[oT: oall](scope: Scope,
                            input: oT,
                            filter: oT,
                            strides: openArray[int],
                            padding: cstring,
                            data_format: cstring = "NHWC",
                            dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int]): DepthwiseConv2dNative[oT] =
  return iidepthwiseConv2dNative(scope,
                                 input,
                                 filter,
                                 newArraySlice(strides),
                                 padding,
                                 oT[].oTF,
                                 data_format,
                                 newArraySlice(dilations))

converter depthwiseConv2dNativeToOut*[oT: oall](op: DepthwiseConv2dNative[oT]): oT {.inline.} = return op.output


type DepthwiseConv2dNativeBackpropFilter*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"DepthwiseConv2dNativeBackpropFilter/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidepthwiseConv2dNativeBackpropFilter[oT: oall](scope: Scope,
                                          input: oT,
                                          filter_sizes: oint32,
                                          out_backprop: oT,
                                          strides: ArraySlice[int],
                                          padding: cstring,
                                          T: DType,
                                          data_format: cstring,
                                          dilations: ArraySlice[int]): DepthwiseConv2dNativeBackpropFilter[oT] {.header:"../../ops/nn/nn.h", importcpp:"DepthwiseConv2dNativeBackpropFilter(*#, #, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc depthwiseConv2dNativeBackpropFilter*[oT: oall](scope: Scope,
                                          input: oT,
                                          filter_sizes: oint32,
                                          out_backprop: oT,
                                          strides: openArray[int],
                                          padding: cstring,
                                          data_format: cstring = "NHWC",
                                          dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int]): DepthwiseConv2dNativeBackpropFilter[oT] =
  return iidepthwiseConv2dNativeBackpropFilter(scope,
                                               input,
                                               filter_sizes,
                                               out_backprop,
                                               newArraySlice(strides),
                                               padding,
                                               oT[].oTF,
                                               data_format,
                                               newArraySlice(dilations))

converter depthwiseConv2dNativeBackpropFilterToOut*[oT: oall](op: DepthwiseConv2dNativeBackpropFilter[oT]): oT {.inline.} = return op.output


type DepthwiseConv2dNativeBackpropInput*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"DepthwiseConv2dNativeBackpropInput/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidepthwiseConv2dNativeBackpropInput[oT: oall](scope: Scope,
                                         input_sizes: oint32,
                                         filter: oT,
                                         out_backprop: oT,
                                         strides: ArraySlice[int],
                                         padding: cstring,
                                         T: DType,
                                         data_format: cstring,
                                         dilations: ArraySlice[int]): DepthwiseConv2dNativeBackpropInput[oT] {.header:"../../ops/nn/nn.h", importcpp:"DepthwiseConv2dNativeBackpropInput(*#, #, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc depthwiseConv2dNativeBackpropInput*[oT: oall](scope: Scope,
                                         input_sizes: oint32,
                                         filter: oT,
                                         out_backprop: oT,
                                         strides: openArray[int],
                                         padding: cstring,
                                         data_format: cstring = "NHWC",
                                         dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int]): DepthwiseConv2dNativeBackpropInput[oT] =
  return iidepthwiseConv2dNativeBackpropInput(scope,
                                              input_sizes,
                                              filter,
                                              out_backprop,
                                              newArraySlice(strides),
                                              padding,
                                              oT[].oTF,
                                              data_format,
                                              newArraySlice(dilations))

converter depthwiseConv2dNativeBackpropInputToOut*[oT: oall](op: DepthwiseConv2dNativeBackpropInput[oT]): oT {.inline.} = return op.output


type Dilation2D*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Dilation2D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidilation2D[oT: oall](scope: Scope,
                 input: oT,
                 filter: oT,
                 strides: ArraySlice[int],
                 rates: ArraySlice[int],
                 padding: cstring,
                 T: DType): Dilation2D[oT] {.header:"../../ops/nn/nn.h", importcpp:"Dilation2D(*#, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc dilation2D*[oT: oall](scope: Scope,
                 input: oT,
                 filter: oT,
                 strides: openArray[int],
                 rates: openArray[int],
                 padding: cstring): Dilation2D[oT] =
  return iidilation2D(scope,
                      input,
                      filter,
                      newArraySlice(strides),
                      newArraySlice(rates),
                      padding,
                      oT[].oTF)

converter dilation2DToOut*[oT: oall](op: Dilation2D[oT]): oT {.inline.} = return op.output


type Dilation2DBackpropFilter*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Dilation2DBackpropFilter/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidilation2DBackpropFilter[oT: oall](scope: Scope,
                               input: oT,
                               filter: oT,
                               out_backprop: oT,
                               strides: ArraySlice[int],
                               rates: ArraySlice[int],
                               padding: cstring,
                               T: DType): Dilation2DBackpropFilter[oT] {.header:"../../ops/nn/nn.h", importcpp:"Dilation2DBackpropFilter(*#, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc dilation2DBackpropFilter*[oT: oall](scope: Scope,
                               input: oT,
                               filter: oT,
                               out_backprop: oT,
                               strides: openArray[int],
                               rates: openArray[int],
                               padding: cstring): Dilation2DBackpropFilter[oT] =
  return iidilation2DBackpropFilter(scope,
                                    input,
                                    filter,
                                    out_backprop,
                                    newArraySlice(strides),
                                    newArraySlice(rates),
                                    padding,
                                    oT[].oTF)

converter dilation2DBackpropFilterToOut*[oT: oall](op: Dilation2DBackpropFilter[oT]): oT {.inline.} = return op.output


type Dilation2DBackpropInput*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"Dilation2DBackpropInput/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidilation2DBackpropInput[oT: oall](scope: Scope,
                              input: oT,
                              filter: oT,
                              out_backprop: oT,
                              strides: ArraySlice[int],
                              rates: ArraySlice[int],
                              padding: cstring,
                              T: DType): Dilation2DBackpropInput[oT] {.header:"../../ops/nn/nn.h", importcpp:"Dilation2DBackpropInput(*#, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc dilation2DBackpropInput*[oT: oall](scope: Scope,
                              input: oT,
                              filter: oT,
                              out_backprop: oT,
                              strides: openArray[int],
                              rates: openArray[int],
                              padding: cstring): Dilation2DBackpropInput[oT] =
  return iidilation2DBackpropInput(scope,
                                   input,
                                   filter,
                                   out_backprop,
                                   newArraySlice(strides),
                                   newArraySlice(rates),
                                   padding,
                                   oT[].oTF)

converter dilation2DBackpropInputToOut*[oT: oall](op: Dilation2DBackpropInput[oT]): oT {.inline.} = return op.output


type FractionalAvgPool*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"FractionalAvgPool/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifractionalAvgPool[oT: oall](scope: Scope,
                        value: oT,
                        pooling_ratio: ArraySlice[float32],
                        pseudo_random: bool,
                        overlapping: bool,
                        deterministic: bool,
                        seed: int64,
                        seed2: int64,
                        T: DType): FractionalAvgPool[oT] {.header:"../../ops/nn/nn.h", importcpp:"FractionalAvgPool(*#, #, #, #, #, #, #, #, #)", constructor.}

proc fractionalAvgPool*[oT: oall](scope: Scope,
                        value: oT,
                        pooling_ratio: openArray[float32],
                        pseudo_random: bool = false,
                        overlapping: bool = false,
                        deterministic: bool = false,
                        seed: int64 = 0.int,
                        seed2: int64 = 0.int): FractionalAvgPool[oT] =
  return iifractionalAvgPool(scope,
                             value,
                             newArraySlice(pooling_ratio),
                             pseudo_random,
                             overlapping,
                             deterministic,
                             seed,
                             seed2,
                             oT[].oTF)

converter fractionalAvgPoolToOut*[oT: oall](op: FractionalAvgPool[oT]): oT {.inline.} = return op.output


type FractionalAvgPoolGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"FractionalAvgPoolGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifractionalAvgPoolGrad[oT: oall](scope: Scope,
                            orig_input_tensor_shape: oint64,
                            out_backprop: oT,
                            row_pooling_sequence: oint64,
                            col_pooling_sequence: oint64,
                            overlapping: bool,
                            T: DType): FractionalAvgPoolGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"FractionalAvgPoolGrad(*#, #, #, #, #, #, #)", constructor.}

proc fractionalAvgPoolGrad*[oT: oall](scope: Scope,
                            orig_input_tensor_shape: oint64,
                            out_backprop: oT,
                            row_pooling_sequence: oint64,
                            col_pooling_sequence: oint64,
                            overlapping: bool = false): FractionalAvgPoolGrad[oT] =
  return iifractionalAvgPoolGrad(scope,
                                 orig_input_tensor_shape,
                                 out_backprop,
                                 row_pooling_sequence,
                                 col_pooling_sequence,
                                 overlapping,
                                 oT[].oTF)

converter fractionalAvgPoolGradToOut*[oT: oall](op: FractionalAvgPoolGrad[oT]): oT {.inline.} = return op.output


type FractionalMaxPool*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"FractionalMaxPool/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifractionalMaxPool[oT: oall](scope: Scope,
                        value: oT,
                        pooling_ratio: ArraySlice[float32],
                        pseudo_random: bool,
                        overlapping: bool,
                        deterministic: bool,
                        seed: int64,
                        seed2: int64,
                        T: DType): FractionalMaxPool[oT] {.header:"../../ops/nn/nn.h", importcpp:"FractionalMaxPool(*#, #, #, #, #, #, #, #, #)", constructor.}

proc fractionalMaxPool*[oT: oall](scope: Scope,
                        value: oT,
                        pooling_ratio: openArray[float32],
                        pseudo_random: bool = false,
                        overlapping: bool = false,
                        deterministic: bool = false,
                        seed: int64 = 0.int,
                        seed2: int64 = 0.int): FractionalMaxPool[oT] =
  return iifractionalMaxPool(scope,
                             value,
                             newArraySlice(pooling_ratio),
                             pseudo_random,
                             overlapping,
                             deterministic,
                             seed,
                             seed2,
                             oT[].oTF)

converter fractionalMaxPoolToOut*[oT: oall](op: FractionalMaxPool[oT]): oT {.inline.} = return op.output


type FractionalMaxPoolGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"FractionalMaxPoolGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifractionalMaxPoolGrad[oT: oall](scope: Scope,
                            orig_input: oT,
                            orig_output: oT,
                            out_backprop: oT,
                            row_pooling_sequence: oint64,
                            col_pooling_sequence: oint64,
                            overlapping: bool,
                            T: DType): FractionalMaxPoolGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"FractionalMaxPoolGrad(*#, #, #, #, #, #, #, #)", constructor.}

proc fractionalMaxPoolGrad*[oT: oall](scope: Scope,
                            orig_input: oT,
                            orig_output: oT,
                            out_backprop: oT,
                            row_pooling_sequence: oint64,
                            col_pooling_sequence: oint64,
                            overlapping: bool = false): FractionalMaxPoolGrad[oT] =
  return iifractionalMaxPoolGrad(scope,
                                 orig_input,
                                 orig_output,
                                 out_backprop,
                                 row_pooling_sequence,
                                 col_pooling_sequence,
                                 overlapping,
                                 oT[].oTF)

converter fractionalMaxPoolGradToOut*[oT: oall](op: FractionalMaxPoolGrad[oT]): oT {.inline.} = return op.output


type FusedBatchNorm*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"FusedBatchNorm/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifusedBatchNorm[oT: oall](scope: Scope,
                     x: oT,
                     scale: oT,
                     offset: oT,
                     mean: oT,
                     variance: oT,
                     T: DType,
                     epsilon: float32,
                     data_format: cstring,
                     is_training: bool): FusedBatchNorm[oT] {.header:"../../ops/nn/nn.h", importcpp:"FusedBatchNorm(*#, #, #, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc fusedBatchNorm*[oT: oall](scope: Scope,
                     x: oT,
                     scale: oT,
                     offset: oT,
                     mean: oT,
                     variance: oT,
                     epsilon: float32 = 9.999999747378752e-05.float32,
                     data_format: cstring = "NHWC",
                     is_training: bool = true): FusedBatchNorm[oT] =
  return iifusedBatchNorm(scope,
                          x,
                          scale,
                          offset,
                          mean,
                          variance,
                          oT[].oTF,
                          epsilon,
                          data_format,
                          is_training)

converter fusedBatchNormToOut*[oT: oall](op: FusedBatchNorm[oT]): oT {.inline.} = return op.output

type FusedBatchNormV2U* = ofloat

type FusedBatchNormV2*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"FusedBatchNormV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifusedBatchNormV2[oT: oall](scope: Scope,
                       x: oT,
                       scale: FusedBatchNormV2U,
                       offset: FusedBatchNormV2U,
                       mean: FusedBatchNormV2U,
                       variance: FusedBatchNormV2U,
                       T: DType,
                       is_training: bool,
                       epsilon: float32,
                       data_format: cstring): FusedBatchNormV2[oT] {.header:"../../ops/nn/nn.h", importcpp:"FusedBatchNormV2(*#, #, #, #, #, #, #, #, #, tensorflow::string(#))", constructor.}

proc fusedBatchNormV2*[oT: oall](scope: Scope,
                       x: oT,
                       scale: FusedBatchNormV2U,
                       offset: FusedBatchNormV2U,
                       mean: FusedBatchNormV2U,
                       variance: FusedBatchNormV2U,
                       is_training: bool = true,
                       epsilon: float32 = 9.999999747378752e-05.float32,
                       data_format: cstring = "NHWC"): FusedBatchNormV2[oT] =
  return iifusedBatchNormV2(scope,
                            x,
                            scale,
                            offset,
                            mean,
                            variance,
                            oT[].oTF,
                            is_training,
                            epsilon,
                            data_format)

converter fusedBatchNormV2ToOut*[oT: oall](op: FusedBatchNormV2[oT]): oT {.inline.} = return op.output


type FusedPadConv2D*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"FusedPadConv2D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifusedPadConv2D[oT: oall](scope: Scope,
                     input: oT,
                     paddings: oint32,
                     filter: oT,
                     mode: cstring,
                     strides: ArraySlice[int],
                     padding: cstring,
                     T: DType): FusedPadConv2D[oT] {.header:"../../ops/nn/nn.h", importcpp:"FusedPadConv2D(*#, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc fusedPadConv2D*[oT: oall](scope: Scope,
                     input: oT,
                     paddings: oint32,
                     filter: oT,
                     mode: cstring,
                     strides: openArray[int],
                     padding: cstring): FusedPadConv2D[oT] =
  return iifusedPadConv2D(scope,
                          input,
                          paddings,
                          filter,
                          mode,
                          newArraySlice(strides),
                          padding,
                          oT[].oTF)

converter fusedPadConv2DToOut*[oT: oall](op: FusedPadConv2D[oT]): oT {.inline.} = return op.output


type FusedResizeAndPadConv2D*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"FusedResizeAndPadConv2D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifusedResizeAndPadConv2D[oT: oall](scope: Scope,
                              input: oT,
                              size: oint32,
                              paddings: oint32,
                              filter: oT,
                              mode: cstring,
                              strides: ArraySlice[int],
                              padding: cstring,
                              T: DType,
                              resize_align_corners: bool): FusedResizeAndPadConv2D[oT] {.header:"../../ops/nn/nn.h", importcpp:"FusedResizeAndPadConv2D(*#, #, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #, #)", constructor.}

proc fusedResizeAndPadConv2D*[oT: oall](scope: Scope,
                              input: oT,
                              size: oint32,
                              paddings: oint32,
                              filter: oT,
                              mode: cstring,
                              strides: openArray[int],
                              padding: cstring,
                              resize_align_corners: bool = false): FusedResizeAndPadConv2D[oT] =
  return iifusedResizeAndPadConv2D(scope,
                                   input,
                                   size,
                                   paddings,
                                   filter,
                                   mode,
                                   newArraySlice(strides),
                                   padding,
                                   oT[].oTF,
                                   resize_align_corners)

converter fusedResizeAndPadConv2DToOut*[oT: oall](op: FusedResizeAndPadConv2D[oT]): oT {.inline.} = return op.output


type GenerateVocabRemapping* {.header:"../../ops/nn/nn.h", importcpp:"GenerateVocabRemapping/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iigenerateVocabRemapping(scope: Scope,
                             new_vocab_file: ostring,
                             old_vocab_file: ostring,
                             new_vocab_offset: int64,
                             num_new_vocab: int64,
                             old_vocab_size: int64): GenerateVocabRemapping {.header:"../../ops/nn/nn.h", importcpp:"GenerateVocabRemapping(*#, #, #, #, #, #)", constructor.}

proc generateVocabRemapping*(scope: Scope,
                             new_vocab_file: ostring,
                             old_vocab_file: ostring,
                             new_vocab_offset: int64 = 0.int,
                             num_new_vocab: int64 = 0.int,
                             old_vocab_size: int64 = -1.int): GenerateVocabRemapping =
  return iigenerateVocabRemapping(scope,
                                  new_vocab_file,
                                  old_vocab_file,
                                  new_vocab_offset,
                                  num_new_vocab,
                                  old_vocab_size)

converter generateVocabRemappingToOut*(op: GenerateVocabRemapping): oint64 {.inline.} = return op.output


type LRN*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"LRN/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilRN[oT: oall](scope: Scope,
          input: oT,
          depth_radius: int64,
          bias: float32,
          alpha: float32,
          beta: float32,
          T: DType): LRN[oT] {.header:"../../ops/nn/nn.h", importcpp:"LRN(*#, #, #, #, #, #, #)", constructor.}

proc lRN*[oT: oall](scope: Scope,
          input: oT,
          depth_radius: int64 = 5.int,
          bias: float32 = 1.0.float32,
          alpha: float32 = 1.0.float32,
          beta: float32 = 0.5.float32): LRN[oT] =
  return iilRN(scope,
               input,
               depth_radius,
               bias,
               alpha,
               beta,
               oT[].oTF)

converter lRNToOut*[oT: oall](op: LRN[oT]): oT {.inline.} = return op.output


type LRNGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"LRNGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilRNGrad[oT: oall](scope: Scope,
              input_grads: oT,
              input_image: oT,
              output_image: oT,
              depth_radius: int64,
              bias: float32,
              alpha: float32,
              beta: float32,
              T: DType): LRNGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"LRNGrad(*#, #, #, #, #, #, #, #, #)", constructor.}

proc lRNGrad*[oT: oall](scope: Scope,
              input_grads: oT,
              input_image: oT,
              output_image: oT,
              depth_radius: int64 = 5.int,
              bias: float32 = 1.0.float32,
              alpha: float32 = 1.0.float32,
              beta: float32 = 0.5.float32): LRNGrad[oT] =
  return iilRNGrad(scope,
                   input_grads,
                   input_image,
                   output_image,
                   depth_radius,
                   bias,
                   alpha,
                   beta,
                   oT[].oTF)

converter lRNGradToOut*[oT: oall](op: LRNGrad[oT]): oT {.inline.} = return op.output


type MaxPool*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPool/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPool[oT: oall](scope: Scope,
              input: oT,
              ksize: ArraySlice[int],
              strides: ArraySlice[int],
              padding: cstring,
              T: DType,
              data_format: cstring): MaxPool[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPool(*#, #, #, #, tensorflow::string(#), #, tensorflow::string(#))", constructor.}

proc maxPool*[oT: oall](scope: Scope,
              input: oT,
              ksize: openArray[int],
              strides: openArray[int],
              padding: cstring,
              data_format: cstring = "NHWC"): MaxPool[oT] =
  return iimaxPool(scope,
                   input,
                   newArraySlice(ksize),
                   newArraySlice(strides),
                   padding,
                   oT[].oTF,
                   data_format)

converter maxPoolToOut*[oT: oall](op: MaxPool[oT]): oT {.inline.} = return op.output


type MaxPool3D*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPool3D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPool3D[oT: oall](scope: Scope,
                input: oT,
                ksize: ArraySlice[int],
                strides: ArraySlice[int],
                padding: cstring,
                data_format: cstring,
                T: DType): MaxPool3D[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPool3D(*#, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc maxPool3D*[oT: oall](scope: Scope,
                input: oT,
                ksize: openArray[int],
                strides: openArray[int],
                padding: cstring,
                data_format: cstring = "NDHWC"): MaxPool3D[oT] =
  return iimaxPool3D(scope,
                     input,
                     newArraySlice(ksize),
                     newArraySlice(strides),
                     padding,
                     data_format,
                     oT[].oTF)

converter maxPool3DToOut*[oT: oall](op: MaxPool3D[oT]): oT {.inline.} = return op.output

type MaxPool3DGradTInput* = ohalf | obfloat16 | ofloat

type MaxPool3DGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPool3DGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPool3DGrad[oT: oall](scope: Scope,
                    orig_input: MaxPool3DGradTInput,
                    orig_output: MaxPool3DGradTInput,
                    grad: oT,
                    ksize: ArraySlice[int],
                    strides: ArraySlice[int],
                    padding: cstring,
                    data_format: cstring,
                    T: DType): MaxPool3DGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPool3DGrad(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc maxPool3DGrad*[oT: oall](scope: Scope,
                    orig_input: MaxPool3DGradTInput,
                    orig_output: MaxPool3DGradTInput,
                    grad: oT,
                    ksize: openArray[int],
                    strides: openArray[int],
                    padding: cstring,
                    data_format: cstring = "NDHWC"): MaxPool3DGrad[oT] =
  return iimaxPool3DGrad(scope,
                         orig_input,
                         orig_output,
                         grad,
                         newArraySlice(ksize),
                         newArraySlice(strides),
                         padding,
                         data_format,
                         oT[].oTF)

converter maxPool3DGradToOut*[oT: oall](op: MaxPool3DGrad[oT]): oT {.inline.} = return op.output


type MaxPool3DGradGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPool3DGradGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPool3DGradGrad[oT: oall](scope: Scope,
                        orig_input: oT,
                        orig_output: oT,
                        grad: oT,
                        ksize: ArraySlice[int],
                        strides: ArraySlice[int],
                        padding: cstring,
                        data_format: cstring,
                        T: DType): MaxPool3DGradGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPool3DGradGrad(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc maxPool3DGradGrad*[oT: oall](scope: Scope,
                        orig_input: oT,
                        orig_output: oT,
                        grad: oT,
                        ksize: openArray[int],
                        strides: openArray[int],
                        padding: cstring,
                        data_format: cstring = "NDHWC"): MaxPool3DGradGrad[oT] =
  return iimaxPool3DGradGrad(scope,
                             orig_input,
                             orig_output,
                             grad,
                             newArraySlice(ksize),
                             newArraySlice(strides),
                             padding,
                             data_format,
                             oT[].oTF)

converter maxPool3DGradGradToOut*[oT: oall](op: MaxPool3DGradGrad[oT]): oT {.inline.} = return op.output


type MaxPoolGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPoolGrad[oT: oall](scope: Scope,
                  orig_input: oT,
                  orig_output: oT,
                  grad: oT,
                  ksize: ArraySlice[int],
                  strides: ArraySlice[int],
                  padding: cstring,
                  data_format: cstring,
                  T: DType): MaxPoolGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGrad(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc maxPoolGrad*[oT: oall](scope: Scope,
                  orig_input: oT,
                  orig_output: oT,
                  grad: oT,
                  ksize: openArray[int],
                  strides: openArray[int],
                  padding: cstring,
                  data_format: cstring = "NHWC"): MaxPoolGrad[oT] =
  return iimaxPoolGrad(scope,
                       orig_input,
                       orig_output,
                       grad,
                       newArraySlice(ksize),
                       newArraySlice(strides),
                       padding,
                       data_format,
                       oT[].oTF)

converter maxPoolGradToOut*[oT: oall](op: MaxPoolGrad[oT]): oT {.inline.} = return op.output


type MaxPoolGradGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPoolGradGrad[oT: oall](scope: Scope,
                      orig_input: oT,
                      orig_output: oT,
                      grad: oT,
                      ksize: ArraySlice[int],
                      strides: ArraySlice[int],
                      padding: cstring,
                      data_format: cstring,
                      T: DType): MaxPoolGradGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradGrad(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc maxPoolGradGrad*[oT: oall](scope: Scope,
                      orig_input: oT,
                      orig_output: oT,
                      grad: oT,
                      ksize: openArray[int],
                      strides: openArray[int],
                      padding: cstring,
                      data_format: cstring = "NHWC"): MaxPoolGradGrad[oT] =
  return iimaxPoolGradGrad(scope,
                           orig_input,
                           orig_output,
                           grad,
                           newArraySlice(ksize),
                           newArraySlice(strides),
                           padding,
                           data_format,
                           oT[].oTF)

converter maxPoolGradGradToOut*[oT: oall](op: MaxPoolGradGrad[oT]): oT {.inline.} = return op.output


type MaxPoolGradGradV2*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradGradV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPoolGradGradV2[oT: oall](scope: Scope,
                        orig_input: oT,
                        orig_output: oT,
                        grad: oT,
                        ksize: oint32,
                        strides: oint32,
                        padding: cstring,
                        data_format: cstring,
                        T: DType): MaxPoolGradGradV2[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradGradV2(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc maxPoolGradGradV2*[oT: oall](scope: Scope,
                        orig_input: oT,
                        orig_output: oT,
                        grad: oT,
                        ksize: oint32,
                        strides: oint32,
                        padding: cstring,
                        data_format: cstring = "NHWC"): MaxPoolGradGradV2[oT] =
  return iimaxPoolGradGradV2(scope,
                             orig_input,
                             orig_output,
                             grad,
                             ksize,
                             strides,
                             padding,
                             data_format,
                             oT[].oTF)

converter maxPoolGradGradV2ToOut*[oT: oall](op: MaxPoolGradGradV2[oT]): oT {.inline.} = return op.output

type MaxPoolGradGradWithArgmaxTargmax* = oint32 | oint64

type MaxPoolGradGradWithArgmax*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradGradWithArgmax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPoolGradGradWithArgmax[oT: oall](scope: Scope,
                                input: oT,
                                grad: oT,
                                argmax: MaxPoolGradGradWithArgmaxTargmax,
                                ksize: ArraySlice[int],
                                strides: ArraySlice[int],
                                padding: cstring,
                                T: DType): MaxPoolGradGradWithArgmax[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradGradWithArgmax(*#, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc maxPoolGradGradWithArgmax*[oT: oall](scope: Scope,
                                input: oT,
                                grad: oT,
                                argmax: MaxPoolGradGradWithArgmaxTargmax,
                                ksize: openArray[int],
                                strides: openArray[int],
                                padding: cstring): MaxPoolGradGradWithArgmax[oT] =
  return iimaxPoolGradGradWithArgmax(scope,
                                     input,
                                     grad,
                                     argmax,
                                     newArraySlice(ksize),
                                     newArraySlice(strides),
                                     padding,
                                     oT[].oTF)

converter maxPoolGradGradWithArgmaxToOut*[oT: oall](op: MaxPoolGradGradWithArgmax[oT]): oT {.inline.} = return op.output


type MaxPoolGradV2*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPoolGradV2[oT: oall](scope: Scope,
                    orig_input: oT,
                    orig_output: oT,
                    grad: oT,
                    ksize: oint32,
                    strides: oint32,
                    padding: cstring,
                    data_format: cstring,
                    T: DType): MaxPoolGradV2[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradV2(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc maxPoolGradV2*[oT: oall](scope: Scope,
                    orig_input: oT,
                    orig_output: oT,
                    grad: oT,
                    ksize: oint32,
                    strides: oint32,
                    padding: cstring,
                    data_format: cstring = "NHWC"): MaxPoolGradV2[oT] =
  return iimaxPoolGradV2(scope,
                         orig_input,
                         orig_output,
                         grad,
                         ksize,
                         strides,
                         padding,
                         data_format,
                         oT[].oTF)

converter maxPoolGradV2ToOut*[oT: oall](op: MaxPoolGradV2[oT]): oT {.inline.} = return op.output

type MaxPoolGradWithArgmaxTargmax* = oint32 | oint64

type MaxPoolGradWithArgmax*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradWithArgmax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPoolGradWithArgmax[oT: oall](scope: Scope,
                            input: oT,
                            grad: oT,
                            argmax: MaxPoolGradWithArgmaxTargmax,
                            ksize: ArraySlice[int],
                            strides: ArraySlice[int],
                            padding: cstring,
                            T: DType): MaxPoolGradWithArgmax[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolGradWithArgmax(*#, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc maxPoolGradWithArgmax*[oT: oall](scope: Scope,
                            input: oT,
                            grad: oT,
                            argmax: MaxPoolGradWithArgmaxTargmax,
                            ksize: openArray[int],
                            strides: openArray[int],
                            padding: cstring): MaxPoolGradWithArgmax[oT] =
  return iimaxPoolGradWithArgmax(scope,
                                 input,
                                 grad,
                                 argmax,
                                 newArraySlice(ksize),
                                 newArraySlice(strides),
                                 padding,
                                 oT[].oTF)

converter maxPoolGradWithArgmaxToOut*[oT: oall](op: MaxPoolGradWithArgmax[oT]): oT {.inline.} = return op.output


type MaxPoolV2*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPoolV2[oT: oall](scope: Scope,
                input: oT,
                ksize: oint32,
                strides: oint32,
                padding: cstring,
                T: DType,
                data_format: cstring): MaxPoolV2[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolV2(*#, #, #, #, tensorflow::string(#), #, tensorflow::string(#))", constructor.}

proc maxPoolV2*[oT: oall](scope: Scope,
                input: oT,
                ksize: oint32,
                strides: oint32,
                padding: cstring,
                data_format: cstring = "NHWC"): MaxPoolV2[oT] =
  return iimaxPoolV2(scope,
                     input,
                     ksize,
                     strides,
                     padding,
                     oT[].oTF,
                     data_format)

converter maxPoolV2ToOut*[oT: oall](op: MaxPoolV2[oT]): oT {.inline.} = return op.output


type MaxPoolWithArgmax*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolWithArgmax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaxPoolWithArgmax[oT: oall](scope: Scope,
                        input: oT,
                        ksize: ArraySlice[int],
                        strides: ArraySlice[int],
                        padding: cstring,
                        Targmax: DType,
                        T: DType): MaxPoolWithArgmax[oT] {.header:"../../ops/nn/nn.h", importcpp:"MaxPoolWithArgmax(*#, #, #, #, tensorflow::string(#), #, #)", constructor.}

proc maxPoolWithArgmax*[oT: oall](scope: Scope,
                        input: oT,
                        ksize: openArray[int],
                        strides: openArray[int],
                        padding: cstring,
                        Targmax: type(oint32) | type(oint64) = oint64): MaxPoolWithArgmax[oT] =
  return iimaxPoolWithArgmax(scope,
                             input,
                             newArraySlice(ksize),
                             newArraySlice(strides),
                             padding,
                             oT[].oTF,
                             oT[].oTF)

converter maxPoolWithArgmaxToOut*[oT: oall](op: MaxPoolWithArgmax[oT]): oT {.inline.} = return op.output

type MirrorPadGradTpaddings* = oint32 | oint64

type MirrorPadGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"MirrorPadGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimirrorPadGrad[oT: oall](scope: Scope,
                    input: oT,
                    paddings: MirrorPadGradTpaddings,
                    mode: cstring,
                    T: DType): MirrorPadGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"MirrorPadGrad(*#, #, #, tensorflow::string(#), #)", constructor.}

proc mirrorPadGrad*[oT: oall](scope: Scope,
                    input: oT,
                    paddings: MirrorPadGradTpaddings,
                    mode: cstring): MirrorPadGrad[oT] =
  return iimirrorPadGrad(scope,
                         input,
                         paddings,
                         mode,
                         oT[].oTF)

converter mirrorPadGradToOut*[oT: oall](op: MirrorPadGrad[oT]): oT {.inline.} = return op.output


type NegTrain*{.header:"../../ops/nn/nn.h", importcpp:"NegTrain/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iinegTrain(scope: Scope,
               w_in: ofloat,
               w_out: ofloat,
               examples: oint32,
               labels: oint32,
               lr: ofloat,
               vocab_count: ArraySlice[int],
               num_negative_samples: int64): NegTrain {.header:"../../ops/nn/nn.h", importcpp:"NegTrain(*#, #, #, #, #, #, #, #)", constructor.}

proc negTrain*(scope: Scope,
               w_in: ofloat,
               w_out: ofloat,
               examples: oint32,
               labels: oint32,
               lr: ofloat,
               vocab_count: openArray[int],
               num_negative_samples: int64 = 0.int): NegTrain =
  return iinegTrain(scope,
                    w_in,
                    w_out,
                    examples,
                    labels,
                    lr,
                    newArraySlice(vocab_count),
                    num_negative_samples)


type QuantizedAvgPool*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedAvgPool/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedAvgPool[oT: oall](scope: Scope,
                       input: oT,
                       min_input: ofloat,
                       max_input: ofloat,
                       ksize: ArraySlice[int],
                       strides: ArraySlice[int],
                       padding: cstring,
                       T: DType): QuantizedAvgPool[oT] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedAvgPool(*#, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc quantizedAvgPool*[oT: oall](scope: Scope,
                       input: oT,
                       min_input: ofloat,
                       max_input: ofloat,
                       ksize: openArray[int],
                       strides: openArray[int],
                       padding: cstring): QuantizedAvgPool[oT] =
  return iiquantizedAvgPool(scope,
                            input,
                            min_input,
                            max_input,
                            newArraySlice(ksize),
                            newArraySlice(strides),
                            padding,
                            oT[].oTF)

converter quantizedAvgPoolToOut*[oT: oall](op: QuantizedAvgPool[oT]): oT {.inline.} = return op.output

type QuantizedBatchNormWithGlobalNormalizationTinput* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedBatchNormWithGlobalNormalization*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedBatchNormWithGlobalNormalization/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedBatchNormWithGlobalNormalization[oT: oall](scope: Scope,
                                                t: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                t_min: ofloat,
                                                t_max: ofloat,
                                                m: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                m_min: ofloat,
                                                m_max: ofloat,
                                                v: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                v_min: ofloat,
                                                v_max: ofloat,
                                                beta: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                beta_min: ofloat,
                                                beta_max: ofloat,
                                                gamma: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                gamma_min: ofloat,
                                                gamma_max: ofloat,
                                                scale_after_normalization: bool,
                                                out_type: DType,
                                                variance_epsilon: float32,
                                                explicitT: type(oT)): QuantizedBatchNormWithGlobalNormalization[oT] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedBatchNormWithGlobalNormalization(*#, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc quantizedBatchNormWithGlobalNormalization*(scope: Scope,
                                                t: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                t_min: ofloat,
                                                t_max: ofloat,
                                                m: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                m_min: ofloat,
                                                m_max: ofloat,
                                                v: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                v_min: ofloat,
                                                v_max: ofloat,
                                                beta: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                beta_min: ofloat,
                                                beta_max: ofloat,
                                                gamma: QuantizedBatchNormWithGlobalNormalizationTinput,
                                                gamma_min: ofloat,
                                                gamma_max: ofloat,
                                                scale_after_normalization: bool = false,
                                                out_type: type = oinvalid,
                                                variance_epsilon: float32 = 0.0.float32): auto =
  return iiquantizedBatchNormWithGlobalNormalization(scope,
                                                     t,
                                                     t_min,
                                                     t_max,
                                                     m,
                                                     m_min,
                                                     m_max,
                                                     v,
                                                     v_min,
                                                     v_max,
                                                     beta,
                                                     beta_min,
                                                     beta_max,
                                                     gamma,
                                                     gamma_min,
                                                     gamma_max,
                                                     scale_after_normalization,
                                                     out_type[].oTF,
                                                     variance_epsilon,
                                                     out_type)

converter quantizedBatchNormWithGlobalNormalizationToOut*[oT: oall](op: QuantizedBatchNormWithGlobalNormalization[oT]): oT {.inline.} = return op.output

type QuantizedBiasAddT1* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16
type QuantizedBiasAddT2* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedBiasAdd*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedBiasAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedBiasAdd[oT: oall](scope: Scope,
                       input: QuantizedBiasAddT1,
                       bias: QuantizedBiasAddT2,
                       min_input: ofloat,
                       max_input: ofloat,
                       min_bias: ofloat,
                       max_bias: ofloat,
                       out_type: DType,
                       explicitT: type(oT)): QuantizedBiasAdd[oT] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedBiasAdd(*#, #, #, #, #, #, #, #)", constructor.}

proc quantizedBiasAdd*(scope: Scope,
                       input: QuantizedBiasAddT1,
                       bias: QuantizedBiasAddT2,
                       min_input: ofloat,
                       max_input: ofloat,
                       min_bias: ofloat,
                       max_bias: ofloat,
                       out_type: type = oinvalid): auto =
  return iiquantizedBiasAdd(scope,
                            input,
                            bias,
                            min_input,
                            max_input,
                            min_bias,
                            max_bias,
                            out_type[].oTF,
                            out_type)

converter quantizedBiasAddToOut*[oT: oall](op: QuantizedBiasAdd[oT]): oT {.inline.} = return op.output

type QuantizedConv2DTinput* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16
type QuantizedConv2DTfilter* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedConv2D*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedConv2D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedConv2D[oT: oall](scope: Scope,
                      input: QuantizedConv2DTinput,
                      filter: QuantizedConv2DTfilter,
                      min_input: ofloat,
                      max_input: ofloat,
                      min_filter: ofloat,
                      max_filter: ofloat,
                      strides: ArraySlice[int],
                      padding: cstring,
                      dilations: ArraySlice[int],
                      out_type: DType,
                      explicitT: type(oT)): QuantizedConv2D[oT] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedConv2D(*#, #, #, #, #, #, #, #, tensorflow::string(#), #, #)", constructor.}

proc quantizedConv2D*(scope: Scope,
                      input: QuantizedConv2DTinput,
                      filter: QuantizedConv2DTfilter,
                      min_input: ofloat,
                      max_input: ofloat,
                      min_filter: ofloat,
                      max_filter: ofloat,
                      strides: openArray[int],
                      padding: cstring,
                      dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int],
                      out_type: type = oqint32): auto =
  return iiquantizedConv2D(scope,
                           input,
                           filter,
                           min_input,
                           max_input,
                           min_filter,
                           max_filter,
                           newArraySlice(strides),
                           padding,
                           newArraySlice(dilations),
                           out_type[].oTF,
                           out_type)

converter quantizedConv2DToOut*[oT: oall](op: QuantizedConv2D[oT]): oT {.inline.} = return op.output


type QuantizedMaxPool*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedMaxPool/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedMaxPool[oT: oall](scope: Scope,
                       input: oT,
                       min_input: ofloat,
                       max_input: ofloat,
                       ksize: ArraySlice[int],
                       strides: ArraySlice[int],
                       padding: cstring,
                       T: DType): QuantizedMaxPool[oT] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedMaxPool(*#, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc quantizedMaxPool*[oT: oall](scope: Scope,
                       input: oT,
                       min_input: ofloat,
                       max_input: ofloat,
                       ksize: openArray[int],
                       strides: openArray[int],
                       padding: cstring): QuantizedMaxPool[oT] =
  return iiquantizedMaxPool(scope,
                            input,
                            min_input,
                            max_input,
                            newArraySlice(ksize),
                            newArraySlice(strides),
                            padding,
                            oT[].oTF)

converter quantizedMaxPoolToOut*[oT: oall](op: QuantizedMaxPool[oT]): oT {.inline.} = return op.output

type QuantizedRelu6Tinput* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedRelu6*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedRelu6/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedRelu6[oT: oall](scope: Scope,
                     features: QuantizedRelu6Tinput,
                     min_features: ofloat,
                     max_features: ofloat,
                     out_type: DType,
                     explicitT: type(oT)): QuantizedRelu6[oT] {.header:"../../ops/nn/nn.h", importcpp:"QuantizedRelu6(*#, #, #, #, #)", constructor.}

proc quantizedRelu6*(scope: Scope,
                     features: QuantizedRelu6Tinput,
                     min_features: ofloat,
                     max_features: ofloat,
                     out_type: type = oquint8): auto =
  return iiquantizedRelu6(scope,
                          features,
                          min_features,
                          max_features,
                          out_type[].oTF,
                          out_type)

converter quantizedRelu6ToOut*[oT: oall](op: QuantizedRelu6[oT]): oT {.inline.} = return op.output


type SeluGrad*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"SeluGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiseluGrad[oT: oall](scope: Scope,
               gradients: oT,
               outputs: oT,
               T: DType): SeluGrad[oT] {.header:"../../ops/nn/nn.h", importcpp:"SeluGrad(*#, #, #, #)", constructor.}

proc seluGrad*[oT: oall](scope: Scope,
               gradients: oT,
               outputs: oT): SeluGrad[oT] =
  return iiseluGrad(scope,
                    gradients,
                    outputs,
                    oT[].oTF)

converter seluGradToOut*[oT: oall](op: SeluGrad[oT]): oT {.inline.} = return op.output

type SparseSoftmaxCrossEntropyWithLogitsTlabels* = oint32 | oint64

type SparseSoftmaxCrossEntropyWithLogits*[oT:oall] {.header:"../../ops/nn/nn.h", importcpp:"SparseSoftmaxCrossEntropyWithLogits/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSoftmaxCrossEntropyWithLogits[oT: oall](scope: Scope,
                                          features: oT,
                                          labels: SparseSoftmaxCrossEntropyWithLogitsTlabels,
                                          T: DType): SparseSoftmaxCrossEntropyWithLogits[oT] {.header:"../../ops/nn/nn.h", importcpp:"SparseSoftmaxCrossEntropyWithLogits(*#, #, #, #)", constructor.}

proc sparseSoftmaxCrossEntropyWithLogits*[oT: oall](scope: Scope,
                                          features: oT,
                                          labels: SparseSoftmaxCrossEntropyWithLogitsTlabels): SparseSoftmaxCrossEntropyWithLogits[oT] =
  return iisparseSoftmaxCrossEntropyWithLogits(scope,
                                               features,
                                               labels,
                                               oT[].oTF)

converter sparseSoftmaxCrossEntropyWithLogitsToOut*[oT: oall](op: SparseSoftmaxCrossEntropyWithLogits[oT]): oT {.inline.} = return op.output

