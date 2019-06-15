import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAbs(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Abs(*#, #)".}

proc iAccumulateNV2(root: Scope, inputs: InList, shape: TensorShape): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulateNV2(*#, *#, #)".}

proc iAcos(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Acos(*#, #)".}

proc iAcosh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Acosh(*#, #)".}

proc iAdd(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Add(*#, #, #)".}

proc iAddN(root: Scope, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::AddN(*#, *#)".}

proc iAddV2(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AddV2(*#, #, #)".}

proc iAll(root: Scope, input: Out, axis: Out, attrs: AllAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::All(*#, #, #, #)".}

proc iAngle(root: Scope, input: Out, attrs: AngleAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Angle(*#, #, #)".}

proc iAny(root: Scope, input: Out, axis: Out, attrs: AnyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Any(*#, #, #, #)".}

proc iApproximateEqual(root: Scope, x: Out, y: Out, attrs: ApproximateEqualAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApproximateEqual(*#, #, #, #)".}

proc iArgMax(root: Scope, input: Out, dimension: Out, attrs: ArgMaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ArgMax(*#, #, #, #)".}

proc iArgMin(root: Scope, input: Out, dimension: Out, attrs: ArgMinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ArgMin(*#, #, #, #)".}

proc iAsin(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Asin(*#, #)".}

proc iAsinh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Asinh(*#, #)".}

proc iAtan(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Atan(*#, #)".}

proc iAtan2(root: Scope, y: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Atan2(*#, #, #)".}

proc iAtanh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Atanh(*#, #)".}

proc iBatchMatMul(root: Scope, x: Out, y: Out, attrs: BatchMatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BatchMatMul(*#, #, #, #)".}

proc iBesselI0e(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BesselI0e(*#, #)".}

proc iBesselI1e(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BesselI1e(*#, #)".}

proc iBetainc(root: Scope, a: Out, b: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Betainc(*#, #, #, #)".}

proc iBincount(root: Scope, arr: Out, size: Out, weights: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Bincount(*#, #, #, #)".}

proc iBucketize(root: Scope, input: Out, boundaries: ArraySlice[float]): Out {.header:std_ops, importcpp:"tensorflow::ops::Bucketize(*#, #, #)".}

proc iCast(root: Scope, x: Out, DstT: core.DType, attrs: CastAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Cast(*#, #, #, #)".}

proc iCeil(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Ceil(*#, #)".}

proc iClipByValue(root: Scope, t: Out, clip_value_min: Out, clip_value_max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ClipByValue(*#, #, #, #)".}

proc iCompareAndBitpack(root: Scope, input: Out, threshold: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::CompareAndBitpack(*#, #, #)".}

proc iComplex(root: Scope, real: Out, imag: Out, attrs: ComplexAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Complex(*#, #, #, #)".}

proc iComplexAbs(root: Scope, x: Out, attrs: ComplexAbsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ComplexAbs(*#, #, #)".}

proc iConj(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Conj(*#, #)".}

proc iCos(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Cos(*#, #)".}

proc iCosh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Cosh(*#, #)".}

proc iCross(root: Scope, a: Out, b: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Cross(*#, #, #)".}

proc iCumprod(root: Scope, x: Out, axis: Out, attrs: CumprodAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Cumprod(*#, #, #, #)".}

proc iCumsum(root: Scope, x: Out, axis: Out, attrs: CumsumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Cumsum(*#, #, #, #)".}

proc iDigamma(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Digamma(*#, #)".}

proc iDiv(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Div(*#, #, #)".}

proc iDivNoNan(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DivNoNan(*#, #, #)".}

proc iEqual(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Equal(*#, #, #)".}

proc iErf(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Erf(*#, #)".}

proc iErfc(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Erfc(*#, #)".}

proc iExp(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Exp(*#, #)".}

proc iExpm1(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Expm1(*#, #)".}

proc iFloor(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Floor(*#, #)".}

proc iFloorDiv(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FloorDiv(*#, #, #)".}

proc iFloorMod(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FloorMod(*#, #, #)".}

proc iGreater(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Greater(*#, #, #)".}

proc iGreaterEqual(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GreaterEqual(*#, #, #)".}

proc iHistogramFixedWidth(root: Scope, values: Out, value_range: Out, nbins: Out, attrs: HistogramFixedWidthAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::HistogramFixedWidth(*#, #, #, #, #)".}

proc iIgamma(root: Scope, a: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Igamma(*#, #, #)".}

proc iIgammac(root: Scope, a: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Igammac(*#, #, #)".}

proc iImag(root: Scope, input: Out, attrs: ImagAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Imag(*#, #, #)".}

proc iInv(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Inv(*#, #)".}

proc iIsFinite(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::IsFinite(*#, #)".}

proc iIsInf(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::IsInf(*#, #)".}

proc iIsNan(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::IsNan(*#, #)".}

proc iLess(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Less(*#, #, #)".}

proc iLessEqual(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LessEqual(*#, #, #)".}

proc iLgamma(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Lgamma(*#, #)".}

proc iLinSpace(root: Scope, start: Out, stop: Out, num: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LinSpace(*#, #, #, #)".}

proc iLog(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Log(*#, #)".}

proc iLog1p(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Log1p(*#, #)".}

proc iLogicalAnd(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LogicalAnd(*#, #, #)".}

proc iLogicalNot(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LogicalNot(*#, #)".}

proc iLogicalOr(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LogicalOr(*#, #, #)".}

proc iMatMul(root: Scope, a: Out, b: Out, attrs: MatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MatMul(*#, #, #, #)".}

proc iMax(root: Scope, input: Out, axis: Out, attrs: MaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Max(*#, #, #, #)".}

proc iMaximum(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Maximum(*#, #, #)".}

proc iMean(root: Scope, input: Out, axis: Out, attrs: MeanAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Mean(*#, #, #, #)".}

proc iMin(root: Scope, input: Out, axis: Out, attrs: MinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Min(*#, #, #, #)".}

proc iMinimum(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Minimum(*#, #, #)".}

proc iMod(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Mod(*#, #, #)".}

proc iMultiply(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Multiply(*#, #, #)".}

proc iNegate(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Negate(*#, #)".}

proc iNotEqual(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::NotEqual(*#, #, #)".}

proc iPolygamma(root: Scope, a: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Polygamma(*#, #, #)".}

proc iPow(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Pow(*#, #, #)".}

proc iProd(root: Scope, input: Out, axis: Out, attrs: ProdAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Prod(*#, #, #, #)".}

proc iQuantizeDownAndShrinkRange(root: Scope, input: Out, input_min: Out, input_max: Out, out_type: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizeDownAndShrinkRange(*#, #, #, #, #)".}

proc iQuantizedAdd(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out, attrs: QuantizedAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedAdd(*#, #, #, #, #, #, #, #)".}

proc iQuantizedMatMul(root: Scope, a: Out, b: Out, min_a: Out, max_a: Out, min_b: Out, max_b: Out, attrs: QuantizedMatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedMatMul(*#, #, #, #, #, #, #, #)".}

proc iQuantizedMul(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out, attrs: QuantizedMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedMul(*#, #, #, #, #, #, #, #)".}

proc iRange(root: Scope, start: Out, limit: Out, delta: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Range(*#, #, #, #)".}

proc iReal(root: Scope, input: Out, attrs: RealAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Real(*#, #, #)".}

proc iRealDiv(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RealDiv(*#, #, #)".}

proc iReciprocal(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Reciprocal(*#, #)".}

proc iRequantizationRange(root: Scope, input: Out, input_min: Out, input_max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RequantizationRange(*#, #, #, #)".}

proc iRint(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Rint(*#, #)".}

proc iRound(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Round(*#, #)".}

proc iRsqrt(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Rsqrt(*#, #)".}

proc iSegmentMax(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentMax(*#, #, #)".}

proc iSegmentMean(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentMean(*#, #, #)".}

proc iSegmentMin(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentMin(*#, #, #)".}

proc iSegmentProd(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentProd(*#, #, #)".}

proc iSegmentSum(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentSum(*#, #, #)".}

proc iSigmoid(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sigmoid(*#, #)".}

proc iSign(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sign(*#, #)".}

proc iSin(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sin(*#, #)".}

proc iSinh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sinh(*#, #)".}

proc iSparseMatMul(root: Scope, a: Out, b: Out, attrs: SparseMatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseMatMul(*#, #, #, #)".}

proc iSparseSegmentMean(root: Scope, data: Out, indices: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentMean(*#, #, #, #)".}

proc iSparseSegmentMeanWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentMeanWithNumSegments(*#, #, #, #, #)".}

proc iSparseSegmentSqrtN(root: Scope, data: Out, indices: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentSqrtN(*#, #, #, #)".}

proc iSparseSegmentSqrtNWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentSqrtNWithNumSegments(*#, #, #, #, #)".}

proc iSparseSegmentSum(root: Scope, data: Out, indices: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentSum(*#, #, #, #)".}

proc iSparseSegmentSumWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentSumWithNumSegments(*#, #, #, #, #)".}

proc iSqrt(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sqrt(*#, #)".}

proc iSquare(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Square(*#, #)".}

proc iSquaredDifference(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SquaredDifference(*#, #, #)".}

proc iSubtract(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Subtract(*#, #, #)".}

proc iSum(root: Scope, input: Out, axis: Out, attrs: SumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Sum(*#, #, #, #)".}

proc iTan(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Tan(*#, #)".}

proc iTanh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Tanh(*#, #)".}

proc iTruncateDiv(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TruncateDiv(*#, #, #)".}

proc iTruncateMod(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TruncateMod(*#, #, #)".}

proc iUnsortedSegmentMax(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnsortedSegmentMax(*#, #, #, #)".}

proc iUnsortedSegmentMin(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnsortedSegmentMin(*#, #, #, #)".}

proc iUnsortedSegmentProd(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnsortedSegmentProd(*#, #, #, #)".}

proc iUnsortedSegmentSum(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnsortedSegmentSum(*#, #, #, #)".}

proc iWhere3(root: Scope, condition: Out, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Where3(*#, #, #, #)".}

proc iXdivy(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Xdivy(*#, #, #)".}

proc iXlogy(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Xlogy(*#, #, #)".}

proc iZeta(root: Scope, x: Out, q: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Zeta(*#, #, #)".}

proc Abs(root: Scope, x: Out): Out =
  iAbs(root, x)

proc AccumulateNV2(root: Scope, inputs: InList, shape: TensorShape): Out =
  iAccumulateNV2(root, inputs, shape)

proc AccumulateNV2(root: Scope, inputs: OutList, shape: TensorShape): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulateNV2(*#, #, #)".}

proc Acos(root: Scope, x: Out): Out =
  iAcos(root, x)

proc Acosh(root: Scope, x: Out): Out =
  iAcosh(root, x)

proc Add(root: Scope, x: Out, y: Out): Out =
  iAdd(root, x, y)

proc AddN(root: Scope, inputs: InList): Out =
  iAddN(root, inputs)

proc AddN(root: Scope, inputs: OutList): Out {.header:std_ops, importcpp:"tensorflow::ops::AddN(*#, #)".}

proc AddV2(root: Scope, x: Out, y: Out): Out =
  iAddV2(root, x, y)

proc All(root: Scope, input: Out, axis: Out, attrs: AllAttrs): Out =
  iAll(root, input, axis, attrs)

proc All(root: Scope, input: Out, axis: Out, keepDims = none(bool)): Out =
  var attrs = AllAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return All(root, input, axis, attrs)

proc Angle(root: Scope, input: Out, attrs: AngleAttrs): Out =
  iAngle(root, input, attrs)

proc Angle(root: Scope, input: Out, tout = none(core.DType)): Out =
  var attrs = AngleAttrs()

  if tout.isSome:
    attrs = attrs.Tout(tout.get())

  return Angle(root, input, attrs)

proc Any(root: Scope, input: Out, axis: Out, attrs: AnyAttrs): Out =
  iAny(root, input, axis, attrs)

proc Any(root: Scope, input: Out, axis: Out, keepDims = none(bool)): Out =
  var attrs = AnyAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return Any(root, input, axis, attrs)

proc ApproximateEqual(root: Scope, x: Out, y: Out, attrs: ApproximateEqualAttrs): Out =
  iApproximateEqual(root, x, y, attrs)

proc ApproximateEqual(root: Scope, x: Out, y: Out, tolerance = none(float)): Out =
  var attrs = ApproximateEqualAttrs()

  if tolerance.isSome:
    attrs = attrs.Tolerance(tolerance.get())

  return ApproximateEqual(root, x, y, attrs)

proc ArgMax(root: Scope, input: Out, dimension: Out, attrs: ArgMaxAttrs): Out =
  iArgMax(root, input, dimension, attrs)

proc ArgMax(root: Scope, input: Out, dimension: Out, outputType = none(core.DType)): Out =
  var attrs = ArgMaxAttrs()

  if outputType.isSome:
    attrs = attrs.OutputType(outputType.get())

  return ArgMax(root, input, dimension, attrs)

proc ArgMin(root: Scope, input: Out, dimension: Out, attrs: ArgMinAttrs): Out =
  iArgMin(root, input, dimension, attrs)

proc ArgMin(root: Scope, input: Out, dimension: Out, outputType = none(core.DType)): Out =
  var attrs = ArgMinAttrs()

  if outputType.isSome:
    attrs = attrs.OutputType(outputType.get())

  return ArgMin(root, input, dimension, attrs)

proc Asin(root: Scope, x: Out): Out =
  iAsin(root, x)

proc Asinh(root: Scope, x: Out): Out =
  iAsinh(root, x)

proc Atan(root: Scope, x: Out): Out =
  iAtan(root, x)

proc Atan2(root: Scope, y: Out, x: Out): Out =
  iAtan2(root, y, x)

proc Atanh(root: Scope, x: Out): Out =
  iAtanh(root, x)

proc BatchMatMul(root: Scope, x: Out, y: Out, attrs: BatchMatMulAttrs): Out =
  iBatchMatMul(root, x, y, attrs)

proc BatchMatMul(root: Scope, x: Out, y: Out, adjX = none(bool), adjY = none(bool)): Out =
  var attrs = BatchMatMulAttrs()

  if adjX.isSome:
    attrs = attrs.AdjX(adjX.get())
  if adjY.isSome:
    attrs = attrs.AdjY(adjY.get())

  return BatchMatMul(root, x, y, attrs)

proc BesselI0e(root: Scope, x: Out): Out =
  iBesselI0e(root, x)

proc BesselI1e(root: Scope, x: Out): Out =
  iBesselI1e(root, x)

proc Betainc(root: Scope, a: Out, b: Out, x: Out): Out =
  iBetainc(root, a, b, x)

proc Bincount(root: Scope, arr: Out, size: Out, weights: Out): Out =
  iBincount(root, arr, size, weights)

proc Bucketize(root: Scope, input: Out, boundaries: ArraySlice[float]): Out =
  iBucketize(root, input, boundaries)

proc Cast(root: Scope, x: Out, DstT: core.DType, attrs: CastAttrs): Out =
  iCast(root, x, DstT, attrs)

proc Cast(root: Scope, x: Out, DstT: core.DType, truncate = none(bool)): Out =
  var attrs = CastAttrs()

  if truncate.isSome:
    attrs = attrs.Truncate(truncate.get())

  return Cast(root, x, DstT, attrs)

proc Ceil(root: Scope, x: Out): Out =
  iCeil(root, x)

proc ClipByValue(root: Scope, t: Out, clip_value_min: Out, clip_value_max: Out): Out =
  iClipByValue(root, t, clip_value_min, clip_value_max)

proc CompareAndBitpack(root: Scope, input: Out, threshold: Out): Out =
  iCompareAndBitpack(root, input, threshold)

proc Complex(root: Scope, real: Out, imag: Out, attrs: ComplexAttrs): Out =
  iComplex(root, real, imag, attrs)

proc Complex(root: Scope, real: Out, imag: Out, tout = none(core.DType)): Out =
  var attrs = ComplexAttrs()

  if tout.isSome:
    attrs = attrs.Tout(tout.get())

  return Complex(root, real, imag, attrs)

proc ComplexAbs(root: Scope, x: Out, attrs: ComplexAbsAttrs): Out =
  iComplexAbs(root, x, attrs)

proc ComplexAbs(root: Scope, x: Out, tout = none(core.DType)): Out =
  var attrs = ComplexAbsAttrs()

  if tout.isSome:
    attrs = attrs.Tout(tout.get())

  return ComplexAbs(root, x, attrs)

proc Conj(root: Scope, input: Out): Out =
  iConj(root, input)

proc Cos(root: Scope, x: Out): Out =
  iCos(root, x)

proc Cosh(root: Scope, x: Out): Out =
  iCosh(root, x)

proc Cross(root: Scope, a: Out, b: Out): Out =
  iCross(root, a, b)

proc Cumprod(root: Scope, x: Out, axis: Out, attrs: CumprodAttrs): Out =
  iCumprod(root, x, axis, attrs)

proc Cumprod(root: Scope, x: Out, axis: Out, exclusive = none(bool), reverse = none(bool)): Out =
  var attrs = CumprodAttrs()

  if exclusive.isSome:
    attrs = attrs.Exclusive(exclusive.get())
  if reverse.isSome:
    attrs = attrs.Reverse(reverse.get())

  return Cumprod(root, x, axis, attrs)

proc Cumsum(root: Scope, x: Out, axis: Out, attrs: CumsumAttrs): Out =
  iCumsum(root, x, axis, attrs)

proc Cumsum(root: Scope, x: Out, axis: Out, exclusive = none(bool), reverse = none(bool)): Out =
  var attrs = CumsumAttrs()

  if exclusive.isSome:
    attrs = attrs.Exclusive(exclusive.get())
  if reverse.isSome:
    attrs = attrs.Reverse(reverse.get())

  return Cumsum(root, x, axis, attrs)

proc Digamma(root: Scope, x: Out): Out =
  iDigamma(root, x)

proc Div(root: Scope, x: Out, y: Out): Out =
  iDiv(root, x, y)

proc DivNoNan(root: Scope, x: Out, y: Out): Out =
  iDivNoNan(root, x, y)

proc Equal(root: Scope, x: Out, y: Out): Out =
  iEqual(root, x, y)

proc Erf(root: Scope, x: Out): Out =
  iErf(root, x)

proc Erfc(root: Scope, x: Out): Out =
  iErfc(root, x)

proc Exp(root: Scope, x: Out): Out =
  iExp(root, x)

proc Expm1(root: Scope, x: Out): Out =
  iExpm1(root, x)

proc Floor(root: Scope, x: Out): Out =
  iFloor(root, x)

proc FloorDiv(root: Scope, x: Out, y: Out): Out =
  iFloorDiv(root, x, y)

proc FloorMod(root: Scope, x: Out, y: Out): Out =
  iFloorMod(root, x, y)

proc Greater(root: Scope, x: Out, y: Out): Out =
  iGreater(root, x, y)

proc GreaterEqual(root: Scope, x: Out, y: Out): Out =
  iGreaterEqual(root, x, y)

proc HistogramFixedWidth(root: Scope, values: Out, value_range: Out, nbins: Out, attrs: HistogramFixedWidthAttrs): Out =
  iHistogramFixedWidth(root, values, value_range, nbins, attrs)

proc HistogramFixedWidth(root: Scope, values: Out, value_range: Out, nbins: Out, dtype = none(core.DType)): Out =
  var attrs = HistogramFixedWidthAttrs()

  if dtype.isSome:
    attrs = attrs.Dtype(dtype.get())

  return HistogramFixedWidth(root, values, value_range, nbins, attrs)

proc Igamma(root: Scope, a: Out, x: Out): Out =
  iIgamma(root, a, x)

proc Igammac(root: Scope, a: Out, x: Out): Out =
  iIgammac(root, a, x)

proc Imag(root: Scope, input: Out, attrs: ImagAttrs): Out =
  iImag(root, input, attrs)

proc Imag(root: Scope, input: Out, tout = none(core.DType)): Out =
  var attrs = ImagAttrs()

  if tout.isSome:
    attrs = attrs.Tout(tout.get())

  return Imag(root, input, attrs)

proc Inv(root: Scope, x: Out): Out =
  iInv(root, x)

proc IsFinite(root: Scope, x: Out): Out =
  iIsFinite(root, x)

proc IsInf(root: Scope, x: Out): Out =
  iIsInf(root, x)

proc IsNan(root: Scope, x: Out): Out =
  iIsNan(root, x)

proc Less(root: Scope, x: Out, y: Out): Out =
  iLess(root, x, y)

proc LessEqual(root: Scope, x: Out, y: Out): Out =
  iLessEqual(root, x, y)

proc Lgamma(root: Scope, x: Out): Out =
  iLgamma(root, x)

proc LinSpace(root: Scope, start: Out, stop: Out, num: Out): Out =
  iLinSpace(root, start, stop, num)

proc Log(root: Scope, x: Out): Out =
  iLog(root, x)

proc Log1p(root: Scope, x: Out): Out =
  iLog1p(root, x)

proc LogicalAnd(root: Scope, x: Out, y: Out): Out =
  iLogicalAnd(root, x, y)

proc LogicalNot(root: Scope, x: Out): Out =
  iLogicalNot(root, x)

proc LogicalOr(root: Scope, x: Out, y: Out): Out =
  iLogicalOr(root, x, y)

proc MatMul(root: Scope, a: Out, b: Out, attrs: MatMulAttrs): Out =
  iMatMul(root, a, b, attrs)

proc MatMul(root: Scope, a: Out, b: Out, transposeA = none(bool), transposeB = none(bool)): Out =
  var attrs = MatMulAttrs()

  if transposeA.isSome:
    attrs = attrs.TransposeA(transposeA.get())
  if transposeB.isSome:
    attrs = attrs.TransposeB(transposeB.get())

  return MatMul(root, a, b, attrs)

proc Max(root: Scope, input: Out, axis: Out, attrs: MaxAttrs): Out =
  iMax(root, input, axis, attrs)

proc Max(root: Scope, input: Out, axis: Out, keepDims = none(bool)): Out =
  var attrs = MaxAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return Max(root, input, axis, attrs)

proc Maximum(root: Scope, x: Out, y: Out): Out =
  iMaximum(root, x, y)

proc Mean(root: Scope, input: Out, axis: Out, attrs: MeanAttrs): Out =
  iMean(root, input, axis, attrs)

proc Mean(root: Scope, input: Out, axis: Out, keepDims = none(bool)): Out =
  var attrs = MeanAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return Mean(root, input, axis, attrs)

proc Min(root: Scope, input: Out, axis: Out, attrs: MinAttrs): Out =
  iMin(root, input, axis, attrs)

proc Min(root: Scope, input: Out, axis: Out, keepDims = none(bool)): Out =
  var attrs = MinAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return Min(root, input, axis, attrs)

proc Minimum(root: Scope, x: Out, y: Out): Out =
  iMinimum(root, x, y)

proc Mod(root: Scope, x: Out, y: Out): Out =
  iMod(root, x, y)

proc Multiply(root: Scope, x: Out, y: Out): Out =
  iMultiply(root, x, y)

proc Negate(root: Scope, x: Out): Out =
  iNegate(root, x)

proc NotEqual(root: Scope, x: Out, y: Out): Out =
  iNotEqual(root, x, y)

proc Polygamma(root: Scope, a: Out, x: Out): Out =
  iPolygamma(root, a, x)

proc Pow(root: Scope, x: Out, y: Out): Out =
  iPow(root, x, y)

proc Prod(root: Scope, input: Out, axis: Out, attrs: ProdAttrs): Out =
  iProd(root, input, axis, attrs)

proc Prod(root: Scope, input: Out, axis: Out, keepDims = none(bool)): Out =
  var attrs = ProdAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return Prod(root, input, axis, attrs)

proc QuantizeDownAndShrinkRange(root: Scope, input: Out, input_min: Out, input_max: Out, out_type: core.DType): Out =
  iQuantizeDownAndShrinkRange(root, input, input_min, input_max, out_type)

proc QuantizedAdd(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out, attrs: QuantizedAddAttrs): Out =
  iQuantizedAdd(root, x, y, min_x, max_x, min_y, max_y, attrs)

proc QuantizedAdd(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out, toutput = none(core.DType)): Out =
  var attrs = QuantizedAddAttrs()

  if toutput.isSome:
    attrs = attrs.Toutput(toutput.get())

  return QuantizedAdd(root, x, y, min_x, max_x, min_y, max_y, attrs)

proc QuantizedMatMul(root: Scope, a: Out, b: Out, min_a: Out, max_a: Out, min_b: Out, max_b: Out, attrs: QuantizedMatMulAttrs): Out =
  iQuantizedMatMul(root, a, b, min_a, max_a, min_b, max_b, attrs)

proc QuantizedMatMul(root: Scope, a: Out, b: Out, min_a: Out, max_a: Out, min_b: Out, max_b: Out, tactivation = none(core.DType), toutput = none(core.DType), transposeA = none(bool), transposeB = none(bool)): Out =
  var attrs = QuantizedMatMulAttrs()

  if tactivation.isSome:
    attrs = attrs.Tactivation(tactivation.get())
  if toutput.isSome:
    attrs = attrs.Toutput(toutput.get())
  if transposeA.isSome:
    attrs = attrs.TransposeA(transposeA.get())
  if transposeB.isSome:
    attrs = attrs.TransposeB(transposeB.get())

  return QuantizedMatMul(root, a, b, min_a, max_a, min_b, max_b, attrs)

proc QuantizedMul(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out, attrs: QuantizedMulAttrs): Out =
  iQuantizedMul(root, x, y, min_x, max_x, min_y, max_y, attrs)

proc QuantizedMul(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out, toutput = none(core.DType)): Out =
  var attrs = QuantizedMulAttrs()

  if toutput.isSome:
    attrs = attrs.Toutput(toutput.get())

  return QuantizedMul(root, x, y, min_x, max_x, min_y, max_y, attrs)

proc Range(root: Scope, start: Out, limit: Out, delta: Out): Out =
  iRange(root, start, limit, delta)

proc Real(root: Scope, input: Out, attrs: RealAttrs): Out =
  iReal(root, input, attrs)

proc Real(root: Scope, input: Out, tout = none(core.DType)): Out =
  var attrs = RealAttrs()

  if tout.isSome:
    attrs = attrs.Tout(tout.get())

  return Real(root, input, attrs)

proc RealDiv(root: Scope, x: Out, y: Out): Out =
  iRealDiv(root, x, y)

proc Reciprocal(root: Scope, x: Out): Out =
  iReciprocal(root, x)

proc RequantizationRange(root: Scope, input: Out, input_min: Out, input_max: Out): Out =
  iRequantizationRange(root, input, input_min, input_max)

proc Rint(root: Scope, x: Out): Out =
  iRint(root, x)

proc Round(root: Scope, x: Out): Out =
  iRound(root, x)

proc Rsqrt(root: Scope, x: Out): Out =
  iRsqrt(root, x)

proc SegmentMax(root: Scope, data: Out, segment_ids: Out): Out =
  iSegmentMax(root, data, segment_ids)

proc SegmentMean(root: Scope, data: Out, segment_ids: Out): Out =
  iSegmentMean(root, data, segment_ids)

proc SegmentMin(root: Scope, data: Out, segment_ids: Out): Out =
  iSegmentMin(root, data, segment_ids)

proc SegmentProd(root: Scope, data: Out, segment_ids: Out): Out =
  iSegmentProd(root, data, segment_ids)

proc SegmentSum(root: Scope, data: Out, segment_ids: Out): Out =
  iSegmentSum(root, data, segment_ids)

proc Sigmoid(root: Scope, x: Out): Out =
  iSigmoid(root, x)

proc Sign(root: Scope, x: Out): Out =
  iSign(root, x)

proc Sin(root: Scope, x: Out): Out =
  iSin(root, x)

proc Sinh(root: Scope, x: Out): Out =
  iSinh(root, x)

proc SparseMatMul(root: Scope, a: Out, b: Out, attrs: SparseMatMulAttrs): Out =
  iSparseMatMul(root, a, b, attrs)

proc SparseMatMul(root: Scope, a: Out, b: Out, aIsSparse = none(bool), bIsSparse = none(bool), transposeA = none(bool), transposeB = none(bool)): Out =
  var attrs = SparseMatMulAttrs()

  if aIsSparse.isSome:
    attrs = attrs.AIsSparse(aIsSparse.get())
  if bIsSparse.isSome:
    attrs = attrs.BIsSparse(bIsSparse.get())
  if transposeA.isSome:
    attrs = attrs.TransposeA(transposeA.get())
  if transposeB.isSome:
    attrs = attrs.TransposeB(transposeB.get())

  return SparseMatMul(root, a, b, attrs)

proc SparseSegmentMean(root: Scope, data: Out, indices: Out, segment_ids: Out): Out =
  iSparseSegmentMean(root, data, indices, segment_ids)

proc SparseSegmentMeanWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out =
  iSparseSegmentMeanWithNumSegments(root, data, indices, segment_ids, num_segments)

proc SparseSegmentSqrtN(root: Scope, data: Out, indices: Out, segment_ids: Out): Out =
  iSparseSegmentSqrtN(root, data, indices, segment_ids)

proc SparseSegmentSqrtNWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out =
  iSparseSegmentSqrtNWithNumSegments(root, data, indices, segment_ids, num_segments)

proc SparseSegmentSum(root: Scope, data: Out, indices: Out, segment_ids: Out): Out =
  iSparseSegmentSum(root, data, indices, segment_ids)

proc SparseSegmentSumWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out =
  iSparseSegmentSumWithNumSegments(root, data, indices, segment_ids, num_segments)

proc Sqrt(root: Scope, x: Out): Out =
  iSqrt(root, x)

proc Square(root: Scope, x: Out): Out =
  iSquare(root, x)

proc SquaredDifference(root: Scope, x: Out, y: Out): Out =
  iSquaredDifference(root, x, y)

proc Subtract(root: Scope, x: Out, y: Out): Out =
  iSubtract(root, x, y)

proc Sum(root: Scope, input: Out, axis: Out, attrs: SumAttrs): Out =
  iSum(root, input, axis, attrs)

proc Sum(root: Scope, input: Out, axis: Out, keepDims = none(bool)): Out =
  var attrs = SumAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return Sum(root, input, axis, attrs)

proc Tan(root: Scope, x: Out): Out =
  iTan(root, x)

proc Tanh(root: Scope, x: Out): Out =
  iTanh(root, x)

proc TruncateDiv(root: Scope, x: Out, y: Out): Out =
  iTruncateDiv(root, x, y)

proc TruncateMod(root: Scope, x: Out, y: Out): Out =
  iTruncateMod(root, x, y)

proc UnsortedSegmentMax(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out =
  iUnsortedSegmentMax(root, data, segment_ids, num_segments)

proc UnsortedSegmentMin(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out =
  iUnsortedSegmentMin(root, data, segment_ids, num_segments)

proc UnsortedSegmentProd(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out =
  iUnsortedSegmentProd(root, data, segment_ids, num_segments)

proc UnsortedSegmentSum(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out =
  iUnsortedSegmentSum(root, data, segment_ids, num_segments)

proc Where3(root: Scope, condition: Out, x: Out, y: Out): Out =
  iWhere3(root, condition, x, y)

proc Xdivy(root: Scope, x: Out, y: Out): Out =
  iXdivy(root, x, y)

proc Xlogy(root: Scope, x: Out, y: Out): Out =
  iXlogy(root, x, y)

proc Zeta(root: Scope, x: Out, q: Out): Out =
  iZeta(root, x, q)

export Abs,
       AccumulateNV2,
       Acos,
       Acosh,
       Add,
       AddN,
       AddV2,
       All,
       Angle,
       Any,
       ApproximateEqual,
       ArgMax,
       ArgMin,
       Asin,
       Asinh,
       Atan,
       Atan2,
       Atanh,
       BatchMatMul,
       BesselI0e,
       BesselI1e,
       Betainc,
       Bincount,
       Bucketize,
       Cast,
       Ceil,
       ClipByValue,
       CompareAndBitpack,
       Complex,
       ComplexAbs,
       Conj,
       Cos,
       Cosh,
       Cross,
       Cumprod,
       Cumsum,
       Digamma,
       Div,
       DivNoNan,
       Equal,
       Erf,
       Erfc,
       Exp,
       Expm1,
       Floor,
       FloorDiv,
       FloorMod,
       Greater,
       GreaterEqual,
       HistogramFixedWidth,
       Igamma,
       Igammac,
       Imag,
       Inv,
       IsFinite,
       IsInf,
       IsNan,
       Less,
       LessEqual,
       Lgamma,
       LinSpace,
       Log,
       Log1p,
       LogicalAnd,
       LogicalNot,
       LogicalOr,
       MatMul,
       Max,
       Maximum,
       Mean,
       Min,
       Minimum,
       Mod,
       Multiply,
       Negate,
       NotEqual,
       Polygamma,
       Pow,
       Prod,
       QuantizeDownAndShrinkRange,
       QuantizedAdd,
       QuantizedMatMul,
       QuantizedMul,
       Range,
       Real,
       RealDiv,
       Reciprocal,
       RequantizationRange,
       Rint,
       Round,
       Rsqrt,
       SegmentMax,
       SegmentMean,
       SegmentMin,
       SegmentProd,
       SegmentSum,
       Sigmoid,
       Sign,
       Sin,
       Sinh,
       SparseMatMul,
       SparseSegmentMean,
       SparseSegmentMeanWithNumSegments,
       SparseSegmentSqrtN,
       SparseSegmentSqrtNWithNumSegments,
       SparseSegmentSum,
       SparseSegmentSumWithNumSegments,
       Sqrt,
       Square,
       SquaredDifference,
       Subtract,
       Sum,
       Tan,
       Tanh,
       TruncateDiv,
       TruncateMod,
       UnsortedSegmentMax,
       UnsortedSegmentMin,
       UnsortedSegmentProd,
       UnsortedSegmentSum,
       Where3,
       Xdivy,
       Xlogy,
       Zeta