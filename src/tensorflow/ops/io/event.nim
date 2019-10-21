import ../../core

{.compile:"event/event.cc".}


type AudioSpectrogram* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"AudioSpectrogram/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiaudioSpectrogram(scope: Scope,
                       input: ofloat,
                       window_size: int64,
                       stride: int64,
                       magnitude_squared: bool): AudioSpectrogram {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"AudioSpectrogram(*#, #, #, #, #)", constructor.}

proc audioSpectrogram*(scope: Scope,
                       input: ofloat,
                       window_size: int64 = 0.int,
                       stride: int64 = 0.int,
                       magnitude_squared: bool = false): AudioSpectrogram =
  return iiaudioSpectrogram(scope,
                            input,
                            window_size,
                            stride,
                            magnitude_squared)

converter audioSpectrogramToOut*(op: AudioSpectrogram): ofloat {.inline.} = return op.output


type AudioSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"AudioSummary/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiaudioSummary(scope: Scope,
                   tag: ostring,
                   tensor: ofloat,
                   sample_rate: float32,
                   max_outputs: int64): AudioSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"AudioSummary(*#, #, #, #, #)", constructor.}

proc audioSummary*(scope: Scope,
                   tag: ostring,
                   tensor: ofloat,
                   sample_rate: float32 = 0.0.float32,
                   max_outputs: int64 = 3.int): AudioSummary =
  return iiaudioSummary(scope,
                        tag,
                        tensor,
                        sample_rate,
                        max_outputs)

converter audioSummaryToOut*(op: AudioSummary): ostring {.inline.} = return op.output


type AudioSummaryV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"AudioSummaryV2/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiaudioSummaryV2(scope: Scope,
                     tag: ostring,
                     tensor: ofloat,
                     sample_rate: ofloat,
                     max_outputs: int64): AudioSummaryV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"AudioSummaryV2(*#, #, #, #, #)", constructor.}

proc audioSummaryV2*(scope: Scope,
                     tag: ostring,
                     tensor: ofloat,
                     sample_rate: ofloat,
                     max_outputs: int64 = 3.int): AudioSummaryV2 =
  return iiaudioSummaryV2(scope,
                          tag,
                          tensor,
                          sample_rate,
                          max_outputs)

converter audioSummaryV2ToOut*(op: AudioSummaryV2): ostring {.inline.} = return op.output


type BoostedTreesMakeStatsSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"BoostedTreesMakeStatsSummary/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiboostedTreesMakeStatsSummary(scope: Scope,
                                   node_ids: oint32,
                                   gradients: ofloat,
                                   hessians: ofloat,
                                   bucketized_features_list: oint32,
                                   max_splits: int64,
                                   num_buckets: int64,
                                   num_features: int64): BoostedTreesMakeStatsSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"BoostedTreesMakeStatsSummary(*#, #, #, #, #, #, #, #)", constructor.}

proc boostedTreesMakeStatsSummary*(scope: Scope,
                                   node_ids: oint32,
                                   gradients: ofloat,
                                   hessians: ofloat,
                                   bucketized_features_list: oint32,
                                   max_splits: int64 = 0.int,
                                   num_buckets: int64 = 0.int,
                                   num_features: int64 = 0.int): BoostedTreesMakeStatsSummary =
  return iiboostedTreesMakeStatsSummary(scope,
                                        node_ids,
                                        gradients,
                                        hessians,
                                        bucketized_features_list,
                                        max_splits,
                                        num_buckets,
                                        num_features)

converter boostedTreesMakeStatsSummaryToOut*(op: BoostedTreesMakeStatsSummary): ofloat {.inline.} = return op.output


type CloseSummaryWriter*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"CloseSummaryWriter/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iicloseSummaryWriter(scope: Scope,
                         writer: oresource): CloseSummaryWriter {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"CloseSummaryWriter(*#, #)", constructor.}

proc closeSummaryWriter*(scope: Scope,
                         writer: oresource): CloseSummaryWriter =
  return iicloseSummaryWriter(scope,
                              writer)


type CreateSummaryDbWriter*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"CreateSummaryDbWriter/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iicreateSummaryDbWriter(scope: Scope,
                            writer: oresource,
                            db_uri: ostring,
                            experiment_name: ostring,
                            run_name: ostring,
                            user_name: ostring): CreateSummaryDbWriter {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"CreateSummaryDbWriter(*#, #, #, #, #, #)", constructor.}

proc createSummaryDbWriter*(scope: Scope,
                            writer: oresource,
                            db_uri: ostring,
                            experiment_name: ostring,
                            run_name: ostring,
                            user_name: ostring): CreateSummaryDbWriter =
  return iicreateSummaryDbWriter(scope,
                                 writer,
                                 db_uri,
                                 experiment_name,
                                 run_name,
                                 user_name)


type CreateSummaryFileWriter*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"CreateSummaryFileWriter/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iicreateSummaryFileWriter(scope: Scope,
                              writer: oresource,
                              logdir: ostring,
                              max_queue: oint32,
                              flush_millis: oint32,
                              filename_suffix: ostring): CreateSummaryFileWriter {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"CreateSummaryFileWriter(*#, #, #, #, #, #)", constructor.}

proc createSummaryFileWriter*(scope: Scope,
                              writer: oresource,
                              logdir: ostring,
                              max_queue: oint32,
                              flush_millis: oint32,
                              filename_suffix: ostring): CreateSummaryFileWriter =
  return iicreateSummaryFileWriter(scope,
                                   writer,
                                   logdir,
                                   max_queue,
                                   flush_millis,
                                   filename_suffix)


type ExperimentalStatsAggregatorHandle* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ExperimentalStatsAggregatorHandle/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiexperimentalStatsAggregatorHandle(scope: Scope,
                                        container: cstring,
                                        shared_name: cstring): ExperimentalStatsAggregatorHandle {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ExperimentalStatsAggregatorHandle(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc experimentalStatsAggregatorHandle*(scope: Scope,
                                        container: cstring,
                                        shared_name: cstring): ExperimentalStatsAggregatorHandle =
  return iiexperimentalStatsAggregatorHandle(scope,
                                             container,
                                             shared_name)

converter experimentalStatsAggregatorHandleToOut*(op: ExperimentalStatsAggregatorHandle): oresource {.inline.} = return op.output


type ExperimentalStatsAggregatorSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ExperimentalStatsAggregatorSummary/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiexperimentalStatsAggregatorSummary(scope: Scope,
                                         niterator: oresource): ExperimentalStatsAggregatorSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ExperimentalStatsAggregatorSummary(*#, #)", constructor.}

proc experimentalStatsAggregatorSummary*(scope: Scope,
                                         niterator: oresource): ExperimentalStatsAggregatorSummary =
  return iiexperimentalStatsAggregatorSummary(scope,
                                              niterator)

converter experimentalStatsAggregatorSummaryToOut*(op: ExperimentalStatsAggregatorSummary): ostring {.inline.} = return op.output


type FlushSummaryWriter*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"FlushSummaryWriter/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiflushSummaryWriter(scope: Scope,
                         writer: oresource): FlushSummaryWriter {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"FlushSummaryWriter(*#, #)", constructor.}

proc flushSummaryWriter*(scope: Scope,
                         writer: oresource): FlushSummaryWriter =
  return iiflushSummaryWriter(scope,
                              writer)

type HistogramSummaryT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type HistogramSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"HistogramSummary/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iihistogramSummary(scope: Scope,
                       tag: ostring,
                       values: HistogramSummaryT): HistogramSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"HistogramSummary(*#, #, #)", constructor.}

proc histogramSummary*(scope: Scope,
                       tag: ostring,
                       values: HistogramSummaryT): HistogramSummary =
  return iihistogramSummary(scope,
                            tag,
                            values)

converter histogramSummaryToOut*(op: HistogramSummary): ostring {.inline.} = return op.output

type ImageSummaryT* = ouint8 | ofloat | ohalf | odouble

type ImageSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ImageSummary/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiimageSummary(scope: Scope,
                   tag: ostring,
                   tensor: ImageSummaryT,
                   max_images: int64,
                   bad_color: Tensor[oall]): ImageSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ImageSummary(*#, #, #, #, *#)", constructor.}

proc imageSummary*(scope: Scope,
                   tag: ostring,
                   tensor: ImageSummaryT,
                   max_images: int64 = 3.int,
                   bad_color: Tensor[oall] = tensor([255, 0, 0, 255], ouint8)): ImageSummary =
  return iiimageSummary(scope,
                        tag,
                        tensor,
                        max_images,
                        bad_color)

converter imageSummaryToOut*(op: ImageSummary): ostring {.inline.} = return op.output


type ImportEvent*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ImportEvent/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiimportEvent(scope: Scope,
                  writer: oresource,
                  event: ostring): ImportEvent {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ImportEvent(*#, #, #)", constructor.}

proc importEvent*(scope: Scope,
                  writer: oresource,
                  event: ostring): ImportEvent =
  return iiimportEvent(scope,
                       writer,
                       event)


type MergeSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"MergeSummary/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iimergeSummary(scope: Scope,
                   inputs: olist[ostring]): MergeSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"MergeSummary(*#, #)", constructor.}

proc mergeSummary*(scope: Scope,
                   inputs: olist[ostring]): MergeSummary =
  return iimergeSummary(scope,
                        inputs)

converter mergeSummaryToOut*(op: MergeSummary): ostring {.inline.} = return op.output

type ScalarSummaryT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type ScalarSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ScalarSummary/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiscalarSummary(scope: Scope,
                    tags: ostring,
                    values: ScalarSummaryT): ScalarSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"ScalarSummary(*#, #, #)", constructor.}

proc scalarSummary*(scope: Scope,
                    tags: ostring,
                    values: ScalarSummaryT): ScalarSummary =
  return iiscalarSummary(scope,
                         tags,
                         values)

converter scalarSummaryToOut*(op: ScalarSummary): ostring {.inline.} = return op.output


type SummaryWriter* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"SummaryWriter/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iisummaryWriter(scope: Scope,
                    shared_name: cstring,
                    container: cstring): SummaryWriter {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"SummaryWriter(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc summaryWriter*(scope: Scope,
                    shared_name: cstring,
                    container: cstring): SummaryWriter =
  return iisummaryWriter(scope,
                         shared_name,
                         container)

converter summaryWriterToOut*(op: SummaryWriter): oresource {.inline.} = return op.output

type TensorSummaryT* = oall

type TensorSummary* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"TensorSummary/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitensorSummary(scope: Scope,
                    tensor: TensorSummaryT,
                    description: cstring,
                    labels: ArraySlice[cstring],
                    display_name: cstring): TensorSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"TensorSummary(*#, #, tensorflow::string(#), #, tensorflow::string(#))", constructor.}

proc tensorSummary*(scope: Scope,
                    tensor: TensorSummaryT,
                    description: cstring,
                    labels: openArray[cstring],
                    display_name: cstring): TensorSummary =
  return iitensorSummary(scope,
                         tensor,
                         description,
                         newArraySlice(labels),
                         display_name)

converter tensorSummaryToOut*(op: TensorSummary): ostring {.inline.} = return op.output

type TensorSummaryV2T* = oall

type TensorSummaryV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"TensorSummaryV2/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitensorSummaryV2(scope: Scope,
                      tag: ostring,
                      tensor: TensorSummaryV2T,
                      serialized_summary_metadata: ostring): TensorSummaryV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"TensorSummaryV2(*#, #, #, #)", constructor.}

proc tensorSummaryV2*(scope: Scope,
                      tag: ostring,
                      tensor: TensorSummaryV2T,
                      serialized_summary_metadata: ostring): TensorSummaryV2 =
  return iitensorSummaryV2(scope,
                           tag,
                           tensor,
                           serialized_summary_metadata)

converter tensorSummaryV2ToOut*(op: TensorSummaryV2): ostring {.inline.} = return op.output


type WriteAudioSummary*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteAudioSummary/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiwriteAudioSummary(scope: Scope,
                        writer: oresource,
                        step: oint64,
                        tag: ostring,
                        tensor: ofloat,
                        sample_rate: ofloat,
                        max_outputs: int64): WriteAudioSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteAudioSummary(*#, #, #, #, #, #, #)", constructor.}

proc writeAudioSummary*(scope: Scope,
                        writer: oresource,
                        step: oint64,
                        tag: ostring,
                        tensor: ofloat,
                        sample_rate: ofloat,
                        max_outputs: int64 = 3.int): WriteAudioSummary =
  return iiwriteAudioSummary(scope,
                             writer,
                             step,
                             tag,
                             tensor,
                             sample_rate,
                             max_outputs)


type WriteGraphSummary*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteGraphSummary/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiwriteGraphSummary(scope: Scope,
                        writer: oresource,
                        step: oint64,
                        tensor: ostring): WriteGraphSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteGraphSummary(*#, #, #, #)", constructor.}

proc writeGraphSummary*(scope: Scope,
                        writer: oresource,
                        step: oint64,
                        tensor: ostring): WriteGraphSummary =
  return iiwriteGraphSummary(scope,
                             writer,
                             step,
                             tensor)

type WriteHistogramSummaryT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type WriteHistogramSummary*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteHistogramSummary/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiwriteHistogramSummary(scope: Scope,
                            writer: oresource,
                            step: oint64,
                            tag: ostring,
                            values: WriteHistogramSummaryT): WriteHistogramSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteHistogramSummary(*#, #, #, #, #)", constructor.}

proc writeHistogramSummary*(scope: Scope,
                            writer: oresource,
                            step: oint64,
                            tag: ostring,
                            values: WriteHistogramSummaryT): WriteHistogramSummary =
  return iiwriteHistogramSummary(scope,
                                 writer,
                                 step,
                                 tag,
                                 values)

type WriteImageSummaryT* = ouint8 | ofloat | ohalf

type WriteImageSummary*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteImageSummary/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiwriteImageSummary(scope: Scope,
                        writer: oresource,
                        step: oint64,
                        tag: ostring,
                        tensor: WriteImageSummaryT,
                        bad_color: ouint8,
                        max_images: int64): WriteImageSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteImageSummary(*#, #, #, #, #, #, #)", constructor.}

proc writeImageSummary*(scope: Scope,
                        writer: oresource,
                        step: oint64,
                        tag: ostring,
                        tensor: WriteImageSummaryT,
                        bad_color: ouint8,
                        max_images: int64 = 3.int): WriteImageSummary =
  return iiwriteImageSummary(scope,
                             writer,
                             step,
                             tag,
                             tensor,
                             bad_color,
                             max_images)

type WriteScalarSummaryT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type WriteScalarSummary*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteScalarSummary/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiwriteScalarSummary(scope: Scope,
                         writer: oresource,
                         step: oint64,
                         tag: ostring,
                         value: WriteScalarSummaryT): WriteScalarSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteScalarSummary(*#, #, #, #, #)", constructor.}

proc writeScalarSummary*(scope: Scope,
                         writer: oresource,
                         step: oint64,
                         tag: ostring,
                         value: WriteScalarSummaryT): WriteScalarSummary =
  return iiwriteScalarSummary(scope,
                              writer,
                              step,
                              tag,
                              value)

type WriteSummaryT* = oall

type WriteSummary*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteSummary/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiwriteSummary(scope: Scope,
                   writer: oresource,
                   step: oint64,
                   tensor: WriteSummaryT,
                   tag: ostring,
                   summary_metadata: ostring): WriteSummary {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/event/event.h", importcpp:"WriteSummary(*#, #, #, #, #, #)", constructor.}

proc writeSummary*(scope: Scope,
                   writer: oresource,
                   step: oint64,
                   tensor: WriteSummaryT,
                   tag: ostring,
                   summary_metadata: ostring): WriteSummary =
  return iiwriteSummary(scope,
                        writer,
                        step,
                        tensor,
                        tag,
                        summary_metadata)

