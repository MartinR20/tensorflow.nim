import ../../core

{.compile:"loss/loss.cc".}


type CTCLoss* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/nn/loss/loss.h", importcpp:"CTCLoss/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iicTCLoss(scope: Scope,
              inputs: ofloat,
              labels_indices: oint64,
              labels_values: oint32,
              sequence_length: oint32,
              preprocess_collapse_repeated: bool,
              ctc_merge_repeated: bool,
              ignore_longer_outputs_than_inputs: bool): CTCLoss {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/nn/loss/loss.h", importcpp:"CTCLoss(*#, #, #, #, #, #, #, #)", constructor.}

proc cTCLoss*(scope: Scope,
              inputs: ofloat,
              labels_indices: oint64,
              labels_values: oint32,
              sequence_length: oint32,
              preprocess_collapse_repeated: bool = false,
              ctc_merge_repeated: bool = true,
              ignore_longer_outputs_than_inputs: bool = false): CTCLoss =
  return iicTCLoss(scope,
                   inputs,
                   labels_indices,
                   labels_values,
                   sequence_length,
                   preprocess_collapse_repeated,
                   ctc_merge_repeated,
                   ignore_longer_outputs_than_inputs)

converter cTCLossToOut*(op: CTCLoss): ofloat {.inline.} = return op.output


type L2Loss*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/nn/loss/loss.h", importcpp:"L2Loss/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iil2Loss[oT: oall](scope: Scope,
             t: oT,
             T: DType): L2Loss[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/nn/loss/loss.h", importcpp:"L2Loss(*#, #, #)", constructor.}

proc l2Loss*[oT: oall](scope: Scope,
             t: oT): L2Loss[oT] =
  return iil2Loss(scope,
                  t,
                  oT.oTF)

converter l2LossToOut*[oT: oall](op: L2Loss[oT]): oT {.inline.} = return op.output

