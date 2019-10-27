import ../core

{.compile:"data/data.cc".}


type BatchDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"BatchDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iibatchDataset(scope: Scope,
                   input_dataset: ovariant,
                   batch_size: oint64,
                   output_types: ArraySlice[DType],
                   output_shapes: ArraySlice[TensorShape]): BatchDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"BatchDataset(*#, #, #, #, #)", constructor.}

proc batchDataset*(scope: Scope,
                   input_dataset: ovariant,
                   batch_size: oint64,
                   output_types: openArray[DType],
                   output_shapes: openArray[TensorShape]): BatchDataset =
  return iibatchDataset(scope,
                        input_dataset,
                        batch_size,
                        newArraySlice(output_types),
                        newArraySlice(output_shapes))

converter batchDatasetToOut*(op: BatchDataset): ovariant {.inline.} = return op.output


type BatchDatasetV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"BatchDatasetV2/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iibatchDatasetV2(scope: Scope,
                     input_dataset: ovariant,
                     batch_size: oint64,
                     drop_remainder: obool,
                     output_types: ArraySlice[DType],
                     output_shapes: ArraySlice[TensorShape]): BatchDatasetV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"BatchDatasetV2(*#, #, #, #, #, #)", constructor.}

proc batchDatasetV2*(scope: Scope,
                     input_dataset: ovariant,
                     batch_size: oint64,
                     drop_remainder: obool,
                     output_types: openArray[DType],
                     output_shapes: openArray[TensorShape]): BatchDatasetV2 =
  return iibatchDatasetV2(scope,
                          input_dataset,
                          batch_size,
                          drop_remainder,
                          newArraySlice(output_types),
                          newArraySlice(output_shapes))

converter batchDatasetV2ToOut*(op: BatchDatasetV2): ovariant {.inline.} = return op.output


type BatchFunction*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"BatchFunction/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iibatchFunction[oT: oall](scope: Scope,
                    in_tensors: olist[oall],
                    captured_tensors: olist[oall],
                    f: NameAttrList,
                    allowed_batch_sizes: ArraySlice[int],
                    container: cstring,
                    shared_name: cstring,
                    batching_queue: cstring,
                    Tin: ArraySlice[DType],
                    Tcaptured: ArraySlice[DType],
                    Tout: ArraySlice[DType],
                    num_batch_threads: int64,
                    max_batch_size: int64,
                    batch_timeout_micros: int64,
                    max_enqueued_batches: int64,
                    explicitT: type(oT)): BatchFunction[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"BatchFunction(*#, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #, #, #, #, #)", constructor.}

proc batchFunction*(scope: Scope,
                    in_tensors: olist[oall],
                    captured_tensors: olist[oall],
                    f: NameAttrList,
                    allowed_batch_sizes: openArray[int],
                    container: cstring,
                    shared_name: cstring,
                    batching_queue: cstring,
                    Tin: openArray[DType],
                    Tcaptured: openArray[DType],
                    Tout: openArray[DType],
                    num_batch_threads: int64 = 0.int,
                    max_batch_size: int64 = 0.int,
                    batch_timeout_micros: int64 = 0.int,
                    max_enqueued_batches: int64 = 10.int,
                    explicitT: type): auto =
  return iibatchFunction(scope,
                         in_tensors,
                         captured_tensors,
                         f,
                         newArraySlice(allowed_batch_sizes),
                         container,
                         shared_name,
                         batching_queue,
                         newArraySlice(Tin),
                         newArraySlice(Tcaptured),
                         newArraySlice(Tout),
                         num_batch_threads,
                         max_batch_size,
                         batch_timeout_micros,
                         max_enqueued_batches,
                         explicitT)

converter batchFunctionToOutList*[oT: oall](op: BatchFunction[oT]): olist[oT] {.inline.} = return op.output


type CacheDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"CacheDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iicacheDataset(scope: Scope,
                   input_dataset: ovariant,
                   filename: ostring,
                   output_types: ArraySlice[DType],
                   output_shapes: ArraySlice[TensorShape]): CacheDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"CacheDataset(*#, #, #, #, #)", constructor.}

proc cacheDataset*(scope: Scope,
                   input_dataset: ovariant,
                   filename: ostring,
                   output_types: openArray[DType],
                   output_shapes: openArray[TensorShape]): CacheDataset =
  return iicacheDataset(scope,
                        input_dataset,
                        filename,
                        newArraySlice(output_types),
                        newArraySlice(output_shapes))

converter cacheDatasetToOut*(op: CacheDataset): ovariant {.inline.} = return op.output


type ConcatenateDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ConcatenateDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiconcatenateDataset(scope: Scope,
                         input_dataset: ovariant,
                         another_dataset: ovariant,
                         output_types: ArraySlice[DType],
                         output_shapes: ArraySlice[TensorShape]): ConcatenateDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ConcatenateDataset(*#, #, #, #, #)", constructor.}

proc concatenateDataset*(scope: Scope,
                         input_dataset: ovariant,
                         another_dataset: ovariant,
                         output_types: openArray[DType],
                         output_shapes: openArray[TensorShape]): ConcatenateDataset =
  return iiconcatenateDataset(scope,
                              input_dataset,
                              another_dataset,
                              newArraySlice(output_types),
                              newArraySlice(output_shapes))

converter concatenateDatasetToOut*(op: ConcatenateDataset): ovariant {.inline.} = return op.output


type DatasetToGraph* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"DatasetToGraph/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iidatasetToGraph(scope: Scope,
                     input_dataset: ovariant): DatasetToGraph {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"DatasetToGraph(*#, #)", constructor.}

proc datasetToGraph*(scope: Scope,
                     input_dataset: ovariant): DatasetToGraph =
  return iidatasetToGraph(scope,
                          input_dataset)

converter datasetToGraphToOut*(op: DatasetToGraph): ostring {.inline.} = return op.output


type DatasetToSingleElement*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"DatasetToSingleElement/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iidatasetToSingleElement[oT: oall](scope: Scope,
                             dataset: ovariant,
                             output_types: ArraySlice[DType],
                             output_shapes: ArraySlice[TensorShape],
                             explicitT: type(oT)): DatasetToSingleElement[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"DatasetToSingleElement(*#, #, #, #)", constructor.}

proc datasetToSingleElement*(scope: Scope,
                             dataset: ovariant,
                             output_types: openArray[DType],
                             output_shapes: openArray[TensorShape],
                             explicitT: type): auto =
  return iidatasetToSingleElement(scope,
                                  dataset,
                                  newArraySlice(output_types),
                                  newArraySlice(output_shapes),
                                  explicitT)

converter datasetToSingleElementToOutList*[oT: oall](op: DatasetToSingleElement[oT]): olist[oT] {.inline.} = return op.output


type ExperimentalAssertNextDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalAssertNextDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalAssertNextDataset(scope: Scope,
                                    input_dataset: ovariant,
                                    transformations: ostring,
                                    output_types: ArraySlice[DType],
                                    output_shapes: ArraySlice[TensorShape]): ExperimentalAssertNextDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalAssertNextDataset(*#, #, #, #, #)", constructor.}

proc experimentalAssertNextDataset*(scope: Scope,
                                    input_dataset: ovariant,
                                    transformations: ostring,
                                    output_types: openArray[DType],
                                    output_shapes: openArray[TensorShape]): ExperimentalAssertNextDataset =
  return iiexperimentalAssertNextDataset(scope,
                                         input_dataset,
                                         transformations,
                                         newArraySlice(output_types),
                                         newArraySlice(output_shapes))

converter experimentalAssertNextDatasetToOut*(op: ExperimentalAssertNextDataset): ovariant {.inline.} = return op.output


type ExperimentalBytesProducedStatsDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalBytesProducedStatsDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalBytesProducedStatsDataset(scope: Scope,
                                            input_dataset: ovariant,
                                            tag: ostring,
                                            output_types: ArraySlice[DType],
                                            output_shapes: ArraySlice[TensorShape]): ExperimentalBytesProducedStatsDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalBytesProducedStatsDataset(*#, #, #, #, #)", constructor.}

proc experimentalBytesProducedStatsDataset*(scope: Scope,
                                            input_dataset: ovariant,
                                            tag: ostring,
                                            output_types: openArray[DType],
                                            output_shapes: openArray[TensorShape]): ExperimentalBytesProducedStatsDataset =
  return iiexperimentalBytesProducedStatsDataset(scope,
                                                 input_dataset,
                                                 tag,
                                                 newArraySlice(output_types),
                                                 newArraySlice(output_shapes))

converter experimentalBytesProducedStatsDatasetToOut*(op: ExperimentalBytesProducedStatsDataset): ovariant {.inline.} = return op.output


type ExperimentalCSVDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalCSVDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalCSVDataset(scope: Scope,
                             filenames: ostring,
                             compression_type: ostring,
                             buffer_size: oint64,
                             header: obool,
                             field_delim: ostring,
                             use_quote_delim: obool,
                             na_value: ostring,
                             select_cols: oint64,
                             record_defaults: olist[oall],
                             output_types: ArraySlice[DType],
                             output_shapes: ArraySlice[TensorShape]): ExperimentalCSVDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalCSVDataset(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalCSVDataset*(scope: Scope,
                             filenames: ostring,
                             compression_type: ostring,
                             buffer_size: oint64,
                             header: obool,
                             field_delim: ostring,
                             use_quote_delim: obool,
                             na_value: ostring,
                             select_cols: oint64,
                             record_defaults: olist[oall],
                             output_types: openArray[DType],
                             output_shapes: openArray[TensorShape]): ExperimentalCSVDataset =
  return iiexperimentalCSVDataset(scope,
                                  filenames,
                                  compression_type,
                                  buffer_size,
                                  header,
                                  field_delim,
                                  use_quote_delim,
                                  na_value,
                                  select_cols,
                                  record_defaults,
                                  newArraySlice(output_types),
                                  newArraySlice(output_shapes))

converter experimentalCSVDatasetToOut*(op: ExperimentalCSVDataset): ovariant {.inline.} = return op.output


type ExperimentalDatasetCardinality* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalDatasetCardinality/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiexperimentalDatasetCardinality(scope: Scope,
                                     input_dataset: ovariant): ExperimentalDatasetCardinality {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalDatasetCardinality(*#, #)", constructor.}

proc experimentalDatasetCardinality*(scope: Scope,
                                     input_dataset: ovariant): ExperimentalDatasetCardinality =
  return iiexperimentalDatasetCardinality(scope,
                                          input_dataset)

converter experimentalDatasetCardinalityToOut*(op: ExperimentalDatasetCardinality): oint64 {.inline.} = return op.output


type ExperimentalDatasetToTFRecord*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalDatasetToTFRecord/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiexperimentalDatasetToTFRecord(scope: Scope,
                                    input_dataset: ovariant,
                                    filename: ostring,
                                    compression_type: ostring): ExperimentalDatasetToTFRecord {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalDatasetToTFRecord(*#, #, #, #)", constructor.}

proc experimentalDatasetToTFRecord*(scope: Scope,
                                    input_dataset: ovariant,
                                    filename: ostring,
                                    compression_type: ostring): ExperimentalDatasetToTFRecord =
  return iiexperimentalDatasetToTFRecord(scope,
                                         input_dataset,
                                         filename,
                                         compression_type)


type ExperimentalDenseToSparseBatchDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalDenseToSparseBatchDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalDenseToSparseBatchDataset(scope: Scope,
                                            input_dataset: ovariant,
                                            batch_size: oint64,
                                            row_shape: oint64,
                                            output_types: ArraySlice[DType],
                                            output_shapes: ArraySlice[TensorShape]): ExperimentalDenseToSparseBatchDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalDenseToSparseBatchDataset(*#, #, #, #, #, #)", constructor.}

proc experimentalDenseToSparseBatchDataset*(scope: Scope,
                                            input_dataset: ovariant,
                                            batch_size: oint64,
                                            row_shape: oint64,
                                            output_types: openArray[DType],
                                            output_shapes: openArray[TensorShape]): ExperimentalDenseToSparseBatchDataset =
  return iiexperimentalDenseToSparseBatchDataset(scope,
                                                 input_dataset,
                                                 batch_size,
                                                 row_shape,
                                                 newArraySlice(output_types),
                                                 newArraySlice(output_shapes))

converter experimentalDenseToSparseBatchDatasetToOut*(op: ExperimentalDenseToSparseBatchDataset): ovariant {.inline.} = return op.output


type ExperimentalDirectedInterleaveDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalDirectedInterleaveDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalDirectedInterleaveDataset(scope: Scope,
                                            selector_input_dataset: ovariant,
                                            data_input_datasets: olist[ovariant],
                                            output_types: ArraySlice[DType],
                                            output_shapes: ArraySlice[TensorShape]): ExperimentalDirectedInterleaveDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalDirectedInterleaveDataset(*#, #, #, #, #)", constructor.}

proc experimentalDirectedInterleaveDataset*(scope: Scope,
                                            selector_input_dataset: ovariant,
                                            data_input_datasets: olist[ovariant],
                                            output_types: openArray[DType],
                                            output_shapes: openArray[TensorShape]): ExperimentalDirectedInterleaveDataset =
  return iiexperimentalDirectedInterleaveDataset(scope,
                                                 selector_input_dataset,
                                                 data_input_datasets,
                                                 newArraySlice(output_types),
                                                 newArraySlice(output_shapes))

converter experimentalDirectedInterleaveDatasetToOut*(op: ExperimentalDirectedInterleaveDataset): ovariant {.inline.} = return op.output


type ExperimentalGroupByReducerDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalGroupByReducerDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalGroupByReducerDataset(scope: Scope,
                                        input_dataset: ovariant,
                                        key_func_other_arguments: olist[oall],
                                        init_func_other_arguments: olist[oall],
                                        reduce_func_other_arguments: olist[oall],
                                        finalize_func_other_arguments: olist[oall],
                                        key_func: NameAttrList,
                                        init_func: NameAttrList,
                                        reduce_func: NameAttrList,
                                        finalize_func: NameAttrList,
                                        Tkey_func_other_arguments: ArraySlice[DType],
                                        Tinit_func_other_arguments: ArraySlice[DType],
                                        Treduce_func_other_arguments: ArraySlice[DType],
                                        Tfinalize_func_other_arguments: ArraySlice[DType],
                                        output_types: ArraySlice[DType],
                                        output_shapes: ArraySlice[TensorShape]): ExperimentalGroupByReducerDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalGroupByReducerDataset(*#, #, #, #, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalGroupByReducerDataset*(scope: Scope,
                                        input_dataset: ovariant,
                                        key_func_other_arguments: olist[oall],
                                        init_func_other_arguments: olist[oall],
                                        reduce_func_other_arguments: olist[oall],
                                        finalize_func_other_arguments: olist[oall],
                                        key_func: NameAttrList,
                                        init_func: NameAttrList,
                                        reduce_func: NameAttrList,
                                        finalize_func: NameAttrList,
                                        Tkey_func_other_arguments: openArray[DType],
                                        Tinit_func_other_arguments: openArray[DType],
                                        Treduce_func_other_arguments: openArray[DType],
                                        Tfinalize_func_other_arguments: openArray[DType],
                                        output_types: openArray[DType],
                                        output_shapes: openArray[TensorShape]): ExperimentalGroupByReducerDataset =
  return iiexperimentalGroupByReducerDataset(scope,
                                             input_dataset,
                                             key_func_other_arguments,
                                             init_func_other_arguments,
                                             reduce_func_other_arguments,
                                             finalize_func_other_arguments,
                                             key_func,
                                             init_func,
                                             reduce_func,
                                             finalize_func,
                                             newArraySlice(Tkey_func_other_arguments),
                                             newArraySlice(Tinit_func_other_arguments),
                                             newArraySlice(Treduce_func_other_arguments),
                                             newArraySlice(Tfinalize_func_other_arguments),
                                             newArraySlice(output_types),
                                             newArraySlice(output_shapes))

converter experimentalGroupByReducerDatasetToOut*(op: ExperimentalGroupByReducerDataset): ovariant {.inline.} = return op.output


type ExperimentalGroupByWindowDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalGroupByWindowDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalGroupByWindowDataset(scope: Scope,
                                       input_dataset: ovariant,
                                       key_func_other_arguments: olist[oall],
                                       reduce_func_other_arguments: olist[oall],
                                       window_size_func_other_arguments: olist[oall],
                                       key_func: NameAttrList,
                                       reduce_func: NameAttrList,
                                       window_size_func: NameAttrList,
                                       Tkey_func_other_arguments: ArraySlice[DType],
                                       Treduce_func_other_arguments: ArraySlice[DType],
                                       Twindow_size_func_other_arguments: ArraySlice[DType],
                                       output_types: ArraySlice[DType],
                                       output_shapes: ArraySlice[TensorShape]): ExperimentalGroupByWindowDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalGroupByWindowDataset(*#, #, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalGroupByWindowDataset*(scope: Scope,
                                       input_dataset: ovariant,
                                       key_func_other_arguments: olist[oall],
                                       reduce_func_other_arguments: olist[oall],
                                       window_size_func_other_arguments: olist[oall],
                                       key_func: NameAttrList,
                                       reduce_func: NameAttrList,
                                       window_size_func: NameAttrList,
                                       Tkey_func_other_arguments: openArray[DType],
                                       Treduce_func_other_arguments: openArray[DType],
                                       Twindow_size_func_other_arguments: openArray[DType],
                                       output_types: openArray[DType],
                                       output_shapes: openArray[TensorShape]): ExperimentalGroupByWindowDataset =
  return iiexperimentalGroupByWindowDataset(scope,
                                            input_dataset,
                                            key_func_other_arguments,
                                            reduce_func_other_arguments,
                                            window_size_func_other_arguments,
                                            key_func,
                                            reduce_func,
                                            window_size_func,
                                            newArraySlice(Tkey_func_other_arguments),
                                            newArraySlice(Treduce_func_other_arguments),
                                            newArraySlice(Twindow_size_func_other_arguments),
                                            newArraySlice(output_types),
                                            newArraySlice(output_shapes))

converter experimentalGroupByWindowDatasetToOut*(op: ExperimentalGroupByWindowDataset): ovariant {.inline.} = return op.output


type ExperimentalIdentityIndexedDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalIdentityIndexedDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalIdentityIndexedDataset(scope: Scope,
                                         size: ouint64): ExperimentalIdentityIndexedDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalIdentityIndexedDataset(*#, #)", constructor.}

proc experimentalIdentityIndexedDataset*(scope: Scope,
                                         size: ouint64): ExperimentalIdentityIndexedDataset =
  return iiexperimentalIdentityIndexedDataset(scope,
                                              size)

converter experimentalIdentityIndexedDatasetToOut*(op: ExperimentalIdentityIndexedDataset): ovariant {.inline.} = return op.output


type ExperimentalIgnoreErrorsDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalIgnoreErrorsDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalIgnoreErrorsDataset(scope: Scope,
                                      input_dataset: ovariant,
                                      output_types: ArraySlice[DType],
                                      output_shapes: ArraySlice[TensorShape]): ExperimentalIgnoreErrorsDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalIgnoreErrorsDataset(*#, #, #, #)", constructor.}

proc experimentalIgnoreErrorsDataset*(scope: Scope,
                                      input_dataset: ovariant,
                                      output_types: openArray[DType],
                                      output_shapes: openArray[TensorShape]): ExperimentalIgnoreErrorsDataset =
  return iiexperimentalIgnoreErrorsDataset(scope,
                                           input_dataset,
                                           newArraySlice(output_types),
                                           newArraySlice(output_shapes))

converter experimentalIgnoreErrorsDatasetToOut*(op: ExperimentalIgnoreErrorsDataset): ovariant {.inline.} = return op.output


type ExperimentalIndexedDatasetGet*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalIndexedDatasetGet/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiexperimentalIndexedDatasetGet[oT: oall](scope: Scope,
                                    materialized: oresource,
                                    index: ouint64,
                                    output_types: ArraySlice[DType],
                                    output_shapes: ArraySlice[TensorShape],
                                    explicitT: type(oT)): ExperimentalIndexedDatasetGet[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalIndexedDatasetGet(*#, #, #, #, #)", constructor.}

proc experimentalIndexedDatasetGet*(scope: Scope,
                                    materialized: oresource,
                                    index: ouint64,
                                    output_types: openArray[DType],
                                    output_shapes: openArray[TensorShape],
                                    explicitT: type): auto =
  return iiexperimentalIndexedDatasetGet(scope,
                                         materialized,
                                         index,
                                         newArraySlice(output_types),
                                         newArraySlice(output_shapes),
                                         explicitT)

converter experimentalIndexedDatasetGetToOutList*[oT: oall](op: ExperimentalIndexedDatasetGet[oT]): olist[oT] {.inline.} = return op.output


type ExperimentalIndexedDatasetMaterialize*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalIndexedDatasetMaterialize/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiexperimentalIndexedDatasetMaterialize(scope: Scope,
                                            dataset: ovariant,
                                            materialized: oresource): ExperimentalIndexedDatasetMaterialize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalIndexedDatasetMaterialize(*#, #, #)", constructor.}

proc experimentalIndexedDatasetMaterialize*(scope: Scope,
                                            dataset: ovariant,
                                            materialized: oresource): ExperimentalIndexedDatasetMaterialize =
  return iiexperimentalIndexedDatasetMaterialize(scope,
                                                 dataset,
                                                 materialized)


type ExperimentalLMDBDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalLMDBDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalLMDBDataset(scope: Scope,
                              filenames: ostring,
                              output_types: ArraySlice[DType],
                              output_shapes: ArraySlice[TensorShape]): ExperimentalLMDBDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalLMDBDataset(*#, #, #, #)", constructor.}

proc experimentalLMDBDataset*(scope: Scope,
                              filenames: ostring,
                              output_types: openArray[DType],
                              output_shapes: openArray[TensorShape]): ExperimentalLMDBDataset =
  return iiexperimentalLMDBDataset(scope,
                                   filenames,
                                   newArraySlice(output_types),
                                   newArraySlice(output_shapes))

converter experimentalLMDBDatasetToOut*(op: ExperimentalLMDBDataset): ovariant {.inline.} = return op.output


type ExperimentalLatencyStatsDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalLatencyStatsDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalLatencyStatsDataset(scope: Scope,
                                      input_dataset: ovariant,
                                      tag: ostring,
                                      output_types: ArraySlice[DType],
                                      output_shapes: ArraySlice[TensorShape]): ExperimentalLatencyStatsDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalLatencyStatsDataset(*#, #, #, #, #)", constructor.}

proc experimentalLatencyStatsDataset*(scope: Scope,
                                      input_dataset: ovariant,
                                      tag: ostring,
                                      output_types: openArray[DType],
                                      output_shapes: openArray[TensorShape]): ExperimentalLatencyStatsDataset =
  return iiexperimentalLatencyStatsDataset(scope,
                                           input_dataset,
                                           tag,
                                           newArraySlice(output_types),
                                           newArraySlice(output_shapes))

converter experimentalLatencyStatsDatasetToOut*(op: ExperimentalLatencyStatsDataset): ovariant {.inline.} = return op.output


type ExperimentalMapAndBatchDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMapAndBatchDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalMapAndBatchDataset(scope: Scope,
                                     input_dataset: ovariant,
                                     other_arguments: olist[oall],
                                     batch_size: oint64,
                                     num_parallel_calls: oint64,
                                     drop_remainder: obool,
                                     f: NameAttrList,
                                     Targuments: ArraySlice[DType],
                                     output_types: ArraySlice[DType],
                                     output_shapes: ArraySlice[TensorShape],
                                     preserve_cardinality: bool): ExperimentalMapAndBatchDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMapAndBatchDataset(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalMapAndBatchDataset*(scope: Scope,
                                     input_dataset: ovariant,
                                     other_arguments: olist[oall],
                                     batch_size: oint64,
                                     num_parallel_calls: oint64,
                                     drop_remainder: obool,
                                     f: NameAttrList,
                                     Targuments: openArray[DType],
                                     output_types: openArray[DType],
                                     output_shapes: openArray[TensorShape],
                                     preserve_cardinality: bool = false): ExperimentalMapAndBatchDataset =
  return iiexperimentalMapAndBatchDataset(scope,
                                          input_dataset,
                                          other_arguments,
                                          batch_size,
                                          num_parallel_calls,
                                          drop_remainder,
                                          f,
                                          newArraySlice(Targuments),
                                          newArraySlice(output_types),
                                          newArraySlice(output_shapes),
                                          preserve_cardinality)

converter experimentalMapAndBatchDatasetToOut*(op: ExperimentalMapAndBatchDataset): ovariant {.inline.} = return op.output


type ExperimentalMapDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMapDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalMapDataset(scope: Scope,
                             input_dataset: ovariant,
                             other_arguments: olist[oall],
                             f: NameAttrList,
                             Targuments: ArraySlice[DType],
                             output_types: ArraySlice[DType],
                             output_shapes: ArraySlice[TensorShape],
                             use_inter_op_parallelism: bool,
                             preserve_cardinality: bool): ExperimentalMapDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMapDataset(*#, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalMapDataset*(scope: Scope,
                             input_dataset: ovariant,
                             other_arguments: olist[oall],
                             f: NameAttrList,
                             Targuments: openArray[DType],
                             output_types: openArray[DType],
                             output_shapes: openArray[TensorShape],
                             use_inter_op_parallelism: bool = true,
                             preserve_cardinality: bool = false): ExperimentalMapDataset =
  return iiexperimentalMapDataset(scope,
                                  input_dataset,
                                  other_arguments,
                                  f,
                                  newArraySlice(Targuments),
                                  newArraySlice(output_types),
                                  newArraySlice(output_shapes),
                                  use_inter_op_parallelism,
                                  preserve_cardinality)

converter experimentalMapDatasetToOut*(op: ExperimentalMapDataset): ovariant {.inline.} = return op.output


type ExperimentalMatchingFilesDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMatchingFilesDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalMatchingFilesDataset(scope: Scope,
                                       patterns: ostring): ExperimentalMatchingFilesDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMatchingFilesDataset(*#, #)", constructor.}

proc experimentalMatchingFilesDataset*(scope: Scope,
                                       patterns: ostring): ExperimentalMatchingFilesDataset =
  return iiexperimentalMatchingFilesDataset(scope,
                                            patterns)

converter experimentalMatchingFilesDatasetToOut*(op: ExperimentalMatchingFilesDataset): ovariant {.inline.} = return op.output


type ExperimentalMaterializedIndexDatasetHandle* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMaterializedIndexDatasetHandle/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiexperimentalMaterializedIndexDatasetHandle(scope: Scope,
                                                 container: cstring,
                                                 shared_name: cstring,
                                                 output_types: ArraySlice[DType],
                                                 output_shapes: ArraySlice[TensorShape]): ExperimentalMaterializedIndexDatasetHandle {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMaterializedIndexDatasetHandle(*#, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc experimentalMaterializedIndexDatasetHandle*(scope: Scope,
                                                 container: cstring,
                                                 shared_name: cstring,
                                                 output_types: openArray[DType],
                                                 output_shapes: openArray[TensorShape]): ExperimentalMaterializedIndexDatasetHandle =
  return iiexperimentalMaterializedIndexDatasetHandle(scope,
                                                      container,
                                                      shared_name,
                                                      newArraySlice(output_types),
                                                      newArraySlice(output_shapes))

converter experimentalMaterializedIndexDatasetHandleToOut*(op: ExperimentalMaterializedIndexDatasetHandle): oresource {.inline.} = return op.output


type ExperimentalMaxIntraOpParallelismDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMaxIntraOpParallelismDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalMaxIntraOpParallelismDataset(scope: Scope,
                                               input_dataset: ovariant,
                                               max_intra_op_parallelism: oint64,
                                               output_types: ArraySlice[DType],
                                               output_shapes: ArraySlice[TensorShape]): ExperimentalMaxIntraOpParallelismDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalMaxIntraOpParallelismDataset(*#, #, #, #, #)", constructor.}

proc experimentalMaxIntraOpParallelismDataset*(scope: Scope,
                                               input_dataset: ovariant,
                                               max_intra_op_parallelism: oint64,
                                               output_types: openArray[DType],
                                               output_shapes: openArray[TensorShape]): ExperimentalMaxIntraOpParallelismDataset =
  return iiexperimentalMaxIntraOpParallelismDataset(scope,
                                                    input_dataset,
                                                    max_intra_op_parallelism,
                                                    newArraySlice(output_types),
                                                    newArraySlice(output_shapes))

converter experimentalMaxIntraOpParallelismDatasetToOut*(op: ExperimentalMaxIntraOpParallelismDataset): ovariant {.inline.} = return op.output


type ExperimentalNonSerializableDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalNonSerializableDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalNonSerializableDataset(scope: Scope,
                                         input_dataset: ovariant,
                                         output_types: ArraySlice[DType],
                                         output_shapes: ArraySlice[TensorShape]): ExperimentalNonSerializableDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalNonSerializableDataset(*#, #, #, #)", constructor.}

proc experimentalNonSerializableDataset*(scope: Scope,
                                         input_dataset: ovariant,
                                         output_types: openArray[DType],
                                         output_shapes: openArray[TensorShape]): ExperimentalNonSerializableDataset =
  return iiexperimentalNonSerializableDataset(scope,
                                              input_dataset,
                                              newArraySlice(output_types),
                                              newArraySlice(output_shapes))

converter experimentalNonSerializableDatasetToOut*(op: ExperimentalNonSerializableDataset): ovariant {.inline.} = return op.output


type ExperimentalNumaMapAndBatchDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalNumaMapAndBatchDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalNumaMapAndBatchDataset(scope: Scope,
                                         input_dataset: ovariant,
                                         other_arguments: olist[oall],
                                         batch_size: oint64,
                                         num_parallel_calls: oint64,
                                         drop_remainder: obool,
                                         f: NameAttrList,
                                         Targuments: ArraySlice[DType],
                                         output_types: ArraySlice[DType],
                                         output_shapes: ArraySlice[TensorShape],
                                         preserve_cardinality: bool): ExperimentalNumaMapAndBatchDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalNumaMapAndBatchDataset(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalNumaMapAndBatchDataset*(scope: Scope,
                                         input_dataset: ovariant,
                                         other_arguments: olist[oall],
                                         batch_size: oint64,
                                         num_parallel_calls: oint64,
                                         drop_remainder: obool,
                                         f: NameAttrList,
                                         Targuments: openArray[DType],
                                         output_types: openArray[DType],
                                         output_shapes: openArray[TensorShape],
                                         preserve_cardinality: bool = false): ExperimentalNumaMapAndBatchDataset =
  return iiexperimentalNumaMapAndBatchDataset(scope,
                                              input_dataset,
                                              other_arguments,
                                              batch_size,
                                              num_parallel_calls,
                                              drop_remainder,
                                              f,
                                              newArraySlice(Targuments),
                                              newArraySlice(output_types),
                                              newArraySlice(output_shapes),
                                              preserve_cardinality)

converter experimentalNumaMapAndBatchDatasetToOut*(op: ExperimentalNumaMapAndBatchDataset): ovariant {.inline.} = return op.output


type ExperimentalParallelInterleaveDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalParallelInterleaveDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalParallelInterleaveDataset(scope: Scope,
                                            input_dataset: ovariant,
                                            other_arguments: olist[oall],
                                            cycle_length: oint64,
                                            block_length: oint64,
                                            sloppy: obool,
                                            buffer_output_elements: oint64,
                                            prefetch_input_elements: oint64,
                                            f: NameAttrList,
                                            Targuments: ArraySlice[DType],
                                            output_types: ArraySlice[DType],
                                            output_shapes: ArraySlice[TensorShape]): ExperimentalParallelInterleaveDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalParallelInterleaveDataset(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalParallelInterleaveDataset*(scope: Scope,
                                            input_dataset: ovariant,
                                            other_arguments: olist[oall],
                                            cycle_length: oint64,
                                            block_length: oint64,
                                            sloppy: obool,
                                            buffer_output_elements: oint64,
                                            prefetch_input_elements: oint64,
                                            f: NameAttrList,
                                            Targuments: openArray[DType],
                                            output_types: openArray[DType],
                                            output_shapes: openArray[TensorShape]): ExperimentalParallelInterleaveDataset =
  return iiexperimentalParallelInterleaveDataset(scope,
                                                 input_dataset,
                                                 other_arguments,
                                                 cycle_length,
                                                 block_length,
                                                 sloppy,
                                                 buffer_output_elements,
                                                 prefetch_input_elements,
                                                 f,
                                                 newArraySlice(Targuments),
                                                 newArraySlice(output_types),
                                                 newArraySlice(output_shapes))

converter experimentalParallelInterleaveDatasetToOut*(op: ExperimentalParallelInterleaveDataset): ovariant {.inline.} = return op.output


type ExperimentalPrivateThreadPoolDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalPrivateThreadPoolDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalPrivateThreadPoolDataset(scope: Scope,
                                           input_dataset: ovariant,
                                           num_threads: oint64,
                                           output_types: ArraySlice[DType],
                                           output_shapes: ArraySlice[TensorShape]): ExperimentalPrivateThreadPoolDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalPrivateThreadPoolDataset(*#, #, #, #, #)", constructor.}

proc experimentalPrivateThreadPoolDataset*(scope: Scope,
                                           input_dataset: ovariant,
                                           num_threads: oint64,
                                           output_types: openArray[DType],
                                           output_shapes: openArray[TensorShape]): ExperimentalPrivateThreadPoolDataset =
  return iiexperimentalPrivateThreadPoolDataset(scope,
                                                input_dataset,
                                                num_threads,
                                                newArraySlice(output_types),
                                                newArraySlice(output_shapes))

converter experimentalPrivateThreadPoolDatasetToOut*(op: ExperimentalPrivateThreadPoolDataset): ovariant {.inline.} = return op.output


type ExperimentalRandomDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalRandomDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalRandomDataset(scope: Scope,
                                seed: oint64,
                                seed2: oint64,
                                output_types: ArraySlice[DType],
                                output_shapes: ArraySlice[TensorShape]): ExperimentalRandomDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalRandomDataset(*#, #, #, #, #)", constructor.}

proc experimentalRandomDataset*(scope: Scope,
                                seed: oint64,
                                seed2: oint64,
                                output_types: openArray[DType],
                                output_shapes: openArray[TensorShape]): ExperimentalRandomDataset =
  return iiexperimentalRandomDataset(scope,
                                     seed,
                                     seed2,
                                     newArraySlice(output_types),
                                     newArraySlice(output_shapes))

converter experimentalRandomDatasetToOut*(op: ExperimentalRandomDataset): ovariant {.inline.} = return op.output


type ExperimentalScanDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalScanDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalScanDataset(scope: Scope,
                              input_dataset: ovariant,
                              initial_state: olist[oall],
                              other_arguments: olist[oall],
                              f: NameAttrList,
                              Tstate: ArraySlice[DType],
                              Targuments: ArraySlice[DType],
                              output_types: ArraySlice[DType],
                              output_shapes: ArraySlice[TensorShape],
                              preserve_cardinality: bool): ExperimentalScanDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalScanDataset(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc experimentalScanDataset*(scope: Scope,
                              input_dataset: ovariant,
                              initial_state: olist[oall],
                              other_arguments: olist[oall],
                              f: NameAttrList,
                              Tstate: openArray[DType],
                              Targuments: openArray[DType],
                              output_types: openArray[DType],
                              output_shapes: openArray[TensorShape],
                              preserve_cardinality: bool = false): ExperimentalScanDataset =
  return iiexperimentalScanDataset(scope,
                                   input_dataset,
                                   initial_state,
                                   other_arguments,
                                   f,
                                   newArraySlice(Tstate),
                                   newArraySlice(Targuments),
                                   newArraySlice(output_types),
                                   newArraySlice(output_shapes),
                                   preserve_cardinality)

converter experimentalScanDatasetToOut*(op: ExperimentalScanDataset): ovariant {.inline.} = return op.output


type ExperimentalSetStatsAggregatorDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalSetStatsAggregatorDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalSetStatsAggregatorDataset(scope: Scope,
                                            input_dataset: ovariant,
                                            stats_aggregator: oresource,
                                            tag: ostring,
                                            counter_prefix: ostring,
                                            output_types: ArraySlice[DType],
                                            output_shapes: ArraySlice[TensorShape]): ExperimentalSetStatsAggregatorDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalSetStatsAggregatorDataset(*#, #, #, #, #, #, #)", constructor.}

proc experimentalSetStatsAggregatorDataset*(scope: Scope,
                                            input_dataset: ovariant,
                                            stats_aggregator: oresource,
                                            tag: ostring,
                                            counter_prefix: ostring,
                                            output_types: openArray[DType],
                                            output_shapes: openArray[TensorShape]): ExperimentalSetStatsAggregatorDataset =
  return iiexperimentalSetStatsAggregatorDataset(scope,
                                                 input_dataset,
                                                 stats_aggregator,
                                                 tag,
                                                 counter_prefix,
                                                 newArraySlice(output_types),
                                                 newArraySlice(output_shapes))

converter experimentalSetStatsAggregatorDatasetToOut*(op: ExperimentalSetStatsAggregatorDataset): ovariant {.inline.} = return op.output


type ExperimentalSleepDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalSleepDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalSleepDataset(scope: Scope,
                               input_dataset: ovariant,
                               sleep_microseconds: oint64,
                               output_types: ArraySlice[DType],
                               output_shapes: ArraySlice[TensorShape]): ExperimentalSleepDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalSleepDataset(*#, #, #, #, #)", constructor.}

proc experimentalSleepDataset*(scope: Scope,
                               input_dataset: ovariant,
                               sleep_microseconds: oint64,
                               output_types: openArray[DType],
                               output_shapes: openArray[TensorShape]): ExperimentalSleepDataset =
  return iiexperimentalSleepDataset(scope,
                                    input_dataset,
                                    sleep_microseconds,
                                    newArraySlice(output_types),
                                    newArraySlice(output_shapes))

converter experimentalSleepDatasetToOut*(op: ExperimentalSleepDataset): ovariant {.inline.} = return op.output


type ExperimentalSlidingWindowDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalSlidingWindowDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalSlidingWindowDataset(scope: Scope,
                                       input_dataset: ovariant,
                                       window_size: oint64,
                                       window_shift: oint64,
                                       window_stride: oint64,
                                       output_types: ArraySlice[DType],
                                       output_shapes: ArraySlice[TensorShape]): ExperimentalSlidingWindowDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalSlidingWindowDataset(*#, #, #, #, #, #, #)", constructor.}

proc experimentalSlidingWindowDataset*(scope: Scope,
                                       input_dataset: ovariant,
                                       window_size: oint64,
                                       window_shift: oint64,
                                       window_stride: oint64,
                                       output_types: openArray[DType],
                                       output_shapes: openArray[TensorShape]): ExperimentalSlidingWindowDataset =
  return iiexperimentalSlidingWindowDataset(scope,
                                            input_dataset,
                                            window_size,
                                            window_shift,
                                            window_stride,
                                            newArraySlice(output_types),
                                            newArraySlice(output_shapes))

converter experimentalSlidingWindowDatasetToOut*(op: ExperimentalSlidingWindowDataset): ovariant {.inline.} = return op.output


type ExperimentalSqlDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalSqlDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalSqlDataset(scope: Scope,
                             driver_name: ostring,
                             data_source_name: ostring,
                             query: ostring,
                             output_types: ArraySlice[DType],
                             output_shapes: ArraySlice[TensorShape]): ExperimentalSqlDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalSqlDataset(*#, #, #, #, #, #)", constructor.}

proc experimentalSqlDataset*(scope: Scope,
                             driver_name: ostring,
                             data_source_name: ostring,
                             query: ostring,
                             output_types: openArray[DType],
                             output_shapes: openArray[TensorShape]): ExperimentalSqlDataset =
  return iiexperimentalSqlDataset(scope,
                                  driver_name,
                                  data_source_name,
                                  query,
                                  newArraySlice(output_types),
                                  newArraySlice(output_shapes))

converter experimentalSqlDatasetToOut*(op: ExperimentalSqlDataset): ovariant {.inline.} = return op.output


type ExperimentalThreadPoolDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalThreadPoolDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalThreadPoolDataset(scope: Scope,
                                    input_dataset: ovariant,
                                    thread_pool: oresource,
                                    output_types: ArraySlice[DType],
                                    output_shapes: ArraySlice[TensorShape]): ExperimentalThreadPoolDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalThreadPoolDataset(*#, #, #, #, #)", constructor.}

proc experimentalThreadPoolDataset*(scope: Scope,
                                    input_dataset: ovariant,
                                    thread_pool: oresource,
                                    output_types: openArray[DType],
                                    output_shapes: openArray[TensorShape]): ExperimentalThreadPoolDataset =
  return iiexperimentalThreadPoolDataset(scope,
                                         input_dataset,
                                         thread_pool,
                                         newArraySlice(output_types),
                                         newArraySlice(output_shapes))

converter experimentalThreadPoolDatasetToOut*(op: ExperimentalThreadPoolDataset): ovariant {.inline.} = return op.output


type ExperimentalUnbatchDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalUnbatchDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalUnbatchDataset(scope: Scope,
                                 input_dataset: ovariant,
                                 output_types: ArraySlice[DType],
                                 output_shapes: ArraySlice[TensorShape]): ExperimentalUnbatchDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalUnbatchDataset(*#, #, #, #)", constructor.}

proc experimentalUnbatchDataset*(scope: Scope,
                                 input_dataset: ovariant,
                                 output_types: openArray[DType],
                                 output_shapes: openArray[TensorShape]): ExperimentalUnbatchDataset =
  return iiexperimentalUnbatchDataset(scope,
                                      input_dataset,
                                      newArraySlice(output_types),
                                      newArraySlice(output_shapes))

converter experimentalUnbatchDatasetToOut*(op: ExperimentalUnbatchDataset): ovariant {.inline.} = return op.output


type ExperimentalUniqueDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalUniqueDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiexperimentalUniqueDataset(scope: Scope,
                                input_dataset: ovariant,
                                output_types: ArraySlice[DType],
                                output_shapes: ArraySlice[TensorShape]): ExperimentalUniqueDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ExperimentalUniqueDataset(*#, #, #, #)", constructor.}

proc experimentalUniqueDataset*(scope: Scope,
                                input_dataset: ovariant,
                                output_types: openArray[DType],
                                output_shapes: openArray[TensorShape]): ExperimentalUniqueDataset =
  return iiexperimentalUniqueDataset(scope,
                                     input_dataset,
                                     newArraySlice(output_types),
                                     newArraySlice(output_shapes))

converter experimentalUniqueDatasetToOut*(op: ExperimentalUniqueDataset): ovariant {.inline.} = return op.output


type FilterByLastComponentDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FilterByLastComponentDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iifilterByLastComponentDataset(scope: Scope,
                                   input_dataset: ovariant,
                                   output_types: ArraySlice[DType],
                                   output_shapes: ArraySlice[TensorShape]): FilterByLastComponentDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FilterByLastComponentDataset(*#, #, #, #)", constructor.}

proc filterByLastComponentDataset*(scope: Scope,
                                   input_dataset: ovariant,
                                   output_types: openArray[DType],
                                   output_shapes: openArray[TensorShape]): FilterByLastComponentDataset =
  return iifilterByLastComponentDataset(scope,
                                        input_dataset,
                                        newArraySlice(output_types),
                                        newArraySlice(output_shapes))

converter filterByLastComponentDatasetToOut*(op: FilterByLastComponentDataset): ovariant {.inline.} = return op.output


type FilterDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FilterDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iifilterDataset(scope: Scope,
                    input_dataset: ovariant,
                    other_arguments: olist[oall],
                    predicate: NameAttrList,
                    Targuments: ArraySlice[DType],
                    output_types: ArraySlice[DType],
                    output_shapes: ArraySlice[TensorShape]): FilterDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FilterDataset(*#, #, #, #, #, #, #)", constructor.}

proc filterDataset*(scope: Scope,
                    input_dataset: ovariant,
                    other_arguments: olist[oall],
                    predicate: NameAttrList,
                    Targuments: openArray[DType],
                    output_types: openArray[DType],
                    output_shapes: openArray[TensorShape]): FilterDataset =
  return iifilterDataset(scope,
                         input_dataset,
                         other_arguments,
                         predicate,
                         newArraySlice(Targuments),
                         newArraySlice(output_types),
                         newArraySlice(output_shapes))

converter filterDatasetToOut*(op: FilterDataset): ovariant {.inline.} = return op.output


type FixedLengthRecordDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FixedLengthRecordDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iifixedLengthRecordDataset(scope: Scope,
                               filenames: ostring,
                               header_bytes: oint64,
                               record_bytes: oint64,
                               footer_bytes: oint64,
                               buffer_size: oint64): FixedLengthRecordDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FixedLengthRecordDataset(*#, #, #, #, #, #)", constructor.}

proc fixedLengthRecordDataset*(scope: Scope,
                               filenames: ostring,
                               header_bytes: oint64,
                               record_bytes: oint64,
                               footer_bytes: oint64,
                               buffer_size: oint64): FixedLengthRecordDataset =
  return iifixedLengthRecordDataset(scope,
                                    filenames,
                                    header_bytes,
                                    record_bytes,
                                    footer_bytes,
                                    buffer_size)

converter fixedLengthRecordDatasetToOut*(op: FixedLengthRecordDataset): ovariant {.inline.} = return op.output


type FixedLengthRecordDatasetV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FixedLengthRecordDatasetV2/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iifixedLengthRecordDatasetV2(scope: Scope,
                                 filenames: ostring,
                                 header_bytes: oint64,
                                 record_bytes: oint64,
                                 footer_bytes: oint64,
                                 buffer_size: oint64,
                                 compression_type: ostring): FixedLengthRecordDatasetV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FixedLengthRecordDatasetV2(*#, #, #, #, #, #, #)", constructor.}

proc fixedLengthRecordDatasetV2*(scope: Scope,
                                 filenames: ostring,
                                 header_bytes: oint64,
                                 record_bytes: oint64,
                                 footer_bytes: oint64,
                                 buffer_size: oint64,
                                 compression_type: ostring): FixedLengthRecordDatasetV2 =
  return iifixedLengthRecordDatasetV2(scope,
                                      filenames,
                                      header_bytes,
                                      record_bytes,
                                      footer_bytes,
                                      buffer_size,
                                      compression_type)

converter fixedLengthRecordDatasetV2ToOut*(op: FixedLengthRecordDatasetV2): ovariant {.inline.} = return op.output


type FlatMapDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FlatMapDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiflatMapDataset(scope: Scope,
                     input_dataset: ovariant,
                     other_arguments: olist[oall],
                     f: NameAttrList,
                     Targuments: ArraySlice[DType],
                     output_types: ArraySlice[DType],
                     output_shapes: ArraySlice[TensorShape]): FlatMapDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"FlatMapDataset(*#, #, #, #, #, #, #)", constructor.}

proc flatMapDataset*(scope: Scope,
                     input_dataset: ovariant,
                     other_arguments: olist[oall],
                     f: NameAttrList,
                     Targuments: openArray[DType],
                     output_types: openArray[DType],
                     output_shapes: openArray[TensorShape]): FlatMapDataset =
  return iiflatMapDataset(scope,
                          input_dataset,
                          other_arguments,
                          f,
                          newArraySlice(Targuments),
                          newArraySlice(output_types),
                          newArraySlice(output_shapes))

converter flatMapDatasetToOut*(op: FlatMapDataset): ovariant {.inline.} = return op.output


type GeneratorDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"GeneratorDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iigeneratorDataset(scope: Scope,
                       init_func_other_args: olist[oall],
                       next_func_other_args: olist[oall],
                       finalize_func_other_args: olist[oall],
                       init_func: NameAttrList,
                       next_func: NameAttrList,
                       finalize_func: NameAttrList,
                       Tinit_func_args: ArraySlice[DType],
                       Tnext_func_args: ArraySlice[DType],
                       Tfinalize_func_args: ArraySlice[DType],
                       output_types: ArraySlice[DType],
                       output_shapes: ArraySlice[TensorShape]): GeneratorDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"GeneratorDataset(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc generatorDataset*(scope: Scope,
                       init_func_other_args: olist[oall],
                       next_func_other_args: olist[oall],
                       finalize_func_other_args: olist[oall],
                       init_func: NameAttrList,
                       next_func: NameAttrList,
                       finalize_func: NameAttrList,
                       Tinit_func_args: openArray[DType],
                       Tnext_func_args: openArray[DType],
                       Tfinalize_func_args: openArray[DType],
                       output_types: openArray[DType],
                       output_shapes: openArray[TensorShape]): GeneratorDataset =
  return iigeneratorDataset(scope,
                            init_func_other_args,
                            next_func_other_args,
                            finalize_func_other_args,
                            init_func,
                            next_func,
                            finalize_func,
                            newArraySlice(Tinit_func_args),
                            newArraySlice(Tnext_func_args),
                            newArraySlice(Tfinalize_func_args),
                            newArraySlice(output_types),
                            newArraySlice(output_shapes))

converter generatorDatasetToOut*(op: GeneratorDataset): ovariant {.inline.} = return op.output


type InterleaveDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"InterleaveDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiinterleaveDataset(scope: Scope,
                        input_dataset: ovariant,
                        other_arguments: olist[oall],
                        cycle_length: oint64,
                        block_length: oint64,
                        f: NameAttrList,
                        Targuments: ArraySlice[DType],
                        output_types: ArraySlice[DType],
                        output_shapes: ArraySlice[TensorShape]): InterleaveDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"InterleaveDataset(*#, #, #, #, #, #, #, #, #)", constructor.}

proc interleaveDataset*(scope: Scope,
                        input_dataset: ovariant,
                        other_arguments: olist[oall],
                        cycle_length: oint64,
                        block_length: oint64,
                        f: NameAttrList,
                        Targuments: openArray[DType],
                        output_types: openArray[DType],
                        output_shapes: openArray[TensorShape]): InterleaveDataset =
  return iiinterleaveDataset(scope,
                             input_dataset,
                             other_arguments,
                             cycle_length,
                             block_length,
                             f,
                             newArraySlice(Targuments),
                             newArraySlice(output_types),
                             newArraySlice(output_shapes))

converter interleaveDatasetToOut*(op: InterleaveDataset): ovariant {.inline.} = return op.output


type MapDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"MapDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iimapDataset(scope: Scope,
                 input_dataset: ovariant,
                 other_arguments: olist[oall],
                 f: NameAttrList,
                 Targuments: ArraySlice[DType],
                 output_types: ArraySlice[DType],
                 output_shapes: ArraySlice[TensorShape],
                 use_inter_op_parallelism: bool,
                 preserve_cardinality: bool): MapDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"MapDataset(*#, #, #, #, #, #, #, #, #)", constructor.}

proc mapDataset*(scope: Scope,
                 input_dataset: ovariant,
                 other_arguments: olist[oall],
                 f: NameAttrList,
                 Targuments: openArray[DType],
                 output_types: openArray[DType],
                 output_shapes: openArray[TensorShape],
                 use_inter_op_parallelism: bool = true,
                 preserve_cardinality: bool = false): MapDataset =
  return iimapDataset(scope,
                      input_dataset,
                      other_arguments,
                      f,
                      newArraySlice(Targuments),
                      newArraySlice(output_types),
                      newArraySlice(output_shapes),
                      use_inter_op_parallelism,
                      preserve_cardinality)

converter mapDatasetToOut*(op: MapDataset): ovariant {.inline.} = return op.output


type MapDefun*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"MapDefun/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iimapDefun[oT: oall](scope: Scope,
               arguments: olist[oall],
               captured_inputs: olist[oall],
               Targuments: ArraySlice[DType],
               Tcaptured: ArraySlice[DType],
               output_types: ArraySlice[DType],
               output_shapes: ArraySlice[TensorShape],
               f: NameAttrList,
               explicitT: type(oT)): MapDefun[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"MapDefun(*#, #, #, #, #, #, #, #)", constructor.}

proc mapDefun*(scope: Scope,
               arguments: olist[oall],
               captured_inputs: olist[oall],
               Targuments: openArray[DType],
               Tcaptured: openArray[DType],
               output_types: openArray[DType],
               output_shapes: openArray[TensorShape],
               f: NameAttrList,
               explicitT: type): auto =
  return iimapDefun(scope,
                    arguments,
                    captured_inputs,
                    newArraySlice(Targuments),
                    newArraySlice(Tcaptured),
                    newArraySlice(output_types),
                    newArraySlice(output_shapes),
                    f,
                    explicitT)

converter mapDefunToOutList*[oT: oall](op: MapDefun[oT]): olist[oT] {.inline.} = return op.output


type ModelDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ModelDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iimodelDataset(scope: Scope,
                   input_dataset: ovariant,
                   output_types: ArraySlice[DType],
                   output_shapes: ArraySlice[TensorShape]): ModelDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ModelDataset(*#, #, #, #)", constructor.}

proc modelDataset*(scope: Scope,
                   input_dataset: ovariant,
                   output_types: openArray[DType],
                   output_shapes: openArray[TensorShape]): ModelDataset =
  return iimodelDataset(scope,
                        input_dataset,
                        newArraySlice(output_types),
                        newArraySlice(output_shapes))

converter modelDatasetToOut*(op: ModelDataset): ovariant {.inline.} = return op.output


type OptimizeDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"OptimizeDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iioptimizeDataset(scope: Scope,
                      input_dataset: ovariant,
                      optimizations: ostring,
                      output_types: ArraySlice[DType],
                      output_shapes: ArraySlice[TensorShape]): OptimizeDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"OptimizeDataset(*#, #, #, #, #)", constructor.}

proc optimizeDataset*(scope: Scope,
                      input_dataset: ovariant,
                      optimizations: ostring,
                      output_types: openArray[DType],
                      output_shapes: openArray[TensorShape]): OptimizeDataset =
  return iioptimizeDataset(scope,
                           input_dataset,
                           optimizations,
                           newArraySlice(output_types),
                           newArraySlice(output_shapes))

converter optimizeDatasetToOut*(op: OptimizeDataset): ovariant {.inline.} = return op.output


type PaddedBatchDatasetV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"PaddedBatchDatasetV2/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iipaddedBatchDatasetV2(scope: Scope,
                           input_dataset: ovariant,
                           batch_size: oint64,
                           padded_shapes: olist[oint64],
                           padding_values: olist[oall],
                           drop_remainder: obool,
                           Toutput_types: ArraySlice[DType],
                           output_shapes: ArraySlice[TensorShape]): PaddedBatchDatasetV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"PaddedBatchDatasetV2(*#, #, #, #, #, #, #, #)", constructor.}

proc paddedBatchDatasetV2*(scope: Scope,
                           input_dataset: ovariant,
                           batch_size: oint64,
                           padded_shapes: olist[oint64],
                           padding_values: olist[oall],
                           drop_remainder: obool,
                           Toutput_types: openArray[DType],
                           output_shapes: openArray[TensorShape]): PaddedBatchDatasetV2 =
  return iipaddedBatchDatasetV2(scope,
                                input_dataset,
                                batch_size,
                                padded_shapes,
                                padding_values,
                                drop_remainder,
                                newArraySlice(Toutput_types),
                                newArraySlice(output_shapes))

converter paddedBatchDatasetV2ToOut*(op: PaddedBatchDatasetV2): ovariant {.inline.} = return op.output


type ParallelInterleaveDatasetV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ParallelInterleaveDatasetV2/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiparallelInterleaveDatasetV2(scope: Scope,
                                  input_dataset: ovariant,
                                  other_arguments: olist[oall],
                                  cycle_length: oint64,
                                  block_length: oint64,
                                  num_parallel_calls: oint64,
                                  f: NameAttrList,
                                  Targuments: ArraySlice[DType],
                                  output_types: ArraySlice[DType],
                                  output_shapes: ArraySlice[TensorShape],
                                  sloppy: bool): ParallelInterleaveDatasetV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ParallelInterleaveDatasetV2(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc parallelInterleaveDatasetV2*(scope: Scope,
                                  input_dataset: ovariant,
                                  other_arguments: olist[oall],
                                  cycle_length: oint64,
                                  block_length: oint64,
                                  num_parallel_calls: oint64,
                                  f: NameAttrList,
                                  Targuments: openArray[DType],
                                  output_types: openArray[DType],
                                  output_shapes: openArray[TensorShape],
                                  sloppy: bool = false): ParallelInterleaveDatasetV2 =
  return iiparallelInterleaveDatasetV2(scope,
                                       input_dataset,
                                       other_arguments,
                                       cycle_length,
                                       block_length,
                                       num_parallel_calls,
                                       f,
                                       newArraySlice(Targuments),
                                       newArraySlice(output_types),
                                       newArraySlice(output_shapes),
                                       sloppy)

converter parallelInterleaveDatasetV2ToOut*(op: ParallelInterleaveDatasetV2): ovariant {.inline.} = return op.output


type ParallelMapDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ParallelMapDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiparallelMapDataset(scope: Scope,
                         input_dataset: ovariant,
                         other_arguments: olist[oall],
                         num_parallel_calls: oint32,
                         f: NameAttrList,
                         Targuments: ArraySlice[DType],
                         output_types: ArraySlice[DType],
                         output_shapes: ArraySlice[TensorShape],
                         use_inter_op_parallelism: bool,
                         sloppy: bool,
                         preserve_cardinality: bool): ParallelMapDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ParallelMapDataset(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc parallelMapDataset*(scope: Scope,
                         input_dataset: ovariant,
                         other_arguments: olist[oall],
                         num_parallel_calls: oint32,
                         f: NameAttrList,
                         Targuments: openArray[DType],
                         output_types: openArray[DType],
                         output_shapes: openArray[TensorShape],
                         use_inter_op_parallelism: bool = true,
                         sloppy: bool = false,
                         preserve_cardinality: bool = false): ParallelMapDataset =
  return iiparallelMapDataset(scope,
                              input_dataset,
                              other_arguments,
                              num_parallel_calls,
                              f,
                              newArraySlice(Targuments),
                              newArraySlice(output_types),
                              newArraySlice(output_shapes),
                              use_inter_op_parallelism,
                              sloppy,
                              preserve_cardinality)

converter parallelMapDatasetToOut*(op: ParallelMapDataset): ovariant {.inline.} = return op.output


type PrefetchDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"PrefetchDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiprefetchDataset(scope: Scope,
                      input_dataset: ovariant,
                      buffer_size: oint64,
                      output_types: ArraySlice[DType],
                      output_shapes: ArraySlice[TensorShape]): PrefetchDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"PrefetchDataset(*#, #, #, #, #)", constructor.}

proc prefetchDataset*(scope: Scope,
                      input_dataset: ovariant,
                      buffer_size: oint64,
                      output_types: openArray[DType],
                      output_shapes: openArray[TensorShape]): PrefetchDataset =
  return iiprefetchDataset(scope,
                           input_dataset,
                           buffer_size,
                           newArraySlice(output_types),
                           newArraySlice(output_shapes))

converter prefetchDatasetToOut*(op: PrefetchDataset): ovariant {.inline.} = return op.output


type RangeDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"RangeDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iirangeDataset(scope: Scope,
                   start: oint64,
                   stop: oint64,
                   step: oint64,
                   output_types: ArraySlice[DType],
                   output_shapes: ArraySlice[TensorShape]): RangeDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"RangeDataset(*#, #, #, #, #, #)", constructor.}

proc rangeDataset*(scope: Scope,
                   start: oint64,
                   stop: oint64,
                   step: oint64,
                   output_types: openArray[DType],
                   output_shapes: openArray[TensorShape]): RangeDataset =
  return iirangeDataset(scope,
                        start,
                        stop,
                        step,
                        newArraySlice(output_types),
                        newArraySlice(output_shapes))

converter rangeDatasetToOut*(op: RangeDataset): ovariant {.inline.} = return op.output


type ReduceDataset*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ReduceDataset/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iireduceDataset[oT: oall](scope: Scope,
                    input_dataset: ovariant,
                    initial_state: olist[oall],
                    other_arguments: olist[oall],
                    f: NameAttrList,
                    Tstate: ArraySlice[DType],
                    Targuments: ArraySlice[DType],
                    output_types: ArraySlice[DType],
                    output_shapes: ArraySlice[TensorShape],
                    use_inter_op_parallelism: bool,
                    explicitT: type(oT)): ReduceDataset[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ReduceDataset(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc reduceDataset*(scope: Scope,
                    input_dataset: ovariant,
                    initial_state: olist[oall],
                    other_arguments: olist[oall],
                    f: NameAttrList,
                    Tstate: openArray[DType],
                    Targuments: openArray[DType],
                    output_types: openArray[DType],
                    output_shapes: openArray[TensorShape],
                    use_inter_op_parallelism: bool = true,
                    explicitT: type): auto =
  return iireduceDataset(scope,
                         input_dataset,
                         initial_state,
                         other_arguments,
                         f,
                         newArraySlice(Tstate),
                         newArraySlice(Targuments),
                         newArraySlice(output_types),
                         newArraySlice(output_shapes),
                         use_inter_op_parallelism,
                         explicitT)

converter reduceDatasetToOutList*[oT: oall](op: ReduceDataset[oT]): olist[oT] {.inline.} = return op.output


type RepeatDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"RepeatDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iirepeatDataset(scope: Scope,
                    input_dataset: ovariant,
                    count: oint64,
                    output_types: ArraySlice[DType],
                    output_shapes: ArraySlice[TensorShape]): RepeatDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"RepeatDataset(*#, #, #, #, #)", constructor.}

proc repeatDataset*(scope: Scope,
                    input_dataset: ovariant,
                    count: oint64,
                    output_types: openArray[DType],
                    output_shapes: openArray[TensorShape]): RepeatDataset =
  return iirepeatDataset(scope,
                         input_dataset,
                         count,
                         newArraySlice(output_types),
                         newArraySlice(output_shapes))

converter repeatDatasetToOut*(op: RepeatDataset): ovariant {.inline.} = return op.output


type ShuffleAndRepeatDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ShuffleAndRepeatDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iishuffleAndRepeatDataset(scope: Scope,
                              input_dataset: ovariant,
                              buffer_size: oint64,
                              seed: oint64,
                              seed2: oint64,
                              count: oint64,
                              output_types: ArraySlice[DType],
                              output_shapes: ArraySlice[TensorShape]): ShuffleAndRepeatDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ShuffleAndRepeatDataset(*#, #, #, #, #, #, #, #)", constructor.}

proc shuffleAndRepeatDataset*(scope: Scope,
                              input_dataset: ovariant,
                              buffer_size: oint64,
                              seed: oint64,
                              seed2: oint64,
                              count: oint64,
                              output_types: openArray[DType],
                              output_shapes: openArray[TensorShape]): ShuffleAndRepeatDataset =
  return iishuffleAndRepeatDataset(scope,
                                   input_dataset,
                                   buffer_size,
                                   seed,
                                   seed2,
                                   count,
                                   newArraySlice(output_types),
                                   newArraySlice(output_shapes))

converter shuffleAndRepeatDatasetToOut*(op: ShuffleAndRepeatDataset): ovariant {.inline.} = return op.output


type ShuffleDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ShuffleDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iishuffleDataset(scope: Scope,
                     input_dataset: ovariant,
                     buffer_size: oint64,
                     seed: oint64,
                     seed2: oint64,
                     output_types: ArraySlice[DType],
                     output_shapes: ArraySlice[TensorShape],
                     reshuffle_each_iteration: bool): ShuffleDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ShuffleDataset(*#, #, #, #, #, #, #, #)", constructor.}

proc shuffleDataset*(scope: Scope,
                     input_dataset: ovariant,
                     buffer_size: oint64,
                     seed: oint64,
                     seed2: oint64,
                     output_types: openArray[DType],
                     output_shapes: openArray[TensorShape],
                     reshuffle_each_iteration: bool = true): ShuffleDataset =
  return iishuffleDataset(scope,
                          input_dataset,
                          buffer_size,
                          seed,
                          seed2,
                          newArraySlice(output_types),
                          newArraySlice(output_shapes),
                          reshuffle_each_iteration)

converter shuffleDatasetToOut*(op: ShuffleDataset): ovariant {.inline.} = return op.output


type SkipDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"SkipDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiskipDataset(scope: Scope,
                  input_dataset: ovariant,
                  count: oint64,
                  output_types: ArraySlice[DType],
                  output_shapes: ArraySlice[TensorShape]): SkipDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"SkipDataset(*#, #, #, #, #)", constructor.}

proc skipDataset*(scope: Scope,
                  input_dataset: ovariant,
                  count: oint64,
                  output_types: openArray[DType],
                  output_shapes: openArray[TensorShape]): SkipDataset =
  return iiskipDataset(scope,
                       input_dataset,
                       count,
                       newArraySlice(output_types),
                       newArraySlice(output_shapes))

converter skipDatasetToOut*(op: SkipDataset): ovariant {.inline.} = return op.output

type SparseTensorSliceDatasetTvalues* = oall

type SparseTensorSliceDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"SparseTensorSliceDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iisparseTensorSliceDataset(scope: Scope,
                               indices: oint64,
                               values: SparseTensorSliceDatasetTvalues,
                               dense_shape: oint64): SparseTensorSliceDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"SparseTensorSliceDataset(*#, #, #, #)", constructor.}

proc sparseTensorSliceDataset*(scope: Scope,
                               indices: oint64,
                               values: SparseTensorSliceDatasetTvalues,
                               dense_shape: oint64): SparseTensorSliceDataset =
  return iisparseTensorSliceDataset(scope,
                                    indices,
                                    values,
                                    dense_shape)

converter sparseTensorSliceDatasetToOut*(op: SparseTensorSliceDataset): ovariant {.inline.} = return op.output


type TFRecordDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TFRecordDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitFRecordDataset(scope: Scope,
                      filenames: ostring,
                      compression_type: ostring,
                      buffer_size: oint64): TFRecordDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TFRecordDataset(*#, #, #, #)", constructor.}

proc tFRecordDataset*(scope: Scope,
                      filenames: ostring,
                      compression_type: ostring,
                      buffer_size: oint64): TFRecordDataset =
  return iitFRecordDataset(scope,
                           filenames,
                           compression_type,
                           buffer_size)

converter tFRecordDatasetToOut*(op: TFRecordDataset): ovariant {.inline.} = return op.output


type TakeDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TakeDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitakeDataset(scope: Scope,
                  input_dataset: ovariant,
                  count: oint64,
                  output_types: ArraySlice[DType],
                  output_shapes: ArraySlice[TensorShape]): TakeDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TakeDataset(*#, #, #, #, #)", constructor.}

proc takeDataset*(scope: Scope,
                  input_dataset: ovariant,
                  count: oint64,
                  output_types: openArray[DType],
                  output_shapes: openArray[TensorShape]): TakeDataset =
  return iitakeDataset(scope,
                       input_dataset,
                       count,
                       newArraySlice(output_types),
                       newArraySlice(output_shapes))

converter takeDatasetToOut*(op: TakeDataset): ovariant {.inline.} = return op.output


type TensorDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TensorDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorDataset(scope: Scope,
                    components: olist[oall],
                    Toutput_types: ArraySlice[DType],
                    output_shapes: ArraySlice[TensorShape]): TensorDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TensorDataset(*#, #, #, #)", constructor.}

proc tensorDataset*(scope: Scope,
                    components: olist[oall],
                    Toutput_types: openArray[DType],
                    output_shapes: openArray[TensorShape]): TensorDataset =
  return iitensorDataset(scope,
                         components,
                         newArraySlice(Toutput_types),
                         newArraySlice(output_shapes))

converter tensorDatasetToOut*(op: TensorDataset): ovariant {.inline.} = return op.output


type TensorSliceDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TensorSliceDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorSliceDataset(scope: Scope,
                         components: olist[oall],
                         Toutput_types: ArraySlice[DType],
                         output_shapes: ArraySlice[TensorShape]): TensorSliceDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TensorSliceDataset(*#, #, #, #)", constructor.}

proc tensorSliceDataset*(scope: Scope,
                         components: olist[oall],
                         Toutput_types: openArray[DType],
                         output_shapes: openArray[TensorShape]): TensorSliceDataset =
  return iitensorSliceDataset(scope,
                              components,
                              newArraySlice(Toutput_types),
                              newArraySlice(output_shapes))

converter tensorSliceDatasetToOut*(op: TensorSliceDataset): ovariant {.inline.} = return op.output


type TextLineDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TextLineDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitextLineDataset(scope: Scope,
                      filenames: ostring,
                      compression_type: ostring,
                      buffer_size: oint64): TextLineDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"TextLineDataset(*#, #, #, #)", constructor.}

proc textLineDataset*(scope: Scope,
                      filenames: ostring,
                      compression_type: ostring,
                      buffer_size: oint64): TextLineDataset =
  return iitextLineDataset(scope,
                           filenames,
                           compression_type,
                           buffer_size)

converter textLineDatasetToOut*(op: TextLineDataset): ovariant {.inline.} = return op.output


type UnwrapDatasetVariant* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"UnwrapDatasetVariant/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiunwrapDatasetVariant(scope: Scope,
                           input_handle: ovariant): UnwrapDatasetVariant {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"UnwrapDatasetVariant(*#, #)", constructor.}

proc unwrapDatasetVariant*(scope: Scope,
                           input_handle: ovariant): UnwrapDatasetVariant =
  return iiunwrapDatasetVariant(scope,
                                input_handle)

converter unwrapDatasetVariantToOut*(op: UnwrapDatasetVariant): ovariant {.inline.} = return op.output


type WindowDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"WindowDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiwindowDataset(scope: Scope,
                    input_dataset: ovariant,
                    size: oint64,
                    shift: oint64,
                    stride: oint64,
                    drop_remainder: obool,
                    output_types: ArraySlice[DType],
                    output_shapes: ArraySlice[TensorShape]): WindowDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"WindowDataset(*#, #, #, #, #, #, #, #)", constructor.}

proc windowDataset*(scope: Scope,
                    input_dataset: ovariant,
                    size: oint64,
                    shift: oint64,
                    stride: oint64,
                    drop_remainder: obool,
                    output_types: openArray[DType],
                    output_shapes: openArray[TensorShape]): WindowDataset =
  return iiwindowDataset(scope,
                         input_dataset,
                         size,
                         shift,
                         stride,
                         drop_remainder,
                         newArraySlice(output_types),
                         newArraySlice(output_shapes))

converter windowDatasetToOut*(op: WindowDataset): ovariant {.inline.} = return op.output


type WrapDatasetVariant* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"WrapDatasetVariant/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiwrapDatasetVariant(scope: Scope,
                         input_handle: ovariant): WrapDatasetVariant {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"WrapDatasetVariant(*#, #)", constructor.}

proc wrapDatasetVariant*(scope: Scope,
                         input_handle: ovariant): WrapDatasetVariant =
  return iiwrapDatasetVariant(scope,
                              input_handle)

converter wrapDatasetVariantToOut*(op: WrapDatasetVariant): ovariant {.inline.} = return op.output


type ZipDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ZipDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iizipDataset(scope: Scope,
                 input_datasets: olist[ovariant],
                 output_types: ArraySlice[DType],
                 output_shapes: ArraySlice[TensorShape]): ZipDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/data/data.h", importcpp:"ZipDataset(*#, #, #, #)", constructor.}

proc zipDataset*(scope: Scope,
                 input_datasets: olist[ovariant],
                 output_types: openArray[DType],
                 output_shapes: openArray[TensorShape]): ZipDataset =
  return iizipDataset(scope,
                      input_datasets,
                      newArraySlice(output_types),
                      newArraySlice(output_shapes))

converter zipDatasetToOut*(op: ZipDataset): ovariant {.inline.} = return op.output

