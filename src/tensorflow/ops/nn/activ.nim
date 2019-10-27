import ../../core

{.compile:"activ/activ.cc".}


type Elu*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Elu/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iielu[oT: oall](scope: Scope,
          features: oT,
          T: DType): Elu[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Elu(*#, #, #)", constructor.}

proc elu*[oT: oall](scope: Scope,
          features: oT): Elu[oT] =
  return iielu(scope,
               features,
               oT.oTF)

converter eluToOut*[oT: oall](op: Elu[oT]): oT {.inline.} = return op.output


type EluGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"EluGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iieluGrad[oT: oall](scope: Scope,
              gradients: oT,
              outputs: oT,
              T: DType): EluGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"EluGrad(*#, #, #, #)", constructor.}

proc eluGrad*[oT: oall](scope: Scope,
              gradients: oT,
              outputs: oT): EluGrad[oT] =
  return iieluGrad(scope,
                   gradients,
                   outputs,
                   oT.oTF)

converter eluGradToOut*[oT: oall](op: EluGrad[oT]): oT {.inline.} = return op.output


type LeakyRelu*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"LeakyRelu/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iileakyRelu[oT: oall](scope: Scope,
                features: oT,
                alpha: float32,
                T: DType): LeakyRelu[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"LeakyRelu(*#, #, #, #)", constructor.}

proc leakyRelu*[oT: oall](scope: Scope,
                features: oT,
                alpha: float32 = 0.2000000029802322.float32): LeakyRelu[oT] =
  return iileakyRelu(scope,
                     features,
                     alpha,
                     oT.oTF)

converter leakyReluToOut*[oT: oall](op: LeakyRelu[oT]): oT {.inline.} = return op.output


type LeakyReluGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"LeakyReluGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iileakyReluGrad[oT: oall](scope: Scope,
                    gradients: oT,
                    features: oT,
                    alpha: float32,
                    T: DType): LeakyReluGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"LeakyReluGrad(*#, #, #, #, #)", constructor.}

proc leakyReluGrad*[oT: oall](scope: Scope,
                    gradients: oT,
                    features: oT,
                    alpha: float32 = 0.2000000029802322.float32): LeakyReluGrad[oT] =
  return iileakyReluGrad(scope,
                         gradients,
                         features,
                         alpha,
                         oT.oTF)

converter leakyReluGradToOut*[oT: oall](op: LeakyReluGrad[oT]): oT {.inline.} = return op.output


type LogSoftmax*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"LogSoftmax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilogSoftmax[oT: oall](scope: Scope,
                 logits: oT,
                 T: DType): LogSoftmax[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"LogSoftmax(*#, #, #)", constructor.}

proc logSoftmax*[oT: oall](scope: Scope,
                 logits: oT): LogSoftmax[oT] =
  return iilogSoftmax(scope,
                      logits,
                      oT.oTF)

converter logSoftmaxToOut*[oT: oall](op: LogSoftmax[oT]): oT {.inline.} = return op.output

type QuantizedReluTinput* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedRelu*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"QuantizedRelu/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedRelu[oT: oall](scope: Scope,
                    features: QuantizedReluTinput,
                    min_features: ofloat,
                    max_features: ofloat,
                    out_type: DType,
                    explicitT: type(oT)): QuantizedRelu[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"QuantizedRelu(*#, #, #, #, #)", constructor.}

proc quantizedRelu*(scope: Scope,
                    features: QuantizedReluTinput,
                    min_features: ofloat,
                    max_features: ofloat,
                    out_type: type = oquint8): auto =
  return iiquantizedRelu(scope,
                         features,
                         min_features,
                         max_features,
                         out_type.oTF,
                         out_type)

converter quantizedReluToOut*[oT: oall](op: QuantizedRelu[oT]): oT {.inline.} = return op.output

type QuantizedReluXTinput* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedReluX*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"QuantizedReluX/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedReluX[oT: oall](scope: Scope,
                     features: QuantizedReluXTinput,
                     max_value: ofloat,
                     min_features: ofloat,
                     max_features: ofloat,
                     out_type: DType,
                     explicitT: type(oT)): QuantizedReluX[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"QuantizedReluX(*#, #, #, #, #, #)", constructor.}

proc quantizedReluX*(scope: Scope,
                     features: QuantizedReluXTinput,
                     max_value: ofloat,
                     min_features: ofloat,
                     max_features: ofloat,
                     out_type: type = oquint8): auto =
  return iiquantizedReluX(scope,
                          features,
                          max_value,
                          min_features,
                          max_features,
                          out_type.oTF,
                          out_type)

converter quantizedReluXToOut*[oT: oall](op: QuantizedReluX[oT]): oT {.inline.} = return op.output


type Relu*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Relu/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirelu[oT: oall](scope: Scope,
           features: oT,
           T: DType): Relu[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Relu(*#, #, #)", constructor.}

proc relu*[oT: oall](scope: Scope,
           features: oT): Relu[oT] =
  return iirelu(scope,
                features,
                oT.oTF)

converter reluToOut*[oT: oall](op: Relu[oT]): oT {.inline.} = return op.output


type Relu6*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Relu6/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirelu6[oT: oall](scope: Scope,
            features: oT,
            T: DType): Relu6[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Relu6(*#, #, #)", constructor.}

proc relu6*[oT: oall](scope: Scope,
            features: oT): Relu6[oT] =
  return iirelu6(scope,
                 features,
                 oT.oTF)

converter relu6ToOut*[oT: oall](op: Relu6[oT]): oT {.inline.} = return op.output


type Relu6Grad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Relu6Grad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirelu6Grad[oT: oall](scope: Scope,
                gradients: oT,
                features: oT,
                T: DType): Relu6Grad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Relu6Grad(*#, #, #, #)", constructor.}

proc relu6Grad*[oT: oall](scope: Scope,
                gradients: oT,
                features: oT): Relu6Grad[oT] =
  return iirelu6Grad(scope,
                     gradients,
                     features,
                     oT.oTF)

converter relu6GradToOut*[oT: oall](op: Relu6Grad[oT]): oT {.inline.} = return op.output


type ReluGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"ReluGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireluGrad[oT: oall](scope: Scope,
               gradients: oT,
               features: oT,
               T: DType): ReluGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"ReluGrad(*#, #, #, #)", constructor.}

proc reluGrad*[oT: oall](scope: Scope,
               gradients: oT,
               features: oT): ReluGrad[oT] =
  return iireluGrad(scope,
                    gradients,
                    features,
                    oT.oTF)

converter reluGradToOut*[oT: oall](op: ReluGrad[oT]): oT {.inline.} = return op.output


type Selu*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Selu/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiselu[oT: oall](scope: Scope,
           features: oT,
           T: DType): Selu[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Selu(*#, #, #)", constructor.}

proc selu*[oT: oall](scope: Scope,
           features: oT): Selu[oT] =
  return iiselu(scope,
                features,
                oT.oTF)

converter seluToOut*[oT: oall](op: Selu[oT]): oT {.inline.} = return op.output


type Sigmoid*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Sigmoid/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisigmoid[oT: oall](scope: Scope,
              x: oT,
              T: DType): Sigmoid[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Sigmoid(*#, #, #)", constructor.}

proc sigmoid*[oT: oall](scope: Scope,
              x: oT): Sigmoid[oT] =
  return iisigmoid(scope,
                   x,
                   oT.oTF)

converter sigmoidToOut*[oT: oall](op: Sigmoid[oT]): oT {.inline.} = return op.output


type SigmoidGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SigmoidGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisigmoidGrad[oT: oall](scope: Scope,
                  y: oT,
                  dy: oT,
                  T: DType): SigmoidGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SigmoidGrad(*#, #, #, #)", constructor.}

proc sigmoidGrad*[oT: oall](scope: Scope,
                  y: oT,
                  dy: oT): SigmoidGrad[oT] =
  return iisigmoidGrad(scope,
                       y,
                       dy,
                       oT.oTF)

converter sigmoidGradToOut*[oT: oall](op: SigmoidGrad[oT]): oT {.inline.} = return op.output


type Softmax*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Softmax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisoftmax[oT: oall](scope: Scope,
              logits: oT,
              T: DType): Softmax[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Softmax(*#, #, #)", constructor.}

proc softmax*[oT: oall](scope: Scope,
              logits: oT): Softmax[oT] =
  return iisoftmax(scope,
                   logits,
                   oT.oTF)

converter softmaxToOut*[oT: oall](op: Softmax[oT]): oT {.inline.} = return op.output


type SoftmaxCrossEntropyWithLogits*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SoftmaxCrossEntropyWithLogits/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisoftmaxCrossEntropyWithLogits[oT: oall](scope: Scope,
                                    features: oT,
                                    labels: oT,
                                    T: DType): SoftmaxCrossEntropyWithLogits[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SoftmaxCrossEntropyWithLogits(*#, #, #, #)", constructor.}

proc softmaxCrossEntropyWithLogits*[oT: oall](scope: Scope,
                                    features: oT,
                                    labels: oT): SoftmaxCrossEntropyWithLogits[oT] =
  return iisoftmaxCrossEntropyWithLogits(scope,
                                         features,
                                         labels,
                                         oT.oTF)

converter softmaxCrossEntropyWithLogitsToOut*[oT: oall](op: SoftmaxCrossEntropyWithLogits[oT]): oT {.inline.} = return op.output


type Softplus*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Softplus/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisoftplus[oT: oall](scope: Scope,
               features: oT,
               T: DType): Softplus[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"Softplus(*#, #, #)", constructor.}

proc softplus*[oT: oall](scope: Scope,
               features: oT): Softplus[oT] =
  return iisoftplus(scope,
                    features,
                    oT.oTF)

converter softplusToOut*[oT: oall](op: Softplus[oT]): oT {.inline.} = return op.output


type SoftplusGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SoftplusGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisoftplusGrad[oT: oall](scope: Scope,
                   gradients: oT,
                   features: oT,
                   T: DType): SoftplusGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SoftplusGrad(*#, #, #, #)", constructor.}

proc softplusGrad*[oT: oall](scope: Scope,
                   gradients: oT,
                   features: oT): SoftplusGrad[oT] =
  return iisoftplusGrad(scope,
                        gradients,
                        features,
                        oT.oTF)

converter softplusGradToOut*[oT: oall](op: SoftplusGrad[oT]): oT {.inline.} = return op.output


type SoftsignGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SoftsignGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisoftsignGrad[oT: oall](scope: Scope,
                   gradients: oT,
                   features: oT,
                   T: DType): SoftsignGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SoftsignGrad(*#, #, #, #)", constructor.}

proc softsignGrad*[oT: oall](scope: Scope,
                   gradients: oT,
                   features: oT): SoftsignGrad[oT] =
  return iisoftsignGrad(scope,
                        gradients,
                        features,
                        oT.oTF)

converter softsignGradToOut*[oT: oall](op: SoftsignGrad[oT]): oT {.inline.} = return op.output


type SparseSoftmax*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SparseSoftmax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSoftmax[oT: oall](scope: Scope,
                    sp_indices: oint64,
                    sp_values: oT,
                    sp_shape: oint64,
                    T: DType): SparseSoftmax[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/nn/activ/activ.h", importcpp:"SparseSoftmax(*#, #, #, #, #)", constructor.}

proc sparseSoftmax*[oT: oall](scope: Scope,
                    sp_indices: oint64,
                    sp_values: oT,
                    sp_shape: oint64): SparseSoftmax[oT] =
  return iisparseSoftmax(scope,
                         sp_indices,
                         sp_values,
                         sp_shape,
                         oT.oTF)

converter sparseSoftmaxToOut*[oT: oall](op: SparseSoftmax[oT]): oT {.inline.} = return op.output

