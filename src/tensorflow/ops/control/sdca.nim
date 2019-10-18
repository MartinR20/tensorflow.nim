import ../../core

{.compile:"../../ops/control/sdca/sdca.cc".}


type SdcaFprint* {.header:"../../ops/control/sdca/sdca.h", importcpp:"SdcaFprint/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisdcaFprint(scope: Scope,
                 input: ostring): SdcaFprint {.header:"../../ops/control/sdca/sdca.h", importcpp:"SdcaFprint(*#, #)", constructor.}

proc sdcaFprint*(scope: Scope,
                 input: ostring): SdcaFprint =
  return iisdcaFprint(scope,
                      input)

converter sdcaFprintToOut*(op: SdcaFprint): oint64 {.inline.} = return op.output


type SdcaOptimizer* {.header:"../../ops/control/sdca/sdca.h", importcpp:"SdcaOptimizer/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iisdcaOptimizer(scope: Scope,
                    sparse_example_indices: oint64,
                    sparse_feature_indices: oint64,
                    sparse_feature_values: ofloat,
                    dense_features: ofloat,
                    example_weights: ofloat,
                    example_labels: ofloat,
                    sparse_indices: oint64,
                    sparse_weights: ofloat,
                    dense_weights: ofloat,
                    example_state_data: ofloat,
                    loss_type: cstring,
                    adaptative: bool,
                    num_sparse_features: int64,
                    num_sparse_features_with_values: int64,
                    num_dense_features: int64,
                    l1: float32,
                    l2: float32,
                    num_loss_partitions: int64,
                    num_inner_iterations: int64): SdcaOptimizer {.header:"../../ops/control/sdca/sdca.h", importcpp:"SdcaOptimizer(*#, #, #, #, #, #, #, #, #, #, #, tensorflow::string(#), #, #, #, #, #, #, #, #)", constructor.}

proc sdcaOptimizer*(scope: Scope,
                    sparse_example_indices: oint64,
                    sparse_feature_indices: oint64,
                    sparse_feature_values: ofloat,
                    dense_features: ofloat,
                    example_weights: ofloat,
                    example_labels: ofloat,
                    sparse_indices: oint64,
                    sparse_weights: ofloat,
                    dense_weights: ofloat,
                    example_state_data: ofloat,
                    loss_type: cstring,
                    adaptative: bool = false,
                    num_sparse_features: int64 = 0.int,
                    num_sparse_features_with_values: int64 = 0.int,
                    num_dense_features: int64 = 0.int,
                    l1: float32 = 0.0.float32,
                    l2: float32 = 0.0.float32,
                    num_loss_partitions: int64 = 0.int,
                    num_inner_iterations: int64 = 0.int): SdcaOptimizer =
  return iisdcaOptimizer(scope,
                         sparse_example_indices,
                         sparse_feature_indices,
                         sparse_feature_values,
                         dense_features,
                         example_weights,
                         example_labels,
                         sparse_indices,
                         sparse_weights,
                         dense_weights,
                         example_state_data,
                         loss_type,
                         adaptative,
                         num_sparse_features,
                         num_sparse_features_with_values,
                         num_dense_features,
                         l1,
                         l2,
                         num_loss_partitions,
                         num_inner_iterations)

converter sdcaOptimizerToOut*(op: SdcaOptimizer): ofloat {.inline.} = return op.output


type SdcaOptimizerV2* {.header:"../../ops/control/sdca/sdca.h", importcpp:"SdcaOptimizerV2/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iisdcaOptimizerV2(scope: Scope,
                      sparse_example_indices: oint64,
                      sparse_feature_indices: oint64,
                      sparse_feature_values: ofloat,
                      dense_features: ofloat,
                      example_weights: ofloat,
                      example_labels: ofloat,
                      sparse_indices: oint64,
                      sparse_weights: ofloat,
                      dense_weights: ofloat,
                      example_state_data: ofloat,
                      loss_type: cstring,
                      adaptive: bool,
                      num_sparse_features: int64,
                      num_sparse_features_with_values: int64,
                      num_dense_features: int64,
                      l1: float32,
                      l2: float32,
                      num_loss_partitions: int64,
                      num_inner_iterations: int64): SdcaOptimizerV2 {.header:"../../ops/control/sdca/sdca.h", importcpp:"SdcaOptimizerV2(*#, #, #, #, #, #, #, #, #, #, #, tensorflow::string(#), #, #, #, #, #, #, #, #)", constructor.}

proc sdcaOptimizerV2*(scope: Scope,
                      sparse_example_indices: oint64,
                      sparse_feature_indices: oint64,
                      sparse_feature_values: ofloat,
                      dense_features: ofloat,
                      example_weights: ofloat,
                      example_labels: ofloat,
                      sparse_indices: oint64,
                      sparse_weights: ofloat,
                      dense_weights: ofloat,
                      example_state_data: ofloat,
                      loss_type: cstring,
                      adaptive: bool = false,
                      num_sparse_features: int64 = 0.int,
                      num_sparse_features_with_values: int64 = 0.int,
                      num_dense_features: int64 = 0.int,
                      l1: float32 = 0.0.float32,
                      l2: float32 = 0.0.float32,
                      num_loss_partitions: int64 = 0.int,
                      num_inner_iterations: int64 = 0.int): SdcaOptimizerV2 =
  return iisdcaOptimizerV2(scope,
                           sparse_example_indices,
                           sparse_feature_indices,
                           sparse_feature_values,
                           dense_features,
                           example_weights,
                           example_labels,
                           sparse_indices,
                           sparse_weights,
                           dense_weights,
                           example_state_data,
                           loss_type,
                           adaptive,
                           num_sparse_features,
                           num_sparse_features_with_values,
                           num_dense_features,
                           l1,
                           l2,
                           num_loss_partitions,
                           num_inner_iterations)

converter sdcaOptimizerV2ToOut*(op: SdcaOptimizerV2): ofloat {.inline.} = return op.output


type SdcaShrinkL1*{.header:"../../ops/control/sdca/sdca.h", importcpp:"SdcaShrinkL1/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iisdcaShrinkL1(scope: Scope,
                   weights: ofloat,
                   num_features: int64,
                   l1: float32,
                   l2: float32): SdcaShrinkL1 {.header:"../../ops/control/sdca/sdca.h", importcpp:"SdcaShrinkL1(*#, #, #, #, #)", constructor.}

proc sdcaShrinkL1*(scope: Scope,
                   weights: ofloat,
                   num_features: int64 = 0.int,
                   l1: float32 = 0.0.float32,
                   l2: float32 = 0.0.float32): SdcaShrinkL1 =
  return iisdcaShrinkL1(scope,
                        weights,
                        num_features,
                        l1,
                        l2)

