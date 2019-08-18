import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iBatchToSpace(root: Scope, input: Out, crops: Out, block_size: int): Out {.header:std_ops, importcpp:"tensorflow::ops::BatchToSpace(*#, #, #, #)".}

proc iBatchToSpaceND(root: Scope, input: Out, block_shape: Out, crops: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BatchToSpaceND(*#, #, #, #)".}

proc iBitcast(root: Scope, input: Out, ttype: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::Bitcast(*#, #, #)".}

proc iBroadcastDynamicShape(root: Scope, s0: Out, s1: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BroadcastDynamicShape(*#, #, #)".}

proc iBroadcastTo(root: Scope, input: Out, shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BroadcastTo(*#, #, #)".}

proc iCheckNumerics(root: Scope, tensor: Out, message: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::CheckNumerics(*#, #, #)".}

proc iConcat(root: Scope, values: InList, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Concat(*#, *#, #)".}

proc iConjugateTranspose(root: Scope, x: Out, perm: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ConjugateTranspose(*#, #, #)".}

proc iDebugGradientIdentity(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DebugGradientIdentity(*#, #)".}

proc iDebugGradientRefIdentity(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DebugGradientRefIdentity(*#, #)".}

proc iDeepCopy(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DeepCopy(*#, #)".}

proc iDepthToSpace(root: Scope, input: Out, block_size: int, attrs: DepthToSpaceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DepthToSpace(*#, #, #, #)".}

proc iDequantize(root: Scope, input: Out, min_range: Out, max_range: Out, attrs: DequantizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Dequantize(*#, #, #, #, #)".}

proc iDiag(root: Scope, diagonal: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Diag(*#, #)".}

proc iDiagPart(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DiagPart(*#, #)".}

proc iEditDistance(root: Scope, hypothesis_indices: Out, hypothesis_values: Out, hypothesis_shape: Out, truth_indices: Out, truth_values: Out, truth_shape: Out, attrs: EditDistanceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::EditDistance(*#, #, #, #, #, #, #, #)".}

proc iEmpty(root: Scope, shape: Out, dtype: core.DType, attrs: EmptyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Empty(*#, #, #, #)".}

proc iEnsureShape(root: Scope, input: Out, shape: TensorShape): Out {.header:std_ops, importcpp:"tensorflow::ops::EnsureShape(*#, #, #)".}

proc iExpandDims(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ExpandDims(*#, #, #)".}

proc iExtractImagePatches(root: Scope, images: Out, ksizes: ArraySlice[cint], strides: ArraySlice[cint], rates: ArraySlice[cint], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractImagePatches(*#, #, #, #, #, #)".}

proc iExtractVolumePatches(root: Scope, input: Out, ksizes: ArraySlice[cint], strides: ArraySlice[cint], padding: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractVolumePatches(*#, #, #, #, #)".}

proc iFakeQuantWithMinMaxArgs(root: Scope, inputs: Out, attrs: FakeQuantWithMinMaxArgsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgs(*#, #, #)".}

proc iFakeQuantWithMinMaxArgsGradient(root: Scope, gradients: Out, inputs: Out, attrs: FakeQuantWithMinMaxArgsGradientAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxArgsGradient(*#, #, #, #)".}

proc iFakeQuantWithMinMaxVars(root: Scope, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVars(*#, #, #, #, #)".}

proc iFakeQuantWithMinMaxVarsGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsGradientAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsGradient(*#, #, #, #, #, #)".}

proc iFakeQuantWithMinMaxVarsPerChannel(root: Scope, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsPerChannelAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannel(*#, #, #, #, #)".}

proc iFakeQuantWithMinMaxVarsPerChannelGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsPerChannelGradientAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FakeQuantWithMinMaxVarsPerChannelGradient(*#, #, #, #, #, #)".}

proc iFill(root: Scope, dims: Out, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Fill(*#, #, #)".}

proc iGather(root: Scope, params: Out, indices: Out, attrs: GatherAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Gather(*#, #, #, #)".}

proc iGatherNd(root: Scope, params: Out, indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GatherNd(*#, #, #)".}

proc iGatherV2(root: Scope, params: Out, indices: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GatherV2(*#, #, #, #)".}

proc iGuaranteeConst(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GuaranteeConst(*#, #)".}

proc iIdentity(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Identity(*#, #)".}

proc iIdentityN(root: Scope, input: InList): OutList {.header:std_ops, importcpp:"tensorflow::ops::IdentityN(*#, *#).output".}

proc iImmutableConst(root: Scope, dtype: core.DType, shape: TensorShape, memory_region_name: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::ImmutableConst(*#, #, #, #)".}

proc iInplaceAdd(root: Scope, x: Out, i: Out, v: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InplaceAdd(*#, #, #, #)".}

proc iInplaceSub(root: Scope, x: Out, i: Out, v: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InplaceSub(*#, #, #, #)".}

proc iInplaceUpdate(root: Scope, x: Out, i: Out, v: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InplaceUpdate(*#, #, #, #)".}

proc iInvertPermutation(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::InvertPermutation(*#, #)".}

proc iMatrixBandPart(root: Scope, input: Out, num_lower: Out, num_upper: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatrixBandPart(*#, #, #, #)".}

proc iMatrixDiag(root: Scope, diagonal: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatrixDiag(*#, #)".}

proc iMatrixDiagPart(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatrixDiagPart(*#, #)".}

proc iMatrixSetDiag(root: Scope, input: Out, diagonal: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatrixSetDiag(*#, #, #)".}

proc iMirrorPad(root: Scope, input: Out, paddings: Out, mode: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::MirrorPad(*#, #, #, #)".}

proc iOneHot(root: Scope, indices: Out, depth: Out, on_value: Out, off_value: Out, attrs: OneHotAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OneHot(*#, #, #, #, #, #)".}

proc iOnesLike(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::OnesLike(*#, #)".}

proc iQuantizedReshape(root: Scope, tensor: Out, shape: Out, input_min: Out, input_max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedReshape(*#, #, #, #, #)".}

proc iRank(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Rank(*#, #)".}

proc iReshape(root: Scope, tensor: Out, shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Reshape(*#, #, #)".}

proc iResourceStridedSliceAssign(root: Scope, rref: Out, begin: Out, eend: Out, strides: Out, value: Out, attrs: ResourceStridedSliceAssignAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::ResourceStridedSliceAssign(*#, #, #, #, #, #, #).operation".}

proc iReverse(root: Scope, tensor: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Reverse(*#, #, #)".}

proc iReverseSequence(root: Scope, input: Out, seq_lengths: Out, seq_dim: int, attrs: ReverseSequenceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ReverseSequence(*#, #, #, #, #)".}

proc iScatterNd(root: Scope, indices: Out, updates: Out, shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNd(*#, #, #, #)".}

proc iScatterNdNonAliasingAdd(root: Scope, input: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdNonAliasingAdd(*#, #, #, #)".}

proc iSetDiff1D(root: Scope, x: Out, y: Out, attrs: SetDiff1DAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SetDiff1D(*#, #, #, #)".}

proc iShape(root: Scope, input: Out, attrs: ShapeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Shape(*#, #, #)".}

proc iShapeN(root: Scope, input: InList, attrs: ShapeNAttrs): OutList {.header:std_ops, importcpp:"tensorflow::ops::ShapeN(*#, *#, #).output".}

proc iSize(root: Scope, input: Out, attrs: SizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Size(*#, #, #)".}

proc iSlice(root: Scope, input: Out, begin: Out, size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Slice(*#, #, #, #)".}

proc iSnapshot(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Snapshot(*#, #)".}

proc iSpaceToBatch(root: Scope, input: Out, paddings: Out, block_size: int): Out {.header:std_ops, importcpp:"tensorflow::ops::SpaceToBatch(*#, #, #, #)".}

proc iSpaceToBatchND(root: Scope, input: Out, block_shape: Out, paddings: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SpaceToBatchND(*#, #, #, #)".}

proc iSpaceToDepth(root: Scope, input: Out, block_size: int, attrs: SpaceToDepthAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SpaceToDepth(*#, #, #, #)".}

proc iSplit(root: Scope, axis: Out, value: Out, num_split: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::Split(*#, #, #, #).output".}

proc iSplitV(root: Scope, value: Out, size_splits: Out, axis: Out, num_split: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::SplitV(*#, #, #, #, #).output".}

proc iSqueeze(root: Scope, input: Out, attrs: SqueezeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Squeeze(*#, #, #)".}

proc iStopGradient(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StopGradient(*#, #)".}

proc iStridedSlice(root: Scope, input: Out, begin: Out, eend: Out, strides: Out, attrs: StridedSliceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSlice(*#, #, #, #, #, #)".}

proc iStridedSliceAssign(root: Scope, rref: Out, begin: Out, eend: Out, strides: Out, value: Out, attrs: StridedSliceAssignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSliceAssign(*#, #, #, #, #, #, #)".}

proc iStridedSliceGrad(root: Scope, shape: Out, begin: Out, eend: Out, strides: Out, dy: Out, attrs: StridedSliceGradAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StridedSliceGrad(*#, #, #, #, #, #, #)".}

proc iTile(root: Scope, input: Out, multiples: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Tile(*#, #, #)".}

proc iTranspose(root: Scope, x: Out, perm: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Transpose(*#, #, #)".}

proc iUnique(root: Scope, x: Out, attrs: UniqueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Unique(*#, #, #)".}

proc iUniqueV2(root: Scope, x: Out, axis: Out, attrs: UniqueV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueV2(*#, #, #, #)".}

proc iUniqueWithCounts(root: Scope, x: Out, attrs: UniqueWithCountsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueWithCounts(*#, #, #)".}

proc iUniqueWithCountsV2(root: Scope, x: Out, axis: Out, attrs: UniqueWithCountsV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::UniqueWithCountsV2(*#, #, #, #)".}

proc iUnravelIndex(root: Scope, indices: Out, dims: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnravelIndex(*#, #, #)".}

proc iUnstack(root: Scope, value: Out, num: int, attrs: UnstackAttrs): OutList {.header:std_ops, importcpp:"tensorflow::ops::Unstack(*#, #, #, #).output".}

proc iWhere(root: Scope, condition: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Where(*#, #)".}

proc iZerosLike(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ZerosLike(*#, #)".}

proc BatchToSpace(root: Scope, input: Out, crops: Out, block_size: int): Out =
  iBatchToSpace(root, input, crops, block_size)

proc BatchToSpaceND(root: Scope, input: Out, block_shape: Out, crops: Out): Out =
  iBatchToSpaceND(root, input, block_shape, crops)

proc Bitcast(root: Scope, input: Out, ttype: core.DType): Out =
  iBitcast(root, input, ttype)

proc BroadcastDynamicShape(root: Scope, s0: Out, s1: Out): Out =
  iBroadcastDynamicShape(root, s0, s1)

proc BroadcastTo(root: Scope, input: Out, shape: Out): Out =
  iBroadcastTo(root, input, shape)

proc CheckNumerics(root: Scope, tensor: Out, message: cppstring): Out =
  iCheckNumerics(root, tensor, message)

proc CheckNumerics(root: Scope, tensor: Out, message: string): Out =
  let cppstr2 = newCPPString(message)
  return CheckNumerics(root, tensor, cppstr2)

proc Concat(root: Scope, values: InList, axis: Out): Out =
  iConcat(root, values, axis)

proc Concat(root: Scope, values: OutList, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Concat(*#, #, #)".}

proc ConjugateTranspose(root: Scope, x: Out, perm: Out): Out =
  iConjugateTranspose(root, x, perm)

proc DebugGradientIdentity(root: Scope, input: Out): Out =
  iDebugGradientIdentity(root, input)

proc DebugGradientRefIdentity(root: Scope, input: Out): Out =
  iDebugGradientRefIdentity(root, input)

proc DeepCopy(root: Scope, x: Out): Out =
  iDeepCopy(root, x)

proc DepthToSpace(root: Scope, input: Out, block_size: int, attrs: DepthToSpaceAttrs): Out =
  iDepthToSpace(root, input, block_size, attrs)

proc DepthToSpace(root: Scope, input: Out, block_size: int, dataFormat = none(string)): Out =
  var attrs = DepthToSpaceAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return DepthToSpace(root, input, block_size, attrs)

proc Dequantize(root: Scope, input: Out, min_range: Out, max_range: Out, attrs: DequantizeAttrs): Out =
  iDequantize(root, input, min_range, max_range, attrs)

proc Dequantize(root: Scope, input: Out, min_range: Out, max_range: Out, mode = none(string)): Out =
  var attrs = DequantizeAttrs()

  if mode.isSome:
    attrs = attrs.Mode(newCPPString(mode.get()))

  return Dequantize(root, input, min_range, max_range, attrs)

proc Diag(root: Scope, diagonal: Out): Out =
  iDiag(root, diagonal)

proc DiagPart(root: Scope, input: Out): Out =
  iDiagPart(root, input)

proc EditDistance(root: Scope, hypothesis_indices: Out, hypothesis_values: Out, hypothesis_shape: Out, truth_indices: Out, truth_values: Out, truth_shape: Out, attrs: EditDistanceAttrs): Out =
  iEditDistance(root, hypothesis_indices, hypothesis_values, hypothesis_shape, truth_indices, truth_values, truth_shape, attrs)

proc EditDistance(root: Scope, hypothesis_indices: Out, hypothesis_values: Out, hypothesis_shape: Out, truth_indices: Out, truth_values: Out, truth_shape: Out, normalize = none(bool)): Out =
  var attrs = EditDistanceAttrs()

  if normalize.isSome:
    attrs = attrs.Normalize(normalize.get())

  return EditDistance(root, hypothesis_indices, hypothesis_values, hypothesis_shape, truth_indices, truth_values, truth_shape, attrs)

proc Empty(root: Scope, shape: Out, dtype: core.DType, attrs: EmptyAttrs): Out =
  iEmpty(root, shape, dtype, attrs)

proc Empty(root: Scope, shape: Out, dtype: core.DType, init = none(bool)): Out =
  var attrs = EmptyAttrs()

  if init.isSome:
    attrs = attrs.Init(init.get())

  return Empty(root, shape, dtype, attrs)

proc EnsureShape(root: Scope, input: Out, shape: TensorShape): Out =
  iEnsureShape(root, input, shape)

proc ExpandDims(root: Scope, input: Out, axis: Out): Out =
  iExpandDims(root, input, axis)

proc ExtractImagePatches(root: Scope, images: Out, ksizes: ArraySlice[cint], strides: ArraySlice[cint], rates: ArraySlice[cint], padding: cppstring): Out =
  iExtractImagePatches(root, images, ksizes, strides, rates, padding)

proc ExtractImagePatches(root: Scope, images: Out, ksizes: ArraySlice[cint], strides: ArraySlice[cint], rates: ArraySlice[cint], padding: string): Out =
  let cppstr5 = newCPPString(padding)
  return ExtractImagePatches(root, images, ksizes, strides, rates, cppstr5)

proc ExtractVolumePatches(root: Scope, input: Out, ksizes: ArraySlice[cint], strides: ArraySlice[cint], padding: cppstring): Out =
  iExtractVolumePatches(root, input, ksizes, strides, padding)

proc ExtractVolumePatches(root: Scope, input: Out, ksizes: ArraySlice[cint], strides: ArraySlice[cint], padding: string): Out =
  let cppstr4 = newCPPString(padding)
  return ExtractVolumePatches(root, input, ksizes, strides, cppstr4)

proc FakeQuantWithMinMaxArgs(root: Scope, inputs: Out, attrs: FakeQuantWithMinMaxArgsAttrs): Out =
  iFakeQuantWithMinMaxArgs(root, inputs, attrs)

proc FakeQuantWithMinMaxArgs(root: Scope, inputs: Out, max = none(float), min = none(float), narrowRange = none(bool), numBits = none(int)): Out =
  var attrs = FakeQuantWithMinMaxArgsAttrs()

  if max.isSome:
    attrs = attrs.Max(max.get())
  if min.isSome:
    attrs = attrs.Min(min.get())
  if narrowRange.isSome:
    attrs = attrs.NarrowRange(narrowRange.get())
  if numBits.isSome:
    attrs = attrs.NumBits(numBits.get())

  return FakeQuantWithMinMaxArgs(root, inputs, attrs)

proc FakeQuantWithMinMaxArgsGradient(root: Scope, gradients: Out, inputs: Out, attrs: FakeQuantWithMinMaxArgsGradientAttrs): Out =
  iFakeQuantWithMinMaxArgsGradient(root, gradients, inputs, attrs)

proc FakeQuantWithMinMaxArgsGradient(root: Scope, gradients: Out, inputs: Out, max = none(float), min = none(float), narrowRange = none(bool), numBits = none(int)): Out =
  var attrs = FakeQuantWithMinMaxArgsGradientAttrs()

  if max.isSome:
    attrs = attrs.Max(max.get())
  if min.isSome:
    attrs = attrs.Min(min.get())
  if narrowRange.isSome:
    attrs = attrs.NarrowRange(narrowRange.get())
  if numBits.isSome:
    attrs = attrs.NumBits(numBits.get())

  return FakeQuantWithMinMaxArgsGradient(root, gradients, inputs, attrs)

proc FakeQuantWithMinMaxVars(root: Scope, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsAttrs): Out =
  iFakeQuantWithMinMaxVars(root, inputs, min, max, attrs)

proc FakeQuantWithMinMaxVars(root: Scope, inputs: Out, min: Out, max: Out, narrowRange = none(bool), numBits = none(int)): Out =
  var attrs = FakeQuantWithMinMaxVarsAttrs()

  if narrowRange.isSome:
    attrs = attrs.NarrowRange(narrowRange.get())
  if numBits.isSome:
    attrs = attrs.NumBits(numBits.get())

  return FakeQuantWithMinMaxVars(root, inputs, min, max, attrs)

proc FakeQuantWithMinMaxVarsGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsGradientAttrs): Out =
  iFakeQuantWithMinMaxVarsGradient(root, gradients, inputs, min, max, attrs)

proc FakeQuantWithMinMaxVarsGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out, narrowRange = none(bool), numBits = none(int)): Out =
  var attrs = FakeQuantWithMinMaxVarsGradientAttrs()

  if narrowRange.isSome:
    attrs = attrs.NarrowRange(narrowRange.get())
  if numBits.isSome:
    attrs = attrs.NumBits(numBits.get())

  return FakeQuantWithMinMaxVarsGradient(root, gradients, inputs, min, max, attrs)

proc FakeQuantWithMinMaxVarsPerChannel(root: Scope, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsPerChannelAttrs): Out =
  iFakeQuantWithMinMaxVarsPerChannel(root, inputs, min, max, attrs)

proc FakeQuantWithMinMaxVarsPerChannel(root: Scope, inputs: Out, min: Out, max: Out, narrowRange = none(bool), numBits = none(int)): Out =
  var attrs = FakeQuantWithMinMaxVarsPerChannelAttrs()

  if narrowRange.isSome:
    attrs = attrs.NarrowRange(narrowRange.get())
  if numBits.isSome:
    attrs = attrs.NumBits(numBits.get())

  return FakeQuantWithMinMaxVarsPerChannel(root, inputs, min, max, attrs)

proc FakeQuantWithMinMaxVarsPerChannelGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out, attrs: FakeQuantWithMinMaxVarsPerChannelGradientAttrs): Out =
  iFakeQuantWithMinMaxVarsPerChannelGradient(root, gradients, inputs, min, max, attrs)

proc FakeQuantWithMinMaxVarsPerChannelGradient(root: Scope, gradients: Out, inputs: Out, min: Out, max: Out, narrowRange = none(bool), numBits = none(int)): Out =
  var attrs = FakeQuantWithMinMaxVarsPerChannelGradientAttrs()

  if narrowRange.isSome:
    attrs = attrs.NarrowRange(narrowRange.get())
  if numBits.isSome:
    attrs = attrs.NumBits(numBits.get())

  return FakeQuantWithMinMaxVarsPerChannelGradient(root, gradients, inputs, min, max, attrs)

proc Fill(root: Scope, dims: Out, value: Out): Out =
  iFill(root, dims, value)

proc Gather(root: Scope, params: Out, indices: Out, attrs: GatherAttrs): Out =
  iGather(root, params, indices, attrs)

proc Gather(root: Scope, params: Out, indices: Out, validateIndices = none(bool)): Out =
  var attrs = GatherAttrs()

  if validateIndices.isSome:
    attrs = attrs.ValidateIndices(validateIndices.get())

  return Gather(root, params, indices, attrs)

proc GatherNd(root: Scope, params: Out, indices: Out): Out =
  iGatherNd(root, params, indices)

proc GatherV2(root: Scope, params: Out, indices: Out, axis: Out): Out =
  iGatherV2(root, params, indices, axis)

proc GuaranteeConst(root: Scope, input: Out): Out =
  iGuaranteeConst(root, input)

proc Identity(root: Scope, input: Out): Out =
  iIdentity(root, input)

proc IdentityN(root: Scope, input: InList): OutList =
  iIdentityN(root, input)

proc IdentityN(root: Scope, input: OutList): OutList {.header:std_ops, importcpp:"tensorflow::ops::IdentityN(*#, #).output".}

proc ImmutableConst(root: Scope, dtype: core.DType, shape: TensorShape, memory_region_name: cppstring): Out =
  iImmutableConst(root, dtype, shape, memory_region_name)

proc ImmutableConst(root: Scope, dtype: core.DType, shape: TensorShape, memory_region_name: string): Out =
  let cppstr3 = newCPPString(memory_region_name)
  return ImmutableConst(root, dtype, shape, cppstr3)

proc InplaceAdd(root: Scope, x: Out, i: Out, v: Out): Out =
  iInplaceAdd(root, x, i, v)

proc InplaceSub(root: Scope, x: Out, i: Out, v: Out): Out =
  iInplaceSub(root, x, i, v)

proc InplaceUpdate(root: Scope, x: Out, i: Out, v: Out): Out =
  iInplaceUpdate(root, x, i, v)

proc InvertPermutation(root: Scope, x: Out): Out =
  iInvertPermutation(root, x)

proc MatrixBandPart(root: Scope, input: Out, num_lower: Out, num_upper: Out): Out =
  iMatrixBandPart(root, input, num_lower, num_upper)

proc MatrixDiag(root: Scope, diagonal: Out): Out =
  iMatrixDiag(root, diagonal)

proc MatrixDiagPart(root: Scope, input: Out): Out =
  iMatrixDiagPart(root, input)

proc MatrixSetDiag(root: Scope, input: Out, diagonal: Out): Out =
  iMatrixSetDiag(root, input, diagonal)

proc MirrorPad(root: Scope, input: Out, paddings: Out, mode: cppstring): Out =
  iMirrorPad(root, input, paddings, mode)

proc MirrorPad(root: Scope, input: Out, paddings: Out, mode: string): Out =
  let cppstr3 = newCPPString(mode)
  return MirrorPad(root, input, paddings, cppstr3)

proc OneHot(root: Scope, indices: Out, depth: Out, on_value: Out, off_value: Out, attrs: OneHotAttrs): Out =
  iOneHot(root, indices, depth, on_value, off_value, attrs)

proc OneHot(root: Scope, indices: Out, depth: Out, on_value: Out, off_value: Out, axis = none(int)): Out =
  var attrs = OneHotAttrs()

  if axis.isSome:
    attrs = attrs.Axis(axis.get())

  return OneHot(root, indices, depth, on_value, off_value, attrs)

proc OnesLike(root: Scope, x: Out): Out =
  iOnesLike(root, x)

proc QuantizedReshape(root: Scope, tensor: Out, shape: Out, input_min: Out, input_max: Out): Out =
  iQuantizedReshape(root, tensor, shape, input_min, input_max)

proc Rank(root: Scope, input: Out): Out =
  iRank(root, input)

proc Reshape(root: Scope, tensor: Out, shape: Out): Out =
  iReshape(root, tensor, shape)

proc ResourceStridedSliceAssign(root: Scope, rref: Out, begin: Out, eend: Out, strides: Out, value: Out, attrs: ResourceStridedSliceAssignAttrs): Operation =
  iResourceStridedSliceAssign(root, rref, begin, eend, strides, value, attrs)

proc ResourceStridedSliceAssign(root: Scope, rref: Out, begin: Out, eend: Out, strides: Out, value: Out, beginMask = none(int), ellipsisMask = none(int), endMask = none(int), newAxisMask = none(int), shrinkAxisMask = none(int)): Operation =
  var attrs = ResourceStridedSliceAssignAttrs()

  if beginMask.isSome:
    attrs = attrs.BeginMask(beginMask.get())
  if ellipsisMask.isSome:
    attrs = attrs.EllipsisMask(ellipsisMask.get())
  if endMask.isSome:
    attrs = attrs.EndMask(endMask.get())
  if newAxisMask.isSome:
    attrs = attrs.NewAxisMask(newAxisMask.get())
  if shrinkAxisMask.isSome:
    attrs = attrs.ShrinkAxisMask(shrinkAxisMask.get())

  return ResourceStridedSliceAssign(root, rref, begin, eend, strides, value, attrs)

proc Reverse(root: Scope, tensor: Out, axis: Out): Out =
  iReverse(root, tensor, axis)

proc ReverseSequence(root: Scope, input: Out, seq_lengths: Out, seq_dim: int, attrs: ReverseSequenceAttrs): Out =
  iReverseSequence(root, input, seq_lengths, seq_dim, attrs)

proc ReverseSequence(root: Scope, input: Out, seq_lengths: Out, seq_dim: int, batchDim = none(int)): Out =
  var attrs = ReverseSequenceAttrs()

  if batchDim.isSome:
    attrs = attrs.BatchDim(batchDim.get())

  return ReverseSequence(root, input, seq_lengths, seq_dim, attrs)

proc ScatterNd(root: Scope, indices: Out, updates: Out, shape: Out): Out =
  iScatterNd(root, indices, updates, shape)

proc ScatterNdNonAliasingAdd(root: Scope, input: Out, indices: Out, updates: Out): Out =
  iScatterNdNonAliasingAdd(root, input, indices, updates)

proc SetDiff1D(root: Scope, x: Out, y: Out, attrs: SetDiff1DAttrs): Out =
  iSetDiff1D(root, x, y, attrs)

proc SetDiff1D(root: Scope, x: Out, y: Out, outIdx = none(core.DType)): Out =
  var attrs = SetDiff1DAttrs()

  if outIdx.isSome:
    attrs = attrs.OutIdx(outIdx.get())

  return SetDiff1D(root, x, y, attrs)

proc Shape(root: Scope, input: Out, attrs: ShapeAttrs): Out =
  iShape(root, input, attrs)

proc Shape(root: Scope, input: Out, outType = none(core.DType)): Out =
  var attrs = ShapeAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return Shape(root, input, attrs)

proc ShapeN(root: Scope, input: InList, attrs: ShapeNAttrs): OutList =
  iShapeN(root, input, attrs)

proc ShapeN(root: Scope, input: OutList, attrs: ShapeNAttrs): OutList {.header:std_ops, importcpp:"tensorflow::ops::ShapeN(*#, #, #).output".}

proc ShapeN(root: Scope, input: InList, outType = none(core.DType)): OutList =
  var attrs = ShapeNAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return ShapeN(root, input, attrs)

proc ShapeN(root: Scope, input: OutList, outType = none(core.DType)): OutList =
  var attrs = ShapeNAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return ShapeN(root, input, attrs)

proc Size(root: Scope, input: Out, attrs: SizeAttrs): Out =
  iSize(root, input, attrs)

proc Size(root: Scope, input: Out, outType = none(core.DType)): Out =
  var attrs = SizeAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return Size(root, input, attrs)

proc Slice(root: Scope, input: Out, begin: Out, size: Out): Out =
  iSlice(root, input, begin, size)

proc Snapshot(root: Scope, input: Out): Out =
  iSnapshot(root, input)

proc SpaceToBatch(root: Scope, input: Out, paddings: Out, block_size: int): Out =
  iSpaceToBatch(root, input, paddings, block_size)

proc SpaceToBatchND(root: Scope, input: Out, block_shape: Out, paddings: Out): Out =
  iSpaceToBatchND(root, input, block_shape, paddings)

proc SpaceToDepth(root: Scope, input: Out, block_size: int, attrs: SpaceToDepthAttrs): Out =
  iSpaceToDepth(root, input, block_size, attrs)

proc SpaceToDepth(root: Scope, input: Out, block_size: int, dataFormat = none(string)): Out =
  var attrs = SpaceToDepthAttrs()

  if dataFormat.isSome:
    attrs = attrs.DataFormat(newCPPString(dataFormat.get()))

  return SpaceToDepth(root, input, block_size, attrs)

proc Split(root: Scope, axis: Out, value: Out, num_split: int): OutList =
  iSplit(root, axis, value, num_split)

proc SplitV(root: Scope, value: Out, size_splits: Out, axis: Out, num_split: int): OutList =
  iSplitV(root, value, size_splits, axis, num_split)

proc Squeeze(root: Scope, input: Out, attrs: SqueezeAttrs): Out =
  iSqueeze(root, input, attrs)

proc Squeeze(root: Scope, input: Out, axis = none(ArraySlice[cint])): Out =
  var attrs = SqueezeAttrs()

  if axis.isSome:
    attrs = attrs.Axis(axis.get())

  return Squeeze(root, input, attrs)

proc StopGradient(root: Scope, input: Out): Out =
  iStopGradient(root, input)

proc StridedSlice(root: Scope, input: Out, begin: Out, eend: Out, strides: Out, attrs: StridedSliceAttrs): Out =
  iStridedSlice(root, input, begin, eend, strides, attrs)

proc StridedSlice(root: Scope, input: Out, begin: Out, eend: Out, strides: Out, beginMask = none(int), ellipsisMask = none(int), endMask = none(int), newAxisMask = none(int), shrinkAxisMask = none(int)): Out =
  var attrs = StridedSliceAttrs()

  if beginMask.isSome:
    attrs = attrs.BeginMask(beginMask.get())
  if ellipsisMask.isSome:
    attrs = attrs.EllipsisMask(ellipsisMask.get())
  if endMask.isSome:
    attrs = attrs.EndMask(endMask.get())
  if newAxisMask.isSome:
    attrs = attrs.NewAxisMask(newAxisMask.get())
  if shrinkAxisMask.isSome:
    attrs = attrs.ShrinkAxisMask(shrinkAxisMask.get())

  return StridedSlice(root, input, begin, eend, strides, attrs)

proc StridedSliceAssign(root: Scope, rref: Out, begin: Out, eend: Out, strides: Out, value: Out, attrs: StridedSliceAssignAttrs): Out =
  iStridedSliceAssign(root, rref, begin, eend, strides, value, attrs)

proc StridedSliceAssign(root: Scope, rref: Out, begin: Out, eend: Out, strides: Out, value: Out, beginMask = none(int), ellipsisMask = none(int), endMask = none(int), newAxisMask = none(int), shrinkAxisMask = none(int)): Out =
  var attrs = StridedSliceAssignAttrs()

  if beginMask.isSome:
    attrs = attrs.BeginMask(beginMask.get())
  if ellipsisMask.isSome:
    attrs = attrs.EllipsisMask(ellipsisMask.get())
  if endMask.isSome:
    attrs = attrs.EndMask(endMask.get())
  if newAxisMask.isSome:
    attrs = attrs.NewAxisMask(newAxisMask.get())
  if shrinkAxisMask.isSome:
    attrs = attrs.ShrinkAxisMask(shrinkAxisMask.get())

  return StridedSliceAssign(root, rref, begin, eend, strides, value, attrs)

proc StridedSliceGrad(root: Scope, shape: Out, begin: Out, eend: Out, strides: Out, dy: Out, attrs: StridedSliceGradAttrs): Out =
  iStridedSliceGrad(root, shape, begin, eend, strides, dy, attrs)

proc StridedSliceGrad(root: Scope, shape: Out, begin: Out, eend: Out, strides: Out, dy: Out, beginMask = none(int), ellipsisMask = none(int), endMask = none(int), newAxisMask = none(int), shrinkAxisMask = none(int)): Out =
  var attrs = StridedSliceGradAttrs()

  if beginMask.isSome:
    attrs = attrs.BeginMask(beginMask.get())
  if ellipsisMask.isSome:
    attrs = attrs.EllipsisMask(ellipsisMask.get())
  if endMask.isSome:
    attrs = attrs.EndMask(endMask.get())
  if newAxisMask.isSome:
    attrs = attrs.NewAxisMask(newAxisMask.get())
  if shrinkAxisMask.isSome:
    attrs = attrs.ShrinkAxisMask(shrinkAxisMask.get())

  return StridedSliceGrad(root, shape, begin, eend, strides, dy, attrs)

proc Tile(root: Scope, input: Out, multiples: Out): Out =
  iTile(root, input, multiples)

proc Transpose(root: Scope, x: Out, perm: Out): Out =
  iTranspose(root, x, perm)

proc Unique(root: Scope, x: Out, attrs: UniqueAttrs): Out =
  iUnique(root, x, attrs)

proc Unique(root: Scope, x: Out, outIdx = none(core.DType)): Out =
  var attrs = UniqueAttrs()

  if outIdx.isSome:
    attrs = attrs.OutIdx(outIdx.get())

  return Unique(root, x, attrs)

proc UniqueV2(root: Scope, x: Out, axis: Out, attrs: UniqueV2Attrs): Out =
  iUniqueV2(root, x, axis, attrs)

proc UniqueV2(root: Scope, x: Out, axis: Out, outIdx = none(core.DType)): Out =
  var attrs = UniqueV2Attrs()

  if outIdx.isSome:
    attrs = attrs.OutIdx(outIdx.get())

  return UniqueV2(root, x, axis, attrs)

proc UniqueWithCounts(root: Scope, x: Out, attrs: UniqueWithCountsAttrs): Out =
  iUniqueWithCounts(root, x, attrs)

proc UniqueWithCounts(root: Scope, x: Out, outIdx = none(core.DType)): Out =
  var attrs = UniqueWithCountsAttrs()

  if outIdx.isSome:
    attrs = attrs.OutIdx(outIdx.get())

  return UniqueWithCounts(root, x, attrs)

proc UniqueWithCountsV2(root: Scope, x: Out, axis: Out, attrs: UniqueWithCountsV2Attrs): Out =
  iUniqueWithCountsV2(root, x, axis, attrs)

proc UniqueWithCountsV2(root: Scope, x: Out, axis: Out, outIdx = none(core.DType)): Out =
  var attrs = UniqueWithCountsV2Attrs()

  if outIdx.isSome:
    attrs = attrs.OutIdx(outIdx.get())

  return UniqueWithCountsV2(root, x, axis, attrs)

proc UnravelIndex(root: Scope, indices: Out, dims: Out): Out =
  iUnravelIndex(root, indices, dims)

proc Unstack(root: Scope, value: Out, num: int, attrs: UnstackAttrs): OutList =
  iUnstack(root, value, num, attrs)

proc Unstack(root: Scope, value: Out, num: int, axis = none(int)): OutList =
  var attrs = UnstackAttrs()

  if axis.isSome:
    attrs = attrs.Axis(axis.get())

  return Unstack(root, value, num, attrs)

proc Where(root: Scope, condition: Out): Out =
  iWhere(root, condition)

proc ZerosLike(root: Scope, x: Out): Out =
  iZerosLike(root, x)

export BatchToSpace,
       BatchToSpaceND,
       Bitcast,
       BroadcastDynamicShape,
       BroadcastTo,
       CheckNumerics,
       Concat,
       ConjugateTranspose,
       DebugGradientIdentity,
       DebugGradientRefIdentity,
       DeepCopy,
       DepthToSpace,
       Dequantize,
       Diag,
       DiagPart,
       EditDistance,
       Empty,
       EnsureShape,
       ExpandDims,
       ExtractImagePatches,
       ExtractVolumePatches,
       FakeQuantWithMinMaxArgs,
       FakeQuantWithMinMaxArgsGradient,
       FakeQuantWithMinMaxVars,
       FakeQuantWithMinMaxVarsGradient,
       FakeQuantWithMinMaxVarsPerChannel,
       FakeQuantWithMinMaxVarsPerChannelGradient,
       Fill,
       Gather,
       GatherNd,
       GatherV2,
       GuaranteeConst,
       Identity,
       IdentityN,
       ImmutableConst,
       InplaceAdd,
       InplaceSub,
       InplaceUpdate,
       InvertPermutation,
       MatrixBandPart,
       MatrixDiag,
       MatrixDiagPart,
       MatrixSetDiag,
       MirrorPad,
       OneHot,
       OnesLike,
       QuantizedReshape,
       Rank,
       Reshape,
       ResourceStridedSliceAssign,
       Reverse,
       ReverseSequence,
       ScatterNd,
       ScatterNdNonAliasingAdd,
       SetDiff1D,
       Shape,
       ShapeN,
       Size,
       Slice,
       Snapshot,
       SpaceToBatch,
       SpaceToBatchND,
       SpaceToDepth,
       Split,
       SplitV,
       Squeeze,
       StopGradient,
       StridedSlice,
       StridedSliceAssign,
       StridedSliceGrad,
       Tile,
       Transpose,
       Unique,
       UniqueV2,
       UniqueWithCounts,
       UniqueWithCountsV2,
       UnravelIndex,
       Unstack,
       Where,
       ZerosLike