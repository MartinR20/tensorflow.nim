import ../core/core.nim
import ../utils/utils.nim

proc BatchToSpace(root: Scope, input: Out, crops: Out, block_size: int): Out {.header:std_ops, importcpp:"tensorflow::ops::BatchToSpace(*@)".}

proc BatchToSpaceND(root: Scope, input: Out, block_shape: Out, crops: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BatchToSpaceND(*@)".}

proc Bitcast(root: Scope, input: Out, type: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::Bitcast(*@)".}

proc BroadcastDynamicShape(root: Scope, s0: Out, s1: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BroadcastDynamicShape(*@)".}

proc BroadcastTo(root: Scope, input: Out, shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BroadcastTo(*@)".}

proc CheckNumerics(root: Scope, tensor: Out, message: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::CheckNumerics(*@)".}

proc Concat(root: Scope, values: InList, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Concat(*@)".}

proc ConjugateTranspose(root: Scope, x: Out, perm: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ConjugateTranspose(*@)".}

proc DebugGradientIdentity(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DebugGradientIdentity(*@)".}

proc DebugGradientRefIdentity(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DebugGradientRefIdentity(*@)".}

proc DeepCopy(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DeepCopy(*@)".}

proc DepthToSpace(root: Scope, input: Out, block_size: int): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthToSpace(*@)".}

proc DepthToSpace(root: Scope, input: Out, block_size: int, attrs: DepthToSpaceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthToSpace(*@)".}

proc Dequantize(root: Scope, input: Out, min_range: Out, max_range: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Dequantize(*@)".}

proc Dequantize(root: Scope, input: Out, min_range: Out, max_range: Out, attrs: DequantizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Dequantize(*@)".}

proc Diag(root: Scope, diagonal: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Diag(*@)".}

proc DiagPart(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DiagPart(*@)".}

proc EditDistance(root: Scope, hypothesis_indices: Out, hypothesis_values: Out, hypothesis_shape: Out, truth_indices: Out, truth_values: Out, truth_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::EditDistance(*@)".}

proc EditDistance(root: Scope, hypothesis_indices: Out, hypothesis_values: Out, hypothesis_shape: Out, truth_indices: Out, truth_values: Out, truth_shape: Out, attrs: EditDistanceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::EditDistance(*@)".}

proc Empty(root: Scope, shape: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::Empty(*@)".}

proc Empty(root: Scope, shape: Out, dtype: DType, attrs: EmptyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Empty(*@)".}

proc EnsureShape(root: Scope, input: Out, shape: PartialTensorShape): Out {.header:std_ops, importcpp:"tensorflow::ops::EnsureShape(*@)".}

proc ExpandDims(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ExpandDims(*@)".}

proc ExtractImagePatches(root: Scope, images: Out, ksizes: ArraySlice[int], strides: ArraySlice[int], rates: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractImagePatches(*@)".}

proc ExtractVolumePatches(root: Scope, input: Out, ksizes: ArraySlice[int], strides: ArraySlice[int], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractVolumePatches(*@)".}

proc FakeQuantWithMinMaxArgs(root: Scope, inputs: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgs(*@)".}

proc FakeQuantWithMinMaxArgs(root: Scope, inputs: Out, attrs: FakeQuantWithMinMaxArgsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgs(*@)".}

proc FakeQuantWithMinMaxArgsGradient(root: Scope, gradients: Out, inputs: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgsGradient(*@)".}

proc FakeQuantWithMinMaxArgsGradient(root: Scope, gradients: Out, inputs: Out, attrs: FakeQuantWithMinMaxArgsGradientAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgsGradient(*@)".}

proc FakeQuantWithMinMaxVars(root: Scope, inputs: Out, min: Out, max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVars(*@)".}

proc FakeQuantWithMinMaxVars(root: Scope, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVars(*@)".}

proc FakeQuantWithMinMaxVarsGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsGradient(*@)".}

proc FakeQuantWithMinMaxVarsGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsGradientAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsGradient(*@)".}

proc FakeQuantWithMinMaxVarsPerChannel(root: Scope, inputs: Out, min: Out, max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannel(*@)".}

proc FakeQuantWithMinMaxVarsPerChannel(root: Scope, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsPerChannelAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannel(*@)".}

proc FakeQuantWithMinMaxVarsPerChannelGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannelGradient(*@)".}

proc FakeQuantWithMinMaxVarsPerChannelGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsPerChannelGradientAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannelGradient(*@)".}

proc Fill(root: Scope, dims: Out, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Fill(*@)".}

proc Gather(root: Scope, params: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Gather(*@)".}

proc Gather(root: Scope, params: Out, indices: Out, attrs: GatherAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Gather(*@)".}

proc GatherNd(root: Scope, params: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GatherNd(*@)".}

proc GatherV2(root: Scope, params: Out, indices: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GatherV2(*@)".}

proc GuaranteeConst(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GuaranteeConst(*@)".}

proc Identity(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Identity(*@)".}

proc IdentityN(root: Scope, input: InList): OutList {.header:std_ops, importcpp:"tensorflow::ops::IdentityN(*@)".}

proc ImmutableConst(root: Scope, dtype: DType, shape: PartialTensorShape, memory_region_name: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::ImmutableConst(*@)".}

proc InplaceAdd(root: Scope, x: Out, i: Out, v: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InplaceAdd(*@)".}

proc InplaceSub(root: Scope, x: Out, i: Out, v: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InplaceSub(*@)".}

proc InplaceUpdate(root: Scope, x: Out, i: Out, v: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InplaceUpdate(*@)".}

proc InvertPermutation(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InvertPermutation(*@)".}

proc MatrixBandPart(root: Scope, input: Out, num_lower: Out, num_upper: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatrixBandPart(*@)".}

proc MatrixDiag(root: Scope, diagonal: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatrixDiag(*@)".}

proc MatrixDiagPart(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatrixDiagPart(*@)".}

proc MatrixSetDiag(root: Scope, input: Out, diagonal: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatrixSetDiag(*@)".}

proc MirrorPad(root: Scope, input: Out, paddings: Out, mode: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::MirrorPad(*@)".}

proc OneHot(root: Scope, indices: Out, depth: Out, on_value: Out, off_value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::OneHot(*@)".}

proc OneHot(root: Scope, indices: Out, depth: Out, on_value: Out, off_value: Out, attrs: OneHotAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OneHot(*@)".}

proc OnesLike(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::OnesLike(*@)".}

proc QuantizedReshape(root: Scope, tensor: Out, shape: Out, input_min: Out, input_max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedReshape(*@)".}

proc Rank(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Rank(*@)".}

proc Reshape(root: Scope, tensor: Out, shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Reshape(*@)".}

proc ResourceStridedSliceAssign(root: Scope, ref: Out, begin: Out, end: Out, strides: Out, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceStridedSliceAssign(*@)".}

proc ResourceStridedSliceAssign(root: Scope, ref: Out, begin: Out, end: Out, strides: Out, value: Out, attrs: ResourceStridedSliceAssignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceStridedSliceAssign(*@)".}

proc Reverse(root: Scope, tensor: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Reverse(*@)".}

proc ReverseSequence(root: Scope, input: Out, seq_lengths: Out, seq_dim: int): Out {.header:std_ops, importcpp:"tensorflow::ops::ReverseSequence(*@)".}

proc ReverseSequence(root: Scope, input: Out, seq_lengths: Out, seq_dim: int, attrs: ReverseSequenceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ReverseSequence(*@)".}

proc ScatterNd(root: Scope, indices: Out, updates: Out, shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNd(*@)".}

proc ScatterNdNonAliasingAdd(root: Scope, input: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdNonAliasingAdd(*@)".}

proc SetDiff1D(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SetDiff1D(*@)".}

proc SetDiff1D(root: Scope, x: Out, y: Out, attrs: SetDiff1DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SetDiff1D(*@)".}

proc Shape(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Shape(*@)".}

proc Shape(root: Scope, input: Out, attrs: ShapeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Shape(*@)".}

proc ShapeN(root: Scope, input: InList): OutList {.header:std_ops, importcpp:"tensorflow::ops::ShapeN(*@)".}

proc ShapeN(root: Scope, input: InList, attrs: ShapeNAttrs): OutList {.header:std_ops, importcpp:"tensorflow::ops::ShapeN(*@)".}

proc Size(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Size(*@)".}

proc Size(root: Scope, input: Out, attrs: SizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Size(*@)".}

proc Slice(root: Scope, input: Out, begin: Out, size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Slice(*@)".}

proc Snapshot(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Snapshot(*@)".}

proc SpaceToBatch(root: Scope, input: Out, paddings: Out, block_size: int): Out {.header:std_ops, importcpp:"tensorflow::ops::SpaceToBatch(*@)".}

proc SpaceToBatchND(root: Scope, input: Out, block_shape: Out, paddings: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SpaceToBatchND(*@)".}

proc SpaceToDepth(root: Scope, input: Out, block_size: int): Out {.header:std_ops, importcpp:"tensorflow::ops::SpaceToDepth(*@)".}

proc SpaceToDepth(root: Scope, input: Out, block_size: int, attrs: SpaceToDepthAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SpaceToDepth(*@)".}

proc Split(root: Scope, axis: Out, value: Out, num_split: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::Split(*@)".}

proc SplitV(root: Scope, value: Out, size_splits: Out, axis: Out, num_split: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::SplitV(*@)".}

proc Squeeze(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Squeeze(*@)".}

proc Squeeze(root: Scope, input: Out, attrs: SqueezeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Squeeze(*@)".}

proc StopGradient(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StopGradient(*@)".}

proc StridedSlice(root: Scope, input: Out, begin: Out, end: Out, strides: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSlice(*@)".}

proc StridedSlice(root: Scope, input: Out, begin: Out, end: Out, strides: Out, attrs: StridedSliceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSlice(*@)".}

proc StridedSliceAssign(root: Scope, ref: Out, begin: Out, end: Out, strides: Out, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSliceAssign(*@)".}

proc StridedSliceAssign(root: Scope, ref: Out, begin: Out, end: Out, strides: Out, value: Out, attrs: StridedSliceAssignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSliceAssign(*@)".}

proc StridedSliceGrad(root: Scope, shape: Out, begin: Out, end: Out, strides: Out, dy: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSliceGrad(*@)".}

proc StridedSliceGrad(root: Scope, shape: Out, begin: Out, end: Out, strides: Out, dy: Out, attrs: StridedSliceGradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSliceGrad(*@)".}

proc Tile(root: Scope, input: Out, multiples: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Tile(*@)".}

proc Transpose(root: Scope, x: Out, perm: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Transpose(*@)".}

proc Unique(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Unique(*@)".}

proc Unique(root: Scope, x: Out, attrs: UniqueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Unique(*@)".}

proc UniqueV2(root: Scope, x: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueV2(*@)".}

proc UniqueV2(root: Scope, x: Out, axis: Out, attrs: UniqueV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueV2(*@)".}

proc UniqueWithCounts(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueWithCounts(*@)".}

proc UniqueWithCounts(root: Scope, x: Out, attrs: UniqueWithCountsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueWithCounts(*@)".}

proc UniqueWithCountsV2(root: Scope, x: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueWithCountsV2(*@)".}

proc UniqueWithCountsV2(root: Scope, x: Out, axis: Out, attrs: UniqueWithCountsV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueWithCountsV2(*@)".}

proc UnravelIndex(root: Scope, indices: Out, dims: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnravelIndex(*@)".}

proc Unstack(root: Scope, value: Out, num: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::Unstack(*@)".}

proc Unstack(root: Scope, value: Out, num: int, attrs: UnstackAttrs): OutList {.header:std_ops, importcpp:"tensorflow::ops::Unstack(*@)".}

proc Where(root: Scope, condition: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Where(*@)".}

proc ZerosLike(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ZerosLike(*@)".}

