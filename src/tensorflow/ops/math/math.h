#pragma once
#include "tensorflow/cc/framework/ops.h"
#include "tensorflow/cc/framework/scope.h"
#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/tensor_shape.h"
#include "tensorflow/core/framework/types.h"
#include "tensorflow/core/lib/gtl/array_slice.h"
#include "math.h"

#ifndef conversions 
#define conversions
template <typename T>
tensorflow::Tensor _to_tensor(std::initializer_list<T> _list, std::initializer_list<int> _dtype) {
    auto _ten = tensorflow::Tensor();
    _ten.FromProto(_list, _dtype);
    return _ten;
}
#endif
class Abs{
  public:
    Abs() {}
    Abs(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Acos{
  public:
    Acos() {}
    Acos(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Acosh{
  public:
    Acosh() {}
    Acosh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Add{
  public:
    Add() {}
    Add(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class AddN{
  public:
    AddN() {}
    AddN(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class AddV2{
  public:
    AddV2() {}
    AddV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Angle{
  public:
    Angle() {}
    Angle(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ApproximateEqual{
  public:
    ApproximateEqual() {}
    ApproximateEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           float tolerance = 9.999999747378752e-06);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ArgMax{
  public:
    ArgMax() {}
    ArgMax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input dimension, 
           tensorflow::DataType output_type = tensorflow::DT_INT64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ArgMin{
  public:
    ArgMin() {}
    ArgMin(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input dimension, 
           tensorflow::DataType output_type = tensorflow::DT_INT64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Asin{
  public:
    Asin() {}
    Asin(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Asinh{
  public:
    Asinh() {}
    Asinh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class AssignAdd{
  public:
    AssignAdd() {}
    AssignAdd(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Atan{
  public:
    Atan() {}
    Atan(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Atan2{
  public:
    Atan2() {}
    Atan2(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Atanh{
  public:
    Atanh() {}
    Atanh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchCholesky{
  public:
    BatchCholesky() {}
    BatchCholesky(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchCholeskyGrad{
  public:
    BatchCholeskyGrad() {}
    BatchCholeskyGrad(tensorflow::Scope& scope, 
           tensorflow::Input l, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchFFT{
  public:
    BatchFFT() {}
    BatchFFT(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchFFT2D{
  public:
    BatchFFT2D() {}
    BatchFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchFFT3D{
  public:
    BatchFFT3D() {}
    BatchFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchIFFT{
  public:
    BatchIFFT() {}
    BatchIFFT(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchIFFT2D{
  public:
    BatchIFFT2D() {}
    BatchIFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchIFFT3D{
  public:
    BatchIFFT3D() {}
    BatchIFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatMul{
  public:
    BatchMatMul() {}
    BatchMatMul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool adj_x = false, 
           bool adj_y = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixBandPart{
  public:
    BatchMatrixBandPart() {}
    BatchMatrixBandPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input num_lower, 
           tensorflow::Input num_upper, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixDeterminant{
  public:
    BatchMatrixDeterminant() {}
    BatchMatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixDiag{
  public:
    BatchMatrixDiag() {}
    BatchMatrixDiag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixDiagPart{
  public:
    BatchMatrixDiagPart() {}
    BatchMatrixDiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixInverse{
  public:
    BatchMatrixInverse() {}
    BatchMatrixInverse(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool adjoint = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixSetDiag{
  public:
    BatchMatrixSetDiag() {}
    BatchMatrixSetDiag(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixSolve{
  public:
    BatchMatrixSolve() {}
    BatchMatrixSolve(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           bool adjoint = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixSolveLs{
  public:
    BatchMatrixSolveLs() {}
    BatchMatrixSolveLs(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           tensorflow::Input l2_regularizer, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool fast = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchMatrixTriangularSolve{
  public:
    BatchMatrixTriangularSolve() {}
    BatchMatrixTriangularSolve(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           bool lower = true, 
           bool adjoint = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchSelfAdjointEig{
  public:
    BatchSelfAdjointEig() {}
    BatchSelfAdjointEig(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchSvd{
  public:
    BatchSvd() {}
    BatchSvd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_uv = true, 
           bool full_matrices = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BesselI0e{
  public:
    BesselI0e() {}
    BesselI0e(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BesselI1e{
  public:
    BesselI1e() {}
    BesselI1e(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Betainc{
  public:
    Betainc() {}
    Betainc(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Ceil{
  public:
    Ceil() {}
    Ceil(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class CheckNumerics{
  public:
    CheckNumerics() {}
    CheckNumerics(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string message, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Cholesky{
  public:
    Cholesky() {}
    Cholesky(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class CholeskyGrad{
  public:
    CholeskyGrad() {}
    CholeskyGrad(tensorflow::Scope& scope, 
           tensorflow::Input l, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Complex{
  public:
    Complex() {}
    Complex(tensorflow::Scope& scope, 
           tensorflow::Input real, 
           tensorflow::Input imag, 
           tensorflow::DataType Tout = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ComplexAbs{
  public:
    ComplexAbs() {}
    ComplexAbs(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType Tout = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Conj{
  public:
    Conj() {}
    Conj(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ConjugateTranspose{
  public:
    ConjugateTranspose() {}
    ConjugateTranspose(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input perm, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Cos{
  public:
    Cos() {}
    Cos(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Cosh{
  public:
    Cosh() {}
    Cosh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class CountUpTo{
  public:
    CountUpTo() {}
    CountUpTo(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           int64_t limit = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Cross{
  public:
    Cross() {}
    Cross(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Cumprod{
  public:
    Cumprod() {}
    Cumprod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           bool exclusive = false, 
           bool reverse = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Cumsum{
  public:
    Cumsum() {}
    Cumsum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           bool exclusive = false, 
           bool reverse = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Dequantize{
  public:
    Dequantize() {}
    Dequantize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_range, 
           tensorflow::Input max_range, 
           tensorflow::string mode = "MIN_COMBINED");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Diag{
  public:
    Diag() {}
    Diag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DiagPart{
  public:
    DiagPart() {}
    DiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Digamma{
  public:
    Digamma() {}
    Digamma(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Div{
  public:
    Div() {}
    Div(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DivNoNan{
  public:
    DivNoNan() {}
    DivNoNan(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Equal{
  public:
    Equal() {}
    Equal(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Erf{
  public:
    Erf() {}
    Erf(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Erfc{
  public:
    Erfc() {}
    Erfc(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Exp{
  public:
    Exp() {}
    Exp(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Expm1{
  public:
    Expm1() {}
    Expm1(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FFT{
  public:
    FFT() {}
    FFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FFT2D{
  public:
    FFT2D() {}
    FFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FFT3D{
  public:
    FFT3D() {}
    FFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Floor{
  public:
    Floor() {}
    Floor(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FloorDiv{
  public:
    FloorDiv() {}
    FloorDiv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FloorMod{
  public:
    FloorMod() {}
    FloorMod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Greater{
  public:
    Greater() {}
    Greater(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class GreaterEqual{
  public:
    GreaterEqual() {}
    GreaterEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IFFT{
  public:
    IFFT() {}
    IFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IFFT2D{
  public:
    IFFT2D() {}
    IFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IFFT3D{
  public:
    IFFT3D() {}
    IFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IRFFT{
  public:
    IRFFT() {}
    IRFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IRFFT2D{
  public:
    IRFFT2D() {}
    IRFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IRFFT3D{
  public:
    IRFFT3D() {}
    IRFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Igamma{
  public:
    Igamma() {}
    Igamma(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IgammaGradA{
  public:
    IgammaGradA() {}
    IgammaGradA(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Igammac{
  public:
    Igammac() {}
    Igammac(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Imag{
  public:
    Imag() {}
    Imag(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class InTopK{
  public:
    InTopK() {}
    InTopK(tensorflow::Scope& scope, 
           tensorflow::Input predictions, 
           tensorflow::Input targets, 
           int64_t k = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class InTopKV2{
  public:
    InTopKV2() {}
    InTopKV2(tensorflow::Scope& scope, 
           tensorflow::Input predictions, 
           tensorflow::Input targets, 
           tensorflow::Input k);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class InplaceAdd{
  public:
    InplaceAdd() {}
    InplaceAdd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input i, 
           tensorflow::Input v, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class InplaceSub{
  public:
    InplaceSub() {}
    InplaceSub(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input i, 
           tensorflow::Input v, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Inv{
  public:
    Inv() {}
    Inv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class InvGrad{
  public:
    InvGrad() {}
    InvGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IsFinite{
  public:
    IsFinite() {}
    IsFinite(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IsInf{
  public:
    IsInf() {}
    IsInf(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class IsNan{
  public:
    IsNan() {}
    IsNan(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Less{
  public:
    Less() {}
    Less(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LessEqual{
  public:
    LessEqual() {}
    LessEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Lgamma{
  public:
    Lgamma() {}
    Lgamma(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LinSpace{
  public:
    LinSpace() {}
    LinSpace(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input stop, 
           tensorflow::Input num, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Log{
  public:
    Log() {}
    Log(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Log1p{
  public:
    Log1p() {}
    Log1p(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LogMatrixDeterminant{
  public:
    LogMatrixDeterminant() {}
    LogMatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LogicalAnd{
  public:
    LogicalAnd() {}
    LogicalAnd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LogicalNot{
  public:
    LogicalNot() {}
    LogicalNot(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LogicalOr{
  public:
    LogicalOr() {}
    LogicalOr(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LowerBound{
  public:
    LowerBound() {}
    LowerBound(tensorflow::Scope& scope, 
           tensorflow::Input sorted_inputs, 
           tensorflow::Input values, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Lu{
  public:
    Lu() {}
    Lu(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType output_idx_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatMul{
  public:
    MatMul() {}
    MatMul(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           bool transpose_a = false, 
           bool transpose_b = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixBandPart{
  public:
    MatrixBandPart() {}
    MatrixBandPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input num_lower, 
           tensorflow::Input num_upper, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixDeterminant{
  public:
    MatrixDeterminant() {}
    MatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixDiag{
  public:
    MatrixDiag() {}
    MatrixDiag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixDiagPart{
  public:
    MatrixDiagPart() {}
    MatrixDiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixExponential{
  public:
    MatrixExponential() {}
    MatrixExponential(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixInverse{
  public:
    MatrixInverse() {}
    MatrixInverse(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool adjoint = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixLogarithm{
  public:
    MatrixLogarithm() {}
    MatrixLogarithm(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixSetDiag{
  public:
    MatrixSetDiag() {}
    MatrixSetDiag(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixSolve{
  public:
    MatrixSolve() {}
    MatrixSolve(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           bool adjoint = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixSolveLs{
  public:
    MatrixSolveLs() {}
    MatrixSolveLs(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           tensorflow::Input l2_regularizer, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool fast = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixSquareRoot{
  public:
    MatrixSquareRoot() {}
    MatrixSquareRoot(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MatrixTriangularSolve{
  public:
    MatrixTriangularSolve() {}
    MatrixTriangularSolve(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           bool lower = true, 
           bool adjoint = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Max{
  public:
    Max() {}
    Max(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Maximum{
  public:
    Maximum() {}
    Maximum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Mean{
  public:
    Mean() {}
    Mean(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Mfcc{
  public:
    Mfcc() {}
    Mfcc(tensorflow::Scope& scope, 
           tensorflow::Input spectrogram, 
           tensorflow::Input sample_rate, 
           float upper_frequency_limit = 4000.0, 
           float lower_frequency_limit = 20.0, 
           int64_t filterbank_channel_count = 40, 
           int64_t dct_coefficient_count = 13);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Min{
  public:
    Min() {}
    Min(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Minimum{
  public:
    Minimum() {}
    Minimum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Mod{
  public:
    Mod() {}
    Mod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Mul{
  public:
    Mul() {}
    Mul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Neg{
  public:
    Neg() {}
    Neg(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class NotEqual{
  public:
    NotEqual() {}
    NotEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class PadV2{
  public:
    PadV2() {}
    PadV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::Input constant_values, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Polygamma{
  public:
    Polygamma() {}
    Polygamma(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Pow{
  public:
    Pow() {}
    Pow(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Prod{
  public:
    Prod() {}
    Prod(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Qr{
  public:
    Qr() {}
    Qr(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool full_matrices = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class QuantizeV2{
  public:
    QuantizeV2() {}
    QuantizeV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_range, 
           tensorflow::Input max_range, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string mode = "MIN_COMBINED", 
           tensorflow::string round_mode = "HALF_AWAY_FROM_ZERO");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class QuantizedAdd{
  public:
    QuantizedAdd() {}
    QuantizedAdd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input min_x, 
           tensorflow::Input max_x, 
           tensorflow::Input min_y, 
           tensorflow::Input max_y, 
           tensorflow::DataType Toutput = tensorflow::DT_QINT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class QuantizedInstanceNorm{
  public:
    QuantizedInstanceNorm() {}
    QuantizedInstanceNorm(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input x_min, 
           tensorflow::Input x_max, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool output_range_given = false, 
           float given_y_min = 0.0, 
           float given_y_max = 0.0, 
           float variance_epsilon = 9.999999747378752e-06, 
           float min_separation = 0.001000000047497451);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class QuantizedMatMul{
  public:
    QuantizedMatMul() {}
    QuantizedMatMul(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           tensorflow::Input min_a, 
           tensorflow::Input max_a, 
           tensorflow::Input min_b, 
           tensorflow::Input max_b, 
           tensorflow::DataType Tactivation = tensorflow::DT_QUINT8, 
           bool transpose_b = false, 
           tensorflow::DataType Toutput = tensorflow::DT_QINT32, 
           bool transpose_a = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class QuantizedMul{
  public:
    QuantizedMul() {}
    QuantizedMul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input min_x, 
           tensorflow::Input max_x, 
           tensorflow::Input min_y, 
           tensorflow::Input max_y, 
           tensorflow::DataType Toutput = tensorflow::DT_QINT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RFFT{
  public:
    RFFT() {}
    RFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RFFT2D{
  public:
    RFFT2D() {}
    RFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RFFT3D{
  public:
    RFFT3D() {}
    RFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Real{
  public:
    Real() {}
    Real(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Reciprocal{
  public:
    Reciprocal() {}
    Reciprocal(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ReciprocalGrad{
  public:
    ReciprocalGrad() {}
    ReciprocalGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RefIdentity{
  public:
    RefIdentity() {}
    RefIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RequantizationRange{
  public:
    RequantizationRange() {}
    RequantizationRange(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Requantize{
  public:
    Requantize() {}
    Requantize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::Input requested_output_min, 
           tensorflow::Input requested_output_max, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResourceCountUpTo{
  public:
    ResourceCountUpTo() {}
    ResourceCountUpTo(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           int64_t limit = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResourceScatterAdd{
  public:
    ResourceScatterAdd() {}
    ResourceScatterAdd(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

#pragma once
class ResourceScatterDiv{
  public:
    ResourceScatterDiv() {}
    ResourceScatterDiv(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

#pragma once
class ResourceScatterMul{
  public:
    ResourceScatterMul() {}
    ResourceScatterMul(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

#pragma once
class ResourceScatterNdAdd{
  public:
    ResourceScatterNdAdd() {}
    ResourceScatterNdAdd(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           bool use_locking = true);
    tensorflow::Operation operation;
};

#pragma once
class ResourceScatterSub{
  public:
    ResourceScatterSub() {}
    ResourceScatterSub(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

#pragma once
class Rint{
  public:
    Rint() {}
    Rint(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Round{
  public:
    Round() {}
    Round(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Rsqrt{
  public:
    Rsqrt() {}
    Rsqrt(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RsqrtGrad{
  public:
    RsqrtGrad() {}
    RsqrtGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterAdd{
  public:
    ScatterAdd() {}
    ScatterAdd(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterDiv{
  public:
    ScatterDiv() {}
    ScatterDiv(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterMax{
  public:
    ScatterMax() {}
    ScatterMax(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterMin{
  public:
    ScatterMin() {}
    ScatterMin(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterMul{
  public:
    ScatterMul() {}
    ScatterMul(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterNdAdd{
  public:
    ScatterNdAdd() {}
    ScatterNdAdd(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterNdNonAliasingAdd{
  public:
    ScatterNdNonAliasingAdd() {}
    ScatterNdNonAliasingAdd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScatterSub{
  public:
    ScatterSub() {}
    ScatterSub(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SegmentMax{
  public:
    SegmentMax() {}
    SegmentMax(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SegmentMean{
  public:
    SegmentMean() {}
    SegmentMean(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SegmentMin{
  public:
    SegmentMin() {}
    SegmentMin(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SegmentProd{
  public:
    SegmentProd() {}
    SegmentProd(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SegmentSum{
  public:
    SegmentSum() {}
    SegmentSum(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SelfAdjointEig{
  public:
    SelfAdjointEig() {}
    SelfAdjointEig(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Sign{
  public:
    Sign() {}
    Sign(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Sin{
  public:
    Sin() {}
    Sin(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Sinh{
  public:
    Sinh() {}
    Sinh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Softsign{
  public:
    Softsign() {}
    Softsign(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseAdd{
  public:
    SparseAdd() {}
    SparseAdd(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b_indices, 
           tensorflow::Input b_values, 
           tensorflow::Input b_shape, 
           tensorflow::Input thresh);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseDenseCwiseMul{
  public:
    SparseDenseCwiseMul() {}
    SparseDenseCwiseMul(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::Input dense, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseMatMul{
  public:
    SparseMatMul() {}
    SparseMatMul(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           bool transpose_a = false, 
           bool transpose_b = false, 
           bool a_is_sparse = false, 
           bool b_is_sparse = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseReduceMaxSparse{
  public:
    SparseReduceMaxSparse() {}
    SparseReduceMaxSparse(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseReduceSum{
  public:
    SparseReduceSum() {}
    SparseReduceSum(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseReduceSumSparse{
  public:
    SparseReduceSumSparse() {}
    SparseReduceSumSparse(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSegmentMean{
  public:
    SparseSegmentMean() {}
    SparseSegmentMean(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSegmentMeanGrad{
  public:
    SparseSegmentMeanGrad() {}
    SparseSegmentMeanGrad(tensorflow::Scope& scope, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input output_dim0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSegmentMeanWithNumSegments{
  public:
    SparseSegmentMeanWithNumSegments() {}
    SparseSegmentMeanWithNumSegments(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSegmentSqrtN{
  public:
    SparseSegmentSqrtN() {}
    SparseSegmentSqrtN(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSegmentSqrtNGrad{
  public:
    SparseSegmentSqrtNGrad() {}
    SparseSegmentSqrtNGrad(tensorflow::Scope& scope, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input output_dim0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSegmentSqrtNWithNumSegments{
  public:
    SparseSegmentSqrtNWithNumSegments() {}
    SparseSegmentSqrtNWithNumSegments(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSegmentSum{
  public:
    SparseSegmentSum() {}
    SparseSegmentSum(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseSegmentSumWithNumSegments{
  public:
    SparseSegmentSumWithNumSegments() {}
    SparseSegmentSumWithNumSegments(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseTensorDenseAdd{
  public:
    SparseTensorDenseAdd() {}
    SparseTensorDenseAdd(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseTensorDenseMatMul{
  public:
    SparseTensorDenseMatMul() {}
    SparseTensorDenseMatMul(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool adjoint_b = false, 
           bool adjoint_a = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Sqrt{
  public:
    Sqrt() {}
    Sqrt(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SqrtGrad{
  public:
    SqrtGrad() {}
    SqrtGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Square{
  public:
    Square() {}
    Square(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SquaredDifference{
  public:
    SquaredDifference() {}
    SquaredDifference(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Sub{
  public:
    Sub() {}
    Sub(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Sum{
  public:
    Sum() {}
    Sum(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Svd{
  public:
    Svd() {}
    Svd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_uv = true, 
           bool full_matrices = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SymbolicGradient{
  public:
    SymbolicGradient() {}
    SymbolicGradient(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class Tan{
  public:
    Tan() {}
    Tan(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Tanh{
  public:
    Tanh() {}
    Tanh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TanhGrad{
  public:
    TanhGrad() {}
    TanhGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorScatterSub{
  public:
    TensorScatterSub() {}
    TensorScatterSub(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TopK{
  public:
    TopK() {}
    TopK(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t k = 0, 
           bool sorted = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TopKV2{
  public:
    TopKV2() {}
    TopKV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input k, 
           bool sorted = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnsortedSegmentMax{
  public:
    UnsortedSegmentMax() {}
    UnsortedSegmentMax(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnsortedSegmentMin{
  public:
    UnsortedSegmentMin() {}
    UnsortedSegmentMin(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnsortedSegmentProd{
  public:
    UnsortedSegmentProd() {}
    UnsortedSegmentProd(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnsortedSegmentSum{
  public:
    UnsortedSegmentSum() {}
    UnsortedSegmentSum(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UpperBound{
  public:
    UpperBound() {}
    UpperBound(tensorflow::Scope& scope, 
           tensorflow::Input sorted_inputs, 
           tensorflow::Input values, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Xdivy{
  public:
    Xdivy() {}
    Xdivy(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Xlogy{
  public:
    Xlogy() {}
    Xlogy(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Zeta{
  public:
    Zeta() {}
    Zeta(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input q, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

