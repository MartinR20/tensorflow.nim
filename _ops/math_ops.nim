import ../core/core.nim
import ../utils/utils.nim

proc Abs(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Abs(*@)".}

proc AccumulateNV2(root: Scope, inputs: InList, shape: PartialTensorShape): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulateNV2(*@)".}

proc Acos(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Acos(*@)".}

proc Acosh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Acosh(*@)".}

proc Add(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Add(*@)".}

proc AddN(root: Scope, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::AddN(*@)".}

proc AddV2(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AddV2(*@)".}

proc All(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::All(*@)".}

proc All(root: Scope, input: Out, axis: Out, attrs: AllAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::All(*@)".}

proc Angle(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Angle(*@)".}

proc Angle(root: Scope, input: Out, attrs: AngleAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Angle(*@)".}

proc Any(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Any(*@)".}

proc Any(root: Scope, input: Out, axis: Out, attrs: AnyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Any(*@)".}

proc ApproximateEqual(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ApproximateEqual(*@)".}

proc ApproximateEqual(root: Scope, x: Out, y: Out, attrs: ApproximateEqualAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ApproximateEqual(*@)".}

proc ArgMax(root: Scope, input: Out, dimension: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ArgMax(*@)".}

proc ArgMax(root: Scope, input: Out, dimension: Out, attrs: ArgMaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ArgMax(*@)".}

proc ArgMin(root: Scope, input: Out, dimension: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ArgMin(*@)".}

proc ArgMin(root: Scope, input: Out, dimension: Out, attrs: ArgMinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ArgMin(*@)".}

proc Asin(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Asin(*@)".}

proc Asinh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Asinh(*@)".}

proc Atan(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Atan(*@)".}

proc Atan2(root: Scope, y: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Atan2(*@)".}

proc Atanh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Atanh(*@)".}

proc BatchMatMul(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BatchMatMul(*@)".}

proc BatchMatMul(root: Scope, x: Out, y: Out, attrs: BatchMatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BatchMatMul(*@)".}

proc BesselI0e(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BesselI0e(*@)".}

proc BesselI1e(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BesselI1e(*@)".}

proc Betainc(root: Scope, a: Out, b: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Betainc(*@)".}

proc Bincount(root: Scope, arr: Out, size: Out, weights: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Bincount(*@)".}

proc Bucketize(root: Scope, input: Out, boundaries: ArraySlice[float]): Out {.header:std_ops, importcpp:"tensorflow::ops::Bucketize(*@)".}

proc Cast(root: Scope, x: Out, DstT: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::Cast(*@)".}

proc Cast(root: Scope, x: Out, DstT: DType, attrs: CastAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Cast(*@)".}

proc Ceil(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Ceil(*@)".}

proc ClipByValue(root: Scope, t: Out, clip_value_min: Out, clip_value_max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ClipByValue(*@)".}

proc CompareAndBitpack(root: Scope, input: Out, threshold: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::CompareAndBitpack(*@)".}

proc Complex(root: Scope, real: Out, imag: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Complex(*@)".}

proc Complex(root: Scope, real: Out, imag: Out, attrs: ComplexAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Complex(*@)".}

proc ComplexAbs(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ComplexAbs(*@)".}

proc ComplexAbs(root: Scope, x: Out, attrs: ComplexAbsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ComplexAbs(*@)".}

proc Conj(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Conj(*@)".}

proc Cos(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Cos(*@)".}

proc Cosh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Cosh(*@)".}

proc Cross(root: Scope, a: Out, b: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Cross(*@)".}

proc Cumprod(root: Scope, x: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Cumprod(*@)".}

proc Cumprod(root: Scope, x: Out, axis: Out, attrs: CumprodAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Cumprod(*@)".}

proc Cumsum(root: Scope, x: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Cumsum(*@)".}

proc Cumsum(root: Scope, x: Out, axis: Out, attrs: CumsumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Cumsum(*@)".}

proc Digamma(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Digamma(*@)".}

proc Div(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Div(*@)".}

proc DivNoNan(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DivNoNan(*@)".}

proc Equal(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Equal(*@)".}

proc Erf(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Erf(*@)".}

proc Erfc(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Erfc(*@)".}

proc Exp(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Exp(*@)".}

proc Expm1(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Expm1(*@)".}

proc Floor(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Floor(*@)".}

proc FloorDiv(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FloorDiv(*@)".}

proc FloorMod(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::FloorMod(*@)".}

proc Greater(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Greater(*@)".}

proc GreaterEqual(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GreaterEqual(*@)".}

proc HistogramFixedWidth(root: Scope, values: Out, value_range: Out, nbins: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::HistogramFixedWidth(*@)".}

proc HistogramFixedWidth(root: Scope, values: Out, value_range: Out, nbins: Out, attrs: HistogramFixedWidthAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::HistogramFixedWidth(*@)".}

proc Igamma(root: Scope, a: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Igamma(*@)".}

proc Igammac(root: Scope, a: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Igammac(*@)".}

proc Imag(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Imag(*@)".}

proc Imag(root: Scope, input: Out, attrs: ImagAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Imag(*@)".}

proc Inv(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Inv(*@)".}

proc IsFinite(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::IsFinite(*@)".}

proc IsInf(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::IsInf(*@)".}

proc IsNan(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::IsNan(*@)".}

proc Less(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Less(*@)".}

proc LessEqual(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LessEqual(*@)".}

proc Lgamma(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Lgamma(*@)".}

proc LinSpace(root: Scope, start: Out, stop: Out, num: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LinSpace(*@)".}

proc Log(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Log(*@)".}

proc Log1p(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Log1p(*@)".}

proc LogicalAnd(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LogicalAnd(*@)".}

proc LogicalNot(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LogicalNot(*@)".}

proc LogicalOr(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LogicalOr(*@)".}

proc MatMul(root: Scope, a: Out, b: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatMul(*@)".}

proc MatMul(root: Scope, a: Out, b: Out, attrs: MatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MatMul(*@)".}

proc Max(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Max(*@)".}

proc Max(root: Scope, input: Out, axis: Out, attrs: MaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Max(*@)".}

proc Maximum(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Maximum(*@)".}

proc Mean(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Mean(*@)".}

proc Mean(root: Scope, input: Out, axis: Out, attrs: MeanAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Mean(*@)".}

proc Min(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Min(*@)".}

proc Min(root: Scope, input: Out, axis: Out, attrs: MinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Min(*@)".}

proc Minimum(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Minimum(*@)".}

proc Mod(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Mod(*@)".}

proc Multiply(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Multiply(*@)".}

proc Negate(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Negate(*@)".}

proc NotEqual(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::NotEqual(*@)".}

proc Polygamma(root: Scope, a: Out, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Polygamma(*@)".}

proc Pow(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Pow(*@)".}

proc Prod(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Prod(*@)".}

proc Prod(root: Scope, input: Out, axis: Out, attrs: ProdAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Prod(*@)".}

proc QuantizeDownAndShrinkRange(root: Scope, input: Out, input_min: Out, input_max: Out, out_type: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizeDownAndShrinkRange(*@)".}

proc QuantizedAdd(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedAdd(*@)".}

proc QuantizedAdd(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out, attrs: QuantizedAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedAdd(*@)".}

proc QuantizedMatMul(root: Scope, a: Out, b: Out, min_a: Out, max_a: Out, min_b: Out, max_b: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedMatMul(*@)".}

proc QuantizedMatMul(root: Scope, a: Out, b: Out, min_a: Out, max_a: Out, min_b: Out, max_b: Out, attrs: QuantizedMatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedMatMul(*@)".}

x: bool): Out {.header:std_ops, importcpp:"tensorflow::ops::transposeA(*@)".}

x: bool): Out {.header:std_ops, importcpp:"tensorflow::ops::transposeB(*@)".}

proc QuantizedMul(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedMul(*@)".}

proc QuantizedMul(root: Scope, x: Out, y: Out, min_x: Out, max_x: Out, min_y: Out, max_y: Out, attrs: QuantizedMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedMul(*@)".}

proc Range(root: Scope, start: Out, limit: Out, delta: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Range(*@)".}

proc Real(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Real(*@)".}

proc Real(root: Scope, input: Out, attrs: RealAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Real(*@)".}

proc RealDiv(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RealDiv(*@)".}

proc Reciprocal(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Reciprocal(*@)".}

proc RequantizationRange(root: Scope, input: Out, input_min: Out, input_max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RequantizationRange(*@)".}

proc Rint(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Rint(*@)".}

proc Round(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Round(*@)".}

proc Rsqrt(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Rsqrt(*@)".}

proc SegmentMax(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentMax(*@)".}

proc SegmentMean(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentMean(*@)".}

proc SegmentMin(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentMin(*@)".}

proc SegmentProd(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentProd(*@)".}

proc SegmentSum(root: Scope, data: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SegmentSum(*@)".}

proc Sigmoid(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sigmoid(*@)".}

proc Sign(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sign(*@)".}

proc Sin(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sin(*@)".}

proc Sinh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sinh(*@)".}

proc SparseMatMul(root: Scope, a: Out, b: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseMatMul(*@)".}

proc SparseMatMul(root: Scope, a: Out, b: Out, attrs: SparseMatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseMatMul(*@)".}

proc SparseSegmentMean(root: Scope, data: Out, indices: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentMean(*@)".}

proc SparseSegmentMeanWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentMeanWithNumSegments(*@)".}

proc SparseSegmentSqrtN(root: Scope, data: Out, indices: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentSqrtN(*@)".}

proc SparseSegmentSqrtNWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentSqrtNWithNumSegments(*@)".}

proc SparseSegmentSum(root: Scope, data: Out, indices: Out, segment_ids: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentSum(*@)".}

proc SparseSegmentSumWithNumSegments(root: Scope, data: Out, indices: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSegmentSumWithNumSegments(*@)".}

proc Sqrt(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sqrt(*@)".}

proc Square(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Square(*@)".}

proc SquaredDifference(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SquaredDifference(*@)".}

proc Subtract(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Subtract(*@)".}

proc Sum(root: Scope, input: Out, axis: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Sum(*@)".}

proc Sum(root: Scope, input: Out, axis: Out, attrs: SumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Sum(*@)".}

proc Tan(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Tan(*@)".}

proc Tanh(root: Scope, x: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Tanh(*@)".}

proc TruncateDiv(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TruncateDiv(*@)".}

proc TruncateMod(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TruncateMod(*@)".}

proc UnsortedSegmentMax(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnsortedSegmentMax(*@)".}

proc UnsortedSegmentMin(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnsortedSegmentMin(*@)".}

proc UnsortedSegmentProd(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnsortedSegmentProd(*@)".}

proc UnsortedSegmentSum(root: Scope, data: Out, segment_ids: Out, num_segments: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnsortedSegmentSum(*@)".}

proc Where3(root: Scope, condition: Out, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Where3(*@)".}

proc Xdivy(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Xdivy(*@)".}

proc Xlogy(root: Scope, x: Out, y: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Xlogy(*@)".}

proc Zeta(root: Scope, x: Out, q: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Zeta(*@)".}

