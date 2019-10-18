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

class Acos{
  public:
    Acos() {}
    Acos(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Acosh{
  public:
    Acosh() {}
    Acosh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class AddN{
  public:
    AddN() {}
    AddN(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Angle{
  public:
    Angle() {}
    Angle(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Asin{
  public:
    Asin() {}
    Asin(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Asinh{
  public:
    Asinh() {}
    Asinh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Atan{
  public:
    Atan() {}
    Atan(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Atanh{
  public:
    Atanh() {}
    Atanh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchCholesky{
  public:
    BatchCholesky() {}
    BatchCholesky(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class BatchFFT{
  public:
    BatchFFT() {}
    BatchFFT(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchFFT2D{
  public:
    BatchFFT2D() {}
    BatchFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchFFT3D{
  public:
    BatchFFT3D() {}
    BatchFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchIFFT{
  public:
    BatchIFFT() {}
    BatchIFFT(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchIFFT2D{
  public:
    BatchIFFT2D() {}
    BatchIFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchIFFT3D{
  public:
    BatchIFFT3D() {}
    BatchIFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class BatchMatrixDeterminant{
  public:
    BatchMatrixDeterminant() {}
    BatchMatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchMatrixDiag{
  public:
    BatchMatrixDiag() {}
    BatchMatrixDiag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchMatrixDiagPart{
  public:
    BatchMatrixDiagPart() {}
    BatchMatrixDiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class BatchSelfAdjointEig{
  public:
    BatchSelfAdjointEig() {}
    BatchSelfAdjointEig(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class BesselI0e{
  public:
    BesselI0e() {}
    BesselI0e(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BesselI1e{
  public:
    BesselI1e() {}
    BesselI1e(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Ceil{
  public:
    Ceil() {}
    Ceil(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Cholesky{
  public:
    Cholesky() {}
    Cholesky(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class ComplexAbs{
  public:
    ComplexAbs() {}
    ComplexAbs(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType Tout = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conj{
  public:
    Conj() {}
    Conj(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Cos{
  public:
    Cos() {}
    Cos(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Cosh{
  public:
    Cosh() {}
    Cosh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Diag{
  public:
    Diag() {}
    Diag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DiagPart{
  public:
    DiagPart() {}
    DiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Digamma{
  public:
    Digamma() {}
    Digamma(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Equal{
  public:
    Equal() {}
    Equal(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Erf{
  public:
    Erf() {}
    Erf(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Erfc{
  public:
    Erfc() {}
    Erfc(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Exp{
  public:
    Exp() {}
    Exp(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Expm1{
  public:
    Expm1() {}
    Expm1(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FFT{
  public:
    FFT() {}
    FFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FFT2D{
  public:
    FFT2D() {}
    FFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FFT3D{
  public:
    FFT3D() {}
    FFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Floor{
  public:
    Floor() {}
    Floor(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Greater{
  public:
    Greater() {}
    Greater(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GreaterEqual{
  public:
    GreaterEqual() {}
    GreaterEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IFFT{
  public:
    IFFT() {}
    IFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IFFT2D{
  public:
    IFFT2D() {}
    IFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IFFT3D{
  public:
    IFFT3D() {}
    IFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IRFFT{
  public:
    IRFFT() {}
    IRFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IRFFT2D{
  public:
    IRFFT2D() {}
    IRFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IRFFT3D{
  public:
    IRFFT3D() {}
    IRFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Imag{
  public:
    Imag() {}
    Imag(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Inv{
  public:
    Inv() {}
    Inv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class IsFinite{
  public:
    IsFinite() {}
    IsFinite(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IsInf{
  public:
    IsInf() {}
    IsInf(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IsNan{
  public:
    IsNan() {}
    IsNan(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Less{
  public:
    Less() {}
    Less(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LessEqual{
  public:
    LessEqual() {}
    LessEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Lgamma{
  public:
    Lgamma() {}
    Lgamma(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Log{
  public:
    Log() {}
    Log(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Log1p{
  public:
    Log1p() {}
    Log1p(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LogMatrixDeterminant{
  public:
    LogMatrixDeterminant() {}
    LogMatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LogicalAnd{
  public:
    LogicalAnd() {}
    LogicalAnd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LogicalNot{
  public:
    LogicalNot() {}
    LogicalNot(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LogicalOr{
  public:
    LogicalOr() {}
    LogicalOr(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class MatrixDeterminant{
  public:
    MatrixDeterminant() {}
    MatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MatrixDiag{
  public:
    MatrixDiag() {}
    MatrixDiag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MatrixDiagPart{
  public:
    MatrixDiagPart() {}
    MatrixDiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MatrixExponential{
  public:
    MatrixExponential() {}
    MatrixExponential(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class MatrixLogarithm{
  public:
    MatrixLogarithm() {}
    MatrixLogarithm(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class MatrixSquareRoot{
  public:
    MatrixSquareRoot() {}
    MatrixSquareRoot(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Neg{
  public:
    Neg() {}
    Neg(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NotEqual{
  public:
    NotEqual() {}
    NotEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class RFFT{
  public:
    RFFT() {}
    RFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RFFT2D{
  public:
    RFFT2D() {}
    RFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RFFT3D{
  public:
    RFFT3D() {}
    RFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Real{
  public:
    Real() {}
    Real(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Reciprocal{
  public:
    Reciprocal() {}
    Reciprocal(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class RefIdentity{
  public:
    RefIdentity() {}
    RefIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class ResourceScatterAdd{
  public:
    ResourceScatterAdd() {}
    ResourceScatterAdd(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

class ResourceScatterDiv{
  public:
    ResourceScatterDiv() {}
    ResourceScatterDiv(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

class ResourceScatterMul{
  public:
    ResourceScatterMul() {}
    ResourceScatterMul(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

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

class ResourceScatterSub{
  public:
    ResourceScatterSub() {}
    ResourceScatterSub(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

class Rint{
  public:
    Rint() {}
    Rint(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Round{
  public:
    Round() {}
    Round(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Rsqrt{
  public:
    Rsqrt() {}
    Rsqrt(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class SelfAdjointEig{
  public:
    SelfAdjointEig() {}
    SelfAdjointEig(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Sign{
  public:
    Sign() {}
    Sign(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Sin{
  public:
    Sin() {}
    Sin(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Sinh{
  public:
    Sinh() {}
    Sinh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Softsign{
  public:
    Softsign() {}
    Softsign(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Sqrt{
  public:
    Sqrt() {}
    Sqrt(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Square{
  public:
    Square() {}
    Square(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

class Tan{
  public:
    Tan() {}
    Tan(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Tanh{
  public:
    Tanh() {}
    Tanh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

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

