import ../core

{.compile:"internal/internal.cc".}

type AllTidx* = oint32 | oint64

type All* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"All/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiall(scope: Scope,
          input: obool,
          reduction_indices: AllTidx,
          keep_dims: bool): All {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"All(*#, #, #, #)", constructor.}

proc all*(scope: Scope,
          input: obool,
          reduction_indices: AllTidx,
          keep_dims: bool = false): All =
  return iiall(scope,
               input,
               reduction_indices,
               keep_dims)

converter allToOut*(op: All): obool {.inline.} = return op.output


type BoostedTreesExampleDebugOutputs* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"BoostedTreesExampleDebugOutputs/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiboostedTreesExampleDebugOutputs(scope: Scope,
                                      tree_ensemble_handle: oresource,
                                      bucketized_features: olist[oint32],
                                      num_bucketized_features: int64,
                                      logits_dimension: int64): BoostedTreesExampleDebugOutputs {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"BoostedTreesExampleDebugOutputs(*#, #, #, #, #)", constructor.}

proc boostedTreesExampleDebugOutputs*(scope: Scope,
                                      tree_ensemble_handle: oresource,
                                      bucketized_features: olist[oint32],
                                      num_bucketized_features: int64 = 0.int,
                                      logits_dimension: int64 = 0.int): BoostedTreesExampleDebugOutputs =
  return iiboostedTreesExampleDebugOutputs(scope,
                                           tree_ensemble_handle,
                                           bucketized_features,
                                           num_bucketized_features,
                                           logits_dimension)

converter boostedTreesExampleDebugOutputsToOut*(op: BoostedTreesExampleDebugOutputs): ostring {.inline.} = return op.output


type DebugGradientIdentity*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugGradientIdentity/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidebugGradientIdentity[oT: oall](scope: Scope,
                            input: oT,
                            T: DType): DebugGradientIdentity[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugGradientIdentity(*#, #, #)", constructor.}

proc debugGradientIdentity*[oT: oall](scope: Scope,
                            input: oT): DebugGradientIdentity[oT] =
  return iidebugGradientIdentity(scope,
                                 input,
                                 oT.oTF)

converter debugGradientIdentityToOut*[oT: oall](op: DebugGradientIdentity[oT]): oT {.inline.} = return op.output


type DebugGradientRefIdentity*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugGradientRefIdentity/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidebugGradientRefIdentity[oT: oall](scope: Scope,
                               input: oT,
                               T: DType): DebugGradientRefIdentity[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugGradientRefIdentity(*#, #, #)", constructor.}

proc debugGradientRefIdentity*[oT: oall](scope: Scope,
                               input: oT): DebugGradientRefIdentity[oT] =
  return iidebugGradientRefIdentity(scope,
                                    input,
                                    oT.oTF)

converter debugGradientRefIdentityToOut*[oT: oall](op: DebugGradientRefIdentity[oT]): oT {.inline.} = return op.output


type DebugIdentity*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugIdentity/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidebugIdentity[oT: oall](scope: Scope,
                    input: oT,
                    device_name: cstring,
                    tensor_name: cstring,
                    debug_urls: ArraySlice[cstring],
                    T: DType,
                    gated_grpc: bool): DebugIdentity[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugIdentity(*#, #, tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc debugIdentity*[oT: oall](scope: Scope,
                    input: oT,
                    device_name: cstring,
                    tensor_name: cstring,
                    debug_urls: openArray[cstring],
                    gated_grpc: bool = false): DebugIdentity[oT] =
  return iidebugIdentity(scope,
                         input,
                         device_name,
                         tensor_name,
                         newArraySlice(debug_urls),
                         oT.oTF,
                         gated_grpc)

converter debugIdentityToOut*[oT: oall](op: DebugIdentity[oT]): oT {.inline.} = return op.output

    # Provides an identity mapping of the non-Ref type input tensor for debugging.

type DebugNanCountT* = oall

type DebugNanCount* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugNanCount/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iidebugNanCount(scope: Scope,
                    input: DebugNanCountT,
                    device_name: cstring,
                    tensor_name: cstring,
                    debug_urls: ArraySlice[cstring],
                    gated_grpc: bool): DebugNanCount {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugNanCount(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc debugNanCount*(scope: Scope,
                    input: DebugNanCountT,
                    device_name: cstring,
                    tensor_name: cstring,
                    debug_urls: openArray[cstring],
                    gated_grpc: bool = false): DebugNanCount =
  return iidebugNanCount(scope,
                         input,
                         device_name,
                         tensor_name,
                         newArraySlice(debug_urls),
                         gated_grpc)

converter debugNanCountToOut*(op: DebugNanCount): oint64 {.inline.} = return op.output

    # Counts number of NaNs in the input tensor, for debugging.

type DebugNumericSummaryT* = oall

type DebugNumericSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugNumericSummary/*'0*/".} = object
  operation*: Operation[odouble]
  output*: odouble

proc iidebugNumericSummary(scope: Scope,
                          input: DebugNumericSummaryT,
                          device_name: cstring,
                          tensor_name: cstring,
                          debug_urls: ArraySlice[cstring],
                          gated_grpc: bool,
                          lower_bound: float32,
                          upper_bound: float32,
                          mute_if_healthy: bool): DebugNumericSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DebugNumericSummary(*#, #, tensorflow::string(#), tensorflow::string(#), #, #, #, #, #)", constructor.}

proc debugNumericSummary*(scope: Scope,
                          input: DebugNumericSummaryT,
                          device_name: cstring,
                          tensor_name: cstring,
                          debug_urls: openArray[cstring],
                          gated_grpc: bool = false,
                          lower_bound: float32 = NegInf.float32,
                          upper_bound: float32 = Inf.float32,
                          mute_if_healthy: bool = false): DebugNumericSummary =
  return iidebugNumericSummary(scope,
                               input,
                               device_name,
                               tensor_name,
                               newArraySlice(debug_urls),
                               gated_grpc,
                               lower_bound,
                               upper_bound,
                               mute_if_healthy)

converter debugNumericSummaryToOut*(op: DebugNumericSummary): odouble {.inline.} = return op.output

    # Provide a basic summary of numeric value types, range and distribution.


type DecodeJSONExample* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DecodeJSONExample/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iidecodeJSONExample(scope: Scope,
                        json_examples: ostring): DecodeJSONExample {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"DecodeJSONExample(*#, #)", constructor.}

proc decodeJSONExample*(scope: Scope,
                        json_examples: ostring): DecodeJSONExample =
  return iidecodeJSONExample(scope,
                             json_examples)

converter decodeJSONExampleToOut*(op: DecodeJSONExample): ostring {.inline.} = return op.output


type ExperimentalParseExampleDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ExperimentalParseExampleDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalParseExampleDataset(scope: Scope,
                                      input_dataset: ovariant,
                                      num_parallel_calls: oint64,
                                      dense_defaults: olist[oall],
                                      sparse_keys: ArraySlice[cstring],
                                      dense_keys: ArraySlice[cstring],
                                      sparse_types: ArraySlice[DType],
                                      Tdense: ArraySlice[DType],
                                      dense_shapes: ArraySlice[TensorShape],
                                      output_types: ArraySlice[DType],
                                      output_shapes: ArraySlice[TensorShape],
                                      sloppy: bool): ExperimentalParseExampleDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ExperimentalParseExampleDataset(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalParseExampleDataset*(scope: Scope,
                                      input_dataset: ovariant,
                                      num_parallel_calls: oint64,
                                      dense_defaults: olist[oall],
                                      sparse_keys: openArray[cstring],
                                      dense_keys: openArray[cstring],
                                      sparse_types: openArray[DType],
                                      Tdense: openArray[DType],
                                      dense_shapes: openArray[TensorShape],
                                      output_types: openArray[DType],
                                      output_shapes: openArray[TensorShape],
                                      sloppy: bool = false): ExperimentalParseExampleDataset =
  return iiexperimentalParseExampleDataset(scope,
                                           input_dataset,
                                           num_parallel_calls,
                                           dense_defaults,
                                           newArraySlice(sparse_keys),
                                           newArraySlice(dense_keys),
                                           newArraySlice(sparse_types),
                                           newArraySlice(Tdense),
                                           newArraySlice(dense_shapes),
                                           newArraySlice(output_types),
                                           newArraySlice(output_shapes),
                                           sloppy)

converter experimentalParseExampleDatasetToOut*(op: ExperimentalParseExampleDataset): ovariant {.inline.} = return op.output


type Fact* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"Fact/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iifact(scope: Scope): Fact {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"Fact(*#)", constructor.}

proc fact*(scope: Scope): Fact =
  return iifact(scope)

converter factToOut*(op: Fact): ostring {.inline.} = return op.output


type NcclAllReduce*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"NcclAllReduce/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iincclAllReduce[oT: oall](scope: Scope,
                    input: oT,
                    reduction: cstring,
                    shared_name: cstring,
                    T: DType,
                    num_devices: int64): NcclAllReduce[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"NcclAllReduce(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc ncclAllReduce*[oT: oall](scope: Scope,
                    input: oT,
                    reduction: cstring,
                    shared_name: cstring,
                    num_devices: int64 = 0.int): NcclAllReduce[oT] =
  return iincclAllReduce(scope,
                         input,
                         reduction,
                         shared_name,
                         oT.oTF,
                         num_devices)

converter ncclAllReduceToOut*[oT: oall](op: NcclAllReduce[oT]): oT {.inline.} = return op.output


type NcclBroadcast*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"NcclBroadcast/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iincclBroadcast[oT: oall](scope: Scope,
                    input: oT,
                    T: DType,
                    shape: TensorShape): NcclBroadcast[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"NcclBroadcast(*#, #, #, #)", constructor.}

proc ncclBroadcast*[oT: oall](scope: Scope,
                    input: oT,
                    shape: TensorShape = [].shape): NcclBroadcast[oT] =
  return iincclBroadcast(scope,
                         input,
                         oT.oTF,
                         shape)

converter ncclBroadcastToOut*[oT: oall](op: NcclBroadcast[oT]): oT {.inline.} = return op.output


type ParseExample* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ParseExample/*'0*/".} = object
  operation*: Operation[oint64]
  output*: olist[oint64]

proc iiparseExample(scope: Scope,
                   serialized: ostring,
                   names: ostring,
                   sparse_keys: olist[ostring],
                   dense_keys: olist[ostring],
                   dense_defaults: olist[oall],
                   sparse_types: ArraySlice[DType],
                   Tdense: ArraySlice[DType],
                   dense_shapes: ArraySlice[TensorShape],
                   Nsparse: int64,
                   Ndense: int64): ParseExample {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ParseExample(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc parseExample*(scope: Scope,
                   serialized: ostring,
                   names: ostring,
                   sparse_keys: olist[ostring],
                   dense_keys: olist[ostring],
                   dense_defaults: olist[oall],
                   sparse_types: openArray[DType],
                   Tdense: openArray[DType],
                   dense_shapes: openArray[TensorShape],
                   Nsparse: int64 = 0.int,
                   Ndense: int64 = 0.int): ParseExample =
  return iiparseExample(scope,
                        serialized,
                        names,
                        sparse_keys,
                        dense_keys,
                        dense_defaults,
                        newArraySlice(sparse_types),
                        newArraySlice(Tdense),
                        newArraySlice(dense_shapes),
                        Nsparse,
                        Ndense)

converter parseExampleToOutList*(op: ParseExample): olist[oint64] {.inline.} = return op.output


type ParseSequenceExample* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ParseSequenceExample/*'0*/".} = object
  operation*: Operation[oint64]
  output*: olist[oint64]

proc iiparseSequenceExample(scope: Scope,
                           serialized: ostring,
                           debug_name: ostring,
                           context_dense_defaults: olist[oall],
                           feature_list_dense_missing_assumed_empty: ArraySlice[cstring],
                           context_sparse_keys: ArraySlice[cstring],
                           context_dense_keys: ArraySlice[cstring],
                           feature_list_sparse_keys: ArraySlice[cstring],
                           feature_list_dense_keys: ArraySlice[cstring],
                           context_sparse_types: ArraySlice[DType],
                           Tcontext_dense: ArraySlice[DType],
                           feature_list_dense_types: ArraySlice[DType],
                           context_dense_shapes: ArraySlice[TensorShape],
                           feature_list_sparse_types: ArraySlice[DType],
                           feature_list_dense_shapes: ArraySlice[TensorShape],
                           Ncontext_sparse: int64,
                           Ncontext_dense: int64,
                           Nfeature_list_sparse: int64,
                           Nfeature_list_dense: int64): ParseSequenceExample {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ParseSequenceExample(*#, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc parseSequenceExample*(scope: Scope,
                           serialized: ostring,
                           debug_name: ostring,
                           context_dense_defaults: olist[oall],
                           feature_list_dense_missing_assumed_empty: openArray[cstring],
                           context_sparse_keys: openArray[cstring],
                           context_dense_keys: openArray[cstring],
                           feature_list_sparse_keys: openArray[cstring],
                           feature_list_dense_keys: openArray[cstring],
                           context_sparse_types: openArray[DType],
                           Tcontext_dense: openArray[DType],
                           feature_list_dense_types: openArray[DType],
                           context_dense_shapes: openArray[TensorShape],
                           feature_list_sparse_types: openArray[DType],
                           feature_list_dense_shapes: openArray[TensorShape],
                           Ncontext_sparse: int64 = 0.int,
                           Ncontext_dense: int64 = 0.int,
                           Nfeature_list_sparse: int64 = 0.int,
                           Nfeature_list_dense: int64 = 0.int): ParseSequenceExample =
  return iiparseSequenceExample(scope,
                                serialized,
                                debug_name,
                                context_dense_defaults,
                                newArraySlice(feature_list_dense_missing_assumed_empty),
                                newArraySlice(context_sparse_keys),
                                newArraySlice(context_dense_keys),
                                newArraySlice(feature_list_sparse_keys),
                                newArraySlice(feature_list_dense_keys),
                                newArraySlice(context_sparse_types),
                                newArraySlice(Tcontext_dense),
                                newArraySlice(feature_list_dense_types),
                                newArraySlice(context_dense_shapes),
                                newArraySlice(feature_list_sparse_types),
                                newArraySlice(feature_list_dense_shapes),
                                Ncontext_sparse,
                                Ncontext_dense,
                                Nfeature_list_sparse,
                                Nfeature_list_dense)

converter parseSequenceExampleToOutList*(op: ParseSequenceExample): olist[oint64] {.inline.} = return op.output


type ParseSingleExample* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ParseSingleExample/*'0*/".} = object
  operation*: Operation[oint64]
  output*: olist[oint64]

proc iiparseSingleExample(scope: Scope,
                         serialized: ostring,
                         dense_defaults: olist[oall],
                         sparse_keys: ArraySlice[cstring],
                         dense_keys: ArraySlice[cstring],
                         sparse_types: ArraySlice[DType],
                         Tdense: ArraySlice[DType],
                         dense_shapes: ArraySlice[TensorShape],
                         num_sparse: int64): ParseSingleExample {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ParseSingleExample(*#, #, #, #, #, #, #, #, #)", constructor.}

proc parseSingleExample*(scope: Scope,
                         serialized: ostring,
                         dense_defaults: olist[oall],
                         sparse_keys: openArray[cstring],
                         dense_keys: openArray[cstring],
                         sparse_types: openArray[DType],
                         Tdense: openArray[DType],
                         dense_shapes: openArray[TensorShape],
                         num_sparse: int64 = 0.int): ParseSingleExample =
  return iiparseSingleExample(scope,
                              serialized,
                              dense_defaults,
                              newArraySlice(sparse_keys),
                              newArraySlice(dense_keys),
                              newArraySlice(sparse_types),
                              newArraySlice(Tdense),
                              newArraySlice(dense_shapes),
                              num_sparse)

converter parseSingleExampleToOutList*(op: ParseSingleExample): olist[oint64] {.inline.} = return op.output


type ParseSingleSequenceExample* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ParseSingleSequenceExample/*'0*/".} = object
  operation*: Operation[oint64]
  output*: olist[oint64]

proc iiparseSingleSequenceExample(scope: Scope,
                                 serialized: ostring,
                                 feature_list_dense_missing_assumed_empty: ostring,
                                 context_sparse_keys: olist[ostring],
                                 context_dense_keys: olist[ostring],
                                 feature_list_sparse_keys: olist[ostring],
                                 feature_list_dense_keys: olist[ostring],
                                 context_dense_defaults: olist[oall],
                                 debug_name: ostring,
                                 context_sparse_types: ArraySlice[DType],
                                 Tcontext_dense: ArraySlice[DType],
                                 feature_list_dense_types: ArraySlice[DType],
                                 context_dense_shapes: ArraySlice[TensorShape],
                                 feature_list_sparse_types: ArraySlice[DType],
                                 feature_list_dense_shapes: ArraySlice[TensorShape],
                                 Ncontext_sparse: int64,
                                 Ncontext_dense: int64,
                                 Nfeature_list_sparse: int64,
                                 Nfeature_list_dense: int64): ParseSingleSequenceExample {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ParseSingleSequenceExample(*#, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc parseSingleSequenceExample*(scope: Scope,
                                 serialized: ostring,
                                 feature_list_dense_missing_assumed_empty: ostring,
                                 context_sparse_keys: olist[ostring],
                                 context_dense_keys: olist[ostring],
                                 feature_list_sparse_keys: olist[ostring],
                                 feature_list_dense_keys: olist[ostring],
                                 context_dense_defaults: olist[oall],
                                 debug_name: ostring,
                                 context_sparse_types: openArray[DType],
                                 Tcontext_dense: openArray[DType],
                                 feature_list_dense_types: openArray[DType],
                                 context_dense_shapes: openArray[TensorShape],
                                 feature_list_sparse_types: openArray[DType],
                                 feature_list_dense_shapes: openArray[TensorShape],
                                 Ncontext_sparse: int64 = 0.int,
                                 Ncontext_dense: int64 = 0.int,
                                 Nfeature_list_sparse: int64 = 0.int,
                                 Nfeature_list_dense: int64 = 0.int): ParseSingleSequenceExample =
  return iiparseSingleSequenceExample(scope,
                                      serialized,
                                      feature_list_dense_missing_assumed_empty,
                                      context_sparse_keys,
                                      context_dense_keys,
                                      feature_list_sparse_keys,
                                      feature_list_dense_keys,
                                      context_dense_defaults,
                                      debug_name,
                                      newArraySlice(context_sparse_types),
                                      newArraySlice(Tcontext_dense),
                                      newArraySlice(feature_list_dense_types),
                                      newArraySlice(context_dense_shapes),
                                      newArraySlice(feature_list_sparse_types),
                                      newArraySlice(feature_list_dense_shapes),
                                      Ncontext_sparse,
                                      Ncontext_dense,
                                      Nfeature_list_sparse,
                                      Nfeature_list_dense)

converter parseSingleSequenceExampleToOutList*(op: ParseSingleSequenceExample): olist[oint64] {.inline.} = return op.output


type ReadVariableOp*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ReadVariableOp/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireadVariableOp[oT: oall](scope: Scope,
                     resource: oresource,
                     dtype: DType,
                     explicitT: type(oT)): ReadVariableOp[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"ReadVariableOp(*#, #, #)", constructor.}

proc readVariableOp*(scope: Scope,
                     resource: oresource,
                     dtype: type = oinvalid): auto =
  return iireadVariableOp(scope,
                          resource,
                          dtype.oTF,
                          dtype)

converter readVariableOpToOut*[oT: oall](op: ReadVariableOp[oT]): oT {.inline.} = return op.output


type IArg*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_Arg/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiArg[oT: oall](scope: Scope,
           T: DType,
           index: int64,
           explicitT: type(oT)): IArg[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_Arg(*#, #, #)", constructor.}

proc iArg*(scope: Scope,
           T: type = oinvalid,
           index: int64 = 0.int): auto =
  return iiiArg(scope,
                T.oTF,
                index,
                T)

converter iArgToOut*[oT: oall](op: IArg[oT]): oT {.inline.} = return op.output

type IArrayToListT* = oall

type IArrayToList*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ArrayToList/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiiArrayToList[oT: oall](scope: Scope,
                   input: olist[IArrayToListT],
                   out_types: ArraySlice[DType],
                   explicitT: type(oT)): IArrayToList[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ArrayToList(*#, #, #)", constructor.}

proc iArrayToList*(scope: Scope,
                   input: olist[IArrayToListT],
                   out_types: openArray[DType],
                   explicitT: type): auto =
  return iiiArrayToList(scope,
                        input,
                        newArraySlice(out_types),
                        explicitT)

converter iArrayToListToOutList*[oT: oall](op: IArrayToList[oT]): olist[oT] {.inline.} = return op.output


type IDeviceArg*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_DeviceArg/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiDeviceArg[oT: oall](scope: Scope,
                 T: DType,
                 index: int64,
                 explicitT: type(oT)): IDeviceArg[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_DeviceArg(*#, #, #)", constructor.}

proc iDeviceArg*(scope: Scope,
                 T: type = oinvalid,
                 index: int64 = 0.int): auto =
  return iiiDeviceArg(scope,
                      T.oTF,
                      index,
                      T)

converter iDeviceArgToOut*[oT: oall](op: IDeviceArg[oT]): oT {.inline.} = return op.output

type IDeviceRetvalT* = oall

type IDeviceRetval*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_DeviceRetval/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiiDeviceRetval(scope: Scope,
                    input: IDeviceRetvalT,
                    index: int64): IDeviceRetval {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_DeviceRetval(*#, #, #)", constructor.}

proc iDeviceRetval*(scope: Scope,
                    input: IDeviceRetvalT,
                    index: int64 = 0.int): IDeviceRetval =
  return iiiDeviceRetval(scope,
                         input,
                         index)


type IFusedConv2D*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_FusedConv2D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiFusedConv2D[oT: oall](scope: Scope,
                   input: oT,
                   filter: oT,
                   args: olist[oT],
                   strides: ArraySlice[int],
                   padding: cstring,
                   fused_ops: ArraySlice[cstring],
                   T: DType,
                   num_args: int64,
                   data_format: cstring,
                   dilations: ArraySlice[int],
                   epsilon: float32): IFusedConv2D[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_FusedConv2D(*#, #, #, #, #, tensorflow::string(#), #, #, #, tensorflow::string(#), #, #)", constructor.}

proc iFusedConv2D*[oT: oall](scope: Scope,
                   input: oT,
                   filter: oT,
                   args: olist[oT],
                   strides: openArray[int],
                   padding: cstring,
                   fused_ops: openArray[cstring],
                   num_args: int64 = 0.int,
                   data_format: cstring = "NHWC",
                   dilations: openArray[int] = [1.int, 1.int, 1.int, 1.int],
                   epsilon: float32 = 9.999999747378752e-05.float32): IFusedConv2D[oT] =
  return iiiFusedConv2D(scope,
                        input,
                        filter,
                        args,
                        newArraySlice(strides),
                        padding,
                        newArraySlice(fused_ops),
                        oT.oTF,
                        num_args,
                        data_format,
                        newArraySlice(dilations),
                        epsilon)

converter iFusedConv2DToOut*[oT: oall](op: IFusedConv2D[oT]): oT {.inline.} = return op.output

    # expected to create these operators.

type IHostCastSrcT* = oall

type IHostCast*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_HostCast/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiHostCast[oT: oall](scope: Scope,
                x: IHostCastSrcT,
                Truncate: bool,
                DstT: DType,
                explicitT: type(oT)): IHostCast[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_HostCast(*#, #, #, #)", constructor.}

proc iHostCast*(scope: Scope,
                x: IHostCastSrcT,
                Truncate: bool = false,
                DstT: type = oinvalid): auto =
  return iiiHostCast(scope,
                     x,
                     Truncate,
                     DstT.oTF,
                     DstT)

converter iHostCastToOut*[oT: oall](op: IHostCast[oT]): oT {.inline.} = return op.output

    # _HostCast requires its input and produces its output in host memory.


type IHostRecv*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_HostRecv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiHostRecv[oT: oall](scope: Scope,
                tensor_name: cstring,
                send_device: cstring,
                recv_device: cstring,
                tensor_type: DType,
                send_device_incarnation: int64,
                client_terminated: bool,
                explicitT: type(oT)): IHostRecv[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_HostRecv(*#, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc iHostRecv*(scope: Scope,
                tensor_name: cstring,
                send_device: cstring,
                recv_device: cstring,
                tensor_type: type = oinvalid,
                send_device_incarnation: int64 = 0.int,
                client_terminated: bool = false): auto =
  return iiiHostRecv(scope,
                     tensor_name,
                     send_device,
                     recv_device,
                     tensor_type.oTF,
                     send_device_incarnation,
                     client_terminated,
                     tensor_type)

converter iHostRecvToOut*[oT: oall](op: IHostRecv[oT]): oT {.inline.} = return op.output

    # _HostRecv requires its input on host memory whereas _Recv requires its
    # input on device memory.

type IHostSendT* = oall

type IHostSend*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_HostSend/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiiHostSend(scope: Scope,
                tensor: IHostSendT,
                tensor_name: cstring,
                send_device: cstring,
                recv_device: cstring,
                client_terminated: bool,
                send_device_incarnation: int64): IHostSend {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_HostSend(*#, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc iHostSend*(scope: Scope,
                tensor: IHostSendT,
                tensor_name: cstring,
                send_device: cstring,
                recv_device: cstring,
                client_terminated: bool = false,
                send_device_incarnation: int64 = 0.int): IHostSend =
  return iiiHostSend(scope,
                     tensor,
                     tensor_name,
                     send_device,
                     recv_device,
                     client_terminated,
                     send_device_incarnation)

    # _HostSend requires its input on host memory whereas _Send requires its
    # input on device memory.

type IIfTcond* = oall

type IIf*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_If/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiiIf[oT: oall](scope: Scope,
          cond: IIfTcond,
          input: olist[oall],
          Tin: ArraySlice[DType],
          Tout: ArraySlice[DType],
          then_branch: NameAttrList,
          else_branch: NameAttrList,
          explicitT: type(oT)): IIf[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_If(*#, #, #, #, #, #, #)", constructor.}

proc iIf*(scope: Scope,
          cond: IIfTcond,
          input: olist[oall],
          Tin: openArray[DType],
          Tout: openArray[DType],
          then_branch: NameAttrList,
          else_branch: NameAttrList,
          explicitT: type): auto =
  return iiiIf(scope,
               cond,
               input,
               newArraySlice(Tin),
               newArraySlice(Tout),
               then_branch,
               else_branch,
               explicitT)

converter iIfToOutList*[oT: oall](op: IIf[oT]): olist[oT] {.inline.} = return op.output


type IListToArray*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ListToArray/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiiListToArray[oT: oall](scope: Scope,
                   input: olist[oall],
                   Tin: ArraySlice[DType],
                   T: DType,
                   explicitT: type(oT)): IListToArray[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ListToArray(*#, #, #, #)", constructor.}

proc iListToArray*(scope: Scope,
                   input: olist[oall],
                   Tin: openArray[DType],
                   T: type = oinvalid): auto =
  return iiiListToArray(scope,
                        input,
                        newArraySlice(Tin),
                        T.oTF,
                        T)

converter iListToArrayToOutList*[oT: oall](op: IListToArray[oT]): olist[oT] {.inline.} = return op.output


type IMklAdd*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiMklAdd[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              mkl_x: ouint8,
              mkl_y: ouint8,
              T: DType): IMklAdd[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklAdd(*#, #, #, #, #, #)", constructor.}

proc iMklAdd*[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              mkl_x: ouint8,
              mkl_y: ouint8): IMklAdd[oT] =
  return iiiMklAdd(scope,
                   x,
                   y,
                   mkl_x,
                   mkl_y,
                   oT.oTF)

converter iMklAddToOut*[oT: oall](op: IMklAdd[oT]): oT {.inline.} = return op.output

    # *NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
    # [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)


type IMklMaximum*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklMaximum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiMklMaximum[oT: oall](scope: Scope,
                  x: oT,
                  y: oT,
                  mkl_x: ouint8,
                  mkl_y: ouint8,
                  T: DType): IMklMaximum[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklMaximum(*#, #, #, #, #, #)", constructor.}

proc iMklMaximum*[oT: oall](scope: Scope,
                  x: oT,
                  y: oT,
                  mkl_x: ouint8,
                  mkl_y: ouint8): IMklMaximum[oT] =
  return iiiMklMaximum(scope,
                       x,
                       y,
                       mkl_x,
                       mkl_y,
                       oT.oTF)

converter iMklMaximumToOut*[oT: oall](op: IMklMaximum[oT]): oT {.inline.} = return op.output

    # *NOTE*: `Maximum` supports broadcasting. More about broadcasting
    # [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)


type IMklMul*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklMul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiMklMul[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              mkl_x: ouint8,
              mkl_y: ouint8,
              T: DType): IMklMul[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklMul(*#, #, #, #, #, #)", constructor.}

proc iMklMul*[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              mkl_x: ouint8,
              mkl_y: ouint8): IMklMul[oT] =
  return iiiMklMul(scope,
                   x,
                   y,
                   mkl_x,
                   mkl_y,
                   oT.oTF)

converter iMklMulToOut*[oT: oall](op: IMklMul[oT]): oT {.inline.} = return op.output

    # *NOTE*: `Mul` supports broadcasting. More about broadcasting
    # [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)


type IMklSquaredDifference*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklSquaredDifference/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiMklSquaredDifference[oT: oall](scope: Scope,
                            x: oT,
                            y: oT,
                            mkl_x: ouint8,
                            mkl_y: ouint8,
                            T: DType): IMklSquaredDifference[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklSquaredDifference(*#, #, #, #, #, #)", constructor.}

proc iMklSquaredDifference*[oT: oall](scope: Scope,
                            x: oT,
                            y: oT,
                            mkl_x: ouint8,
                            mkl_y: ouint8): IMklSquaredDifference[oT] =
  return iiiMklSquaredDifference(scope,
                                 x,
                                 y,
                                 mkl_x,
                                 mkl_y,
                                 oT.oTF)

converter iMklSquaredDifferenceToOut*[oT: oall](op: IMklSquaredDifference[oT]): oT {.inline.} = return op.output

    # *NOTE*: `SquaredDifference` supports broadcasting. More about broadcasting
    # [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)


type IMklSub*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklSub/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiMklSub[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              mkl_x: ouint8,
              mkl_y: ouint8,
              T: DType): IMklSub[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_MklSub(*#, #, #, #, #, #)", constructor.}

proc iMklSub*[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              mkl_x: ouint8,
              mkl_y: ouint8): IMklSub[oT] =
  return iiiMklSub(scope,
                   x,
                   y,
                   mkl_x,
                   mkl_y,
                   oT.oTF)

converter iMklSubToOut*[oT: oall](op: IMklSub[oT]): oT {.inline.} = return op.output

    # *NOTE*: `Sub` supports broadcasting. More about broadcasting
    # [here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)


type INcclBroadcastRecv*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_NcclBroadcastRecv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiNcclBroadcastRecv[oT: oall](scope: Scope,
                         shape: oint32,
                         shared_name: cstring,
                         T: DType,
                         num_devices: int64,
                         explicitT: type(oT)): INcclBroadcastRecv[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_NcclBroadcastRecv(*#, #, tensorflow::string(#), #, #)", constructor.}

proc iNcclBroadcastRecv*(scope: Scope,
                         shape: oint32,
                         shared_name: cstring,
                         T: type = oinvalid,
                         num_devices: int64 = 0.int): auto =
  return iiiNcclBroadcastRecv(scope,
                              shape,
                              shared_name,
                              T.oTF,
                              num_devices,
                              T)

converter iNcclBroadcastRecvToOut*[oT: oall](op: INcclBroadcastRecv[oT]): oT {.inline.} = return op.output

    # Sends data of shape `shape` from the _NcclBroadcastSend op registered in the
    # same `shared_name`.
    # The graph should be constructed so that one device runs `_NcclBroadcastSend` and
    # `num_devices-1` devices run _NcclBroadcastRecv ops with shared_name value `c`.
    # Failure to do so will cause the graph execution to fail to complete.

type INcclBroadcastSendT* = ohalf | ofloat | odouble | oint32 | oint64

type INcclBroadcastSend*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_NcclBroadcastSend/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiiNcclBroadcastSend(scope: Scope,
                         input: INcclBroadcastSendT,
                         shared_name: cstring,
                         num_devices: int64): INcclBroadcastSend {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_NcclBroadcastSend(*#, #, tensorflow::string(#), #)", constructor.}

proc iNcclBroadcastSend*(scope: Scope,
                         input: INcclBroadcastSendT,
                         shared_name: cstring,
                         num_devices: int64 = 0.int): INcclBroadcastSend =
  return iiiNcclBroadcastSend(scope,
                              input,
                              shared_name,
                              num_devices)

    # Sends `input` to the _NcclBroadcastRecv ops registered in the same
    # `shared_name`.
    # The graph should be constructed so that one device runs `_NcclBroadcastSend` and
    # `num_devices-1` devices run _NcclBroadcastRecv ops with shared_name value `c`.
    # Failure to do so will cause the graph execution to fail to complete.


type INcclReduceRecv*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_NcclReduceRecv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiNcclReduceRecv[oT: oall](scope: Scope,
                      input: oT,
                      reduction: cstring,
                      shared_name: cstring,
                      T: DType,
                      num_devices: int64): INcclReduceRecv[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_NcclReduceRecv(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc iNcclReduceRecv*[oT: oall](scope: Scope,
                      input: oT,
                      reduction: cstring,
                      shared_name: cstring,
                      num_devices: int64 = 0.int): INcclReduceRecv[oT] =
  return iiiNcclReduceRecv(scope,
                           input,
                           reduction,
                           shared_name,
                           oT.oTF,
                           num_devices)

converter iNcclReduceRecvToOut*[oT: oall](op: INcclReduceRecv[oT]): oT {.inline.} = return op.output

    # Reduces 'input' from this op and the NcclReduceSend ops registered in the same
    # `shared_name`.
    # The graph should be constructed so that 'num_devices-1' devices run
    # `_NcclReduceSend` and one device runs _NcclReduceRecv op with shared_name value
    # `c`. Failure to do so will cause the graph execution to fail to complete.

type INcclReduceSendT* = ohalf | ofloat | odouble | oint32 | oint64

type INcclReduceSend*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_NcclReduceSend/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiiNcclReduceSend(scope: Scope,
                      input: INcclReduceSendT,
                      reduction: cstring,
                      shared_name: cstring,
                      num_devices: int64): INcclReduceSend {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_NcclReduceSend(*#, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc iNcclReduceSend*(scope: Scope,
                      input: INcclReduceSendT,
                      reduction: cstring,
                      shared_name: cstring,
                      num_devices: int64 = 0.int): INcclReduceSend =
  return iiiNcclReduceSend(scope,
                           input,
                           reduction,
                           shared_name,
                           num_devices)

    # Reduces `input` to the NcclReduceRecv op registered in the same `shared_name`.
    # The graph should be constructed so that 'num_devices-1' devices run
    # `_NcclReduceSend` and one device runs _NcclReduceRecv op with shared_name value
    # `c`. Failure to do so will cause the graph execution to fail to complete.


type IParallelConcatStart*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ParallelConcatStart/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiParallelConcatStart[oT: oall](scope: Scope,
                           shape: TensorShape,
                           dtype: DType,
                           explicitT: type(oT)): IParallelConcatStart[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ParallelConcatStart(*#, #, #)", constructor.}

proc iParallelConcatStart*(scope: Scope,
                           shape: TensorShape = [].shape,
                           dtype: type = oinvalid): auto =
  return iiiParallelConcatStart(scope,
                                shape,
                                dtype.oTF,
                                dtype)

converter iParallelConcatStartToOut*[oT: oall](op: IParallelConcatStart[oT]): oT {.inline.} = return op.output

    # The memory can optionally be initialized. This is usually useful in
    # conjunction with inplace operations.


type IParallelConcatUpdate*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ParallelConcatUpdate/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiParallelConcatUpdate[oT: oall](scope: Scope,
                            value: oT,
                            update: oT,
                            T: DType,
                            loc: int64): IParallelConcatUpdate[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ParallelConcatUpdate(*#, #, #, #, #)", constructor.}

proc iParallelConcatUpdate*[oT: oall](scope: Scope,
                            value: oT,
                            update: oT,
                            loc: int64 = 0.int): IParallelConcatUpdate[oT] =
  return iiiParallelConcatUpdate(scope,
                                 value,
                                 update,
                                 oT.oTF,
                                 loc)

converter iParallelConcatUpdateToOut*[oT: oall](op: IParallelConcatUpdate[oT]): oT {.inline.} = return op.output

    # If you use this function you will almost certainly want to add
    # a control dependency as done in the implementation of parallel_stack to
    # avoid race conditions.


type IReadVariablesOp*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ReadVariablesOp/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiiReadVariablesOp[oT: oall](scope: Scope,
                       resources: olist[oresource],
                       dtypes: ArraySlice[DType],
                       explicitT: type(oT)): IReadVariablesOp[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ReadVariablesOp(*#, #, #)", constructor.}

proc iReadVariablesOp*(scope: Scope,
                       resources: olist[oresource],
                       dtypes: openArray[DType],
                       explicitT: type): auto =
  return iiiReadVariablesOp(scope,
                            resources,
                            newArraySlice(dtypes),
                            explicitT)

converter iReadVariablesOpToOutList*[oT: oall](op: IReadVariablesOp[oT]): olist[oT] {.inline.} = return op.output


type IRecv*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_Recv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiRecv[oT: oall](scope: Scope,
            tensor_name: cstring,
            send_device: cstring,
            recv_device: cstring,
            tensor_type: DType,
            send_device_incarnation: int64,
            client_terminated: bool,
            explicitT: type(oT)): IRecv[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_Recv(*#, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc iRecv*(scope: Scope,
            tensor_name: cstring,
            send_device: cstring,
            recv_device: cstring,
            tensor_type: type = oinvalid,
            send_device_incarnation: int64 = 0.int,
            client_terminated: bool = false): auto =
  return iiiRecv(scope,
                 tensor_name,
                 send_device,
                 recv_device,
                 tensor_type.oTF,
                 send_device_incarnation,
                 client_terminated,
                 tensor_type)

converter iRecvToOut*[oT: oall](op: IRecv[oT]): oT {.inline.} = return op.output

type IRetvalT* = oall

type IRetval*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_Retval/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiiRetval(scope: Scope,
              input: IRetvalT,
              index: int64): IRetval {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_Retval(*#, #, #)", constructor.}

proc iRetval*(scope: Scope,
              input: IRetvalT,
              index: int64 = 0.int): IRetval =
  return iiiRetval(scope,
                   input,
                   index)


type IScopedAllocator*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ScopedAllocator/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiScopedAllocator[oT: oall](scope: Scope,
                       shapes: ArraySlice[TensorShape],
                       sa_name: cstring,
                       shape: TensorShape,
                       T: DType,
                       id: int64,
                       expected_call_count: int64,
                       explicitT: type(oT)): IScopedAllocator[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ScopedAllocator(*#, #, tensorflow::string(#), #, #, #, #)", constructor.}

proc iScopedAllocator*(scope: Scope,
                       shapes: openArray[TensorShape],
                       sa_name: cstring,
                       shape: TensorShape = [].shape,
                       T: type = oinvalid,
                       id: int64 = 0.int,
                       expected_call_count: int64 = 0.int): auto =
  return iiiScopedAllocator(scope,
                            newArraySlice(shapes),
                            sa_name,
                            shape,
                            T.oTF,
                            id,
                            expected_call_count,
                            T)

converter iScopedAllocatorToOut*[oT: oall](op: IScopedAllocator[oT]): oT {.inline.} = return op.output

    # downstream Ops as backing store for their output tensor allocations via the
    # ScopedAllocatorMgr.
    # Returns a reference to this value.
    # 
    # This is an experimental op for internal use only.  It is possible to use this
    # op in unsafe ways.
    # 
    # 'shapes' is a list of the shapes of the tensors that are to be allocated
    # by this ScopedAllocator.
    # 'shape' is the shape of the output of this Op, i.e. the 1D backing tensor
    # from which the individual allocated tensors are aliased.
    # 'sa_name' is the name assigned to the Node, for connectivity specification
    # and debugging.
    # 'id' is a non-negative integer 'scope_id' handled by the ScopedAllocatorMgr.
    # 'expected_call_count' is the number of individual tensors expected to
    # be allocated from the backing tensor.


type IScopedAllocatorConcat*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ScopedAllocatorConcat/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiScopedAllocatorConcat[oT: oall](scope: Scope,
                             backing: oT,
                             inputs: olist[oT],
                             sa_name: cstring,
                             shape: TensorShape,
                             T: DType,
                             reshape: bool,
                             id: int64): IScopedAllocatorConcat[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ScopedAllocatorConcat(*#, #, #, tensorflow::string(#), #, #, #, #)", constructor.}

proc iScopedAllocatorConcat*[oT: oall](scope: Scope,
                             backing: oT,
                             inputs: olist[oT],
                             sa_name: cstring,
                             shape: TensorShape = [].shape,
                             reshape: bool = false,
                             id: int64 = 0.int): IScopedAllocatorConcat[oT] =
  return iiiScopedAllocatorConcat(scope,
                                  backing,
                                  inputs,
                                  sa_name,
                                  shape,
                                  oT.oTF,
                                  reshape,
                                  id)

converter iScopedAllocatorConcatToOut*[oT: oall](op: IScopedAllocatorConcat[oT]): oT {.inline.} = return op.output

    # only be used in conjunction with a ScopedAllocator which is backing the memory
    # of all of its input tensors so that actually it just outputs a read-only
    # reference to that ScopedAllocator's backing tensor.
    # 
    # This is an experimental op for internal use only.  It is possible to use this
    # op in unsafe ways.
    # 
    # 'backing' is the backing tensor, i.e. the output of an upstream ScopedAllocator.
    # 'inputs' is a list of nominal input tensors, all of which must be aliases
    # to regions of the backing tensor.  These will be outputs of upstream nodes
    # that allocate their outputs from the same ScopedAllocator.
    # 'shape' is the shape of the output, which will usually be the same shape as
    # the input backing tensor.
    # 'reshape' is true iff the output shape is to be different from that of
    # the input backing tensor.
    # 'sa_name' is the Node name of the upstream ScopedAllocator.
    # 'id' is the scope_id identifying the upstream ScopedAllocator.
    # 'N' is the number of nominal inputs to be concatenated.


type IScopedAllocatorSplit*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ScopedAllocatorSplit/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiiScopedAllocatorSplit[oT: oall](scope: Scope,
                            concat: oT,
                            split: olist[oT],
                            sa_name: cstring,
                            shapes: ArraySlice[TensorShape],
                            T: DType,
                            id: int64): IScopedAllocatorSplit[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_ScopedAllocatorSplit(*#, #, #, tensorflow::string(#), #, #, #)", constructor.}

proc iScopedAllocatorSplit*[oT: oall](scope: Scope,
                            concat: oT,
                            split: olist[oT],
                            sa_name: cstring,
                            shapes: openArray[TensorShape],
                            id: int64 = 0.int): IScopedAllocatorSplit[oT] =
  return iiiScopedAllocatorSplit(scope,
                                 concat,
                                 split,
                                 sa_name,
                                 newArraySlice(shapes),
                                 oT.oTF,
                                 id)

converter iScopedAllocatorSplitToOutList*[oT: oall](op: IScopedAllocatorSplit[oT]): olist[oT] {.inline.} = return op.output

    # but must only be used in conjunction with corresponding ScopedAllocator
    # and ScopedAllocatorConcat instances.  In practice it is provided as inputs
    # the backing tensor as first input, which contains the concatenated values,
    # and a list of alias tensors as its other input and it simply outputs that
    # second list.
    # 
    # This is an experimental op for internal use only.  It is possible to use this
    # op in unsafe ways.
    # 
    # 'concat' is the single output produced by an upstream ScopedAllocatorConcat
    # node.  This is actually the backing tensor from a ScopedAllocator node
    # upstream of the ScopedAllocatorConcat.
    # 'split' is a list of tensors aliased from the backing tensor.  It will
    # become the output of this ScopedAllocatorSplit node.
    # 'type' is the common DataType of all of the input and output tensors.
    # 'sa_name' is the Node name of the upstream ScopedAllocator.
    # 'id' is the scope_id identifying the upstream ScopedAllocator.
    # 'N' is the number of split tensors.
    # 'shapes' is a list of the split tensor shapes.

type ISendT* = oall

type ISend*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_Send/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiiSend(scope: Scope,
            tensor: ISendT,
            tensor_name: cstring,
            send_device: cstring,
            recv_device: cstring,
            client_terminated: bool,
            send_device_incarnation: int64): ISend {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_Send(*#, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc iSend*(scope: Scope,
            tensor: ISendT,
            tensor_name: cstring,
            send_device: cstring,
            recv_device: cstring,
            client_terminated: bool = false,
            send_device_incarnation: int64 = 0.int): ISend =
  return iiiSend(scope,
                 tensor,
                 tensor_name,
                 send_device,
                 recv_device,
                 client_terminated,
                 send_device_incarnation)


type IUnaryOpsComposition*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_UnaryOpsComposition/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiUnaryOpsComposition[oT: oall](scope: Scope,
                           x: oT,
                           op_names: ArraySlice[cstring],
                           T: DType): IUnaryOpsComposition[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_UnaryOpsComposition(*#, #, #, #)", constructor.}

proc iUnaryOpsComposition*[oT: oall](scope: Scope,
                           x: oT,
                           op_names: openArray[cstring]): IUnaryOpsComposition[oT] =
  return iiiUnaryOpsComposition(scope,
                                x,
                                newArraySlice(op_names),
                                oT.oTF)

converter iUnaryOpsCompositionToOut*[oT: oall](op: IUnaryOpsComposition[oT]): oT {.inline.} = return op.output

    # expected to create these operators.


type IVarHandlesOp* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_VarHandlesOp/*'0*/".} = object
  operation*: Operation[oresource]
  output*: olist[oresource]

proc iiiVarHandlesOp(scope: Scope,
                    containers: ArraySlice[cstring],
                    shared_names: ArraySlice[cstring],
                    dtypes: ArraySlice[DType],
                    shapes: ArraySlice[TensorShape]): IVarHandlesOp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_VarHandlesOp(*#, #, #, #, #)", constructor.}

proc iVarHandlesOp*(scope: Scope,
                    containers: openArray[cstring],
                    shared_names: openArray[cstring],
                    dtypes: openArray[DType],
                    shapes: openArray[TensorShape]): IVarHandlesOp =
  return iiiVarHandlesOp(scope,
                         newArraySlice(containers),
                         newArraySlice(shared_names),
                         newArraySlice(dtypes),
                         newArraySlice(shapes))

converter iVarHandlesOpToOutList*(op: IVarHandlesOp): olist[oresource] {.inline.} = return op.output


type IWhile*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_While/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiiWhile[oT: oall](scope: Scope,
             input: olist[oT],
             T: ArraySlice[DType],
             cond: NameAttrList,
             body: NameAttrList): IWhile[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/internal/internal.h", importcpp:"_While(*#, #, #, #, #)", constructor.}

proc iWhile*[oT: oall](scope: Scope,
             input: olist[oT],
             T: openArray[DType],
             cond: NameAttrList,
             body: NameAttrList): IWhile[oT] =
  return iiiWhile(scope,
                  input,
                  newArraySlice(T),
                  cond,
                  body)

converter iWhileToOutList*[oT: oall](op: IWhile[oT]): olist[oT] {.inline.} = return op.output

