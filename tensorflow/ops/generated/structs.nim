import ../../core/core
import ../../utils/utils
{.hint[XDeclaredButNotUsed]:off.}


type DepthToSpaceAttrs {.header: std_ops, importcpp:"tensorflow::ops::DepthToSpace::Attrs".} = object

proc DataFormat(depthToSpaceAttrs: DepthToSpaceAttrs, dataFormat: cppstring): DepthToSpaceAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type DequantizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::Dequantize::Attrs".} = object

proc Mode(dequantizeAttrs: DequantizeAttrs, mode: cppstring): DequantizeAttrs {.header: std_ops, importcpp:"#.Mode(#)".}


type EditDistanceAttrs {.header: std_ops, importcpp:"tensorflow::ops::EditDistance::Attrs".} = object

proc Normalize(editDistanceAttrs: EditDistanceAttrs, normalize: bool): EditDistanceAttrs {.header: std_ops, importcpp:"#.Normalize(#)".}


type EmptyAttrs {.header: std_ops, importcpp:"tensorflow::ops::Empty::Attrs".} = object

proc Init(emptyAttrs: EmptyAttrs, init: bool): EmptyAttrs {.header: std_ops, importcpp:"#.Init(#)".}


type FakeQuantWithMinMaxArgsAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgs::Attrs".} = object

proc Max(fakeQuantWithMinMaxArgsAttrs: FakeQuantWithMinMaxArgsAttrs, max: float): FakeQuantWithMinMaxArgsAttrs {.header: std_ops, importcpp:"#.Max(#)".}

proc Min(fakeQuantWithMinMaxArgsAttrs: FakeQuantWithMinMaxArgsAttrs, min: float): FakeQuantWithMinMaxArgsAttrs {.header: std_ops, importcpp:"#.Min(#)".}

proc NarrowRange(fakeQuantWithMinMaxArgsAttrs: FakeQuantWithMinMaxArgsAttrs, narrowRange: bool): FakeQuantWithMinMaxArgsAttrs {.header: std_ops, importcpp:"#.NarrowRange(#)".}

proc NumBits(fakeQuantWithMinMaxArgsAttrs: FakeQuantWithMinMaxArgsAttrs, numBits: int): FakeQuantWithMinMaxArgsAttrs {.header: std_ops, importcpp:"#.NumBits(#)".}


type FakeQuantWithMinMaxArgsGradientAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgsGradient::Attrs".} = object

proc Max(fakeQuantWithMinMaxArgsGradientAttrs: FakeQuantWithMinMaxArgsGradientAttrs, max: float): FakeQuantWithMinMaxArgsGradientAttrs {.header: std_ops, importcpp:"#.Max(#)".}

proc Min(fakeQuantWithMinMaxArgsGradientAttrs: FakeQuantWithMinMaxArgsGradientAttrs, min: float): FakeQuantWithMinMaxArgsGradientAttrs {.header: std_ops, importcpp:"#.Min(#)".}

proc NarrowRange(fakeQuantWithMinMaxArgsGradientAttrs: FakeQuantWithMinMaxArgsGradientAttrs, narrowRange: bool): FakeQuantWithMinMaxArgsGradientAttrs {.header: std_ops, importcpp:"#.NarrowRange(#)".}

proc NumBits(fakeQuantWithMinMaxArgsGradientAttrs: FakeQuantWithMinMaxArgsGradientAttrs, numBits: int): FakeQuantWithMinMaxArgsGradientAttrs {.header: std_ops, importcpp:"#.NumBits(#)".}


type FakeQuantWithMinMaxVarsAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVars::Attrs".} = object

proc NarrowRange(fakeQuantWithMinMaxVarsAttrs: FakeQuantWithMinMaxVarsAttrs, narrowRange: bool): FakeQuantWithMinMaxVarsAttrs {.header: std_ops, importcpp:"#.NarrowRange(#)".}

proc NumBits(fakeQuantWithMinMaxVarsAttrs: FakeQuantWithMinMaxVarsAttrs, numBits: int): FakeQuantWithMinMaxVarsAttrs {.header: std_ops, importcpp:"#.NumBits(#)".}


type FakeQuantWithMinMaxVarsGradientAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsGradient::Attrs".} = object

proc NarrowRange(fakeQuantWithMinMaxVarsGradientAttrs: FakeQuantWithMinMaxVarsGradientAttrs, narrowRange: bool): FakeQuantWithMinMaxVarsGradientAttrs {.header: std_ops, importcpp:"#.NarrowRange(#)".}

proc NumBits(fakeQuantWithMinMaxVarsGradientAttrs: FakeQuantWithMinMaxVarsGradientAttrs, numBits: int): FakeQuantWithMinMaxVarsGradientAttrs {.header: std_ops, importcpp:"#.NumBits(#)".}


type FakeQuantWithMinMaxVarsPerChannelAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannel::Attrs".} = object

proc NarrowRange(fakeQuantWithMinMaxVarsPerChannelAttrs: FakeQuantWithMinMaxVarsPerChannelAttrs, narrowRange: bool): FakeQuantWithMinMaxVarsPerChannelAttrs {.header: std_ops, importcpp:"#.NarrowRange(#)".}

proc NumBits(fakeQuantWithMinMaxVarsPerChannelAttrs: FakeQuantWithMinMaxVarsPerChannelAttrs, numBits: int): FakeQuantWithMinMaxVarsPerChannelAttrs {.header: std_ops, importcpp:"#.NumBits(#)".}


type FakeQuantWithMinMaxVarsPerChannelGradientAttrs {.header: std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannelGradient::Attrs".} = object

proc NarrowRange(fakeQuantWithMinMaxVarsPerChannelGradientAttrs: FakeQuantWithMinMaxVarsPerChannelGradientAttrs, narrowRange: bool): FakeQuantWithMinMaxVarsPerChannelGradientAttrs {.header: std_ops, importcpp:"#.NarrowRange(#)".}

proc NumBits(fakeQuantWithMinMaxVarsPerChannelGradientAttrs: FakeQuantWithMinMaxVarsPerChannelGradientAttrs, numBits: int): FakeQuantWithMinMaxVarsPerChannelGradientAttrs {.header: std_ops, importcpp:"#.NumBits(#)".}


type GatherAttrs {.header: std_ops, importcpp:"tensorflow::ops::Gather::Attrs".} = object

proc ValidateIndices(gatherAttrs: GatherAttrs, validateIndices: bool): GatherAttrs {.header: std_ops, importcpp:"#.ValidateIndices(#)".}


type OneHotAttrs {.header: std_ops, importcpp:"tensorflow::ops::OneHot::Attrs".} = object

proc Axis(oneHotAttrs: OneHotAttrs, axis: int): OneHotAttrs {.header: std_ops, importcpp:"#.Axis(#)".}


type ResourceStridedSliceAssignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceStridedSliceAssign::Attrs".} = object

proc BeginMask(resourceStridedSliceAssignAttrs: ResourceStridedSliceAssignAttrs, beginMask: int): ResourceStridedSliceAssignAttrs {.header: std_ops, importcpp:"#.BeginMask(#)".}

proc EllipsisMask(resourceStridedSliceAssignAttrs: ResourceStridedSliceAssignAttrs, ellipsisMask: int): ResourceStridedSliceAssignAttrs {.header: std_ops, importcpp:"#.EllipsisMask(#)".}

proc EndMask(resourceStridedSliceAssignAttrs: ResourceStridedSliceAssignAttrs, endMask: int): ResourceStridedSliceAssignAttrs {.header: std_ops, importcpp:"#.EndMask(#)".}

proc NewAxisMask(resourceStridedSliceAssignAttrs: ResourceStridedSliceAssignAttrs, newAxisMask: int): ResourceStridedSliceAssignAttrs {.header: std_ops, importcpp:"#.NewAxisMask(#)".}

proc ShrinkAxisMask(resourceStridedSliceAssignAttrs: ResourceStridedSliceAssignAttrs, shrinkAxisMask: int): ResourceStridedSliceAssignAttrs {.header: std_ops, importcpp:"#.ShrinkAxisMask(#)".}


type ReverseSequenceAttrs {.header: std_ops, importcpp:"tensorflow::ops::ReverseSequence::Attrs".} = object

proc BatchDim(reverseSequenceAttrs: ReverseSequenceAttrs, batchDim: int): ReverseSequenceAttrs {.header: std_ops, importcpp:"#.BatchDim(#)".}


type SetDiff1DAttrs {.header: std_ops, importcpp:"tensorflow::ops::SetDiff1D::Attrs".} = object

proc OutIdx(setDiff1DAttrs: SetDiff1DAttrs, outIdx: core.DType): SetDiff1DAttrs {.header: std_ops, importcpp:"#.OutIdx(#)".}


type ShapeAttrs {.header: std_ops, importcpp:"tensorflow::ops::Shape::Attrs".} = object

proc OutType(shapeAttrs: ShapeAttrs, outType: core.DType): ShapeAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type ShapeNAttrs {.header: std_ops, importcpp:"tensorflow::ops::ShapeN::Attrs".} = object

proc OutType(shapeNAttrs: ShapeNAttrs, outType: core.DType): ShapeNAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type SizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::Size::Attrs".} = object

proc OutType(sizeAttrs: SizeAttrs, outType: core.DType): SizeAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type SpaceToDepthAttrs {.header: std_ops, importcpp:"tensorflow::ops::SpaceToDepth::Attrs".} = object

proc DataFormat(spaceToDepthAttrs: SpaceToDepthAttrs, dataFormat: cppstring): SpaceToDepthAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type SqueezeAttrs {.header: std_ops, importcpp:"tensorflow::ops::Squeeze::Attrs".} = object

proc Axis(squeezeAttrs: SqueezeAttrs, axis: ArraySlice[cint]): SqueezeAttrs {.header: std_ops, importcpp:"#.Axis(#)".}


type StridedSliceAttrs {.header: std_ops, importcpp:"tensorflow::ops::StridedSlice::Attrs".} = object

proc BeginMask(stridedSliceAttrs: StridedSliceAttrs, beginMask: int): StridedSliceAttrs {.header: std_ops, importcpp:"#.BeginMask(#)".}

proc EllipsisMask(stridedSliceAttrs: StridedSliceAttrs, ellipsisMask: int): StridedSliceAttrs {.header: std_ops, importcpp:"#.EllipsisMask(#)".}

proc EndMask(stridedSliceAttrs: StridedSliceAttrs, endMask: int): StridedSliceAttrs {.header: std_ops, importcpp:"#.EndMask(#)".}

proc NewAxisMask(stridedSliceAttrs: StridedSliceAttrs, newAxisMask: int): StridedSliceAttrs {.header: std_ops, importcpp:"#.NewAxisMask(#)".}

proc ShrinkAxisMask(stridedSliceAttrs: StridedSliceAttrs, shrinkAxisMask: int): StridedSliceAttrs {.header: std_ops, importcpp:"#.ShrinkAxisMask(#)".}


type StridedSliceAssignAttrs {.header: std_ops, importcpp:"tensorflow::ops::StridedSliceAssign::Attrs".} = object

proc BeginMask(stridedSliceAssignAttrs: StridedSliceAssignAttrs, beginMask: int): StridedSliceAssignAttrs {.header: std_ops, importcpp:"#.BeginMask(#)".}

proc EllipsisMask(stridedSliceAssignAttrs: StridedSliceAssignAttrs, ellipsisMask: int): StridedSliceAssignAttrs {.header: std_ops, importcpp:"#.EllipsisMask(#)".}

proc EndMask(stridedSliceAssignAttrs: StridedSliceAssignAttrs, endMask: int): StridedSliceAssignAttrs {.header: std_ops, importcpp:"#.EndMask(#)".}

proc NewAxisMask(stridedSliceAssignAttrs: StridedSliceAssignAttrs, newAxisMask: int): StridedSliceAssignAttrs {.header: std_ops, importcpp:"#.NewAxisMask(#)".}

proc ShrinkAxisMask(stridedSliceAssignAttrs: StridedSliceAssignAttrs, shrinkAxisMask: int): StridedSliceAssignAttrs {.header: std_ops, importcpp:"#.ShrinkAxisMask(#)".}


type StridedSliceGradAttrs {.header: std_ops, importcpp:"tensorflow::ops::StridedSliceGrad::Attrs".} = object

proc BeginMask(stridedSliceGradAttrs: StridedSliceGradAttrs, beginMask: int): StridedSliceGradAttrs {.header: std_ops, importcpp:"#.BeginMask(#)".}

proc EllipsisMask(stridedSliceGradAttrs: StridedSliceGradAttrs, ellipsisMask: int): StridedSliceGradAttrs {.header: std_ops, importcpp:"#.EllipsisMask(#)".}

proc EndMask(stridedSliceGradAttrs: StridedSliceGradAttrs, endMask: int): StridedSliceGradAttrs {.header: std_ops, importcpp:"#.EndMask(#)".}

proc NewAxisMask(stridedSliceGradAttrs: StridedSliceGradAttrs, newAxisMask: int): StridedSliceGradAttrs {.header: std_ops, importcpp:"#.NewAxisMask(#)".}

proc ShrinkAxisMask(stridedSliceGradAttrs: StridedSliceGradAttrs, shrinkAxisMask: int): StridedSliceGradAttrs {.header: std_ops, importcpp:"#.ShrinkAxisMask(#)".}


type UniqueAttrs {.header: std_ops, importcpp:"tensorflow::ops::Unique::Attrs".} = object

proc OutIdx(uniqueAttrs: UniqueAttrs, outIdx: core.DType): UniqueAttrs {.header: std_ops, importcpp:"#.OutIdx(#)".}


type UniqueV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::UniqueV2::Attrs".} = object

proc OutIdx(uniqueV2Attrs: UniqueV2Attrs, outIdx: core.DType): UniqueV2Attrs {.header: std_ops, importcpp:"#.OutIdx(#)".}


type UniqueWithCountsAttrs {.header: std_ops, importcpp:"tensorflow::ops::UniqueWithCounts::Attrs".} = object

proc OutIdx(uniqueWithCountsAttrs: UniqueWithCountsAttrs, outIdx: core.DType): UniqueWithCountsAttrs {.header: std_ops, importcpp:"#.OutIdx(#)".}


type UniqueWithCountsV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::UniqueWithCountsV2::Attrs".} = object

proc OutIdx(uniqueWithCountsV2Attrs: UniqueWithCountsV2Attrs, outIdx: core.DType): UniqueWithCountsV2Attrs {.header: std_ops, importcpp:"#.OutIdx(#)".}


type UnstackAttrs {.header: std_ops, importcpp:"tensorflow::ops::Unstack::Attrs".} = object

proc Axis(unstackAttrs: UnstackAttrs, axis: int): UnstackAttrs {.header: std_ops, importcpp:"#.Axis(#)".}


type AllCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::AllCandidateSampler::Attrs".} = object

proc Seed(allCandidateSamplerAttrs: AllCandidateSamplerAttrs, seed: int): AllCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(allCandidateSamplerAttrs: AllCandidateSamplerAttrs, seed2: int): AllCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type ComputeAccidentalHitsAttrs {.header: std_ops, importcpp:"tensorflow::ops::ComputeAccidentalHits::Attrs".} = object

proc Seed(computeAccidentalHitsAttrs: ComputeAccidentalHitsAttrs, seed: int): ComputeAccidentalHitsAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(computeAccidentalHitsAttrs: ComputeAccidentalHitsAttrs, seed2: int): ComputeAccidentalHitsAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::FixedUnigramCandidateSampler::Attrs".} = object

proc Distortion(fixedUnigramCandidateSamplerAttrs: FixedUnigramCandidateSamplerAttrs, distortion: float): FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Distortion(#)".}

proc NumReservedIds(fixedUnigramCandidateSamplerAttrs: FixedUnigramCandidateSamplerAttrs, numReservedIds: int): FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.NumReservedIds(#)".}

proc NumShards(fixedUnigramCandidateSamplerAttrs: FixedUnigramCandidateSamplerAttrs, numShards: int): FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.NumShards(#)".}

proc Seed(fixedUnigramCandidateSamplerAttrs: FixedUnigramCandidateSamplerAttrs, seed: int): FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(fixedUnigramCandidateSamplerAttrs: FixedUnigramCandidateSamplerAttrs, seed2: int): FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}

proc Shard(fixedUnigramCandidateSamplerAttrs: FixedUnigramCandidateSamplerAttrs, shard: int): FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Shard(#)".}

proc Unigrams(fixedUnigramCandidateSamplerAttrs: FixedUnigramCandidateSamplerAttrs, unigrams: ArraySlice[float]): FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Unigrams(#)".}

proc VocabFile(fixedUnigramCandidateSamplerAttrs: FixedUnigramCandidateSamplerAttrs, vocabFile: cppstring): FixedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.VocabFile(#)".}


type LearnedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::LearnedUnigramCandidateSampler::Attrs".} = object

proc Seed(learnedUnigramCandidateSamplerAttrs: LearnedUnigramCandidateSamplerAttrs, seed: int): LearnedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(learnedUnigramCandidateSamplerAttrs: LearnedUnigramCandidateSamplerAttrs, seed2: int): LearnedUnigramCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type LogUniformCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::LogUniformCandidateSampler::Attrs".} = object

proc Seed(logUniformCandidateSamplerAttrs: LogUniformCandidateSamplerAttrs, seed: int): LogUniformCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(logUniformCandidateSamplerAttrs: LogUniformCandidateSamplerAttrs, seed2: int): LogUniformCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type UniformCandidateSamplerAttrs {.header: std_ops, importcpp:"tensorflow::ops::UniformCandidateSampler::Attrs".} = object

proc Seed(uniformCandidateSamplerAttrs: UniformCandidateSamplerAttrs, seed: int): UniformCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(uniformCandidateSamplerAttrs: UniformCandidateSamplerAttrs, seed2: int): UniformCandidateSamplerAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type AbortAttrs {.header: std_ops, importcpp:"tensorflow::ops::Abort::Attrs".} = object

proc ErrorMsg(abortAttrs: AbortAttrs, errorMsg: cppstring): AbortAttrs {.header: std_ops, importcpp:"#.ErrorMsg(#)".}

proc ExitWithoutError(abortAttrs: AbortAttrs, exitWithoutError: bool): AbortAttrs {.header: std_ops, importcpp:"#.ExitWithoutError(#)".}


type BarrierAttrs {.header: std_ops, importcpp:"tensorflow::ops::Barrier::Attrs".} = object

proc Capacity(barrierAttrs: BarrierAttrs, capacity: int): BarrierAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(barrierAttrs: BarrierAttrs, container: cppstring): BarrierAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc Shapes(barrierAttrs: BarrierAttrs, shapes: ArraySlice[TensorShape]): BarrierAttrs {.header: std_ops, importcpp:"#.Shapes(#)".}

proc SharedName(barrierAttrs: BarrierAttrs, sharedName: cppstring): BarrierAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type BarrierCloseAttrs {.header: std_ops, importcpp:"tensorflow::ops::BarrierClose::Attrs".} = object

proc CancelPendingEnqueues(barrierCloseAttrs: BarrierCloseAttrs, cancelPendingEnqueues: bool): BarrierCloseAttrs {.header: std_ops, importcpp:"#.CancelPendingEnqueues(#)".}


type BarrierTakeManyAttrs {.header: std_ops, importcpp:"tensorflow::ops::BarrierTakeMany::Attrs".} = object

proc AllowSmallBatch(barrierTakeManyAttrs: BarrierTakeManyAttrs, allowSmallBatch: bool): BarrierTakeManyAttrs {.header: std_ops, importcpp:"#.AllowSmallBatch(#)".}

proc TimeoutMs(barrierTakeManyAttrs: BarrierTakeManyAttrs, timeoutMs: int): BarrierTakeManyAttrs {.header: std_ops, importcpp:"#.TimeoutMs(#)".}

proc WaitForIncomplete(barrierTakeManyAttrs: BarrierTakeManyAttrs, waitForIncomplete: bool): BarrierTakeManyAttrs {.header: std_ops, importcpp:"#.WaitForIncomplete(#)".}


type ConditionalAccumulatorAttrs {.header: std_ops, importcpp:"tensorflow::ops::ConditionalAccumulator::Attrs".} = object

proc Container(conditionalAccumulatorAttrs: ConditionalAccumulatorAttrs, container: cppstring): ConditionalAccumulatorAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc ReductionType(conditionalAccumulatorAttrs: ConditionalAccumulatorAttrs, reductionType: cppstring): ConditionalAccumulatorAttrs {.header: std_ops, importcpp:"#.ReductionType(#)".}

proc SharedName(conditionalAccumulatorAttrs: ConditionalAccumulatorAttrs, sharedName: cppstring): ConditionalAccumulatorAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type FIFOQueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::FIFOQueue::Attrs".} = object

proc Capacity(fIFOQueueAttrs: FIFOQueueAttrs, capacity: int): FIFOQueueAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(fIFOQueueAttrs: FIFOQueueAttrs, container: cppstring): FIFOQueueAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc Shapes(fIFOQueueAttrs: FIFOQueueAttrs, shapes: ArraySlice[TensorShape]): FIFOQueueAttrs {.header: std_ops, importcpp:"#.Shapes(#)".}

proc SharedName(fIFOQueueAttrs: FIFOQueueAttrs, sharedName: cppstring): FIFOQueueAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type MapClearAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapClear::Attrs".} = object

proc Capacity(mapClearAttrs: MapClearAttrs, capacity: int): MapClearAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(mapClearAttrs: MapClearAttrs, container: cppstring): MapClearAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(mapClearAttrs: MapClearAttrs, memoryLimit: int): MapClearAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(mapClearAttrs: MapClearAttrs, sharedName: cppstring): MapClearAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type MapIncompleteSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapIncompleteSize::Attrs".} = object

proc Capacity(mapIncompleteSizeAttrs: MapIncompleteSizeAttrs, capacity: int): MapIncompleteSizeAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(mapIncompleteSizeAttrs: MapIncompleteSizeAttrs, container: cppstring): MapIncompleteSizeAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(mapIncompleteSizeAttrs: MapIncompleteSizeAttrs, memoryLimit: int): MapIncompleteSizeAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(mapIncompleteSizeAttrs: MapIncompleteSizeAttrs, sharedName: cppstring): MapIncompleteSizeAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type MapPeekAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapPeek::Attrs".} = object

proc Capacity(mapPeekAttrs: MapPeekAttrs, capacity: int): MapPeekAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(mapPeekAttrs: MapPeekAttrs, container: cppstring): MapPeekAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(mapPeekAttrs: MapPeekAttrs, memoryLimit: int): MapPeekAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(mapPeekAttrs: MapPeekAttrs, sharedName: cppstring): MapPeekAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type MapSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapSize::Attrs".} = object

proc Capacity(mapSizeAttrs: MapSizeAttrs, capacity: int): MapSizeAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(mapSizeAttrs: MapSizeAttrs, container: cppstring): MapSizeAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(mapSizeAttrs: MapSizeAttrs, memoryLimit: int): MapSizeAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(mapSizeAttrs: MapSizeAttrs, sharedName: cppstring): MapSizeAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type MapStageAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapStage::Attrs".} = object

proc Capacity(mapStageAttrs: MapStageAttrs, capacity: int): MapStageAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(mapStageAttrs: MapStageAttrs, container: cppstring): MapStageAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(mapStageAttrs: MapStageAttrs, memoryLimit: int): MapStageAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(mapStageAttrs: MapStageAttrs, sharedName: cppstring): MapStageAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type MapUnstageAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapUnstage::Attrs".} = object

proc Capacity(mapUnstageAttrs: MapUnstageAttrs, capacity: int): MapUnstageAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(mapUnstageAttrs: MapUnstageAttrs, container: cppstring): MapUnstageAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(mapUnstageAttrs: MapUnstageAttrs, memoryLimit: int): MapUnstageAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(mapUnstageAttrs: MapUnstageAttrs, sharedName: cppstring): MapUnstageAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type MapUnstageNoKeyAttrs {.header: std_ops, importcpp:"tensorflow::ops::MapUnstageNoKey::Attrs".} = object

proc Capacity(mapUnstageNoKeyAttrs: MapUnstageNoKeyAttrs, capacity: int): MapUnstageNoKeyAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(mapUnstageNoKeyAttrs: MapUnstageNoKeyAttrs, container: cppstring): MapUnstageNoKeyAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(mapUnstageNoKeyAttrs: MapUnstageNoKeyAttrs, memoryLimit: int): MapUnstageNoKeyAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(mapUnstageNoKeyAttrs: MapUnstageNoKeyAttrs, sharedName: cppstring): MapUnstageNoKeyAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type OrderedMapClearAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapClear::Attrs".} = object

proc Capacity(orderedMapClearAttrs: OrderedMapClearAttrs, capacity: int): OrderedMapClearAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(orderedMapClearAttrs: OrderedMapClearAttrs, container: cppstring): OrderedMapClearAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(orderedMapClearAttrs: OrderedMapClearAttrs, memoryLimit: int): OrderedMapClearAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(orderedMapClearAttrs: OrderedMapClearAttrs, sharedName: cppstring): OrderedMapClearAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type OrderedMapIncompleteSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapIncompleteSize::Attrs".} = object

proc Capacity(orderedMapIncompleteSizeAttrs: OrderedMapIncompleteSizeAttrs, capacity: int): OrderedMapIncompleteSizeAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(orderedMapIncompleteSizeAttrs: OrderedMapIncompleteSizeAttrs, container: cppstring): OrderedMapIncompleteSizeAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(orderedMapIncompleteSizeAttrs: OrderedMapIncompleteSizeAttrs, memoryLimit: int): OrderedMapIncompleteSizeAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(orderedMapIncompleteSizeAttrs: OrderedMapIncompleteSizeAttrs, sharedName: cppstring): OrderedMapIncompleteSizeAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type OrderedMapPeekAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapPeek::Attrs".} = object

proc Capacity(orderedMapPeekAttrs: OrderedMapPeekAttrs, capacity: int): OrderedMapPeekAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(orderedMapPeekAttrs: OrderedMapPeekAttrs, container: cppstring): OrderedMapPeekAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(orderedMapPeekAttrs: OrderedMapPeekAttrs, memoryLimit: int): OrderedMapPeekAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(orderedMapPeekAttrs: OrderedMapPeekAttrs, sharedName: cppstring): OrderedMapPeekAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type OrderedMapSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapSize::Attrs".} = object

proc Capacity(orderedMapSizeAttrs: OrderedMapSizeAttrs, capacity: int): OrderedMapSizeAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(orderedMapSizeAttrs: OrderedMapSizeAttrs, container: cppstring): OrderedMapSizeAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(orderedMapSizeAttrs: OrderedMapSizeAttrs, memoryLimit: int): OrderedMapSizeAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(orderedMapSizeAttrs: OrderedMapSizeAttrs, sharedName: cppstring): OrderedMapSizeAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type OrderedMapStageAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapStage::Attrs".} = object

proc Capacity(orderedMapStageAttrs: OrderedMapStageAttrs, capacity: int): OrderedMapStageAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(orderedMapStageAttrs: OrderedMapStageAttrs, container: cppstring): OrderedMapStageAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(orderedMapStageAttrs: OrderedMapStageAttrs, memoryLimit: int): OrderedMapStageAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(orderedMapStageAttrs: OrderedMapStageAttrs, sharedName: cppstring): OrderedMapStageAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type OrderedMapUnstageAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapUnstage::Attrs".} = object

proc Capacity(orderedMapUnstageAttrs: OrderedMapUnstageAttrs, capacity: int): OrderedMapUnstageAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(orderedMapUnstageAttrs: OrderedMapUnstageAttrs, container: cppstring): OrderedMapUnstageAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(orderedMapUnstageAttrs: OrderedMapUnstageAttrs, memoryLimit: int): OrderedMapUnstageAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(orderedMapUnstageAttrs: OrderedMapUnstageAttrs, sharedName: cppstring): OrderedMapUnstageAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type OrderedMapUnstageNoKeyAttrs {.header: std_ops, importcpp:"tensorflow::ops::OrderedMapUnstageNoKey::Attrs".} = object

proc Capacity(orderedMapUnstageNoKeyAttrs: OrderedMapUnstageNoKeyAttrs, capacity: int): OrderedMapUnstageNoKeyAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(orderedMapUnstageNoKeyAttrs: OrderedMapUnstageNoKeyAttrs, container: cppstring): OrderedMapUnstageNoKeyAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(orderedMapUnstageNoKeyAttrs: OrderedMapUnstageNoKeyAttrs, memoryLimit: int): OrderedMapUnstageNoKeyAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(orderedMapUnstageNoKeyAttrs: OrderedMapUnstageNoKeyAttrs, sharedName: cppstring): OrderedMapUnstageNoKeyAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type PaddingFIFOQueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::PaddingFIFOQueue::Attrs".} = object

proc Capacity(paddingFIFOQueueAttrs: PaddingFIFOQueueAttrs, capacity: int): PaddingFIFOQueueAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(paddingFIFOQueueAttrs: PaddingFIFOQueueAttrs, container: cppstring): PaddingFIFOQueueAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc Shapes(paddingFIFOQueueAttrs: PaddingFIFOQueueAttrs, shapes: ArraySlice[TensorShape]): PaddingFIFOQueueAttrs {.header: std_ops, importcpp:"#.Shapes(#)".}

proc SharedName(paddingFIFOQueueAttrs: PaddingFIFOQueueAttrs, sharedName: cppstring): PaddingFIFOQueueAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type PriorityQueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::PriorityQueue::Attrs".} = object

proc Capacity(priorityQueueAttrs: PriorityQueueAttrs, capacity: int): PriorityQueueAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc ComponentTypes(priorityQueueAttrs: PriorityQueueAttrs, componentTypes: core.DType): PriorityQueueAttrs {.header: std_ops, importcpp:"#.ComponentTypes(#)".}

proc Container(priorityQueueAttrs: PriorityQueueAttrs, container: cppstring): PriorityQueueAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(priorityQueueAttrs: PriorityQueueAttrs, sharedName: cppstring): PriorityQueueAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type QueueCloseAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueClose::Attrs".} = object

proc CancelPendingEnqueues(queueCloseAttrs: QueueCloseAttrs, cancelPendingEnqueues: bool): QueueCloseAttrs {.header: std_ops, importcpp:"#.CancelPendingEnqueues(#)".}


type QueueDequeueAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueDequeue::Attrs".} = object

proc TimeoutMs(queueDequeueAttrs: QueueDequeueAttrs, timeoutMs: int): QueueDequeueAttrs {.header: std_ops, importcpp:"#.TimeoutMs(#)".}


type QueueDequeueManyAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueDequeueMany::Attrs".} = object

proc TimeoutMs(queueDequeueManyAttrs: QueueDequeueManyAttrs, timeoutMs: int): QueueDequeueManyAttrs {.header: std_ops, importcpp:"#.TimeoutMs(#)".}


type QueueDequeueUpToAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueDequeueUpTo::Attrs".} = object

proc TimeoutMs(queueDequeueUpToAttrs: QueueDequeueUpToAttrs, timeoutMs: int): QueueDequeueUpToAttrs {.header: std_ops, importcpp:"#.TimeoutMs(#)".}


type QueueEnqueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueEnqueue::Attrs".} = object

proc TimeoutMs(queueEnqueueAttrs: QueueEnqueueAttrs, timeoutMs: int): QueueEnqueueAttrs {.header: std_ops, importcpp:"#.TimeoutMs(#)".}


type QueueEnqueueManyAttrs {.header: std_ops, importcpp:"tensorflow::ops::QueueEnqueueMany::Attrs".} = object

proc TimeoutMs(queueEnqueueManyAttrs: QueueEnqueueManyAttrs, timeoutMs: int): QueueEnqueueManyAttrs {.header: std_ops, importcpp:"#.TimeoutMs(#)".}


type RandomShuffleQueueAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomShuffleQueue::Attrs".} = object

proc Capacity(randomShuffleQueueAttrs: RandomShuffleQueueAttrs, capacity: int): RandomShuffleQueueAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(randomShuffleQueueAttrs: RandomShuffleQueueAttrs, container: cppstring): RandomShuffleQueueAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MinAfterDequeue(randomShuffleQueueAttrs: RandomShuffleQueueAttrs, minAfterDequeue: int): RandomShuffleQueueAttrs {.header: std_ops, importcpp:"#.MinAfterDequeue(#)".}

proc Seed(randomShuffleQueueAttrs: RandomShuffleQueueAttrs, seed: int): RandomShuffleQueueAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(randomShuffleQueueAttrs: RandomShuffleQueueAttrs, seed2: int): RandomShuffleQueueAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}

proc Shapes(randomShuffleQueueAttrs: RandomShuffleQueueAttrs, shapes: ArraySlice[TensorShape]): RandomShuffleQueueAttrs {.header: std_ops, importcpp:"#.Shapes(#)".}

proc SharedName(randomShuffleQueueAttrs: RandomShuffleQueueAttrs, sharedName: cppstring): RandomShuffleQueueAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type RecordInputAttrs {.header: std_ops, importcpp:"tensorflow::ops::RecordInput::Attrs".} = object

proc BatchSize(recordInputAttrs: RecordInputAttrs, batchSize: int): RecordInputAttrs {.header: std_ops, importcpp:"#.BatchSize(#)".}

proc CompressionType(recordInputAttrs: RecordInputAttrs, compressionType: cppstring): RecordInputAttrs {.header: std_ops, importcpp:"#.CompressionType(#)".}

proc FileBufferSize(recordInputAttrs: RecordInputAttrs, fileBufferSize: int): RecordInputAttrs {.header: std_ops, importcpp:"#.FileBufferSize(#)".}

proc FileParallelism(recordInputAttrs: RecordInputAttrs, fileParallelism: int): RecordInputAttrs {.header: std_ops, importcpp:"#.FileParallelism(#)".}

proc FileRandomSeed(recordInputAttrs: RecordInputAttrs, fileRandomSeed: int): RecordInputAttrs {.header: std_ops, importcpp:"#.FileRandomSeed(#)".}

proc FileShuffleShiftRatio(recordInputAttrs: RecordInputAttrs, fileShuffleShiftRatio: float): RecordInputAttrs {.header: std_ops, importcpp:"#.FileShuffleShiftRatio(#)".}


type SparseConditionalAccumulatorAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseConditionalAccumulator::Attrs".} = object

proc Container(sparseConditionalAccumulatorAttrs: SparseConditionalAccumulatorAttrs, container: cppstring): SparseConditionalAccumulatorAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc ReductionType(sparseConditionalAccumulatorAttrs: SparseConditionalAccumulatorAttrs, reductionType: cppstring): SparseConditionalAccumulatorAttrs {.header: std_ops, importcpp:"#.ReductionType(#)".}

proc SharedName(sparseConditionalAccumulatorAttrs: SparseConditionalAccumulatorAttrs, sharedName: cppstring): SparseConditionalAccumulatorAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type StageAttrs {.header: std_ops, importcpp:"tensorflow::ops::Stage::Attrs".} = object

proc Capacity(stageAttrs: StageAttrs, capacity: int): StageAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(stageAttrs: StageAttrs, container: cppstring): StageAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(stageAttrs: StageAttrs, memoryLimit: int): StageAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(stageAttrs: StageAttrs, sharedName: cppstring): StageAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type StageClearAttrs {.header: std_ops, importcpp:"tensorflow::ops::StageClear::Attrs".} = object

proc Capacity(stageClearAttrs: StageClearAttrs, capacity: int): StageClearAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(stageClearAttrs: StageClearAttrs, container: cppstring): StageClearAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(stageClearAttrs: StageClearAttrs, memoryLimit: int): StageClearAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(stageClearAttrs: StageClearAttrs, sharedName: cppstring): StageClearAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type StagePeekAttrs {.header: std_ops, importcpp:"tensorflow::ops::StagePeek::Attrs".} = object

proc Capacity(stagePeekAttrs: StagePeekAttrs, capacity: int): StagePeekAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(stagePeekAttrs: StagePeekAttrs, container: cppstring): StagePeekAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(stagePeekAttrs: StagePeekAttrs, memoryLimit: int): StagePeekAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(stagePeekAttrs: StagePeekAttrs, sharedName: cppstring): StagePeekAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type StageSizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::StageSize::Attrs".} = object

proc Capacity(stageSizeAttrs: StageSizeAttrs, capacity: int): StageSizeAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(stageSizeAttrs: StageSizeAttrs, container: cppstring): StageSizeAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(stageSizeAttrs: StageSizeAttrs, memoryLimit: int): StageSizeAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(stageSizeAttrs: StageSizeAttrs, sharedName: cppstring): StageSizeAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type TensorArrayAttrs {.header: std_ops, importcpp:"tensorflow::ops::TensorArray::Attrs".} = object

proc ClearAfterRead(tensorArrayAttrs: TensorArrayAttrs, clearAfterRead: bool): TensorArrayAttrs {.header: std_ops, importcpp:"#.ClearAfterRead(#)".}

proc DynamicSize(tensorArrayAttrs: TensorArrayAttrs, dynamicSize: bool): TensorArrayAttrs {.header: std_ops, importcpp:"#.DynamicSize(#)".}

proc ElementShape(tensorArrayAttrs: TensorArrayAttrs, elementShape: TensorShape): TensorArrayAttrs {.header: std_ops, importcpp:"#.ElementShape(#)".}

proc IdenticalElementShapes(tensorArrayAttrs: TensorArrayAttrs, identicalElementShapes: bool): TensorArrayAttrs {.header: std_ops, importcpp:"#.IdenticalElementShapes(#)".}

proc TensorArrayName(tensorArrayAttrs: TensorArrayAttrs, tensorArrayName: cppstring): TensorArrayAttrs {.header: std_ops, importcpp:"#.TensorArrayName(#)".}


type TensorArrayConcatAttrs {.header: std_ops, importcpp:"tensorflow::ops::TensorArrayConcat::Attrs".} = object

proc ElementShapeExcept0(tensorArrayConcatAttrs: TensorArrayConcatAttrs, elementShapeExcept0: TensorShape): TensorArrayConcatAttrs {.header: std_ops, importcpp:"#.ElementShapeExcept0(#)".}


type TensorArrayGatherAttrs {.header: std_ops, importcpp:"tensorflow::ops::TensorArrayGather::Attrs".} = object

proc ElementShape(tensorArrayGatherAttrs: TensorArrayGatherAttrs, elementShape: TensorShape): TensorArrayGatherAttrs {.header: std_ops, importcpp:"#.ElementShape(#)".}


type UnstageAttrs {.header: std_ops, importcpp:"tensorflow::ops::Unstage::Attrs".} = object

proc Capacity(unstageAttrs: UnstageAttrs, capacity: int): UnstageAttrs {.header: std_ops, importcpp:"#.Capacity(#)".}

proc Container(unstageAttrs: UnstageAttrs, container: cppstring): UnstageAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc MemoryLimit(unstageAttrs: UnstageAttrs, memoryLimit: int): UnstageAttrs {.header: std_ops, importcpp:"#.MemoryLimit(#)".}

proc SharedName(unstageAttrs: UnstageAttrs, sharedName: cppstring): UnstageAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type CropAndResizeAttrs {.header: std_ops, importcpp:"tensorflow::ops::CropAndResize::Attrs".} = object

proc ExtrapolationValue(cropAndResizeAttrs: CropAndResizeAttrs, extrapolationValue: float): CropAndResizeAttrs {.header: std_ops, importcpp:"#.ExtrapolationValue(#)".}

proc Method(cropAndResizeAttrs: CropAndResizeAttrs, mmethod: cppstring): CropAndResizeAttrs {.header: std_ops, importcpp:"#.Method(#)".}


type CropAndResizeGradBoxesAttrs {.header: std_ops, importcpp:"tensorflow::ops::CropAndResizeGradBoxes::Attrs".} = object

proc Method(cropAndResizeGradBoxesAttrs: CropAndResizeGradBoxesAttrs, mmethod: cppstring): CropAndResizeGradBoxesAttrs {.header: std_ops, importcpp:"#.Method(#)".}


type CropAndResizeGradImageAttrs {.header: std_ops, importcpp:"tensorflow::ops::CropAndResizeGradImage::Attrs".} = object

proc Method(cropAndResizeGradImageAttrs: CropAndResizeGradImageAttrs, mmethod: cppstring): CropAndResizeGradImageAttrs {.header: std_ops, importcpp:"#.Method(#)".}


type DecodeAndCropJpegAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeAndCropJpeg::Attrs".} = object

proc AcceptableFraction(decodeAndCropJpegAttrs: DecodeAndCropJpegAttrs, acceptableFraction: float): DecodeAndCropJpegAttrs {.header: std_ops, importcpp:"#.AcceptableFraction(#)".}

proc Channels(decodeAndCropJpegAttrs: DecodeAndCropJpegAttrs, channels: int): DecodeAndCropJpegAttrs {.header: std_ops, importcpp:"#.Channels(#)".}

proc DctMethod(decodeAndCropJpegAttrs: DecodeAndCropJpegAttrs, dctMethod: cppstring): DecodeAndCropJpegAttrs {.header: std_ops, importcpp:"#.DctMethod(#)".}

proc FancyUpscaling(decodeAndCropJpegAttrs: DecodeAndCropJpegAttrs, fancyUpscaling: bool): DecodeAndCropJpegAttrs {.header: std_ops, importcpp:"#.FancyUpscaling(#)".}

proc Ratio(decodeAndCropJpegAttrs: DecodeAndCropJpegAttrs, ratio: int): DecodeAndCropJpegAttrs {.header: std_ops, importcpp:"#.Ratio(#)".}

proc TryRecoverTruncated(decodeAndCropJpegAttrs: DecodeAndCropJpegAttrs, tryRecoverTruncated: bool): DecodeAndCropJpegAttrs {.header: std_ops, importcpp:"#.TryRecoverTruncated(#)".}


type DecodeBmpAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeBmp::Attrs".} = object

proc Channels(decodeBmpAttrs: DecodeBmpAttrs, channels: int): DecodeBmpAttrs {.header: std_ops, importcpp:"#.Channels(#)".}


type DecodeJpegAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeJpeg::Attrs".} = object

proc AcceptableFraction(decodeJpegAttrs: DecodeJpegAttrs, acceptableFraction: float): DecodeJpegAttrs {.header: std_ops, importcpp:"#.AcceptableFraction(#)".}

proc Channels(decodeJpegAttrs: DecodeJpegAttrs, channels: int): DecodeJpegAttrs {.header: std_ops, importcpp:"#.Channels(#)".}

proc DctMethod(decodeJpegAttrs: DecodeJpegAttrs, dctMethod: cppstring): DecodeJpegAttrs {.header: std_ops, importcpp:"#.DctMethod(#)".}

proc FancyUpscaling(decodeJpegAttrs: DecodeJpegAttrs, fancyUpscaling: bool): DecodeJpegAttrs {.header: std_ops, importcpp:"#.FancyUpscaling(#)".}

proc Ratio(decodeJpegAttrs: DecodeJpegAttrs, ratio: int): DecodeJpegAttrs {.header: std_ops, importcpp:"#.Ratio(#)".}

proc TryRecoverTruncated(decodeJpegAttrs: DecodeJpegAttrs, tryRecoverTruncated: bool): DecodeJpegAttrs {.header: std_ops, importcpp:"#.TryRecoverTruncated(#)".}


type DecodePngAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodePng::Attrs".} = object

proc Channels(decodePngAttrs: DecodePngAttrs, channels: int): DecodePngAttrs {.header: std_ops, importcpp:"#.Channels(#)".}

proc Dtype(decodePngAttrs: DecodePngAttrs, dtype: core.DType): DecodePngAttrs {.header: std_ops, importcpp:"#.Dtype(#)".}


type EncodeJpegAttrs {.header: std_ops, importcpp:"tensorflow::ops::EncodeJpeg::Attrs".} = object

proc ChromaDownsampling(encodeJpegAttrs: EncodeJpegAttrs, chromaDownsampling: bool): EncodeJpegAttrs {.header: std_ops, importcpp:"#.ChromaDownsampling(#)".}

proc DensityUnit(encodeJpegAttrs: EncodeJpegAttrs, densityUnit: cppstring): EncodeJpegAttrs {.header: std_ops, importcpp:"#.DensityUnit(#)".}

proc Format(encodeJpegAttrs: EncodeJpegAttrs, format: cppstring): EncodeJpegAttrs {.header: std_ops, importcpp:"#.Format(#)".}

proc OptimizeSize(encodeJpegAttrs: EncodeJpegAttrs, optimizeSize: bool): EncodeJpegAttrs {.header: std_ops, importcpp:"#.OptimizeSize(#)".}

proc Progressive(encodeJpegAttrs: EncodeJpegAttrs, progressive: bool): EncodeJpegAttrs {.header: std_ops, importcpp:"#.Progressive(#)".}

proc Quality(encodeJpegAttrs: EncodeJpegAttrs, quality: int): EncodeJpegAttrs {.header: std_ops, importcpp:"#.Quality(#)".}

proc XDensity(encodeJpegAttrs: EncodeJpegAttrs, xDensity: int): EncodeJpegAttrs {.header: std_ops, importcpp:"#.XDensity(#)".}

proc XmpMetadata(encodeJpegAttrs: EncodeJpegAttrs, xmpMetadata: cppstring): EncodeJpegAttrs {.header: std_ops, importcpp:"#.XmpMetadata(#)".}

proc YDensity(encodeJpegAttrs: EncodeJpegAttrs, yDensity: int): EncodeJpegAttrs {.header: std_ops, importcpp:"#.YDensity(#)".}


type EncodePngAttrs {.header: std_ops, importcpp:"tensorflow::ops::EncodePng::Attrs".} = object

proc Compression(encodePngAttrs: EncodePngAttrs, compression: int): EncodePngAttrs {.header: std_ops, importcpp:"#.Compression(#)".}


type ExtractGlimpseAttrs {.header: std_ops, importcpp:"tensorflow::ops::ExtractGlimpse::Attrs".} = object

proc Centered(extractGlimpseAttrs: ExtractGlimpseAttrs, centered: bool): ExtractGlimpseAttrs {.header: std_ops, importcpp:"#.Centered(#)".}

proc Normalized(extractGlimpseAttrs: ExtractGlimpseAttrs, normalized: bool): ExtractGlimpseAttrs {.header: std_ops, importcpp:"#.Normalized(#)".}

proc UniformNoise(extractGlimpseAttrs: ExtractGlimpseAttrs, uniformNoise: bool): ExtractGlimpseAttrs {.header: std_ops, importcpp:"#.UniformNoise(#)".}


type ExtractJpegShapeAttrs {.header: std_ops, importcpp:"tensorflow::ops::ExtractJpegShape::Attrs".} = object

proc OutputType(extractJpegShapeAttrs: ExtractJpegShapeAttrs, outputType: core.DType): ExtractJpegShapeAttrs {.header: std_ops, importcpp:"#.OutputType(#)".}


type QuantizedResizeBilinearAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedResizeBilinear::Attrs".} = object

proc AlignCorners(quantizedResizeBilinearAttrs: QuantizedResizeBilinearAttrs, alignCorners: bool): QuantizedResizeBilinearAttrs {.header: std_ops, importcpp:"#.AlignCorners(#)".}


type ResizeAreaAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResizeArea::Attrs".} = object

proc AlignCorners(resizeAreaAttrs: ResizeAreaAttrs, alignCorners: bool): ResizeAreaAttrs {.header: std_ops, importcpp:"#.AlignCorners(#)".}


type ResizeBicubicAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResizeBicubic::Attrs".} = object

proc AlignCorners(resizeBicubicAttrs: ResizeBicubicAttrs, alignCorners: bool): ResizeBicubicAttrs {.header: std_ops, importcpp:"#.AlignCorners(#)".}


type ResizeBilinearAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResizeBilinear::Attrs".} = object

proc AlignCorners(resizeBilinearAttrs: ResizeBilinearAttrs, alignCorners: bool): ResizeBilinearAttrs {.header: std_ops, importcpp:"#.AlignCorners(#)".}


type ResizeNearestNeighborAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResizeNearestNeighbor::Attrs".} = object

proc AlignCorners(resizeNearestNeighborAttrs: ResizeNearestNeighborAttrs, alignCorners: bool): ResizeNearestNeighborAttrs {.header: std_ops, importcpp:"#.AlignCorners(#)".}


type SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBox::Attrs".} = object

proc AreaRange(sampleDistortedBoundingBoxAttrs: SampleDistortedBoundingBoxAttrs, areaRange: ArraySlice[float]): SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"#.AreaRange(#)".}

proc AspectRatioRange(sampleDistortedBoundingBoxAttrs: SampleDistortedBoundingBoxAttrs, aspectRatioRange: ArraySlice[float]): SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"#.AspectRatioRange(#)".}

proc MaxAttempts(sampleDistortedBoundingBoxAttrs: SampleDistortedBoundingBoxAttrs, maxAttempts: int): SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"#.MaxAttempts(#)".}

proc MinObjectCovered(sampleDistortedBoundingBoxAttrs: SampleDistortedBoundingBoxAttrs, minObjectCovered: float): SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"#.MinObjectCovered(#)".}

proc Seed(sampleDistortedBoundingBoxAttrs: SampleDistortedBoundingBoxAttrs, seed: int): SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(sampleDistortedBoundingBoxAttrs: SampleDistortedBoundingBoxAttrs, seed2: int): SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}

proc UseImageIfNoBoundingBoxes(sampleDistortedBoundingBoxAttrs: SampleDistortedBoundingBoxAttrs, useImageIfNoBoundingBoxes: bool): SampleDistortedBoundingBoxAttrs {.header: std_ops, importcpp:"#.UseImageIfNoBoundingBoxes(#)".}


type SampleDistortedBoundingBoxV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBoxV2::Attrs".} = object

proc AreaRange(sampleDistortedBoundingBoxV2Attrs: SampleDistortedBoundingBoxV2Attrs, areaRange: ArraySlice[float]): SampleDistortedBoundingBoxV2Attrs {.header: std_ops, importcpp:"#.AreaRange(#)".}

proc AspectRatioRange(sampleDistortedBoundingBoxV2Attrs: SampleDistortedBoundingBoxV2Attrs, aspectRatioRange: ArraySlice[float]): SampleDistortedBoundingBoxV2Attrs {.header: std_ops, importcpp:"#.AspectRatioRange(#)".}

proc MaxAttempts(sampleDistortedBoundingBoxV2Attrs: SampleDistortedBoundingBoxV2Attrs, maxAttempts: int): SampleDistortedBoundingBoxV2Attrs {.header: std_ops, importcpp:"#.MaxAttempts(#)".}

proc Seed(sampleDistortedBoundingBoxV2Attrs: SampleDistortedBoundingBoxV2Attrs, seed: int): SampleDistortedBoundingBoxV2Attrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(sampleDistortedBoundingBoxV2Attrs: SampleDistortedBoundingBoxV2Attrs, seed2: int): SampleDistortedBoundingBoxV2Attrs {.header: std_ops, importcpp:"#.Seed2(#)".}

proc UseImageIfNoBoundingBoxes(sampleDistortedBoundingBoxV2Attrs: SampleDistortedBoundingBoxV2Attrs, useImageIfNoBoundingBoxes: bool): SampleDistortedBoundingBoxV2Attrs {.header: std_ops, importcpp:"#.UseImageIfNoBoundingBoxes(#)".}


type FixedLengthRecordReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::FixedLengthRecordReader::Attrs".} = object

proc Container(fixedLengthRecordReaderAttrs: FixedLengthRecordReaderAttrs, container: cppstring): FixedLengthRecordReaderAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc Encoding(fixedLengthRecordReaderAttrs: FixedLengthRecordReaderAttrs, encoding: cppstring): FixedLengthRecordReaderAttrs {.header: std_ops, importcpp:"#.Encoding(#)".}

proc FooterBytes(fixedLengthRecordReaderAttrs: FixedLengthRecordReaderAttrs, footerBytes: int): FixedLengthRecordReaderAttrs {.header: std_ops, importcpp:"#.FooterBytes(#)".}

proc HeaderBytes(fixedLengthRecordReaderAttrs: FixedLengthRecordReaderAttrs, headerBytes: int): FixedLengthRecordReaderAttrs {.header: std_ops, importcpp:"#.HeaderBytes(#)".}

proc HopBytes(fixedLengthRecordReaderAttrs: FixedLengthRecordReaderAttrs, hopBytes: int): FixedLengthRecordReaderAttrs {.header: std_ops, importcpp:"#.HopBytes(#)".}

proc SharedName(fixedLengthRecordReaderAttrs: FixedLengthRecordReaderAttrs, sharedName: cppstring): FixedLengthRecordReaderAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type IdentityReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::IdentityReader::Attrs".} = object

proc Container(identityReaderAttrs: IdentityReaderAttrs, container: cppstring): IdentityReaderAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(identityReaderAttrs: IdentityReaderAttrs, sharedName: cppstring): IdentityReaderAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type LMDBReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::LMDBReader::Attrs".} = object

proc Container(lMDBReaderAttrs: LMDBReaderAttrs, container: cppstring): LMDBReaderAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(lMDBReaderAttrs: LMDBReaderAttrs, sharedName: cppstring): LMDBReaderAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type MergeV2CheckpointsAttrs {.header: std_ops, importcpp:"tensorflow::ops::MergeV2Checkpoints::Attrs".} = object

proc DeleteOldDirs(mergeV2CheckpointsAttrs: MergeV2CheckpointsAttrs, deleteOldDirs: bool): MergeV2CheckpointsAttrs {.header: std_ops, importcpp:"#.DeleteOldDirs(#)".}


type RestoreAttrs {.header: std_ops, importcpp:"tensorflow::ops::Restore::Attrs".} = object

proc PreferredShard(restoreAttrs: RestoreAttrs, preferredShard: int): RestoreAttrs {.header: std_ops, importcpp:"#.PreferredShard(#)".}


type RestoreSliceAttrs {.header: std_ops, importcpp:"tensorflow::ops::RestoreSlice::Attrs".} = object

proc PreferredShard(restoreSliceAttrs: RestoreSliceAttrs, preferredShard: int): RestoreSliceAttrs {.header: std_ops, importcpp:"#.PreferredShard(#)".}


type TFRecordReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::TFRecordReader::Attrs".} = object

proc CompressionType(tFRecordReaderAttrs: TFRecordReaderAttrs, compressionType: cppstring): TFRecordReaderAttrs {.header: std_ops, importcpp:"#.CompressionType(#)".}

proc Container(tFRecordReaderAttrs: TFRecordReaderAttrs, container: cppstring): TFRecordReaderAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(tFRecordReaderAttrs: TFRecordReaderAttrs, sharedName: cppstring): TFRecordReaderAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type TextLineReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::TextLineReader::Attrs".} = object

proc Container(textLineReaderAttrs: TextLineReaderAttrs, container: cppstring): TextLineReaderAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(textLineReaderAttrs: TextLineReaderAttrs, sharedName: cppstring): TextLineReaderAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}

proc SkipHeaderLines(textLineReaderAttrs: TextLineReaderAttrs, skipHeaderLines: int): TextLineReaderAttrs {.header: std_ops, importcpp:"#.SkipHeaderLines(#)".}


type WholeFileReaderAttrs {.header: std_ops, importcpp:"tensorflow::ops::WholeFileReader::Attrs".} = object

proc Container(wholeFileReaderAttrs: WholeFileReaderAttrs, container: cppstring): WholeFileReaderAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(wholeFileReaderAttrs: WholeFileReaderAttrs, sharedName: cppstring): WholeFileReaderAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type AssertAttrs {.header: std_ops, importcpp:"tensorflow::ops::Assert::Attrs".} = object

proc Summarize(assertAttrs: AssertAttrs, summarize: int): AssertAttrs {.header: std_ops, importcpp:"#.Summarize(#)".}


type PrintAttrs {.header: std_ops, importcpp:"tensorflow::ops::Print::Attrs".} = object

proc FirstN(printAttrs: PrintAttrs, firstN: int): PrintAttrs {.header: std_ops, importcpp:"#.FirstN(#)".}

proc Message(printAttrs: PrintAttrs, message: cppstring): PrintAttrs {.header: std_ops, importcpp:"#.Message(#)".}

proc Summarize(printAttrs: PrintAttrs, summarize: int): PrintAttrs {.header: std_ops, importcpp:"#.Summarize(#)".}


type PrintV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::PrintV2::Attrs".} = object

proc OutputStream(printV2Attrs: PrintV2Attrs, outputStream: cppstring): PrintV2Attrs {.header: std_ops, importcpp:"#.OutputStream(#)".}


type TensorSummaryAttrs {.header: std_ops, importcpp:"tensorflow::ops::TensorSummary::Attrs".} = object

proc Description(tensorSummaryAttrs: TensorSummaryAttrs, description: cppstring): TensorSummaryAttrs {.header: std_ops, importcpp:"#.Description(#)".}

proc DisplayName(tensorSummaryAttrs: TensorSummaryAttrs, displayName: cppstring): TensorSummaryAttrs {.header: std_ops, importcpp:"#.DisplayName(#)".}

proc Labels(tensorSummaryAttrs: TensorSummaryAttrs, labels: ArraySlice[cppstring]): TensorSummaryAttrs {.header: std_ops, importcpp:"#.Labels(#)".}


type AllAttrs {.header: std_ops, importcpp:"tensorflow::ops::All::Attrs".} = object

proc KeepDims(allAttrs: AllAttrs, keepDims: bool): AllAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type AngleAttrs {.header: std_ops, importcpp:"tensorflow::ops::Angle::Attrs".} = object

proc Tout(angleAttrs: AngleAttrs, tout: core.DType): AngleAttrs {.header: std_ops, importcpp:"#.Tout(#)".}


type AnyAttrs {.header: std_ops, importcpp:"tensorflow::ops::Any::Attrs".} = object

proc KeepDims(anyAttrs: AnyAttrs, keepDims: bool): AnyAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type ApproximateEqualAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApproximateEqual::Attrs".} = object

proc Tolerance(approximateEqualAttrs: ApproximateEqualAttrs, tolerance: float): ApproximateEqualAttrs {.header: std_ops, importcpp:"#.Tolerance(#)".}


type ArgMaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::ArgMax::Attrs".} = object

proc OutputType(argMaxAttrs: ArgMaxAttrs, outputType: core.DType): ArgMaxAttrs {.header: std_ops, importcpp:"#.OutputType(#)".}


type ArgMinAttrs {.header: std_ops, importcpp:"tensorflow::ops::ArgMin::Attrs".} = object

proc OutputType(argMinAttrs: ArgMinAttrs, outputType: core.DType): ArgMinAttrs {.header: std_ops, importcpp:"#.OutputType(#)".}


type BatchMatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::BatchMatMul::Attrs".} = object

proc AdjX(batchMatMulAttrs: BatchMatMulAttrs, adjX: bool): BatchMatMulAttrs {.header: std_ops, importcpp:"#.AdjX(#)".}

proc AdjY(batchMatMulAttrs: BatchMatMulAttrs, adjY: bool): BatchMatMulAttrs {.header: std_ops, importcpp:"#.AdjY(#)".}


type CastAttrs {.header: std_ops, importcpp:"tensorflow::ops::Cast::Attrs".} = object

proc Truncate(castAttrs: CastAttrs, truncate: bool): CastAttrs {.header: std_ops, importcpp:"#.Truncate(#)".}


type ComplexAttrs {.header: std_ops, importcpp:"tensorflow::ops::Complex::Attrs".} = object

proc Tout(complexAttrs: ComplexAttrs, tout: core.DType): ComplexAttrs {.header: std_ops, importcpp:"#.Tout(#)".}


type ComplexAbsAttrs {.header: std_ops, importcpp:"tensorflow::ops::ComplexAbs::Attrs".} = object

proc Tout(complexAbsAttrs: ComplexAbsAttrs, tout: core.DType): ComplexAbsAttrs {.header: std_ops, importcpp:"#.Tout(#)".}


type CumprodAttrs {.header: std_ops, importcpp:"tensorflow::ops::Cumprod::Attrs".} = object

proc Exclusive(cumprodAttrs: CumprodAttrs, exclusive: bool): CumprodAttrs {.header: std_ops, importcpp:"#.Exclusive(#)".}

proc Reverse(cumprodAttrs: CumprodAttrs, reverse: bool): CumprodAttrs {.header: std_ops, importcpp:"#.Reverse(#)".}


type CumsumAttrs {.header: std_ops, importcpp:"tensorflow::ops::Cumsum::Attrs".} = object

proc Exclusive(cumsumAttrs: CumsumAttrs, exclusive: bool): CumsumAttrs {.header: std_ops, importcpp:"#.Exclusive(#)".}

proc Reverse(cumsumAttrs: CumsumAttrs, reverse: bool): CumsumAttrs {.header: std_ops, importcpp:"#.Reverse(#)".}


type HistogramFixedWidthAttrs {.header: std_ops, importcpp:"tensorflow::ops::HistogramFixedWidth::Attrs".} = object

proc Dtype(histogramFixedWidthAttrs: HistogramFixedWidthAttrs, dtype: core.DType): HistogramFixedWidthAttrs {.header: std_ops, importcpp:"#.Dtype(#)".}


type ImagAttrs {.header: std_ops, importcpp:"tensorflow::ops::Imag::Attrs".} = object

proc Tout(imagAttrs: ImagAttrs, tout: core.DType): ImagAttrs {.header: std_ops, importcpp:"#.Tout(#)".}


type MatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::MatMul::Attrs".} = object

proc TransposeA(matMulAttrs: MatMulAttrs, transposeA: bool): MatMulAttrs {.header: std_ops, importcpp:"#.TransposeA(#)".}

proc TransposeB(matMulAttrs: MatMulAttrs, transposeB: bool): MatMulAttrs {.header: std_ops, importcpp:"#.TransposeB(#)".}


type MaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::Max::Attrs".} = object

proc KeepDims(maxAttrs: MaxAttrs, keepDims: bool): MaxAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type MeanAttrs {.header: std_ops, importcpp:"tensorflow::ops::Mean::Attrs".} = object

proc KeepDims(meanAttrs: MeanAttrs, keepDims: bool): MeanAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type MinAttrs {.header: std_ops, importcpp:"tensorflow::ops::Min::Attrs".} = object

proc KeepDims(minAttrs: MinAttrs, keepDims: bool): MinAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type ProdAttrs {.header: std_ops, importcpp:"tensorflow::ops::Prod::Attrs".} = object

proc KeepDims(prodAttrs: ProdAttrs, keepDims: bool): ProdAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type QuantizedAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedAdd::Attrs".} = object

proc Toutput(quantizedAddAttrs: QuantizedAddAttrs, toutput: core.DType): QuantizedAddAttrs {.header: std_ops, importcpp:"#.Toutput(#)".}


type QuantizedMatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedMatMul::Attrs".} = object

proc Tactivation(quantizedMatMulAttrs: QuantizedMatMulAttrs, tactivation: core.DType): QuantizedMatMulAttrs {.header: std_ops, importcpp:"#.Tactivation(#)".}

proc Toutput(quantizedMatMulAttrs: QuantizedMatMulAttrs, toutput: core.DType): QuantizedMatMulAttrs {.header: std_ops, importcpp:"#.Toutput(#)".}

proc TransposeA(quantizedMatMulAttrs: QuantizedMatMulAttrs, transposeA: bool): QuantizedMatMulAttrs {.header: std_ops, importcpp:"#.TransposeA(#)".}

proc TransposeB(quantizedMatMulAttrs: QuantizedMatMulAttrs, transposeB: bool): QuantizedMatMulAttrs {.header: std_ops, importcpp:"#.TransposeB(#)".}


type QuantizedMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedMul::Attrs".} = object

proc Toutput(quantizedMulAttrs: QuantizedMulAttrs, toutput: core.DType): QuantizedMulAttrs {.header: std_ops, importcpp:"#.Toutput(#)".}


type RealAttrs {.header: std_ops, importcpp:"tensorflow::ops::Real::Attrs".} = object

proc Tout(realAttrs: RealAttrs, tout: core.DType): RealAttrs {.header: std_ops, importcpp:"#.Tout(#)".}


type SparseMatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseMatMul::Attrs".} = object

proc AIsSparse(sparseMatMulAttrs: SparseMatMulAttrs, aIsSparse: bool): SparseMatMulAttrs {.header: std_ops, importcpp:"#.AIsSparse(#)".}

proc BIsSparse(sparseMatMulAttrs: SparseMatMulAttrs, bIsSparse: bool): SparseMatMulAttrs {.header: std_ops, importcpp:"#.BIsSparse(#)".}

proc TransposeA(sparseMatMulAttrs: SparseMatMulAttrs, transposeA: bool): SparseMatMulAttrs {.header: std_ops, importcpp:"#.TransposeA(#)".}

proc TransposeB(sparseMatMulAttrs: SparseMatMulAttrs, transposeB: bool): SparseMatMulAttrs {.header: std_ops, importcpp:"#.TransposeB(#)".}


type SumAttrs {.header: std_ops, importcpp:"tensorflow::ops::Sum::Attrs".} = object

proc KeepDims(sumAttrs: SumAttrs, keepDims: bool): SumAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type AvgPoolAttrs {.header: std_ops, importcpp:"tensorflow::ops::AvgPool::Attrs".} = object

proc DataFormat(avgPoolAttrs: AvgPoolAttrs, dataFormat: cppstring): AvgPoolAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type AvgPool3DAttrs {.header: std_ops, importcpp:"tensorflow::ops::AvgPool3D::Attrs".} = object

proc DataFormat(avgPool3DAttrs: AvgPool3DAttrs, dataFormat: cppstring): AvgPool3DAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type AvgPool3DGradAttrs {.header: std_ops, importcpp:"tensorflow::ops::AvgPool3DGrad::Attrs".} = object

proc DataFormat(avgPool3DGradAttrs: AvgPool3DGradAttrs, dataFormat: cppstring): AvgPool3DGradAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type BiasAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::BiasAdd::Attrs".} = object

proc DataFormat(biasAddAttrs: BiasAddAttrs, dataFormat: cppstring): BiasAddAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type BiasAddGradAttrs {.header: std_ops, importcpp:"tensorflow::ops::BiasAddGrad::Attrs".} = object

proc DataFormat(biasAddGradAttrs: BiasAddGradAttrs, dataFormat: cppstring): BiasAddGradAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type Conv2DAttrs {.header: std_ops, importcpp:"tensorflow::ops::Conv2D::Attrs".} = object

proc DataFormat(conv2DAttrs: Conv2DAttrs, dataFormat: cppstring): Conv2DAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(conv2DAttrs: Conv2DAttrs, dilations: ArraySlice[cint]): Conv2DAttrs {.header: std_ops, importcpp:"#.Dilations(#)".}

proc UseCudnnOnGpu(conv2DAttrs: Conv2DAttrs, useCudnnOnGpu: bool): Conv2DAttrs {.header: std_ops, importcpp:"#.UseCudnnOnGpu(#)".}


type Conv2DBackpropFilterAttrs {.header: std_ops, importcpp:"tensorflow::ops::Conv2DBackpropFilter::Attrs".} = object

proc DataFormat(conv2DBackpropFilterAttrs: Conv2DBackpropFilterAttrs, dataFormat: cppstring): Conv2DBackpropFilterAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(conv2DBackpropFilterAttrs: Conv2DBackpropFilterAttrs, dilations: ArraySlice[cint]): Conv2DBackpropFilterAttrs {.header: std_ops, importcpp:"#.Dilations(#)".}

proc UseCudnnOnGpu(conv2DBackpropFilterAttrs: Conv2DBackpropFilterAttrs, useCudnnOnGpu: bool): Conv2DBackpropFilterAttrs {.header: std_ops, importcpp:"#.UseCudnnOnGpu(#)".}


type Conv2DBackpropInputAttrs {.header: std_ops, importcpp:"tensorflow::ops::Conv2DBackpropInput::Attrs".} = object

proc DataFormat(conv2DBackpropInputAttrs: Conv2DBackpropInputAttrs, dataFormat: cppstring): Conv2DBackpropInputAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(conv2DBackpropInputAttrs: Conv2DBackpropInputAttrs, dilations: ArraySlice[cint]): Conv2DBackpropInputAttrs {.header: std_ops, importcpp:"#.Dilations(#)".}

proc UseCudnnOnGpu(conv2DBackpropInputAttrs: Conv2DBackpropInputAttrs, useCudnnOnGpu: bool): Conv2DBackpropInputAttrs {.header: std_ops, importcpp:"#.UseCudnnOnGpu(#)".}


type Conv3DAttrs {.header: std_ops, importcpp:"tensorflow::ops::Conv3D::Attrs".} = object

proc DataFormat(conv3DAttrs: Conv3DAttrs, dataFormat: cppstring): Conv3DAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(conv3DAttrs: Conv3DAttrs, dilations: ArraySlice[cint]): Conv3DAttrs {.header: std_ops, importcpp:"#.Dilations(#)".}


type Conv3DBackpropFilterV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::Conv3DBackpropFilterV2::Attrs".} = object

proc DataFormat(conv3DBackpropFilterV2Attrs: Conv3DBackpropFilterV2Attrs, dataFormat: cppstring): Conv3DBackpropFilterV2Attrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(conv3DBackpropFilterV2Attrs: Conv3DBackpropFilterV2Attrs, dilations: ArraySlice[cint]): Conv3DBackpropFilterV2Attrs {.header: std_ops, importcpp:"#.Dilations(#)".}


type Conv3DBackpropInputV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::Conv3DBackpropInputV2::Attrs".} = object

proc DataFormat(conv3DBackpropInputV2Attrs: Conv3DBackpropInputV2Attrs, dataFormat: cppstring): Conv3DBackpropInputV2Attrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(conv3DBackpropInputV2Attrs: Conv3DBackpropInputV2Attrs, dilations: ArraySlice[cint]): Conv3DBackpropInputV2Attrs {.header: std_ops, importcpp:"#.Dilations(#)".}


type DataFormatDimMapAttrs {.header: std_ops, importcpp:"tensorflow::ops::DataFormatDimMap::Attrs".} = object

proc DstFormat(dataFormatDimMapAttrs: DataFormatDimMapAttrs, dstFormat: cppstring): DataFormatDimMapAttrs {.header: std_ops, importcpp:"#.DstFormat(#)".}

proc SrcFormat(dataFormatDimMapAttrs: DataFormatDimMapAttrs, srcFormat: cppstring): DataFormatDimMapAttrs {.header: std_ops, importcpp:"#.SrcFormat(#)".}


type DataFormatVecPermuteAttrs {.header: std_ops, importcpp:"tensorflow::ops::DataFormatVecPermute::Attrs".} = object

proc DstFormat(dataFormatVecPermuteAttrs: DataFormatVecPermuteAttrs, dstFormat: cppstring): DataFormatVecPermuteAttrs {.header: std_ops, importcpp:"#.DstFormat(#)".}

proc SrcFormat(dataFormatVecPermuteAttrs: DataFormatVecPermuteAttrs, srcFormat: cppstring): DataFormatVecPermuteAttrs {.header: std_ops, importcpp:"#.SrcFormat(#)".}


type DepthwiseConv2dNativeAttrs {.header: std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNative::Attrs".} = object

proc DataFormat(depthwiseConv2dNativeAttrs: DepthwiseConv2dNativeAttrs, dataFormat: cppstring): DepthwiseConv2dNativeAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(depthwiseConv2dNativeAttrs: DepthwiseConv2dNativeAttrs, dilations: ArraySlice[cint]): DepthwiseConv2dNativeAttrs {.header: std_ops, importcpp:"#.Dilations(#)".}


type DepthwiseConv2dNativeBackpropFilterAttrs {.header: std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropFilter::Attrs".} = object

proc DataFormat(depthwiseConv2dNativeBackpropFilterAttrs: DepthwiseConv2dNativeBackpropFilterAttrs, dataFormat: cppstring): DepthwiseConv2dNativeBackpropFilterAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(depthwiseConv2dNativeBackpropFilterAttrs: DepthwiseConv2dNativeBackpropFilterAttrs, dilations: ArraySlice[cint]): DepthwiseConv2dNativeBackpropFilterAttrs {.header: std_ops, importcpp:"#.Dilations(#)".}


type DepthwiseConv2dNativeBackpropInputAttrs {.header: std_ops, importcpp:"tensorflow::ops::DepthwiseConv2dNativeBackpropInput::Attrs".} = object

proc DataFormat(depthwiseConv2dNativeBackpropInputAttrs: DepthwiseConv2dNativeBackpropInputAttrs, dataFormat: cppstring): DepthwiseConv2dNativeBackpropInputAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Dilations(depthwiseConv2dNativeBackpropInputAttrs: DepthwiseConv2dNativeBackpropInputAttrs, dilations: ArraySlice[cint]): DepthwiseConv2dNativeBackpropInputAttrs {.header: std_ops, importcpp:"#.Dilations(#)".}


type FractionalAvgPoolAttrs {.header: std_ops, importcpp:"tensorflow::ops::FractionalAvgPool::Attrs".} = object

proc Deterministic(fractionalAvgPoolAttrs: FractionalAvgPoolAttrs, deterministic: bool): FractionalAvgPoolAttrs {.header: std_ops, importcpp:"#.Deterministic(#)".}

proc Overlapping(fractionalAvgPoolAttrs: FractionalAvgPoolAttrs, overlapping: bool): FractionalAvgPoolAttrs {.header: std_ops, importcpp:"#.Overlapping(#)".}

proc PseudoRandom(fractionalAvgPoolAttrs: FractionalAvgPoolAttrs, pseudoRandom: bool): FractionalAvgPoolAttrs {.header: std_ops, importcpp:"#.PseudoRandom(#)".}

proc Seed(fractionalAvgPoolAttrs: FractionalAvgPoolAttrs, seed: int): FractionalAvgPoolAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(fractionalAvgPoolAttrs: FractionalAvgPoolAttrs, seed2: int): FractionalAvgPoolAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type FractionalMaxPoolAttrs {.header: std_ops, importcpp:"tensorflow::ops::FractionalMaxPool::Attrs".} = object

proc Deterministic(fractionalMaxPoolAttrs: FractionalMaxPoolAttrs, deterministic: bool): FractionalMaxPoolAttrs {.header: std_ops, importcpp:"#.Deterministic(#)".}

proc Overlapping(fractionalMaxPoolAttrs: FractionalMaxPoolAttrs, overlapping: bool): FractionalMaxPoolAttrs {.header: std_ops, importcpp:"#.Overlapping(#)".}

proc PseudoRandom(fractionalMaxPoolAttrs: FractionalMaxPoolAttrs, pseudoRandom: bool): FractionalMaxPoolAttrs {.header: std_ops, importcpp:"#.PseudoRandom(#)".}

proc Seed(fractionalMaxPoolAttrs: FractionalMaxPoolAttrs, seed: int): FractionalMaxPoolAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(fractionalMaxPoolAttrs: FractionalMaxPoolAttrs, seed2: int): FractionalMaxPoolAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type FusedBatchNormAttrs {.header: std_ops, importcpp:"tensorflow::ops::FusedBatchNorm::Attrs".} = object

proc DataFormat(fusedBatchNormAttrs: FusedBatchNormAttrs, dataFormat: cppstring): FusedBatchNormAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Epsilon(fusedBatchNormAttrs: FusedBatchNormAttrs, epsilon: float): FusedBatchNormAttrs {.header: std_ops, importcpp:"#.Epsilon(#)".}

proc IsTraining(fusedBatchNormAttrs: FusedBatchNormAttrs, isTraining: bool): FusedBatchNormAttrs {.header: std_ops, importcpp:"#.IsTraining(#)".}


type FusedBatchNormGradAttrs {.header: std_ops, importcpp:"tensorflow::ops::FusedBatchNormGrad::Attrs".} = object

proc DataFormat(fusedBatchNormGradAttrs: FusedBatchNormGradAttrs, dataFormat: cppstring): FusedBatchNormGradAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Epsilon(fusedBatchNormGradAttrs: FusedBatchNormGradAttrs, epsilon: float): FusedBatchNormGradAttrs {.header: std_ops, importcpp:"#.Epsilon(#)".}

proc IsTraining(fusedBatchNormGradAttrs: FusedBatchNormGradAttrs, isTraining: bool): FusedBatchNormGradAttrs {.header: std_ops, importcpp:"#.IsTraining(#)".}


type FusedBatchNormGradV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::FusedBatchNormGradV2::Attrs".} = object

proc DataFormat(fusedBatchNormGradV2Attrs: FusedBatchNormGradV2Attrs, dataFormat: cppstring): FusedBatchNormGradV2Attrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Epsilon(fusedBatchNormGradV2Attrs: FusedBatchNormGradV2Attrs, epsilon: float): FusedBatchNormGradV2Attrs {.header: std_ops, importcpp:"#.Epsilon(#)".}

proc IsTraining(fusedBatchNormGradV2Attrs: FusedBatchNormGradV2Attrs, isTraining: bool): FusedBatchNormGradV2Attrs {.header: std_ops, importcpp:"#.IsTraining(#)".}


type FusedBatchNormV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::FusedBatchNormV2::Attrs".} = object

proc DataFormat(fusedBatchNormV2Attrs: FusedBatchNormV2Attrs, dataFormat: cppstring): FusedBatchNormV2Attrs {.header: std_ops, importcpp:"#.DataFormat(#)".}

proc Epsilon(fusedBatchNormV2Attrs: FusedBatchNormV2Attrs, epsilon: float): FusedBatchNormV2Attrs {.header: std_ops, importcpp:"#.Epsilon(#)".}

proc IsTraining(fusedBatchNormV2Attrs: FusedBatchNormV2Attrs, isTraining: bool): FusedBatchNormV2Attrs {.header: std_ops, importcpp:"#.IsTraining(#)".}


type FusedResizeAndPadConv2DAttrs {.header: std_ops, importcpp:"tensorflow::ops::FusedResizeAndPadConv2D::Attrs".} = object

proc ResizeAlignCorners(fusedResizeAndPadConv2DAttrs: FusedResizeAndPadConv2DAttrs, resizeAlignCorners: bool): FusedResizeAndPadConv2DAttrs {.header: std_ops, importcpp:"#.ResizeAlignCorners(#)".}


type LRNAttrs {.header: std_ops, importcpp:"tensorflow::ops::LRN::Attrs".} = object

proc Alpha(lRNAttrs: LRNAttrs, alpha: float): LRNAttrs {.header: std_ops, importcpp:"#.Alpha(#)".}

proc Beta(lRNAttrs: LRNAttrs, beta: float): LRNAttrs {.header: std_ops, importcpp:"#.Beta(#)".}

proc Bias(lRNAttrs: LRNAttrs, bias: float): LRNAttrs {.header: std_ops, importcpp:"#.Bias(#)".}

proc DepthRadius(lRNAttrs: LRNAttrs, depthRadius: int): LRNAttrs {.header: std_ops, importcpp:"#.DepthRadius(#)".}


type MaxPoolAttrs {.header: std_ops, importcpp:"tensorflow::ops::MaxPool::Attrs".} = object

proc DataFormat(maxPoolAttrs: MaxPoolAttrs, dataFormat: cppstring): MaxPoolAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type MaxPool3DAttrs {.header: std_ops, importcpp:"tensorflow::ops::MaxPool3D::Attrs".} = object

proc DataFormat(maxPool3DAttrs: MaxPool3DAttrs, dataFormat: cppstring): MaxPool3DAttrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type MaxPoolV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::MaxPoolV2::Attrs".} = object

proc DataFormat(maxPoolV2Attrs: MaxPoolV2Attrs, dataFormat: cppstring): MaxPoolV2Attrs {.header: std_ops, importcpp:"#.DataFormat(#)".}


type MaxPoolWithArgmaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::MaxPoolWithArgmax::Attrs".} = object

proc Targmax(maxPoolWithArgmaxAttrs: MaxPoolWithArgmaxAttrs, targmax: core.DType): MaxPoolWithArgmaxAttrs {.header: std_ops, importcpp:"#.Targmax(#)".}


type NthElementAttrs {.header: std_ops, importcpp:"tensorflow::ops::NthElement::Attrs".} = object

proc Reverse(nthElementAttrs: NthElementAttrs, reverse: bool): NthElementAttrs {.header: std_ops, importcpp:"#.Reverse(#)".}


type QuantizedConv2DAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedConv2D::Attrs".} = object

proc Dilations(quantizedConv2DAttrs: QuantizedConv2DAttrs, dilations: ArraySlice[cint]): QuantizedConv2DAttrs {.header: std_ops, importcpp:"#.Dilations(#)".}

proc OutType(quantizedConv2DAttrs: QuantizedConv2DAttrs, outType: core.DType): QuantizedConv2DAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type QuantizedReluAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedRelu::Attrs".} = object

proc OutType(quantizedReluAttrs: QuantizedReluAttrs, outType: core.DType): QuantizedReluAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type QuantizedRelu6Attrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedRelu6::Attrs".} = object

proc OutType(quantizedRelu6Attrs: QuantizedRelu6Attrs, outType: core.DType): QuantizedRelu6Attrs {.header: std_ops, importcpp:"#.OutType(#)".}


type QuantizedReluXAttrs {.header: std_ops, importcpp:"tensorflow::ops::QuantizedReluX::Attrs".} = object

proc OutType(quantizedReluXAttrs: QuantizedReluXAttrs, outType: core.DType): QuantizedReluXAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type TopKAttrs {.header: std_ops, importcpp:"tensorflow::ops::TopK::Attrs".} = object

proc Sorted(topKAttrs: TopKAttrs, sorted: bool): TopKAttrs {.header: std_ops, importcpp:"#.Sorted(#)".}


type DecodeCSVAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeCSV::Attrs".} = object

proc FieldDelim(decodeCSVAttrs: DecodeCSVAttrs, fieldDelim: cppstring): DecodeCSVAttrs {.header: std_ops, importcpp:"#.FieldDelim(#)".}

proc NaValue(decodeCSVAttrs: DecodeCSVAttrs, naValue: cppstring): DecodeCSVAttrs {.header: std_ops, importcpp:"#.NaValue(#)".}

proc SelectCols(decodeCSVAttrs: DecodeCSVAttrs, selectCols: ArraySlice[cint]): DecodeCSVAttrs {.header: std_ops, importcpp:"#.SelectCols(#)".}

proc UseQuoteDelim(decodeCSVAttrs: DecodeCSVAttrs, useQuoteDelim: bool): DecodeCSVAttrs {.header: std_ops, importcpp:"#.UseQuoteDelim(#)".}


type DecodeCompressedAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeCompressed::Attrs".} = object

proc CompressionType(decodeCompressedAttrs: DecodeCompressedAttrs, compressionType: cppstring): DecodeCompressedAttrs {.header: std_ops, importcpp:"#.CompressionType(#)".}


type DecodeRawAttrs {.header: std_ops, importcpp:"tensorflow::ops::DecodeRaw::Attrs".} = object

proc LittleEndian(decodeRawAttrs: DecodeRawAttrs, littleEndian: bool): DecodeRawAttrs {.header: std_ops, importcpp:"#.LittleEndian(#)".}


type ParseSequenceExampleAttrs {.header: std_ops, importcpp:"tensorflow::ops::ParseSequenceExample::Attrs".} = object

proc ContextDenseShapes(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, contextDenseShapes: ArraySlice[TensorShape]): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.ContextDenseShapes(#)".}

proc ContextSparseTypes(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, contextSparseTypes: core.DType): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.ContextSparseTypes(#)".}

proc FeatureListDenseShapes(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, featureListDenseShapes: ArraySlice[TensorShape]): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.FeatureListDenseShapes(#)".}

proc FeatureListDenseTypes(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, featureListDenseTypes: core.DType): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.FeatureListDenseTypes(#)".}

proc FeatureListSparseTypes(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, featureListSparseTypes: core.DType): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.FeatureListSparseTypes(#)".}

proc NcontextDense(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, ncontextDense: int): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.NcontextDense(#)".}

proc NcontextSparse(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, ncontextSparse: int): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.NcontextSparse(#)".}

proc NfeatureListDense(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, nfeatureListDense: int): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.NfeatureListDense(#)".}

proc NfeatureListSparse(parseSequenceExampleAttrs: ParseSequenceExampleAttrs, nfeatureListSparse: int): ParseSequenceExampleAttrs {.header: std_ops, importcpp:"#.NfeatureListSparse(#)".}


type ParseSingleSequenceExampleAttrs {.header: std_ops, importcpp:"tensorflow::ops::ParseSingleSequenceExample::Attrs".} = object

proc ContextDenseShapes(parseSingleSequenceExampleAttrs: ParseSingleSequenceExampleAttrs, contextDenseShapes: ArraySlice[TensorShape]): ParseSingleSequenceExampleAttrs {.header: std_ops, importcpp:"#.ContextDenseShapes(#)".}

proc ContextSparseTypes(parseSingleSequenceExampleAttrs: ParseSingleSequenceExampleAttrs, contextSparseTypes: core.DType): ParseSingleSequenceExampleAttrs {.header: std_ops, importcpp:"#.ContextSparseTypes(#)".}

proc FeatureListDenseShapes(parseSingleSequenceExampleAttrs: ParseSingleSequenceExampleAttrs, featureListDenseShapes: ArraySlice[TensorShape]): ParseSingleSequenceExampleAttrs {.header: std_ops, importcpp:"#.FeatureListDenseShapes(#)".}

proc FeatureListDenseTypes(parseSingleSequenceExampleAttrs: ParseSingleSequenceExampleAttrs, featureListDenseTypes: core.DType): ParseSingleSequenceExampleAttrs {.header: std_ops, importcpp:"#.FeatureListDenseTypes(#)".}

proc FeatureListSparseTypes(parseSingleSequenceExampleAttrs: ParseSingleSequenceExampleAttrs, featureListSparseTypes: core.DType): ParseSingleSequenceExampleAttrs {.header: std_ops, importcpp:"#.FeatureListSparseTypes(#)".}


type StringToNumberAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringToNumber::Attrs".} = object

proc OutType(stringToNumberAttrs: StringToNumberAttrs, outType: core.DType): StringToNumberAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type MultinomialAttrs {.header: std_ops, importcpp:"tensorflow::ops::Multinomial::Attrs".} = object

proc OutputDtype(multinomialAttrs: MultinomialAttrs, outputDtype: core.DType): MultinomialAttrs {.header: std_ops, importcpp:"#.OutputDtype(#)".}

proc Seed(multinomialAttrs: MultinomialAttrs, seed: int): MultinomialAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(multinomialAttrs: MultinomialAttrs, seed2: int): MultinomialAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type ParameterizedTruncatedNormalAttrs {.header: std_ops, importcpp:"tensorflow::ops::ParameterizedTruncatedNormal::Attrs".} = object

proc Seed(parameterizedTruncatedNormalAttrs: ParameterizedTruncatedNormalAttrs, seed: int): ParameterizedTruncatedNormalAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(parameterizedTruncatedNormalAttrs: ParameterizedTruncatedNormalAttrs, seed2: int): ParameterizedTruncatedNormalAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type RandomGammaAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomGamma::Attrs".} = object

proc Seed(randomGammaAttrs: RandomGammaAttrs, seed: int): RandomGammaAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(randomGammaAttrs: RandomGammaAttrs, seed2: int): RandomGammaAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type RandomNormalAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomNormal::Attrs".} = object

proc Seed(randomNormalAttrs: RandomNormalAttrs, seed: int): RandomNormalAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(randomNormalAttrs: RandomNormalAttrs, seed2: int): RandomNormalAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type RandomPoissonV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::RandomPoissonV2::Attrs".} = object

proc Dtype(randomPoissonV2Attrs: RandomPoissonV2Attrs, dtype: core.DType): RandomPoissonV2Attrs {.header: std_ops, importcpp:"#.Dtype(#)".}

proc Seed(randomPoissonV2Attrs: RandomPoissonV2Attrs, seed: int): RandomPoissonV2Attrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(randomPoissonV2Attrs: RandomPoissonV2Attrs, seed2: int): RandomPoissonV2Attrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type RandomShuffleAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomShuffle::Attrs".} = object

proc Seed(randomShuffleAttrs: RandomShuffleAttrs, seed: int): RandomShuffleAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(randomShuffleAttrs: RandomShuffleAttrs, seed2: int): RandomShuffleAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type RandomUniformAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomUniform::Attrs".} = object

proc Seed(randomUniformAttrs: RandomUniformAttrs, seed: int): RandomUniformAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(randomUniformAttrs: RandomUniformAttrs, seed2: int): RandomUniformAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type RandomUniformIntAttrs {.header: std_ops, importcpp:"tensorflow::ops::RandomUniformInt::Attrs".} = object

proc Seed(randomUniformIntAttrs: RandomUniformIntAttrs, seed: int): RandomUniformIntAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(randomUniformIntAttrs: RandomUniformIntAttrs, seed2: int): RandomUniformIntAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type TruncatedNormalAttrs {.header: std_ops, importcpp:"tensorflow::ops::TruncatedNormal::Attrs".} = object

proc Seed(truncatedNormalAttrs: TruncatedNormalAttrs, seed: int): TruncatedNormalAttrs {.header: std_ops, importcpp:"#.Seed(#)".}

proc Seed2(truncatedNormalAttrs: TruncatedNormalAttrs, seed2: int): TruncatedNormalAttrs {.header: std_ops, importcpp:"#.Seed2(#)".}


type AddManySparseToTensorsMapAttrs {.header: std_ops, importcpp:"tensorflow::ops::AddManySparseToTensorsMap::Attrs".} = object

proc Container(addManySparseToTensorsMapAttrs: AddManySparseToTensorsMapAttrs, container: cppstring): AddManySparseToTensorsMapAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(addManySparseToTensorsMapAttrs: AddManySparseToTensorsMapAttrs, sharedName: cppstring): AddManySparseToTensorsMapAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type AddSparseToTensorsMapAttrs {.header: std_ops, importcpp:"tensorflow::ops::AddSparseToTensorsMap::Attrs".} = object

proc Container(addSparseToTensorsMapAttrs: AddSparseToTensorsMapAttrs, container: cppstring): AddSparseToTensorsMapAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(addSparseToTensorsMapAttrs: AddSparseToTensorsMapAttrs, sharedName: cppstring): AddSparseToTensorsMapAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type SerializeManySparseAttrs {.header: std_ops, importcpp:"tensorflow::ops::SerializeManySparse::Attrs".} = object

proc OutType(serializeManySparseAttrs: SerializeManySparseAttrs, outType: core.DType): SerializeManySparseAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type SerializeSparseAttrs {.header: std_ops, importcpp:"tensorflow::ops::SerializeSparse::Attrs".} = object

proc OutType(serializeSparseAttrs: SerializeSparseAttrs, outType: core.DType): SerializeSparseAttrs {.header: std_ops, importcpp:"#.OutType(#)".}


type SparseReduceMaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseReduceMax::Attrs".} = object

proc KeepDims(sparseReduceMaxAttrs: SparseReduceMaxAttrs, keepDims: bool): SparseReduceMaxAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type SparseReduceMaxSparseAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseReduceMaxSparse::Attrs".} = object

proc KeepDims(sparseReduceMaxSparseAttrs: SparseReduceMaxSparseAttrs, keepDims: bool): SparseReduceMaxSparseAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type SparseReduceSumAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseReduceSum::Attrs".} = object

proc KeepDims(sparseReduceSumAttrs: SparseReduceSumAttrs, keepDims: bool): SparseReduceSumAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type SparseReduceSumSparseAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseReduceSumSparse::Attrs".} = object

proc KeepDims(sparseReduceSumSparseAttrs: SparseReduceSumSparseAttrs, keepDims: bool): SparseReduceSumSparseAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}


type SparseTensorDenseMatMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseTensorDenseMatMul::Attrs".} = object

proc AdjointA(sparseTensorDenseMatMulAttrs: SparseTensorDenseMatMulAttrs, adjointA: bool): SparseTensorDenseMatMulAttrs {.header: std_ops, importcpp:"#.AdjointA(#)".}

proc AdjointB(sparseTensorDenseMatMulAttrs: SparseTensorDenseMatMulAttrs, adjointB: bool): SparseTensorDenseMatMulAttrs {.header: std_ops, importcpp:"#.AdjointB(#)".}


type TakeManySparseFromTensorsMapAttrs {.header: std_ops, importcpp:"tensorflow::ops::TakeManySparseFromTensorsMap::Attrs".} = object

proc Container(takeManySparseFromTensorsMapAttrs: TakeManySparseFromTensorsMapAttrs, container: cppstring): TakeManySparseFromTensorsMapAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(takeManySparseFromTensorsMapAttrs: TakeManySparseFromTensorsMapAttrs, sharedName: cppstring): TakeManySparseFromTensorsMapAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type AssignAttrs {.header: std_ops, importcpp:"tensorflow::ops::Assign::Attrs".} = object

proc UseLocking(assignAttrs: AssignAttrs, useLocking: bool): AssignAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}

proc ValidateShape(assignAttrs: AssignAttrs, validateShape: bool): AssignAttrs {.header: std_ops, importcpp:"#.ValidateShape(#)".}


type AssignAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::AssignAdd::Attrs".} = object

proc UseLocking(assignAddAttrs: AssignAddAttrs, useLocking: bool): AssignAddAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type AssignSubAttrs {.header: std_ops, importcpp:"tensorflow::ops::AssignSub::Attrs".} = object

proc UseLocking(assignSubAttrs: AssignSubAttrs, useLocking: bool): AssignSubAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceScatterNdAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceScatterNdAdd::Attrs".} = object

proc UseLocking(resourceScatterNdAddAttrs: ResourceScatterNdAddAttrs, useLocking: bool): ResourceScatterNdAddAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceScatterNdUpdateAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceScatterNdUpdate::Attrs".} = object

proc UseLocking(resourceScatterNdUpdateAttrs: ResourceScatterNdUpdateAttrs, useLocking: bool): ResourceScatterNdUpdateAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterAdd::Attrs".} = object

proc UseLocking(scatterAddAttrs: ScatterAddAttrs, useLocking: bool): ScatterAddAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterDivAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterDiv::Attrs".} = object

proc UseLocking(scatterDivAttrs: ScatterDivAttrs, useLocking: bool): ScatterDivAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterMaxAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterMax::Attrs".} = object

proc UseLocking(scatterMaxAttrs: ScatterMaxAttrs, useLocking: bool): ScatterMaxAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterMinAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterMin::Attrs".} = object

proc UseLocking(scatterMinAttrs: ScatterMinAttrs, useLocking: bool): ScatterMinAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterMulAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterMul::Attrs".} = object

proc UseLocking(scatterMulAttrs: ScatterMulAttrs, useLocking: bool): ScatterMulAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterNdAddAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterNdAdd::Attrs".} = object

proc UseLocking(scatterNdAddAttrs: ScatterNdAddAttrs, useLocking: bool): ScatterNdAddAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterNdSubAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterNdSub::Attrs".} = object

proc UseLocking(scatterNdSubAttrs: ScatterNdSubAttrs, useLocking: bool): ScatterNdSubAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterNdUpdateAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterNdUpdate::Attrs".} = object

proc UseLocking(scatterNdUpdateAttrs: ScatterNdUpdateAttrs, useLocking: bool): ScatterNdUpdateAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterSubAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterSub::Attrs".} = object

proc UseLocking(scatterSubAttrs: ScatterSubAttrs, useLocking: bool): ScatterSubAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ScatterUpdateAttrs {.header: std_ops, importcpp:"tensorflow::ops::ScatterUpdate::Attrs".} = object

proc UseLocking(scatterUpdateAttrs: ScatterUpdateAttrs, useLocking: bool): ScatterUpdateAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type TemporaryVariableAttrs {.header: std_ops, importcpp:"tensorflow::ops::TemporaryVariable::Attrs".} = object

proc VarName(temporaryVariableAttrs: TemporaryVariableAttrs, varName: cppstring): TemporaryVariableAttrs {.header: std_ops, importcpp:"#.VarName(#)".}


type VariableAttrs {.header: std_ops, importcpp:"tensorflow::ops::Variable::Attrs".} = object

proc Container(variableAttrs: VariableAttrs, container: cppstring): VariableAttrs {.header: std_ops, importcpp:"#.Container(#)".}

proc SharedName(variableAttrs: VariableAttrs, sharedName: cppstring): VariableAttrs {.header: std_ops, importcpp:"#.SharedName(#)".}


type AsStringAttrs {.header: std_ops, importcpp:"tensorflow::ops::AsString::Attrs".} = object

proc Fill(asStringAttrs: AsStringAttrs, fill: cppstring): AsStringAttrs {.header: std_ops, importcpp:"#.Fill(#)".}

proc Precision(asStringAttrs: AsStringAttrs, precision: int): AsStringAttrs {.header: std_ops, importcpp:"#.Precision(#)".}

proc Scientific(asStringAttrs: AsStringAttrs, scientific: bool): AsStringAttrs {.header: std_ops, importcpp:"#.Scientific(#)".}

proc Shortest(asStringAttrs: AsStringAttrs, shortest: bool): AsStringAttrs {.header: std_ops, importcpp:"#.Shortest(#)".}

proc Width(asStringAttrs: AsStringAttrs, width: int): AsStringAttrs {.header: std_ops, importcpp:"#.Width(#)".}


type EncodeBase64Attrs {.header: std_ops, importcpp:"tensorflow::ops::EncodeBase64::Attrs".} = object

proc Pad(encodeBase64Attrs: EncodeBase64Attrs, pad: bool): EncodeBase64Attrs {.header: std_ops, importcpp:"#.Pad(#)".}


type ReduceJoinAttrs {.header: std_ops, importcpp:"tensorflow::ops::ReduceJoin::Attrs".} = object

proc KeepDims(reduceJoinAttrs: ReduceJoinAttrs, keepDims: bool): ReduceJoinAttrs {.header: std_ops, importcpp:"#.KeepDims(#)".}

proc Separator(reduceJoinAttrs: ReduceJoinAttrs, separator: cppstring): ReduceJoinAttrs {.header: std_ops, importcpp:"#.Separator(#)".}


type RegexReplaceAttrs {.header: std_ops, importcpp:"tensorflow::ops::RegexReplace::Attrs".} = object

proc ReplaceGlobal(regexReplaceAttrs: RegexReplaceAttrs, replaceGlobal: bool): RegexReplaceAttrs {.header: std_ops, importcpp:"#.ReplaceGlobal(#)".}


type StringFormatAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringFormat::Attrs".} = object

proc Placeholder(stringFormatAttrs: StringFormatAttrs, placeholder: cppstring): StringFormatAttrs {.header: std_ops, importcpp:"#.Placeholder(#)".}

proc Summarize(stringFormatAttrs: StringFormatAttrs, summarize: int): StringFormatAttrs {.header: std_ops, importcpp:"#.Summarize(#)".}

proc Template(stringFormatAttrs: StringFormatAttrs, ttemplate: cppstring): StringFormatAttrs {.header: std_ops, importcpp:"#.Template(#)".}


type StringJoinAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringJoin::Attrs".} = object

proc Separator(stringJoinAttrs: StringJoinAttrs, separator: cppstring): StringJoinAttrs {.header: std_ops, importcpp:"#.Separator(#)".}


type StringLengthAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringLength::Attrs".} = object

proc Unit(stringLengthAttrs: StringLengthAttrs, unit: cppstring): StringLengthAttrs {.header: std_ops, importcpp:"#.Unit(#)".}


type StringSplitAttrs {.header: std_ops, importcpp:"tensorflow::ops::StringSplit::Attrs".} = object

proc SkipEmpty(stringSplitAttrs: StringSplitAttrs, skipEmpty: bool): StringSplitAttrs {.header: std_ops, importcpp:"#.SkipEmpty(#)".}


type StringSplitV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::StringSplitV2::Attrs".} = object

proc Maxsplit(stringSplitV2Attrs: StringSplitV2Attrs, maxsplit: int): StringSplitV2Attrs {.header: std_ops, importcpp:"#.Maxsplit(#)".}


type ApplyAdadeltaAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAdadelta::Attrs".} = object

proc UseLocking(applyAdadeltaAttrs: ApplyAdadeltaAttrs, useLocking: bool): ApplyAdadeltaAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAdagrad::Attrs".} = object

proc UpdateSlots(applyAdagradAttrs: ApplyAdagradAttrs, updateSlots: bool): ApplyAdagradAttrs {.header: std_ops, importcpp:"#.UpdateSlots(#)".}

proc UseLocking(applyAdagradAttrs: ApplyAdagradAttrs, useLocking: bool): ApplyAdagradAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyAdagradDAAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAdagradDA::Attrs".} = object

proc UseLocking(applyAdagradDAAttrs: ApplyAdagradDAAttrs, useLocking: bool): ApplyAdagradDAAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyAdamAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAdam::Attrs".} = object

proc UseLocking(applyAdamAttrs: ApplyAdamAttrs, useLocking: bool): ApplyAdamAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}

proc UseNesterov(applyAdamAttrs: ApplyAdamAttrs, useNesterov: bool): ApplyAdamAttrs {.header: std_ops, importcpp:"#.UseNesterov(#)".}


type ApplyAddSignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyAddSign::Attrs".} = object

proc UseLocking(applyAddSignAttrs: ApplyAddSignAttrs, useLocking: bool): ApplyAddSignAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyCenteredRMSProp::Attrs".} = object

proc UseLocking(applyCenteredRMSPropAttrs: ApplyCenteredRMSPropAttrs, useLocking: bool): ApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyFtrlAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyFtrl::Attrs".} = object

proc UseLocking(applyFtrlAttrs: ApplyFtrlAttrs, useLocking: bool): ApplyFtrlAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyFtrlV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyFtrlV2::Attrs".} = object

proc UseLocking(applyFtrlV2Attrs: ApplyFtrlV2Attrs, useLocking: bool): ApplyFtrlV2Attrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyGradientDescent::Attrs".} = object

proc UseLocking(applyGradientDescentAttrs: ApplyGradientDescentAttrs, useLocking: bool): ApplyGradientDescentAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyMomentumAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyMomentum::Attrs".} = object

proc UseLocking(applyMomentumAttrs: ApplyMomentumAttrs, useLocking: bool): ApplyMomentumAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}

proc UseNesterov(applyMomentumAttrs: ApplyMomentumAttrs, useNesterov: bool): ApplyMomentumAttrs {.header: std_ops, importcpp:"#.UseNesterov(#)".}


type ApplyPowerSignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyPowerSign::Attrs".} = object

proc UseLocking(applyPowerSignAttrs: ApplyPowerSignAttrs, useLocking: bool): ApplyPowerSignAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyProximalAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyProximalAdagrad::Attrs".} = object

proc UseLocking(applyProximalAdagradAttrs: ApplyProximalAdagradAttrs, useLocking: bool): ApplyProximalAdagradAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyProximalGradientDescent::Attrs".} = object

proc UseLocking(applyProximalGradientDescentAttrs: ApplyProximalGradientDescentAttrs, useLocking: bool): ApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ApplyRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ApplyRMSProp::Attrs".} = object

proc UseLocking(applyRMSPropAttrs: ApplyRMSPropAttrs, useLocking: bool): ApplyRMSPropAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyAdadeltaAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAdadelta::Attrs".} = object

proc UseLocking(resourceApplyAdadeltaAttrs: ResourceApplyAdadeltaAttrs, useLocking: bool): ResourceApplyAdadeltaAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagrad::Attrs".} = object

proc UpdateSlots(resourceApplyAdagradAttrs: ResourceApplyAdagradAttrs, updateSlots: bool): ResourceApplyAdagradAttrs {.header: std_ops, importcpp:"#.UpdateSlots(#)".}

proc UseLocking(resourceApplyAdagradAttrs: ResourceApplyAdagradAttrs, useLocking: bool): ResourceApplyAdagradAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyAdagradDAAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAdagradDA::Attrs".} = object

proc UseLocking(resourceApplyAdagradDAAttrs: ResourceApplyAdagradDAAttrs, useLocking: bool): ResourceApplyAdagradDAAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyAdamAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAdam::Attrs".} = object

proc UseLocking(resourceApplyAdamAttrs: ResourceApplyAdamAttrs, useLocking: bool): ResourceApplyAdamAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}

proc UseNesterov(resourceApplyAdamAttrs: ResourceApplyAdamAttrs, useNesterov: bool): ResourceApplyAdamAttrs {.header: std_ops, importcpp:"#.UseNesterov(#)".}


type ResourceApplyAddSignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyAddSign::Attrs".} = object

proc UseLocking(resourceApplyAddSignAttrs: ResourceApplyAddSignAttrs, useLocking: bool): ResourceApplyAddSignAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyCenteredRMSProp::Attrs".} = object

proc UseLocking(resourceApplyCenteredRMSPropAttrs: ResourceApplyCenteredRMSPropAttrs, useLocking: bool): ResourceApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyFtrlAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrl::Attrs".} = object

proc UseLocking(resourceApplyFtrlAttrs: ResourceApplyFtrlAttrs, useLocking: bool): ResourceApplyFtrlAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyFtrlV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyFtrlV2::Attrs".} = object

proc UseLocking(resourceApplyFtrlV2Attrs: ResourceApplyFtrlV2Attrs, useLocking: bool): ResourceApplyFtrlV2Attrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyGradientDescent::Attrs".} = object

proc UseLocking(resourceApplyGradientDescentAttrs: ResourceApplyGradientDescentAttrs, useLocking: bool): ResourceApplyGradientDescentAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyMomentumAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyMomentum::Attrs".} = object

proc UseLocking(resourceApplyMomentumAttrs: ResourceApplyMomentumAttrs, useLocking: bool): ResourceApplyMomentumAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}

proc UseNesterov(resourceApplyMomentumAttrs: ResourceApplyMomentumAttrs, useNesterov: bool): ResourceApplyMomentumAttrs {.header: std_ops, importcpp:"#.UseNesterov(#)".}


type ResourceApplyPowerSignAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyPowerSign::Attrs".} = object

proc UseLocking(resourceApplyPowerSignAttrs: ResourceApplyPowerSignAttrs, useLocking: bool): ResourceApplyPowerSignAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyProximalAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalAdagrad::Attrs".} = object

proc UseLocking(resourceApplyProximalAdagradAttrs: ResourceApplyProximalAdagradAttrs, useLocking: bool): ResourceApplyProximalAdagradAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyProximalGradientDescent::Attrs".} = object

proc UseLocking(resourceApplyProximalGradientDescentAttrs: ResourceApplyProximalGradientDescentAttrs, useLocking: bool): ResourceApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceApplyRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceApplyRMSProp::Attrs".} = object

proc UseLocking(resourceApplyRMSPropAttrs: ResourceApplyRMSPropAttrs, useLocking: bool): ResourceApplyRMSPropAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyAdadeltaAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdadelta::Attrs".} = object

proc UseLocking(resourceSparseApplyAdadeltaAttrs: ResourceSparseApplyAdadeltaAttrs, useLocking: bool): ResourceSparseApplyAdadeltaAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagrad::Attrs".} = object

proc UpdateSlots(resourceSparseApplyAdagradAttrs: ResourceSparseApplyAdagradAttrs, updateSlots: bool): ResourceSparseApplyAdagradAttrs {.header: std_ops, importcpp:"#.UpdateSlots(#)".}

proc UseLocking(resourceSparseApplyAdagradAttrs: ResourceSparseApplyAdagradAttrs, useLocking: bool): ResourceSparseApplyAdagradAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyAdagradDAAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyAdagradDA::Attrs".} = object

proc UseLocking(resourceSparseApplyAdagradDAAttrs: ResourceSparseApplyAdagradDAAttrs, useLocking: bool): ResourceSparseApplyAdagradDAAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyCenteredRMSProp::Attrs".} = object

proc UseLocking(resourceSparseApplyCenteredRMSPropAttrs: ResourceSparseApplyCenteredRMSPropAttrs, useLocking: bool): ResourceSparseApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyFtrlAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrl::Attrs".} = object

proc UseLocking(resourceSparseApplyFtrlAttrs: ResourceSparseApplyFtrlAttrs, useLocking: bool): ResourceSparseApplyFtrlAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyFtrlV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyFtrlV2::Attrs".} = object

proc UseLocking(resourceSparseApplyFtrlV2Attrs: ResourceSparseApplyFtrlV2Attrs, useLocking: bool): ResourceSparseApplyFtrlV2Attrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyMomentumAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyMomentum::Attrs".} = object

proc UseLocking(resourceSparseApplyMomentumAttrs: ResourceSparseApplyMomentumAttrs, useLocking: bool): ResourceSparseApplyMomentumAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}

proc UseNesterov(resourceSparseApplyMomentumAttrs: ResourceSparseApplyMomentumAttrs, useNesterov: bool): ResourceSparseApplyMomentumAttrs {.header: std_ops, importcpp:"#.UseNesterov(#)".}


type ResourceSparseApplyProximalAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalAdagrad::Attrs".} = object

proc UseLocking(resourceSparseApplyProximalAdagradAttrs: ResourceSparseApplyProximalAdagradAttrs, useLocking: bool): ResourceSparseApplyProximalAdagradAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyProximalGradientDescent::Attrs".} = object

proc UseLocking(resourceSparseApplyProximalGradientDescentAttrs: ResourceSparseApplyProximalGradientDescentAttrs, useLocking: bool): ResourceSparseApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type ResourceSparseApplyRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::ResourceSparseApplyRMSProp::Attrs".} = object

proc UseLocking(resourceSparseApplyRMSPropAttrs: ResourceSparseApplyRMSPropAttrs, useLocking: bool): ResourceSparseApplyRMSPropAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyAdadeltaAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyAdadelta::Attrs".} = object

proc UseLocking(sparseApplyAdadeltaAttrs: SparseApplyAdadeltaAttrs, useLocking: bool): SparseApplyAdadeltaAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyAdagrad::Attrs".} = object

proc UpdateSlots(sparseApplyAdagradAttrs: SparseApplyAdagradAttrs, updateSlots: bool): SparseApplyAdagradAttrs {.header: std_ops, importcpp:"#.UpdateSlots(#)".}

proc UseLocking(sparseApplyAdagradAttrs: SparseApplyAdagradAttrs, useLocking: bool): SparseApplyAdagradAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyAdagradDAAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyAdagradDA::Attrs".} = object

proc UseLocking(sparseApplyAdagradDAAttrs: SparseApplyAdagradDAAttrs, useLocking: bool): SparseApplyAdagradDAAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyCenteredRMSProp::Attrs".} = object

proc UseLocking(sparseApplyCenteredRMSPropAttrs: SparseApplyCenteredRMSPropAttrs, useLocking: bool): SparseApplyCenteredRMSPropAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyFtrlAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyFtrl::Attrs".} = object

proc UseLocking(sparseApplyFtrlAttrs: SparseApplyFtrlAttrs, useLocking: bool): SparseApplyFtrlAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyFtrlV2Attrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyFtrlV2::Attrs".} = object

proc UseLocking(sparseApplyFtrlV2Attrs: SparseApplyFtrlV2Attrs, useLocking: bool): SparseApplyFtrlV2Attrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyMomentumAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyMomentum::Attrs".} = object

proc UseLocking(sparseApplyMomentumAttrs: SparseApplyMomentumAttrs, useLocking: bool): SparseApplyMomentumAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}

proc UseNesterov(sparseApplyMomentumAttrs: SparseApplyMomentumAttrs, useNesterov: bool): SparseApplyMomentumAttrs {.header: std_ops, importcpp:"#.UseNesterov(#)".}


type SparseApplyProximalAdagradAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyProximalAdagrad::Attrs".} = object

proc UseLocking(sparseApplyProximalAdagradAttrs: SparseApplyProximalAdagradAttrs, useLocking: bool): SparseApplyProximalAdagradAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyProximalGradientDescent::Attrs".} = object

proc UseLocking(sparseApplyProximalGradientDescentAttrs: SparseApplyProximalGradientDescentAttrs, useLocking: bool): SparseApplyProximalGradientDescentAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}


type SparseApplyRMSPropAttrs {.header: std_ops, importcpp:"tensorflow::ops::SparseApplyRMSProp::Attrs".} = object

proc UseLocking(sparseApplyRMSPropAttrs: SparseApplyRMSPropAttrs, useLocking: bool): SparseApplyRMSPropAttrs {.header: std_ops, importcpp:"#.UseLocking(#)".}
export DepthToSpaceAttrs,
       DataFormat,
       DequantizeAttrs,
       Mode,
       EditDistanceAttrs,
       Normalize,
       EmptyAttrs,
       Init,
       FakeQuantWithMinMaxArgsAttrs,
       Max,
       Min,
       NarrowRange,
       NumBits,
       FakeQuantWithMinMaxArgsGradientAttrs,
       FakeQuantWithMinMaxVarsAttrs,
       FakeQuantWithMinMaxVarsGradientAttrs,
       FakeQuantWithMinMaxVarsPerChannelAttrs,
       FakeQuantWithMinMaxVarsPerChannelGradientAttrs,
       GatherAttrs,
       ValidateIndices,
       OneHotAttrs,
       Axis,
       ResourceStridedSliceAssignAttrs,
       BeginMask,
       EllipsisMask,
       EndMask,
       NewAxisMask,
       ShrinkAxisMask,
       ReverseSequenceAttrs,
       BatchDim,
       SetDiff1DAttrs,
       OutIdx,
       ShapeAttrs,
       OutType,
       ShapeNAttrs,
       SizeAttrs,
       SpaceToDepthAttrs,
       SqueezeAttrs,
       StridedSliceAttrs,
       StridedSliceAssignAttrs,
       StridedSliceGradAttrs,
       UniqueAttrs,
       UniqueV2Attrs,
       UniqueWithCountsAttrs,
       UniqueWithCountsV2Attrs,
       UnstackAttrs,
       AllCandidateSamplerAttrs,
       Seed,
       Seed2,
       ComputeAccidentalHitsAttrs,
       FixedUnigramCandidateSamplerAttrs,
       Distortion,
       NumReservedIds,
       NumShards,
       Shard,
       Unigrams,
       VocabFile,
       LearnedUnigramCandidateSamplerAttrs,
       LogUniformCandidateSamplerAttrs,
       UniformCandidateSamplerAttrs,
       AbortAttrs,
       ErrorMsg,
       ExitWithoutError,
       BarrierAttrs,
       Capacity,
       Container,
       Shapes,
       SharedName,
       BarrierCloseAttrs,
       CancelPendingEnqueues,
       BarrierTakeManyAttrs,
       AllowSmallBatch,
       TimeoutMs,
       WaitForIncomplete,
       ConditionalAccumulatorAttrs,
       ReductionType,
       FIFOQueueAttrs,
       MapClearAttrs,
       MemoryLimit,
       MapIncompleteSizeAttrs,
       MapPeekAttrs,
       MapSizeAttrs,
       MapStageAttrs,
       MapUnstageAttrs,
       MapUnstageNoKeyAttrs,
       OrderedMapClearAttrs,
       OrderedMapIncompleteSizeAttrs,
       OrderedMapPeekAttrs,
       OrderedMapSizeAttrs,
       OrderedMapStageAttrs,
       OrderedMapUnstageAttrs,
       OrderedMapUnstageNoKeyAttrs,
       PaddingFIFOQueueAttrs,
       PriorityQueueAttrs,
       ComponentTypes,
       QueueCloseAttrs,
       QueueDequeueAttrs,
       QueueDequeueManyAttrs,
       QueueDequeueUpToAttrs,
       QueueEnqueueAttrs,
       QueueEnqueueManyAttrs,
       RandomShuffleQueueAttrs,
       MinAfterDequeue,
       RecordInputAttrs,
       BatchSize,
       CompressionType,
       FileBufferSize,
       FileParallelism,
       FileRandomSeed,
       FileShuffleShiftRatio,
       SparseConditionalAccumulatorAttrs,
       StageAttrs,
       StageClearAttrs,
       StagePeekAttrs,
       StageSizeAttrs,
       TensorArrayAttrs,
       ClearAfterRead,
       DynamicSize,
       ElementShape,
       IdenticalElementShapes,
       TensorArrayName,
       TensorArrayConcatAttrs,
       ElementShapeExcept0,
       TensorArrayGatherAttrs,
       UnstageAttrs,
       CropAndResizeAttrs,
       ExtrapolationValue,
       Method,
       CropAndResizeGradBoxesAttrs,
       CropAndResizeGradImageAttrs,
       DecodeAndCropJpegAttrs,
       AcceptableFraction,
       Channels,
       DctMethod,
       FancyUpscaling,
       Ratio,
       TryRecoverTruncated,
       DecodeBmpAttrs,
       DecodeJpegAttrs,
       DecodePngAttrs,
       Dtype,
       EncodeJpegAttrs,
       ChromaDownsampling,
       DensityUnit,
       Format,
       OptimizeSize,
       Progressive,
       Quality,
       XDensity,
       XmpMetadata,
       YDensity,
       EncodePngAttrs,
       Compression,
       ExtractGlimpseAttrs,
       Centered,
       Normalized,
       UniformNoise,
       ExtractJpegShapeAttrs,
       OutputType,
       QuantizedResizeBilinearAttrs,
       AlignCorners,
       ResizeAreaAttrs,
       ResizeBicubicAttrs,
       ResizeBilinearAttrs,
       ResizeNearestNeighborAttrs,
       SampleDistortedBoundingBoxAttrs,
       AreaRange,
       AspectRatioRange,
       MaxAttempts,
       MinObjectCovered,
       UseImageIfNoBoundingBoxes,
       SampleDistortedBoundingBoxV2Attrs,
       FixedLengthRecordReaderAttrs,
       Encoding,
       FooterBytes,
       HeaderBytes,
       HopBytes,
       IdentityReaderAttrs,
       LMDBReaderAttrs,
       MergeV2CheckpointsAttrs,
       DeleteOldDirs,
       RestoreAttrs,
       PreferredShard,
       RestoreSliceAttrs,
       TFRecordReaderAttrs,
       TextLineReaderAttrs,
       SkipHeaderLines,
       WholeFileReaderAttrs,
       AssertAttrs,
       Summarize,
       PrintAttrs,
       FirstN,
       Message,
       PrintV2Attrs,
       OutputStream,
       TensorSummaryAttrs,
       Description,
       DisplayName,
       Labels,
       AllAttrs,
       KeepDims,
       AngleAttrs,
       Tout,
       AnyAttrs,
       ApproximateEqualAttrs,
       Tolerance,
       ArgMaxAttrs,
       ArgMinAttrs,
       BatchMatMulAttrs,
       AdjX,
       AdjY,
       CastAttrs,
       Truncate,
       ComplexAttrs,
       ComplexAbsAttrs,
       CumprodAttrs,
       Exclusive,
       Reverse,
       CumsumAttrs,
       HistogramFixedWidthAttrs,
       ImagAttrs,
       MatMulAttrs,
       TransposeA,
       TransposeB,
       MaxAttrs,
       MeanAttrs,
       MinAttrs,
       ProdAttrs,
       QuantizedAddAttrs,
       Toutput,
       QuantizedMatMulAttrs,
       Tactivation,
       QuantizedMulAttrs,
       RealAttrs,
       SparseMatMulAttrs,
       AIsSparse,
       BIsSparse,
       SumAttrs,
       AvgPoolAttrs,
       AvgPool3DAttrs,
       AvgPool3DGradAttrs,
       BiasAddAttrs,
       BiasAddGradAttrs,
       Conv2DAttrs,
       Dilations,
       UseCudnnOnGpu,
       Conv2DBackpropFilterAttrs,
       Conv2DBackpropInputAttrs,
       Conv3DAttrs,
       Conv3DBackpropFilterV2Attrs,
       Conv3DBackpropInputV2Attrs,
       DataFormatDimMapAttrs,
       DstFormat,
       SrcFormat,
       DataFormatVecPermuteAttrs,
       DepthwiseConv2dNativeAttrs,
       DepthwiseConv2dNativeBackpropFilterAttrs,
       DepthwiseConv2dNativeBackpropInputAttrs,
       FractionalAvgPoolAttrs,
       Deterministic,
       Overlapping,
       PseudoRandom,
       FractionalMaxPoolAttrs,
       FusedBatchNormAttrs,
       Epsilon,
       IsTraining,
       FusedBatchNormGradAttrs,
       FusedBatchNormGradV2Attrs,
       FusedBatchNormV2Attrs,
       FusedResizeAndPadConv2DAttrs,
       ResizeAlignCorners,
       LRNAttrs,
       Alpha,
       Beta,
       Bias,
       DepthRadius,
       MaxPoolAttrs,
       MaxPool3DAttrs,
       MaxPoolV2Attrs,
       MaxPoolWithArgmaxAttrs,
       Targmax,
       NthElementAttrs,
       QuantizedConv2DAttrs,
       QuantizedReluAttrs,
       QuantizedRelu6Attrs,
       QuantizedReluXAttrs,
       TopKAttrs,
       Sorted,
       DecodeCSVAttrs,
       FieldDelim,
       NaValue,
       SelectCols,
       UseQuoteDelim,
       DecodeCompressedAttrs,
       DecodeRawAttrs,
       LittleEndian,
       ParseSequenceExampleAttrs,
       ContextDenseShapes,
       ContextSparseTypes,
       FeatureListDenseShapes,
       FeatureListDenseTypes,
       FeatureListSparseTypes,
       NcontextDense,
       NcontextSparse,
       NfeatureListDense,
       NfeatureListSparse,
       ParseSingleSequenceExampleAttrs,
       StringToNumberAttrs,
       MultinomialAttrs,
       OutputDtype,
       ParameterizedTruncatedNormalAttrs,
       RandomGammaAttrs,
       RandomNormalAttrs,
       RandomPoissonV2Attrs,
       RandomShuffleAttrs,
       RandomUniformAttrs,
       RandomUniformIntAttrs,
       TruncatedNormalAttrs,
       AddManySparseToTensorsMapAttrs,
       AddSparseToTensorsMapAttrs,
       SerializeManySparseAttrs,
       SerializeSparseAttrs,
       SparseReduceMaxAttrs,
       SparseReduceMaxSparseAttrs,
       SparseReduceSumAttrs,
       SparseReduceSumSparseAttrs,
       SparseTensorDenseMatMulAttrs,
       AdjointA,
       AdjointB,
       TakeManySparseFromTensorsMapAttrs,
       AssignAttrs,
       UseLocking,
       ValidateShape,
       AssignAddAttrs,
       AssignSubAttrs,
       ResourceScatterNdAddAttrs,
       ResourceScatterNdUpdateAttrs,
       ScatterAddAttrs,
       ScatterDivAttrs,
       ScatterMaxAttrs,
       ScatterMinAttrs,
       ScatterMulAttrs,
       ScatterNdAddAttrs,
       ScatterNdSubAttrs,
       ScatterNdUpdateAttrs,
       ScatterSubAttrs,
       ScatterUpdateAttrs,
       TemporaryVariableAttrs,
       VarName,
       VariableAttrs,
       AsStringAttrs,
       Fill,
       Precision,
       Scientific,
       Shortest,
       Width,
       EncodeBase64Attrs,
       Pad,
       ReduceJoinAttrs,
       Separator,
       RegexReplaceAttrs,
       ReplaceGlobal,
       StringFormatAttrs,
       Placeholder,
       Template,
       StringJoinAttrs,
       StringLengthAttrs,
       Unit,
       StringSplitAttrs,
       SkipEmpty,
       StringSplitV2Attrs,
       Maxsplit,
       ApplyAdadeltaAttrs,
       ApplyAdagradAttrs,
       UpdateSlots,
       ApplyAdagradDAAttrs,
       ApplyAdamAttrs,
       UseNesterov,
       ApplyAddSignAttrs,
       ApplyCenteredRMSPropAttrs,
       ApplyFtrlAttrs,
       ApplyFtrlV2Attrs,
       ApplyGradientDescentAttrs,
       ApplyMomentumAttrs,
       ApplyPowerSignAttrs,
       ApplyProximalAdagradAttrs,
       ApplyProximalGradientDescentAttrs,
       ApplyRMSPropAttrs,
       ResourceApplyAdadeltaAttrs,
       ResourceApplyAdagradAttrs,
       ResourceApplyAdagradDAAttrs,
       ResourceApplyAdamAttrs,
       ResourceApplyAddSignAttrs,
       ResourceApplyCenteredRMSPropAttrs,
       ResourceApplyFtrlAttrs,
       ResourceApplyFtrlV2Attrs,
       ResourceApplyGradientDescentAttrs,
       ResourceApplyMomentumAttrs,
       ResourceApplyPowerSignAttrs,
       ResourceApplyProximalAdagradAttrs,
       ResourceApplyProximalGradientDescentAttrs,
       ResourceApplyRMSPropAttrs,
       ResourceSparseApplyAdadeltaAttrs,
       ResourceSparseApplyAdagradAttrs,
       ResourceSparseApplyAdagradDAAttrs,
       ResourceSparseApplyCenteredRMSPropAttrs,
       ResourceSparseApplyFtrlAttrs,
       ResourceSparseApplyFtrlV2Attrs,
       ResourceSparseApplyMomentumAttrs,
       ResourceSparseApplyProximalAdagradAttrs,
       ResourceSparseApplyProximalGradientDescentAttrs,
       ResourceSparseApplyRMSPropAttrs,
       SparseApplyAdadeltaAttrs,
       SparseApplyAdagradAttrs,
       SparseApplyAdagradDAAttrs,
       SparseApplyCenteredRMSPropAttrs,
       SparseApplyFtrlAttrs,
       SparseApplyFtrlV2Attrs,
       SparseApplyMomentumAttrs,
       SparseApplyProximalAdagradAttrs,
       SparseApplyProximalGradientDescentAttrs,
       SparseApplyRMSPropAttrs