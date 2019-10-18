import ../../core

{.compile:"../../ops/nn/boosted/boosted.cc".}


type BoostedTreesBucketize* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesBucketize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iiboostedTreesBucketize(scope: Scope,
                            float_values: ofloat,
                            bucket_boundaries: ofloat,
                            num_features: int64): BoostedTreesBucketize {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesBucketize(*#, #, #, #)", constructor.}

proc boostedTreesBucketize*(scope: Scope,
                            float_values: ofloat,
                            bucket_boundaries: ofloat,
                            num_features: int64 = 0.int): BoostedTreesBucketize =
  return iiboostedTreesBucketize(scope,
                                 float_values,
                                 bucket_boundaries,
                                 num_features)

converter boostedTreesBucketizeToOut*(op: BoostedTreesBucketize): oint32 {.inline.} = return op.output


type BoostedTreesCalculateBestGainsPerFeature* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesCalculateBestGainsPerFeature/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iiboostedTreesCalculateBestGainsPerFeature(scope: Scope,
                                               node_id_range: oint32,
                                               stats_summary_list: ofloat,
                                               l1: ofloat,
                                               l2: ofloat,
                                               tree_complexity: ofloat,
                                               min_node_weight: ofloat,
                                               max_splits: int64,
                                               num_features: int64): BoostedTreesCalculateBestGainsPerFeature {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesCalculateBestGainsPerFeature(*#, #, #, #, #, #, #, #, #)", constructor.}

proc boostedTreesCalculateBestGainsPerFeature*(scope: Scope,
                                               node_id_range: oint32,
                                               stats_summary_list: ofloat,
                                               l1: ofloat,
                                               l2: ofloat,
                                               tree_complexity: ofloat,
                                               min_node_weight: ofloat,
                                               max_splits: int64 = 0.int,
                                               num_features: int64 = 0.int): BoostedTreesCalculateBestGainsPerFeature =
  return iiboostedTreesCalculateBestGainsPerFeature(scope,
                                                    node_id_range,
                                                    stats_summary_list,
                                                    l1,
                                                    l2,
                                                    tree_complexity,
                                                    min_node_weight,
                                                    max_splits,
                                                    num_features)

converter boostedTreesCalculateBestGainsPerFeatureToOut*(op: BoostedTreesCalculateBestGainsPerFeature): oint32 {.inline.} = return op.output


type BoostedTreesCenterBias* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesCenterBias/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiboostedTreesCenterBias(scope: Scope,
                             tree_ensemble_handle: oresource,
                             mean_gradients: ofloat,
                             mean_hessians: ofloat,
                             l1: ofloat,
                             l2: ofloat): BoostedTreesCenterBias {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesCenterBias(*#, #, #, #, #, #)", constructor.}

proc boostedTreesCenterBias*(scope: Scope,
                             tree_ensemble_handle: oresource,
                             mean_gradients: ofloat,
                             mean_hessians: ofloat,
                             l1: ofloat,
                             l2: ofloat): BoostedTreesCenterBias =
  return iiboostedTreesCenterBias(scope,
                                  tree_ensemble_handle,
                                  mean_gradients,
                                  mean_hessians,
                                  l1,
                                  l2)

converter boostedTreesCenterBiasToOut*(op: BoostedTreesCenterBias): obool {.inline.} = return op.output


type BoostedTreesCreateEnsemble*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesCreateEnsemble/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiboostedTreesCreateEnsemble(scope: Scope,
                                 tree_ensemble_handle: oresource,
                                 stamp_token: oint64,
                                 tree_ensemble_serialized: ostring): BoostedTreesCreateEnsemble {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesCreateEnsemble(*#, #, #, #)", constructor.}

proc boostedTreesCreateEnsemble*(scope: Scope,
                                 tree_ensemble_handle: oresource,
                                 stamp_token: oint64,
                                 tree_ensemble_serialized: ostring): BoostedTreesCreateEnsemble =
  return iiboostedTreesCreateEnsemble(scope,
                                      tree_ensemble_handle,
                                      stamp_token,
                                      tree_ensemble_serialized)


type BoostedTreesCreateQuantileStreamResource*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesCreateQuantileStreamResource/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiboostedTreesCreateQuantileStreamResource(scope: Scope,
                                               quantile_stream_resource_handle: oresource,
                                               epsilon: ofloat,
                                               num_streams: oint64,
                                               max_elements: int64): BoostedTreesCreateQuantileStreamResource {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesCreateQuantileStreamResource(*#, #, #, #, #)", constructor.}

proc boostedTreesCreateQuantileStreamResource*(scope: Scope,
                                               quantile_stream_resource_handle: oresource,
                                               epsilon: ofloat,
                                               num_streams: oint64,
                                               max_elements: int64 = 1099511627776.int): BoostedTreesCreateQuantileStreamResource =
  return iiboostedTreesCreateQuantileStreamResource(scope,
                                                    quantile_stream_resource_handle,
                                                    epsilon,
                                                    num_streams,
                                                    max_elements)


type BoostedTreesDeserializeEnsemble*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesDeserializeEnsemble/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiboostedTreesDeserializeEnsemble(scope: Scope,
                                      tree_ensemble_handle: oresource,
                                      stamp_token: oint64,
                                      tree_ensemble_serialized: ostring): BoostedTreesDeserializeEnsemble {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesDeserializeEnsemble(*#, #, #, #)", constructor.}

proc boostedTreesDeserializeEnsemble*(scope: Scope,
                                      tree_ensemble_handle: oresource,
                                      stamp_token: oint64,
                                      tree_ensemble_serialized: ostring): BoostedTreesDeserializeEnsemble =
  return iiboostedTreesDeserializeEnsemble(scope,
                                           tree_ensemble_handle,
                                           stamp_token,
                                           tree_ensemble_serialized)


type BoostedTreesEnsembleResourceHandleOp* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesEnsembleResourceHandleOp/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiboostedTreesEnsembleResourceHandleOp(scope: Scope,
                                           container: cstring,
                                           shared_name: cstring): BoostedTreesEnsembleResourceHandleOp {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesEnsembleResourceHandleOp(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc boostedTreesEnsembleResourceHandleOp*(scope: Scope,
                                           container: cstring,
                                           shared_name: cstring): BoostedTreesEnsembleResourceHandleOp =
  return iiboostedTreesEnsembleResourceHandleOp(scope,
                                                container,
                                                shared_name)

converter boostedTreesEnsembleResourceHandleOpToOut*(op: BoostedTreesEnsembleResourceHandleOp): oresource {.inline.} = return op.output


type BoostedTreesGetEnsembleStates* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesGetEnsembleStates/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiboostedTreesGetEnsembleStates(scope: Scope,
                                    tree_ensemble_handle: oresource): BoostedTreesGetEnsembleStates {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesGetEnsembleStates(*#, #)", constructor.}

proc boostedTreesGetEnsembleStates*(scope: Scope,
                                    tree_ensemble_handle: oresource): BoostedTreesGetEnsembleStates =
  return iiboostedTreesGetEnsembleStates(scope,
                                         tree_ensemble_handle)

converter boostedTreesGetEnsembleStatesToOut*(op: BoostedTreesGetEnsembleStates): oint64 {.inline.} = return op.output


type BoostedTreesMakeQuantileSummaries* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesMakeQuantileSummaries/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiboostedTreesMakeQuantileSummaries(scope: Scope,
                                        float_values: ofloat,
                                        example_weights: ofloat,
                                        epsilon: ofloat,
                                        num_features: int64): BoostedTreesMakeQuantileSummaries {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesMakeQuantileSummaries(*#, #, #, #, #)", constructor.}

proc boostedTreesMakeQuantileSummaries*(scope: Scope,
                                        float_values: ofloat,
                                        example_weights: ofloat,
                                        epsilon: ofloat,
                                        num_features: int64 = 0.int): BoostedTreesMakeQuantileSummaries =
  return iiboostedTreesMakeQuantileSummaries(scope,
                                             float_values,
                                             example_weights,
                                             epsilon,
                                             num_features)

converter boostedTreesMakeQuantileSummariesToOut*(op: BoostedTreesMakeQuantileSummaries): ofloat {.inline.} = return op.output


type BoostedTreesPredict* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesPredict/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiboostedTreesPredict(scope: Scope,
                          tree_ensemble_handle: oresource,
                          bucketized_features: oint32,
                          num_bucketized_features: int64,
                          logits_dimension: int64): BoostedTreesPredict {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesPredict(*#, #, #, #, #)", constructor.}

proc boostedTreesPredict*(scope: Scope,
                          tree_ensemble_handle: oresource,
                          bucketized_features: oint32,
                          num_bucketized_features: int64 = 0.int,
                          logits_dimension: int64 = 0.int): BoostedTreesPredict =
  return iiboostedTreesPredict(scope,
                               tree_ensemble_handle,
                               bucketized_features,
                               num_bucketized_features,
                               logits_dimension)

converter boostedTreesPredictToOut*(op: BoostedTreesPredict): ofloat {.inline.} = return op.output


type BoostedTreesQuantileStreamResourceAddSummaries*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceAddSummaries/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiboostedTreesQuantileStreamResourceAddSummaries(scope: Scope,
                                                     quantile_stream_resource_handle: oresource,
                                                     summaries: ofloat,
                                                     num_features: int64): BoostedTreesQuantileStreamResourceAddSummaries {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceAddSummaries(*#, #, #, #)", constructor.}

proc boostedTreesQuantileStreamResourceAddSummaries*(scope: Scope,
                                                     quantile_stream_resource_handle: oresource,
                                                     summaries: ofloat,
                                                     num_features: int64 = 0.int): BoostedTreesQuantileStreamResourceAddSummaries =
  return iiboostedTreesQuantileStreamResourceAddSummaries(scope,
                                                          quantile_stream_resource_handle,
                                                          summaries,
                                                          num_features)


type BoostedTreesQuantileStreamResourceDeserialize*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceDeserialize/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiboostedTreesQuantileStreamResourceDeserialize(scope: Scope,
                                                    quantile_stream_resource_handle: oresource,
                                                    bucket_boundaries: ofloat,
                                                    num_streams: int64): BoostedTreesQuantileStreamResourceDeserialize {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceDeserialize(*#, #, #, #)", constructor.}

proc boostedTreesQuantileStreamResourceDeserialize*(scope: Scope,
                                                    quantile_stream_resource_handle: oresource,
                                                    bucket_boundaries: ofloat,
                                                    num_streams: int64 = 0.int): BoostedTreesQuantileStreamResourceDeserialize =
  return iiboostedTreesQuantileStreamResourceDeserialize(scope,
                                                         quantile_stream_resource_handle,
                                                         bucket_boundaries,
                                                         num_streams)


type BoostedTreesQuantileStreamResourceFlush*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceFlush/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiboostedTreesQuantileStreamResourceFlush(scope: Scope,
                                              quantile_stream_resource_handle: oresource,
                                              num_buckets: oint64,
                                              generate_quantiles: bool): BoostedTreesQuantileStreamResourceFlush {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceFlush(*#, #, #, #)", constructor.}

proc boostedTreesQuantileStreamResourceFlush*(scope: Scope,
                                              quantile_stream_resource_handle: oresource,
                                              num_buckets: oint64,
                                              generate_quantiles: bool = false): BoostedTreesQuantileStreamResourceFlush =
  return iiboostedTreesQuantileStreamResourceFlush(scope,
                                                   quantile_stream_resource_handle,
                                                   num_buckets,
                                                   generate_quantiles)


type BoostedTreesQuantileStreamResourceGetBucketBoundaries* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceGetBucketBoundaries/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiboostedTreesQuantileStreamResourceGetBucketBoundaries(scope: Scope,
                                                            quantile_stream_resource_handle: oresource,
                                                            num_features: int64): BoostedTreesQuantileStreamResourceGetBucketBoundaries {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceGetBucketBoundaries(*#, #, #)", constructor.}

proc boostedTreesQuantileStreamResourceGetBucketBoundaries*(scope: Scope,
                                                            quantile_stream_resource_handle: oresource,
                                                            num_features: int64 = 0.int): BoostedTreesQuantileStreamResourceGetBucketBoundaries =
  return iiboostedTreesQuantileStreamResourceGetBucketBoundaries(scope,
                                                                 quantile_stream_resource_handle,
                                                                 num_features)

converter boostedTreesQuantileStreamResourceGetBucketBoundariesToOut*(op: BoostedTreesQuantileStreamResourceGetBucketBoundaries): ofloat {.inline.} = return op.output


type BoostedTreesQuantileStreamResourceHandleOp* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceHandleOp/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiboostedTreesQuantileStreamResourceHandleOp(scope: Scope,
                                                 container: cstring,
                                                 shared_name: cstring): BoostedTreesQuantileStreamResourceHandleOp {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesQuantileStreamResourceHandleOp(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc boostedTreesQuantileStreamResourceHandleOp*(scope: Scope,
                                                 container: cstring,
                                                 shared_name: cstring): BoostedTreesQuantileStreamResourceHandleOp =
  return iiboostedTreesQuantileStreamResourceHandleOp(scope,
                                                      container,
                                                      shared_name)

converter boostedTreesQuantileStreamResourceHandleOpToOut*(op: BoostedTreesQuantileStreamResourceHandleOp): oresource {.inline.} = return op.output


type BoostedTreesSerializeEnsemble* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesSerializeEnsemble/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiboostedTreesSerializeEnsemble(scope: Scope,
                                    tree_ensemble_handle: oresource): BoostedTreesSerializeEnsemble {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesSerializeEnsemble(*#, #)", constructor.}

proc boostedTreesSerializeEnsemble*(scope: Scope,
                                    tree_ensemble_handle: oresource): BoostedTreesSerializeEnsemble =
  return iiboostedTreesSerializeEnsemble(scope,
                                         tree_ensemble_handle)

converter boostedTreesSerializeEnsembleToOut*(op: BoostedTreesSerializeEnsemble): oint64 {.inline.} = return op.output


type BoostedTreesTrainingPredict* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesTrainingPredict/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiboostedTreesTrainingPredict(scope: Scope,
                                  tree_ensemble_handle: oresource,
                                  cached_tree_ids: oint32,
                                  cached_node_ids: oint32,
                                  bucketized_features: oint32,
                                  num_bucketized_features: int64,
                                  logits_dimension: int64): BoostedTreesTrainingPredict {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesTrainingPredict(*#, #, #, #, #, #, #)", constructor.}

proc boostedTreesTrainingPredict*(scope: Scope,
                                  tree_ensemble_handle: oresource,
                                  cached_tree_ids: oint32,
                                  cached_node_ids: oint32,
                                  bucketized_features: oint32,
                                  num_bucketized_features: int64 = 0.int,
                                  logits_dimension: int64 = 0.int): BoostedTreesTrainingPredict =
  return iiboostedTreesTrainingPredict(scope,
                                       tree_ensemble_handle,
                                       cached_tree_ids,
                                       cached_node_ids,
                                       bucketized_features,
                                       num_bucketized_features,
                                       logits_dimension)

converter boostedTreesTrainingPredictToOut*(op: BoostedTreesTrainingPredict): ofloat {.inline.} = return op.output


type BoostedTreesUpdateEnsemble*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesUpdateEnsemble/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiboostedTreesUpdateEnsemble(scope: Scope,
                                 tree_ensemble_handle: oresource,
                                 feature_ids: oint32,
                                 node_ids: oint32,
                                 gains: ofloat,
                                 thresholds: oint32,
                                 left_node_contribs: ofloat,
                                 right_node_contribs: ofloat,
                                 max_depth: oint32,
                                 learning_rate: ofloat,
                                 pruning_mode: int64,
                                 num_features: int64): BoostedTreesUpdateEnsemble {.header:"../../ops/nn/boosted/boosted.h", importcpp:"BoostedTreesUpdateEnsemble(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc boostedTreesUpdateEnsemble*(scope: Scope,
                                 tree_ensemble_handle: oresource,
                                 feature_ids: oint32,
                                 node_ids: oint32,
                                 gains: ofloat,
                                 thresholds: oint32,
                                 left_node_contribs: ofloat,
                                 right_node_contribs: ofloat,
                                 max_depth: oint32,
                                 learning_rate: ofloat,
                                 pruning_mode: int64 = 0.int,
                                 num_features: int64 = 0.int): BoostedTreesUpdateEnsemble =
  return iiboostedTreesUpdateEnsemble(scope,
                                      tree_ensemble_handle,
                                      feature_ids,
                                      node_ids,
                                      gains,
                                      thresholds,
                                      left_node_contribs,
                                      right_node_contribs,
                                      max_depth,
                                      learning_rate,
                                      pruning_mode,
                                      num_features)


type IsBoostedTreesEnsembleInitialized* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"IsBoostedTreesEnsembleInitialized/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiisBoostedTreesEnsembleInitialized(scope: Scope,
                                        tree_ensemble_handle: oresource): IsBoostedTreesEnsembleInitialized {.header:"../../ops/nn/boosted/boosted.h", importcpp:"IsBoostedTreesEnsembleInitialized(*#, #)", constructor.}

proc isBoostedTreesEnsembleInitialized*(scope: Scope,
                                        tree_ensemble_handle: oresource): IsBoostedTreesEnsembleInitialized =
  return iiisBoostedTreesEnsembleInitialized(scope,
                                             tree_ensemble_handle)

converter isBoostedTreesEnsembleInitializedToOut*(op: IsBoostedTreesEnsembleInitialized): obool {.inline.} = return op.output


type IsBoostedTreesQuantileStreamResourceInitialized* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"IsBoostedTreesQuantileStreamResourceInitialized/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiisBoostedTreesQuantileStreamResourceInitialized(scope: Scope,
                                                      quantile_stream_resource_handle: oresource): IsBoostedTreesQuantileStreamResourceInitialized {.header:"../../ops/nn/boosted/boosted.h", importcpp:"IsBoostedTreesQuantileStreamResourceInitialized(*#, #)", constructor.}

proc isBoostedTreesQuantileStreamResourceInitialized*(scope: Scope,
                                                      quantile_stream_resource_handle: oresource): IsBoostedTreesQuantileStreamResourceInitialized =
  return iiisBoostedTreesQuantileStreamResourceInitialized(scope,
                                                           quantile_stream_resource_handle)

converter isBoostedTreesQuantileStreamResourceInitializedToOut*(op: IsBoostedTreesQuantileStreamResourceInitialized): obool {.inline.} = return op.output


type TensorForestCreateTreeVariable*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestCreateTreeVariable/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iitensorForestCreateTreeVariable(scope: Scope,
                                     tree_handle: oresource,
                                     tree_config: ostring): TensorForestCreateTreeVariable {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestCreateTreeVariable(*#, #, #)", constructor.}

proc tensorForestCreateTreeVariable*(scope: Scope,
                                     tree_handle: oresource,
                                     tree_config: ostring): TensorForestCreateTreeVariable =
  return iitensorForestCreateTreeVariable(scope,
                                          tree_handle,
                                          tree_config)


type TensorForestTreeDeserialize*{.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeDeserialize/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iitensorForestTreeDeserialize(scope: Scope,
                                  tree_handle: oresource,
                                  tree_config: ostring): TensorForestTreeDeserialize {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeDeserialize(*#, #, #)", constructor.}

proc tensorForestTreeDeserialize*(scope: Scope,
                                  tree_handle: oresource,
                                  tree_config: ostring): TensorForestTreeDeserialize =
  return iitensorForestTreeDeserialize(scope,
                                       tree_handle,
                                       tree_config)


type TensorForestTreeIsInitializedOp* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeIsInitializedOp/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iitensorForestTreeIsInitializedOp(scope: Scope,
                                      tree_handle: oresource): TensorForestTreeIsInitializedOp {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeIsInitializedOp(*#, #)", constructor.}

proc tensorForestTreeIsInitializedOp*(scope: Scope,
                                      tree_handle: oresource): TensorForestTreeIsInitializedOp =
  return iitensorForestTreeIsInitializedOp(scope,
                                           tree_handle)

converter tensorForestTreeIsInitializedOpToOut*(op: TensorForestTreeIsInitializedOp): obool {.inline.} = return op.output


type TensorForestTreePredict* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreePredict/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorForestTreePredict(scope: Scope,
                              tree_handle: oresource,
                              dense_features: ofloat,
                              logits_dimension: int64): TensorForestTreePredict {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreePredict(*#, #, #, #)", constructor.}

proc tensorForestTreePredict*(scope: Scope,
                              tree_handle: oresource,
                              dense_features: ofloat,
                              logits_dimension: int64 = 0.int): TensorForestTreePredict =
  return iitensorForestTreePredict(scope,
                                   tree_handle,
                                   dense_features,
                                   logits_dimension)

converter tensorForestTreePredictToOut*(op: TensorForestTreePredict): ofloat {.inline.} = return op.output


type TensorForestTreeResourceHandleOp* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeResourceHandleOp/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iitensorForestTreeResourceHandleOp(scope: Scope,
                                       container: cstring,
                                       shared_name: cstring): TensorForestTreeResourceHandleOp {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeResourceHandleOp(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc tensorForestTreeResourceHandleOp*(scope: Scope,
                                       container: cstring,
                                       shared_name: cstring): TensorForestTreeResourceHandleOp =
  return iitensorForestTreeResourceHandleOp(scope,
                                            container,
                                            shared_name)

converter tensorForestTreeResourceHandleOpToOut*(op: TensorForestTreeResourceHandleOp): oresource {.inline.} = return op.output


type TensorForestTreeSerialize* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeSerialize/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitensorForestTreeSerialize(scope: Scope,
                                tree_handle: oresource): TensorForestTreeSerialize {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeSerialize(*#, #)", constructor.}

proc tensorForestTreeSerialize*(scope: Scope,
                                tree_handle: oresource): TensorForestTreeSerialize =
  return iitensorForestTreeSerialize(scope,
                                     tree_handle)

converter tensorForestTreeSerializeToOut*(op: TensorForestTreeSerialize): ostring {.inline.} = return op.output


type TensorForestTreeSize* {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iitensorForestTreeSize(scope: Scope,
                           tree_handle: oresource): TensorForestTreeSize {.header:"../../ops/nn/boosted/boosted.h", importcpp:"TensorForestTreeSize(*#, #)", constructor.}

proc tensorForestTreeSize*(scope: Scope,
                           tree_handle: oresource): TensorForestTreeSize =
  return iitensorForestTreeSize(scope,
                                tree_handle)

converter tensorForestTreeSizeToOut*(op: TensorForestTreeSize): oint32 {.inline.} = return op.output

