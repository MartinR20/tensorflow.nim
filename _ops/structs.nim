type DepthToSpaceAttrs {.header: std_ops, importcpp:"tensorflow::ops::DepthToSpace::Attrs".} = object
  dataFormat: cppstring
type DequantizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::Dequantize::Attrs".} = object
  mode: cppstring
type EditDistanceAttrs {.header: std_ops, importcpp:"tensorflow::ops::EditDistance::Attrs".} = object
  normalize: bool
type EmptyAttrs {.header: std_ops, importcpp:"tensorflow::ops::Empty::Attrs".} = object
  init: bool
type FakeQuantWithMinMaxArgsAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgs::Attrs".} = object
  max: float
  min: float
  narrowRange: bool
  numBits: int
type FakeQuantWithMinMaxArgsGradientAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgsGradient::Attrs".} = object
  max: float
  min: float
  narrowRange: bool
  numBits: int
type FakeQuantWithMinMaxVarsAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVars::Attrs".} = object
  narrowRange: bool
  numBits: int
type FakeQuantWithMinMaxVarsGradientAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsGradient::Attrs".} = object
  narrowRange: bool
  numBits: int
type FakeQuantWithMinMaxVarsPerChannelAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannel::Attrs".} = object
  narrowRange: bool
  numBits: int
type FakeQuantWithMinMaxVarsPerChannelGradientAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannelGradient::Attrs".} = object
  narrowRange: bool
  numBits: int
type GatherAttrs {.header: std_ops, importcpp:"tensorflow::ops::Gather::Attrs".} = object
  validateIndices: bool
type OneHotAttrs {.header: std_ops, importcpp:"tensorflow::ops::OneHot::Attrs".} = object
  axis: int
type ResourceStridedSliceAssignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceStridedSliceAssign::Attrs".} = object
  beginMask: int
  ellipsisMask: int
  endMask: int
  newAxisMask: int
  shrinkAxisMask: int
type ReverseSequenceAttrs {.header: std_ops, importcpp:"tensorflow::ops::ReverseSequence::Attrs".} = object
  batchDim: int
type SetDiff1DAttrs {.header: std_ops, importcpp:"tensorflow::ops::SetDiff1D::Attrs".} = object
  outIdx: DType
type ShapeAttrs {.header: std_ops, importcpp:"tensorflow::ops::Shape::Attrs".} = object
  outType: DType
type ShapeNAttrs {.header: std_ops, importcpp:"tensorflow::ops::ShapeN::Attrs".} = object
  outType: DType
type SizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::Size::Attrs".} = object
  outType: DType
type SpaceToDepthAttrs {.header: std_ops, importcpp:"tensorflow::ops::SpaceToDepth::Attrs".} = object
  dataFormat: cppstring
type SqueezeAttrs {.header: std_ops, importcpp:"tensorflow::ops::Squeeze::Attrs".} = object
  axis: ArraySlice[int]
type StridedSliceAttrs {.header: std_ops, importcpp:"tensorflow::ops::StridedSlice::Attrs".} = object
  beginMask: int
  ellipsisMask: int
  endMask: int
  newAxisMask: int
  shrinkAxisMask: int
type StridedSliceAssignAttrs {.header: std_ops, importcpp:"tensorflow::ops::StridedSliceAssign::Attrs".} = object
  beginMask: int
  ellipsisMask: int
  endMask: int
  newAxisMask: int
  shrinkAxisMask: int
type StridedSliceGradAttrs {.header: std_ops, importcpp:"tensorflow::ops::StridedSliceGrad::Attrs".} = object
  beginMask: int
  ellipsisMask: int
  endMask: int
  newAxisMask: int
  shrinkAxisMask: int
type UniqueAttrs {.header: std_ops, importcpp:"tensorflow::ops::Unique::Attrs".} = object
  outIdx: DType
type UniqueV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::UniqueV2::Attrs".} = object
  outIdx: DType
type UniqueWithCountsAttrs {.header: std_ops, importcpp:"tensorflow::ops::UniqueWithCounts::Attrs".} = object
  outIdx: DType
type UniqueWithCountsV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::UniqueWithCountsV2::Attrs".} = object
  outIdx: DType
type UnstackAttrs {.header: std_ops, importcpp:"tensorflow::ops::Unstack::Attrs".} = object
  axis: int
type AllCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::AllCandidateSampler::Attrs".} = object
  seed: int
  seed2: int
type ComputeAccidentalHitsAttrs {.header: std_ops, importcpp:"tensorflow::ops::ComputeAccidentalHits::Attrs".} = object
  seed: int
  seed2: int
type FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::FixedUnigramCandidateSampler::Attrs".} = object
  distortion: float
  numReservedIds: int
  numShards: int
  seed: int
  seed2: int
  shard: int
  unigrams: ArraySlice[float]
  vocabFile: cppstring
type LearnedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::LearnedUnigramCandidateSampler::Attrs".} = object
  seed: int
  seed2: int
type LogUniformCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::LogUniformCandidateSampler::Attrs".} = object
  seed: int
  seed2: int
type UniformCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::UniformCandidateSampler::Attrs".} = object
  seed: int
  seed2: int
type AbortAttrs {.header: std_ops, importcpp:"tensorflow::ops::Abort::Attrs".} = object
  errorMsg: cppstring
  exitWithoutError: bool
type BarrierAttrs {.header: std_ops, importcpp:"tensorflow::ops::Barrier::Attrs".} = object
  capacity: int
  container: cppstring
  shapes: ArraySlice[PartialTensorShape]
  sharedName: cppstring
type BarrierCloseAttrs {.header: std_ops, importcpp:"tensorflow::ops::BarrierClose::Attrs".} = object
  cancelPendingEnqueues: bool
type BarrierTakeManyAttrs {.header: std_ops, importcpp:"tensorflow::ops::BarrierTakeMany::Attrs".} = object
  allowSmallBatch: bool
  timeoutMs: int
  waitForIncomplete: bool
type ConditionalAccumulatorAttrs {.header: std_ops, importcpp:"tensorflow::ops::ConditionalAccumulator::Attrs".} = object
  container: cppstring
  reductionType: cppstring
  sharedName: cppstring
type FIFOQueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::FIFOQueue::Attrs".} = object
  capacity: int
  container: cppstring
  shapes: ArraySlice[PartialTensorShape]
  sharedName: cppstring
type MapClearAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapClear::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type MapIncompleteSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapIncompleteSize::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type MapPeekAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapPeek::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type MapSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapSize::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type MapStageAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapStage::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type MapUnstageAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapUnstage::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type MapUnstageNoKeyAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapUnstageNoKey::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type OrderedMapClearAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapClear::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type OrderedMapIncompleteSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapIncompleteSize::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type OrderedMapPeekAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapPeek::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type OrderedMapSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapSize::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type OrderedMapStageAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapStage::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type OrderedMapUnstageAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapUnstage::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type OrderedMapUnstageNoKeyAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapUnstageNoKey::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type PaddingFIFOQueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::PaddingFIFOQueue::Attrs".} = object
  capacity: int
  container: cppstring
  shapes: ArraySlice[PartialTensorShape]
  sharedName: cppstring
type PriorityQueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::PriorityQueue::Attrs".} = object
  capacity: int
  componentTypes: DType
  container: cppstring
  sharedName: cppstring
type QueueCloseAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueClose::Attrs".} = object
  cancelPendingEnqueues: bool
type QueueDequeueAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueDequeue::Attrs".} = object
  timeoutMs: int
type QueueDequeueManyAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueDequeueMany::Attrs".} = object
  timeoutMs: int
type QueueDequeueUpToAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueDequeueUpTo::Attrs".} = object
  timeoutMs: int
type QueueEnqueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueEnqueue::Attrs".} = object
  timeoutMs: int
type QueueEnqueueManyAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueEnqueueMany::Attrs".} = object
  timeoutMs: int
type RandomShuffleQueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomShuffleQueue::Attrs".} = object
  capacity: int
  container: cppstring
  minAfterDequeue: int
  seed: int
  seed2: int
  shapes: ArraySlice[PartialTensorShape]
  sharedName: cppstring
type RecordInputAttrs {.header: std_ops, importcpp:"tensorflow::ops::RecordInput::Attrs".} = object
  batchSize: int
  compressionType: cppstring
  fileBufferSize: int
  fileParallelism: int
  fileRandomSeed: int
  fileShuffleShiftRatio: float
type SparseConditionalAccumulatorAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseConditionalAccumulator::Attrs".} = object
  container: cppstring
  reductionType: cppstring
  sharedName: cppstring
type StageAttrs {.header: std_ops, importcpp:"tensorflow::ops::Stage::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type StageClearAttrs {.header: std_ops, importcpp:"tensorflow::ops::StageClear::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type StagePeekAttrs {.header: std_ops, importcpp:"tensorflow::ops::StagePeek::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type StageSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::StageSize::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type TensorArrayAttrs {.header: std_ops, importcpp:"tensorflow::ops::TensorArray::Attrs".} = object
  clearAfterRead: bool
  dynamicSize: bool
  elementShape: PartialTensorShape
  identicalElementShapes: bool
  tensorArrayName: cppstring
type TensorArrayConcatAttrs {.header: std_ops, importcpp:"tensorflow::ops::TensorArrayConcat::Attrs".} = object
  elementShapeExcept0: PartialTensorShape
type TensorArrayGatherAttrs {.header: std_ops, importcpp:"tensorflow::ops::TensorArrayGather::Attrs".} = object
  elementShape: PartialTensorShape
type UnstageAttrs {.header: std_ops, importcpp:"tensorflow::ops::Unstage::Attrs".} = object
  capacity: int
  container: cppstring
  memoryLimit: int
  sharedName: cppstring
type CropAndResizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::CropAndResize::Attrs".} = object
  extrapolationValue: float
  method: cppstring
type CropAndResizeGradBoxesAttrs {.header: std_ops, importcpp:"tensorflow::ops::CropAndResizeGradBoxes::Attrs".} = object
  method: cppstring
type CropAndResizeGradImageAttrs {.header: std_ops, importcpp:"tensorflow::ops::CropAndResizeGradImage::Attrs".} = object
  method: cppstring
type DecodeAndCropJpegAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeAndCropJpeg::Attrs".} = object
  acceptableFraction: float
  channels: int
  dctMethod: cppstring
  fancyUpscaling: bool
  ratio: int
  tryRecoverTruncated: bool
type DecodeBmpAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeBmp::Attrs".} = object
  channels: int
type DecodeJpegAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeJpeg::Attrs".} = object
  acceptableFraction: float
  channels: int
  dctMethod: cppstring
  fancyUpscaling: bool
  ratio: int
  tryRecoverTruncated: bool
type DecodePngAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodePng::Attrs".} = object
  channels: int
  dtype: DType
type EncodeJpegAttrs {.header: std_ops, importcpp:"tensorflow::ops::EncodeJpeg::Attrs".} = object
  chromaDownsampling: bool
  densityUnit: cppstring
  format: cppstring
  optimizeSize: bool
  progressive: bool
  quality: int
  xDensity: int
  xmpMetadata: cppstring
  yDensity: int
type EncodePngAttrs {.header: std_ops, importcpp:"tensorflow::ops::EncodePng::Attrs".} = object
  compression: int
type ExtractGlimpseAttrs {.header: std_ops, importcpp:"tensorflow::ops::ExtractGlimpse::Attrs".} = object
  centered: bool
  normalized: bool
  uniformNoise: bool
type ExtractJpegShapeAttrs {.header: std_ops, importcpp:"tensorflow::ops::ExtractJpegShape::Attrs".} = object
  outputType: DType
type QuantizedResizeBilinearAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedResizeBilinear::Attrs".} = object
  alignCorners: bool
type ResizeAreaAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResizeArea::Attrs".} = object
  alignCorners: bool
type ResizeBicubicAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResizeBicubic::Attrs".} = object
  alignCorners: bool
type ResizeBilinearAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResizeBilinear::Attrs".} = object
  alignCorners: bool
type ResizeNearestNeighborAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResizeNearestNeighbor::Attrs".} = object
  alignCorners: bool
type SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBox::Attrs".} = object
  areaRange: ArraySlice[float]
  aspectRatioRange: ArraySlice[float]
  maxAttempts: int
  minObjectCovered: float
  seed: int
  seed2: int
  useImageIfNoBoundingBoxes: bool
type SampleDistortedBoundingBoxV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBoxV2::Attrs".} = object
  areaRange: ArraySlice[float]
  aspectRatioRange: ArraySlice[float]
  maxAttempts: int
  seed: int
  seed2: int
  useImageIfNoBoundingBoxes: bool
type FixedLengthRecordReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::FixedLengthRecordReader::Attrs".} = object
  container: cppstring
  encoding: cppstring
  footerBytes: int
  headerBytes: int
  hopBytes: int
  sharedName: cppstring
type IdentityReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::IdentityReader::Attrs".} = object
  container: cppstring
  sharedName: cppstring
type LMDBReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::LMDBReader::Attrs".} = object
  container: cppstring
  sharedName: cppstring
type MergeV2CheckpointsAttrs {.header: std_ops, importcpp:"tensorflow::ops::MergeV2Checkpoints::Attrs".} = object
  deleteOldDirs: bool
type RestoreAttrs {.header: std_ops, importcpp:"tensorflow::ops::Restore::Attrs".} = object
  preferredShard: int
type RestoreSliceAttrs {.header: std_ops, importcpp:"tensorflow::ops::RestoreSlice::Attrs".} = object
  preferredShard: int
type TFRecordReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::TFRecordReader::Attrs".} = object
  compressionType: cppstring
  container: cppstring
  sharedName: cppstring
type TextLineReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::TextLineReader::Attrs".} = object
  container: cppstring
  sharedName: cppstring
  skipHeaderLines: int
type WholeFileReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::WholeFileReader::Attrs".} = object
  container: cppstring
  sharedName: cppstring
type AssertAttrs {.header: std_ops, importcpp:"tensorflow::ops::Assert::Attrs".} = object
  summarize: int
type PrintAttrs {.header: std_ops, importcpp:"tensorflow::ops::Print::Attrs".} = object
  firstN: int
  message: cppstring
  summarize: int
type PrintV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::PrintV2::Attrs".} = object
  outputStream: cppstring
type TensorSummaryAttrs {.header: std_ops, importcpp:"tensorflow::ops::TensorSummary::Attrs".} = object
  description: cppstring
  displayName: cppstring
  labels: ArraySlice[cppstring]
type AllAttrs {.header: std_ops, importcpp:"tensorflow::ops::All::Attrs".} = object
  keepDims: bool
type AngleAttrs {.header: std_ops, importcpp:"tensorflow::ops::Angle::Attrs".} = object
  tout: DType
type AnyAttrs {.header: std_ops, importcpp:"tensorflow::ops::Any::Attrs".} = object
  keepDims: bool
type ApproximateEqualAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApproximateEqual::Attrs".} = object
  tolerance: float
type ArgMaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::ArgMax::Attrs".} = object
  outputType: DType
type ArgMinAttrs {.header: std_ops, importcpp:"tensorflow::ops::ArgMin::Attrs".} = object
  outputType: DType
type BatchMatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::BatchMatMul::Attrs".} = object
  adjX: bool
  adjY: bool
type CastAttrs {.header: std_ops, importcpp:"tensorflow::ops::Cast::Attrs".} = object
  truncate: bool
type ComplexAttrs {.header: std_ops, importcpp:"tensorflow::ops::Complex::Attrs".} = object
  tout: DType
type ComplexAbsAttrs {.header: std_ops, importcpp:"tensorflow::ops::ComplexAbs::Attrs".} = object
  tout: DType
type CumprodAttrs {.header: std_ops, importcpp:"tensorflow::ops::Cumprod::Attrs".} = object
  exclusive: bool
  reverse: bool
type CumsumAttrs {.header: std_ops, importcpp:"tensorflow::ops::Cumsum::Attrs".} = object
  exclusive: bool
  reverse: bool
type HistogramFixedWidthAttrs {.header: std_ops, importcpp:"tensorflow::ops::HistogramFixedWidth::Attrs".} = object
  dtype: DType
type ImagAttrs {.header: std_ops, importcpp:"tensorflow::ops::Imag::Attrs".} = object
  tout: DType
type MatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::MatMul::Attrs".} = object
  transposeA: bool
  transposeB: bool
type MaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::Max::Attrs".} = object
  keepDims: bool
type MeanAttrs {.header: std_ops, importcpp:"tensorflow::ops::Mean::Attrs".} = object
  keepDims: bool
type MinAttrs {.header: std_ops, importcpp:"tensorflow::ops::Min::Attrs".} = object
  keepDims: bool
type ProdAttrs {.header: std_ops, importcpp:"tensorflow::ops::Prod::Attrs".} = object
  keepDims: bool
type QuantizedAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedAdd::Attrs".} = object
type QuantizedMatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedMatMul::Attrs".} = object
  tactivation: DType
  transposeA: DType
  transposeB: DType
type QuantizedMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedMul::Attrs".} = object
type RealAttrs {.header: std_ops, importcpp:"tensorflow::ops::Real::Attrs".} = object
  tout: DType
type SparseMatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseMatMul::Attrs".} = object
  aIsSparse: bool
  bIsSparse: bool
  transposeA: bool
  transposeB: bool
type SumAttrs {.header: std_ops, importcpp:"tensorflow::ops::Sum::Attrs".} = object
  keepDims: bool
type AvgPoolAttrs {.header: std_ops, importcpp:"tensorflow::ops::AvgPool::Attrs".} = object
  dataFormat: cppstring
type AvgPool3DAttrs {.header: std_ops, importcpp:"tensorflow::ops::AvgPool3D::Attrs".} = object
  dataFormat: cppstring
type AvgPool3DGradAttrs {.header: std_ops, importcpp:"tensorflow::ops::AvgPool3DGrad::Attrs".} = object
  dataFormat: cppstring
type BiasAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::BiasAdd::Attrs".} = object
  dataFormat: cppstring
type BiasAddGradAttrs {.header: std_ops, importcpp:"tensorflow::ops::BiasAddGrad::Attrs".} = object
  dataFormat: cppstring
type Conv2DAttrs {.header: std_ops, importcpp:"tensorflow::ops::Conv2D::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
  useCudnnOnGpu: bool
type Conv2DBackpropFilterAttrs {.header: std_ops, importcpp:"tensorflow::ops::Conv2DBackpropFilter::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
  useCudnnOnGpu: bool
type Conv2DBackpropInputAttrs {.header: std_ops, importcpp:"tensorflow::ops::Conv2DBackpropInput::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
  useCudnnOnGpu: bool
type Conv3DAttrs {.header: std_ops, importcpp:"tensorflow::ops::Conv3D::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
type Conv3DBackpropFilterV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::Conv3DBackpropFilterV2::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
type Conv3DBackpropInputV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::Conv3DBackpropInputV2::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
type DataFormatDimMapAttrs {.header: std_ops, importcpp:"tensorflow::ops::DataFormatDimMap::Attrs".} = object
  dstFormat: cppstring
  srcFormat: cppstring
type DataFormatVecPermuteAttrs {.header: std_ops, importcpp:"tensorflow::ops::DataFormatVecPermute::Attrs".} = object
  dstFormat: cppstring
  srcFormat: cppstring
type DepthwiseConv2dNativeAttrs {.header: std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNative::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
type DepthwiseConv2dNativeBackpropFilterAttrs {.header: std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropFilter::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
type DepthwiseConv2dNativeBackpropInputAttrs {.header: std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropInput::Attrs".} = object
  dataFormat: cppstring
  dilations: ArraySlice[int]
type FractionalAvgPoolAttrs {.header: std_ops, importcpp:"tensorflow::ops::FractionalAvgPool::Attrs".} = object
  deterministic: bool
  overlapping: bool
  pseudoRandom: bool
  seed: int
  seed2: int
type FractionalMaxPoolAttrs {.header: std_ops, importcpp:"tensorflow::ops::FractionalMaxPool::Attrs".} = object
  deterministic: bool
  overlapping: bool
  pseudoRandom: bool
  seed: int
  seed2: int
type FusedBatchNormAttrs {.header: std_ops, importcpp:"tensorflow::ops::FusedBatchNorm::Attrs".} = object
  dataFormat: cppstring
  epsilon: float
  isTraining: bool
type FusedBatchNormGradAttrs {.header: std_ops, importcpp:"tensorflow::ops::FusedBatchNormGrad::Attrs".} = object
  dataFormat: cppstring
  epsilon: float
  isTraining: bool
type FusedBatchNormGradV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::FusedBatchNormGradV2::Attrs".} = object
  dataFormat: cppstring
  epsilon: float
  isTraining: bool
type FusedBatchNormV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::FusedBatchNormV2::Attrs".} = object
  dataFormat: cppstring
  epsilon: float
  isTraining: bool
type FusedResizeAndPadConv2DAttrs {.header: std_ops, importcpp:"tensorflow::ops::FusedResizeAndPadConv2D::Attrs".} = object
  resizeAlignCorners: bool
type LRNAttrs {.header: std_ops, importcpp:"tensorflow::ops::LRN::Attrs".} = object
  alpha: float
  beta: float
  bias: float
  depthRadius: int
type MaxPoolAttrs {.header: std_ops, importcpp:"tensorflow::ops::MaxPool::Attrs".} = object
  dataFormat: cppstring
type MaxPool3DAttrs {.header: std_ops, importcpp:"tensorflow::ops::MaxPool3D::Attrs".} = object
  dataFormat: cppstring
type MaxPoolV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::MaxPoolV2::Attrs".} = object
  dataFormat: cppstring
type MaxPoolWithArgmaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::MaxPoolWithArgmax::Attrs".} = object
  targmax: DType
type NthElementAttrs {.header: std_ops, importcpp:"tensorflow::ops::NthElement::Attrs".} = object
  reverse: bool
type QuantizedConv2DAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedConv2D::Attrs".} = object
  dilations: ArraySlice[int]
  outType: DType
type QuantizedReluAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedRelu::Attrs".} = object
  outType: DType
type QuantizedRelu6Attrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedRelu6::Attrs".} = object
  outType: DType
type QuantizedReluXAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedReluX::Attrs".} = object
  outType: DType
type TopKAttrs {.header: std_ops, importcpp:"tensorflow::ops::TopK::Attrs".} = object
  sorted: bool
type DecodeCSVAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeCSV::Attrs".} = object
  fieldDelim: cppstring
  naValue: cppstring
  selectCols: ArraySlice[int]
  useQuoteDelim: bool
type DecodeCompressedAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeCompressed::Attrs".} = object
  compressionType: cppstring
type DecodeRawAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeRaw::Attrs".} = object
  littleEndian: bool
type ParseSequenceExampleAttrs {.header: std_ops, importcpp:"tensorflow::ops::ParseSequenceExample::Attrs".} = object
  contextDenseShapes: ArraySlice[PartialTensorShape]
  contextSparseTypes: DType
  featureListDenseShapes: ArraySlice[PartialTensorShape]
  featureListDenseTypes: DType
  featureListSparseTypes: DType
  ncontextDense: int
  ncontextSparse: int
  nfeatureListDense: int
  nfeatureListSparse: int
type ParseSingleSequenceExampleAttrs {.header: std_ops, importcpp:"tensorflow::ops::ParseSingleSequenceExample::Attrs".} = object
  contextDenseShapes: ArraySlice[PartialTensorShape]
  contextSparseTypes: DType
  featureListDenseShapes: ArraySlice[PartialTensorShape]
  featureListDenseTypes: DType
  featureListSparseTypes: DType
type StringToNumberAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringToNumber::Attrs".} = object
  outType: DType
type MultinomialAttrs {.header: std_ops, importcpp:"tensorflow::ops::Multinomial::Attrs".} = object
  outputDtype: DType
  seed: int
  seed2: int
type ParameterizedTruncatedNormalAttrs {.header: std_ops, importcpp:"tensorflow::ops::ParameterizedTruncatedNormal::Attrs".} = object
  seed: int
  seed2: int
type RandomGammaAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomGamma::Attrs".} = object
  seed: int
  seed2: int
type RandomNormalAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomNormal::Attrs".} = object
  seed: int
  seed2: int
type RandomPoissonV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::RandomPoissonV2::Attrs".} = object
  dtype: DType
  seed: int
  seed2: int
type RandomShuffleAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomShuffle::Attrs".} = object
  seed: int
  seed2: int
type RandomUniformAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomUniform::Attrs".} = object
  seed: int
  seed2: int
type RandomUniformIntAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomUniformInt::Attrs".} = object
  seed: int
  seed2: int
type TruncatedNormalAttrs {.header: std_ops, importcpp:"tensorflow::ops::TruncatedNormal::Attrs".} = object
  seed: int
  seed2: int
type AddManySparseToTensorsMapAttrs {.header: std_ops, importcpp:"tensorflow::ops::AddManySparseToTensorsMap::Attrs".} = object
  container: cppstring
  sharedName: cppstring
type AddSparseToTensorsMapAttrs {.header: std_ops, importcpp:"tensorflow::ops::AddSparseToTensorsMap::Attrs".} = object
  container: cppstring
  sharedName: cppstring
type SerializeManySparseAttrs {.header: std_ops, importcpp:"tensorflow::ops::SerializeManySparse::Attrs".} = object
  outType: DType
type SerializeSparseAttrs {.header: std_ops, importcpp:"tensorflow::ops::SerializeSparse::Attrs".} = object
  outType: DType
type SparseReduceMaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseReduceMax::Attrs".} = object
  keepDims: bool
type SparseReduceMaxSparseAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseReduceMaxSparse::Attrs".} = object
  keepDims: bool
type SparseReduceSumAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseReduceSum::Attrs".} = object
  keepDims: bool
type SparseReduceSumSparseAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseReduceSumSparse::Attrs".} = object
  keepDims: bool
type SparseTensorDenseMatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseTensorDenseMatMul::Attrs".} = object
  adjointA: bool
  adjointB: bool
type TakeManySparseFromTensorsMapAttrs {.header: std_ops, importcpp:"tensorflow::ops::TakeManySparseFromTensorsMap::Attrs".} = object
  container: cppstring
  sharedName: cppstring
type AssignAttrs {.header: std_ops, importcpp:"tensorflow::ops::Assign::Attrs".} = object
  useLocking: bool
  validateShape: bool
type AssignAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::AssignAdd::Attrs".} = object
  useLocking: bool
type AssignSubAttrs {.header: std_ops, importcpp:"tensorflow::ops::AssignSub::Attrs".} = object
  useLocking: bool
type ResourceScatterNdAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceScatterNdAdd::Attrs".} = object
  useLocking: bool
type ResourceScatterNdUpdateAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceScatterNdUpdate::Attrs".} = object
  useLocking: bool
type ScatterAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterAdd::Attrs".} = object
  useLocking: bool
type ScatterDivAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterDiv::Attrs".} = object
  useLocking: bool
type ScatterMaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterMax::Attrs".} = object
  useLocking: bool
type ScatterMinAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterMin::Attrs".} = object
  useLocking: bool
type ScatterMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterMul::Attrs".} = object
  useLocking: bool
type ScatterNdAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterNdAdd::Attrs".} = object
  useLocking: bool
type ScatterNdSubAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterNdSub::Attrs".} = object
  useLocking: bool
type ScatterNdUpdateAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterNdUpdate::Attrs".} = object
  useLocking: bool
type ScatterSubAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterSub::Attrs".} = object
  useLocking: bool
type ScatterUpdateAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterUpdate::Attrs".} = object
  useLocking: bool
type TemporaryVariableAttrs {.header: std_ops, importcpp:"tensorflow::ops::TemporaryVariable::Attrs".} = object
  varName: cppstring
type VariableAttrs {.header: std_ops, importcpp:"tensorflow::ops::Variable::Attrs".} = object
  container: cppstring
  sharedName: cppstring
type AsStringAttrs {.header: std_ops, importcpp:"tensorflow::ops::AsString::Attrs".} = object
  fill: cppstring
  precision: int
  scientific: bool
  shortest: bool
  width: int
type EncodeBase64Attrs {.header: std_ops, importcpp:"tensorflow::ops::EncodeBase64::Attrs".} = object
  pad: bool
type ReduceJoinAttrs {.header: std_ops, importcpp:"tensorflow::ops::ReduceJoin::Attrs".} = object
  keepDims: bool
  separator: cppstring
type RegexReplaceAttrs {.header: std_ops, importcpp:"tensorflow::ops::RegexReplace::Attrs".} = object
  replaceGlobal: bool
type StringFormatAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringFormat::Attrs".} = object
  placeholder: cppstring
  summarize: int
  template: cppstring
type StringJoinAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringJoin::Attrs".} = object
  separator: cppstring
type StringLengthAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringLength::Attrs".} = object
  unit: cppstring
type StringSplitAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringSplit::Attrs".} = object
  skipEmpty: bool
type StringSplitV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::StringSplitV2::Attrs".} = object
  maxsplit: int
type ApplyAdadeltaAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAdadelta::Attrs".} = object
  useLocking: bool
type ApplyAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAdagrad::Attrs".} = object
  updateSlots: bool
  useLocking: bool
type ApplyAdagradDAAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAdagradDA::Attrs".} = object
  useLocking: bool
type ApplyAdamAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAdam::Attrs".} = object
  useLocking: bool
  useNesterov: bool
type ApplyAddSignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAddSign::Attrs".} = object
  useLocking: bool
type ApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyCenteredRMSProp::Attrs".} = object
  useLocking: bool
type ApplyFtrlAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyFtrl::Attrs".} = object
  useLocking: bool
type ApplyFtrlV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyFtrlV2::Attrs".} = object
  useLocking: bool
type ApplyGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyGradientDescent::Attrs".} = object
  useLocking: bool
type ApplyMomentumAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyMomentum::Attrs".} = object
  useLocking: bool
  useNesterov: bool
type ApplyPowerSignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyPowerSign::Attrs".} = object
  useLocking: bool
type ApplyProximalAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyProximalAdagrad::Attrs".} = object
  useLocking: bool
type ApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyProximalGradientDescent::Attrs".} = object
  useLocking: bool
type ApplyRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyRMSProp::Attrs".} = object
  useLocking: bool
type ResourceApplyAdadeltaAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAdadelta::Attrs".} = object
  useLocking: bool
type ResourceApplyAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagrad::Attrs".} = object
  updateSlots: bool
  useLocking: bool
type ResourceApplyAdagradDAAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagradDA::Attrs".} = object
  useLocking: bool
type ResourceApplyAdamAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAdam::Attrs".} = object
  useLocking: bool
  useNesterov: bool
type ResourceApplyAddSignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAddSign::Attrs".} = object
  useLocking: bool
type ResourceApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyCenteredRMSProp::Attrs".} = object
  useLocking: bool
type ResourceApplyFtrlAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrl::Attrs".} = object
  useLocking: bool
type ResourceApplyFtrlV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrlV2::Attrs".} = object
  useLocking: bool
type ResourceApplyGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyGradientDescent::Attrs".} = object
  useLocking: bool
type ResourceApplyMomentumAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyMomentum::Attrs".} = object
  useLocking: bool
  useNesterov: bool
type ResourceApplyPowerSignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyPowerSign::Attrs".} = object
  useLocking: bool
type ResourceApplyProximalAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalAdagrad::Attrs".} = object
  useLocking: bool
type ResourceApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalGradientDescent::Attrs".} = object
  useLocking: bool
type ResourceApplyRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyRMSProp::Attrs".} = object
  useLocking: bool
type ResourceSparseApplyAdadeltaAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdadelta::Attrs".} = object
  useLocking: bool
type ResourceSparseApplyAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagrad::Attrs".} = object
  updateSlots: bool
  useLocking: bool
type ResourceSparseApplyAdagradDAAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagradDA::Attrs".} = object
  useLocking: bool
type ResourceSparseApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyCenteredRMSProp::Attrs".} = object
  useLocking: bool
type ResourceSparseApplyFtrlAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrl::Attrs".} = object
  useLocking: bool
type ResourceSparseApplyFtrlV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrlV2::Attrs".} = object
  useLocking: bool
type ResourceSparseApplyMomentumAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyMomentum::Attrs".} = object
  useLocking: bool
  useNesterov: bool
type ResourceSparseApplyProximalAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalAdagrad::Attrs".} = object
  useLocking: bool
type ResourceSparseApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalGradientDescent::Attrs".} = object
  useLocking: bool
type ResourceSparseApplyRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyRMSProp::Attrs".} = object
  useLocking: bool
type SparseApplyAdadeltaAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyAdadelta::Attrs".} = object
  useLocking: bool
type SparseApplyAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyAdagrad::Attrs".} = object
  updateSlots: bool
  useLocking: bool
type SparseApplyAdagradDAAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyAdagradDA::Attrs".} = object
  useLocking: bool
type SparseApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyCenteredRMSProp::Attrs".} = object
  useLocking: bool
type SparseApplyFtrlAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyFtrl::Attrs".} = object
  useLocking: bool
type SparseApplyFtrlV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyFtrlV2::Attrs".} = object
  useLocking: bool
type SparseApplyMomentumAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyMomentum::Attrs".} = object
  useLocking: bool
  useNesterov: bool
type SparseApplyProximalAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyProximalAdagrad::Attrs".} = object
  useLocking: bool
type SparseApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyProximalGradientDescent::Attrs".} = object
  useLocking: bool
type SparseApplyRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyRMSProp::Attrs".} = object
  useLocking: bool
