#include "tensorflow/cc/framework/ops.h"
#include "tensorflow/cc/framework/scope.h"
#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/tensor_shape.h"
#include "tensorflow/core/framework/types.h"
#include "tensorflow/core/lib/gtl/array_slice.h"
#include "math.h"

template <typename T>
tensorflow::Tensor _to_tensor(std::initializer_list<T> _list, std::initializer_list<int> _dtype) {
    auto _ten = tensorflow::Tensor();
    _ten.FromProto(_list, _dtype);
    return _ten;
}

class GcsConfigureBlockCache{
  public:
    GcsConfigureBlockCache() {}
    GcsConfigureBlockCache(tensorflow::Scope& scope, 
           tensorflow::Input max_cache_size, 
           tensorflow::Input block_size, 
           tensorflow::Input max_staleness);
    tensorflow::Operation operation;
};

class GenerateBigQueryReaderPartitions{
  public:
    GenerateBigQueryReaderPartitions() {}
    GenerateBigQueryReaderPartitions(tensorflow::Scope& scope, 
           tensorflow::string project_id, 
           tensorflow::string dataset_id, 
           tensorflow::string table_id, 
           tensorflow::gtl::ArraySlice<tensorflow::string> columns, 
           tensorflow::string test_end_point, 
           int64_t timestamp_millis = 0, 
           int64_t num_partitions = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Fact{
  public:
    Fact() {}
    Fact(tensorflow::Scope& scope);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyAddSign{
  public:
    ResourceApplyAddSign() {}
    ResourceApplyAddSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input alpha, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceSparseApplyRMSProp{
  public:
    ResourceSparseApplyRMSProp() {}
    ResourceSparseApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceSparseApplyCenteredRMSProp{
  public:
    ResourceSparseApplyCenteredRMSProp() {}
    ResourceSparseApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class SparseApplyCenteredRMSProp{
  public:
    SparseApplyCenteredRMSProp() {}
    SparseApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseApplyRMSProp{
  public:
    SparseApplyRMSProp() {}
    SparseApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyRMSProp{
  public:
    ApplyRMSProp() {}
    ApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyAdaMax{
  public:
    ResourceApplyAdaMax() {}
    ResourceApplyAdaMax(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ApplyAdaMax{
  public:
    ApplyAdaMax() {}
    ApplyAdaMax(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyAdam{
  public:
    ApplyAdam() {}
    ApplyAdam(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input beta2_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false, 
           bool use_nesterov = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceSparseApplyKerasMomentum{
  public:
    ResourceSparseApplyKerasMomentum() {}
    ResourceSparseApplyKerasMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceApplyKerasMomentum{
  public:
    ResourceApplyKerasMomentum() {}
    ResourceApplyKerasMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceSparseApplyMomentum{
  public:
    ResourceSparseApplyMomentum() {}
    ResourceSparseApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceApplyMomentum{
  public:
    ResourceApplyMomentum() {}
    ResourceApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceSparseApplyFtrlV2{
  public:
    ResourceSparseApplyFtrlV2() {}
    ResourceSparseApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceSparseApplyFtrl{
  public:
    ResourceSparseApplyFtrl() {}
    ResourceSparseApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class SparseApplyFtrl{
  public:
    SparseApplyFtrl() {}
    SparseApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyFtrl{
  public:
    ApplyFtrl() {}
    ApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceSparseApplyAdagradDA{
  public:
    ResourceSparseApplyAdagradDA() {}
    ResourceSparseApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class SparseApplyProximalAdagrad{
  public:
    SparseApplyProximalAdagrad() {}
    SparseApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseApplyAdagradDA{
  public:
    SparseApplyAdagradDA() {}
    SparseApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyAdagradDA{
  public:
    ApplyAdagradDA() {}
    ApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceSparseApplyAdagrad{
  public:
    ResourceSparseApplyAdagrad() {}
    ResourceSparseApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool update_slots = true, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class SparseApplyAdagrad{
  public:
    SparseApplyAdagrad() {}
    SparseApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool update_slots = true, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyAdagrad{
  public:
    ResourceApplyAdagrad() {}
    ResourceApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           bool update_slots = true, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ApplyAdagrad{
  public:
    ApplyAdagrad() {}
    ApplyAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false, 
           bool update_slots = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseApplyAdadelta{
  public:
    SparseApplyAdadelta() {}
    SparseApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyAdadelta{
  public:
    ApplyAdadelta() {}
    ApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceSparseApplyProximalGradientDescent{
  public:
    ResourceSparseApplyProximalGradientDescent() {}
    ResourceSparseApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceApplyProximalGradientDescent{
  public:
    ResourceApplyProximalGradientDescent() {}
    ResourceApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input delta, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ApplyProximalGradientDescent{
  public:
    ApplyProximalGradientDescent() {}
    ApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input delta, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnicodeDecodeWithOffsets{
  public:
    UnicodeDecodeWithOffsets() {}
    UnicodeDecodeWithOffsets(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string errors = "replace", 
           int64_t replacement_char = 65533, 
           bool replace_control_characters = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnicodeTranscode{
  public:
    UnicodeTranscode() {}
    UnicodeTranscode(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string output_encoding, 
           tensorflow::string errors = "replace", 
           int64_t replacement_char = 65533, 
           bool replace_control_characters = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Substr{
  public:
    Substr() {}
    Substr(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pos, 
           tensorflow::Input len, 
           tensorflow::string unit = "BYTE");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeBase64{
  public:
    DecodeBase64() {}
    DecodeBase64(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EncodeBase64{
  public:
    EncodeBase64() {}
    EncodeBase64(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool pad = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StringSplit{
  public:
    StringSplit() {}
    StringSplit(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input delimiter, 
           bool skip_empty = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StringJoin{
  public:
    StringJoin() {}
    StringJoin(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::string separator);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReduceJoin{
  public:
    ReduceJoin() {}
    ReduceJoin(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input reduction_indices, 
           tensorflow::string separator, 
           bool keep_dims = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StringToHashBucketFast{
  public:
    StringToHashBucketFast() {}
    StringToHashBucketFast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t num_buckets = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StaticRegexReplace{
  public:
    StaticRegexReplace() {}
    StaticRegexReplace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string pattern, 
           tensorflow::string rewrite, 
           bool replace_global = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RegexReplace{
  public:
    RegexReplace() {}
    RegexReplace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pattern, 
           tensorflow::Input rewrite, 
           bool replace_global = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StatelessMultinomial{
  public:
    StatelessMultinomial() {}
    StatelessMultinomial(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::Input num_samples, 
           tensorflow::Input seed, 
           tensorflow::DataType output_dtype = tensorflow::DT_INT64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StatelessRandomUniformInt{
  public:
    StatelessRandomUniformInt() {}
    StatelessRandomUniformInt(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input seed, 
           tensorflow::Input minval, 
           tensorflow::Input maxval, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StatelessRandomNormal{
  public:
    StatelessRandomNormal() {}
    StatelessRandomNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input seed, 
           tensorflow::DataType dtype = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StatelessRandomUniform{
  public:
    StatelessRandomUniform() {}
    StatelessRandomUniform(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input seed, 
           tensorflow::DataType dtype = tensorflow::DT_FLOAT);
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

class ResourceScatterNdUpdate{
  public:
    ResourceScatterNdUpdate() {}
    ResourceScatterNdUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           bool use_locking = true);
    tensorflow::Operation operation;
};

class ScatterNdUpdate{
  public:
    ScatterNdUpdate() {}
    ScatterNdUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = true);
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

class ScatterUpdate{
  public:
    ScatterUpdate() {}
    ScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AssignSub{
  public:
    AssignSub() {}
    AssignSub(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Assign{
  public:
    Assign() {}
    Assign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool validate_shape = true, 
           bool use_locking = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DestroyTemporaryVariable{
  public:
    DestroyTemporaryVariable() {}
    DestroyTemporaryVariable(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::string var_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TemporaryVariable{
  public:
    TemporaryVariable() {}
    TemporaryVariable(tensorflow::Scope& scope, 
           tensorflow::string var_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IsVariableInitialized{
  public:
    IsVariableInitialized() {}
    IsVariableInitialized(tensorflow::Scope& scope, 
           tensorflow::Input ref);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class VariableV2{
  public:
    VariableV2() {}
    VariableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
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

class BatchFFT{
  public:
    BatchFFT() {}
    BatchFFT(tensorflow::Scope& scope, 
           tensorflow::Input input);
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

class IRFFT2D{
  public:
    IRFFT2D() {}
    IRFFT2D(tensorflow::Scope& scope, 
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

class IRFFT{
  public:
    IRFFT() {}
    IRFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length);
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

class FFT3D{
  public:
    FFT3D() {}
    FFT3D(tensorflow::Scope& scope, 
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

class FFT2D{
  public:
    FFT2D() {}
    FFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
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

class FFT{
  public:
    FFT() {}
    FFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WriteScalarSummary{
  public:
    WriteScalarSummary() {}
    WriteScalarSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input value);
    tensorflow::Operation operation;
};

class CloseSummaryWriter{
  public:
    CloseSummaryWriter() {}
    CloseSummaryWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer);
    tensorflow::Operation operation;
};

class FlushSummaryWriter{
  public:
    FlushSummaryWriter() {}
    FlushSummaryWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer);
    tensorflow::Operation operation;
};

class CreateSummaryDbWriter{
  public:
    CreateSummaryDbWriter() {}
    CreateSummaryDbWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input db_uri, 
           tensorflow::Input experiment_name, 
           tensorflow::Input run_name, 
           tensorflow::Input user_name);
    tensorflow::Operation operation;
};

class SummaryWriter{
  public:
    SummaryWriter() {}
    SummaryWriter(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseFillEmptyRowsGrad{
  public:
    SparseFillEmptyRowsGrad() {}
    SparseFillEmptyRowsGrad(tensorflow::Scope& scope, 
           tensorflow::Input reverse_index_map, 
           tensorflow::Input grad_values, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseFillEmptyRows{
  public:
    SparseFillEmptyRows() {}
    SparseFillEmptyRows(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input dense_shape, 
           tensorflow::Input default_value);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSparseMinimum{
  public:
    SparseSparseMinimum() {}
    SparseSparseMinimum(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b_indices, 
           tensorflow::Input b_values, 
           tensorflow::Input b_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSparseMaximum{
  public:
    SparseSparseMaximum() {}
    SparseSparseMaximum(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b_indices, 
           tensorflow::Input b_values, 
           tensorflow::Input b_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSoftmax{
  public:
    SparseSoftmax() {}
    SparseSoftmax(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseDenseCwiseAdd{
  public:
    SparseDenseCwiseAdd() {}
    SparseDenseCwiseAdd(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::Input dense, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseDenseCwiseDiv{
  public:
    SparseDenseCwiseDiv() {}
    SparseDenseCwiseDiv(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::Input dense, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseReduceMax{
  public:
    SparseReduceMax() {}
    SparseReduceMax(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseReshape{
  public:
    SparseReshape() {}
    SparseReshape(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_shape, 
           tensorflow::Input new_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseReorder{
  public:
    SparseReorder() {}
    SparseReorder(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSlice{
  public:
    SparseSlice() {}
    SparseSlice(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input shape, 
           tensorflow::Input start, 
           tensorflow::Input size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSliceGrad{
  public:
    SparseSliceGrad() {}
    SparseSliceGrad(tensorflow::Scope& scope, 
           tensorflow::Input backprop_val_grad, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_start, 
           tensorflow::Input output_indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseCross{
  public:
    SparseCross() {}
    SparseCross(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList values, 
           tensorflow::InputList shapes, 
           tensorflow::InputList dense_inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dense_types, 
           bool hashed_output = false, 
           int64_t num_buckets = 0, 
           int64_t hash_key = 0, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID, 
           tensorflow::DataType internal_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseConcat{
  public:
    SparseConcat() {}
    SparseConcat(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList values, 
           tensorflow::InputList shapes, 
           int64_t concat_dim = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeserializeManySparse{
  public:
    DeserializeManySparse() {}
    DeserializeManySparse(tensorflow::Scope& scope, 
           tensorflow::Input serialized_sparse, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SerializeManySparse{
  public:
    SerializeManySparse() {}
    SerializeManySparse(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::DataType out_type = tensorflow::DT_STRING);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SerializeSparse{
  public:
    SerializeSparse() {}
    SerializeSparse(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::DataType out_type = tensorflow::DT_STRING);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseAddGrad{
  public:
    SparseAddGrad() {}
    SparseAddGrad(tensorflow::Scope& scope, 
           tensorflow::Input backprop_val_grad, 
           tensorflow::Input a_indices, 
           tensorflow::Input b_indices, 
           tensorflow::Input sum_indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseToSparseSetOperation{
  public:
    SparseToSparseSetOperation() {}
    SparseToSparseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1_indices, 
           tensorflow::Input set1_values, 
           tensorflow::Input set1_shape, 
           tensorflow::Input set2_indices, 
           tensorflow::Input set2_values, 
           tensorflow::Input set2_shape, 
           tensorflow::string set_operation, 
           bool validate_indices = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DenseToDenseSetOperation{
  public:
    DenseToDenseSetOperation() {}
    DenseToDenseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1, 
           tensorflow::Input set2, 
           tensorflow::string set_operation, 
           bool validate_indices = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _Recv{
  public:
    _Recv() {}
    _Recv(tensorflow::Scope& scope, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           tensorflow::DataType tensor_type = tensorflow::DT_INVALID, 
           int64_t send_device_incarnation = 0, 
           bool client_terminated = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _Send{
  public:
    _Send() {}
    _Send(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           bool client_terminated = false, 
           int64_t send_device_incarnation = 0);
    tensorflow::Operation operation;
};

class SdcaFprint{
  public:
    SdcaFprint() {}
    SdcaFprint(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SdcaShrinkL1{
  public:
    SdcaShrinkL1() {}
    SdcaShrinkL1(tensorflow::Scope& scope, 
           tensorflow::Input weights, 
           int64_t num_features = 0, 
           float l1 = 0.0, 
           float l2 = 0.0);
    tensorflow::Operation operation;
};

class SdcaOptimizerV2{
  public:
    SdcaOptimizerV2() {}
    SdcaOptimizerV2(tensorflow::Scope& scope, 
           tensorflow::Input sparse_example_indices, 
           tensorflow::Input sparse_feature_indices, 
           tensorflow::Input sparse_feature_values, 
           tensorflow::Input dense_features, 
           tensorflow::Input example_weights, 
           tensorflow::Input example_labels, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_weights, 
           tensorflow::Input dense_weights, 
           tensorflow::Input example_state_data, 
           tensorflow::string loss_type, 
           bool adaptive = false, 
           int64_t num_sparse_features = 0, 
           int64_t num_sparse_features_with_values = 0, 
           int64_t num_dense_features = 0, 
           float l1 = 0.0, 
           float l2 = 0.0, 
           int64_t num_loss_partitions = 0, 
           int64_t num_inner_iterations = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SdcaOptimizer{
  public:
    SdcaOptimizer() {}
    SdcaOptimizer(tensorflow::Scope& scope, 
           tensorflow::Input sparse_example_indices, 
           tensorflow::Input sparse_feature_indices, 
           tensorflow::Input sparse_feature_values, 
           tensorflow::Input dense_features, 
           tensorflow::Input example_weights, 
           tensorflow::Input example_labels, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_weights, 
           tensorflow::Input dense_weights, 
           tensorflow::Input example_state_data, 
           tensorflow::string loss_type, 
           bool adaptative = false, 
           int64_t num_sparse_features = 0, 
           int64_t num_sparse_features_with_values = 0, 
           int64_t num_dense_features = 0, 
           float l1 = 0.0, 
           float l2 = 0.0, 
           int64_t num_loss_partitions = 0, 
           int64_t num_inner_iterations = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EagerPyFunc{
  public:
    EagerPyFunc() {}
    EagerPyFunc(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class PyFuncStateless{
  public:
    PyFuncStateless() {}
    PyFuncStateless(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class _ScopedAllocatorSplit{
  public:
    _ScopedAllocatorSplit() {}
    _ScopedAllocatorSplit(tensorflow::Scope& scope, 
           tensorflow::Input concat, 
           tensorflow::InputList split, 
           tensorflow::string sa_name, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t id = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class _ScopedAllocator{
  public:
    _ScopedAllocator() {}
    _ScopedAllocator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string sa_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t id = 0, 
           int64_t expected_call_count = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ConsumeMutexLock{
  public:
    ConsumeMutexLock() {}
    ConsumeMutexLock(tensorflow::Scope& scope, 
           tensorflow::Input mutex_lock);
    tensorflow::Operation operation;
};

class MutexLock{
  public:
    MutexLock() {}
    MutexLock(tensorflow::Scope& scope, 
           tensorflow::Input mutex);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutexV2{
  public:
    MutexV2() {}
    MutexV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceScatterUpdate{
  public:
    ResourceScatterUpdate() {}
    ResourceScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
};

class ResourceScatterMin{
  public:
    ResourceScatterMin() {}
    ResourceScatterMin(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
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

class VariableShape{
  public:
    VariableShape() {}
    VariableShape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RemoteFusedGraphExecute{
  public:
    RemoteFusedGraphExecute() {}
    RemoteFusedGraphExecute(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutputs, 
           tensorflow::string serialized_remote_fused_graph_execute_info);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class RandomPoissonV2{
  public:
    RandomPoissonV2() {}
    RandomPoissonV2(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input rate, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType dtype = tensorflow::DT_INT64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomPoisson{
  public:
    RandomPoisson() {}
    RandomPoisson(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input rate, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomGammaGrad{
  public:
    RandomGammaGrad() {}
    RandomGammaGrad(tensorflow::Scope& scope, 
           tensorflow::Input alpha, 
           tensorflow::Input sample, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Multinomial{
  public:
    Multinomial() {}
    Multinomial(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::Input num_samples, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType output_dtype = tensorflow::DT_INT64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomShuffle{
  public:
    RandomShuffle() {}
    RandomShuffle(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParameterizedTruncatedNormal{
  public:
    ParameterizedTruncatedNormal() {}
    ParameterizedTruncatedNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input means, 
           tensorflow::Input stdevs, 
           tensorflow::Input minvals, 
           tensorflow::Input maxvals, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomUniformInt{
  public:
    RandomUniformInt() {}
    RandomUniformInt(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input minval, 
           tensorflow::Input maxval, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType Tout = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomUniform{
  public:
    RandomUniform() {}
    RandomUniform(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RaggedGather{
  public:
    RaggedGather() {}
    RaggedGather(tensorflow::Scope& scope, 
           tensorflow::Input params_nested_splits, 
           tensorflow::Input params_dense_values, 
           tensorflow::Input indices, 
           int64_t OUTPUT_RAGGED_RANK = 0, 
           int64_t PARAMS_RAGGED_RANK = 0);
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

class StringToNumber{
  public:
    StringToNumber() {}
    StringToNumber(tensorflow::Scope& scope, 
           tensorflow::Input string_tensor, 
           tensorflow::DataType out_type = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeJSONExample{
  public:
    DecodeJSONExample() {}
    DecodeJSONExample(tensorflow::Scope& scope, 
           tensorflow::Input json_examples);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SerializeTensor{
  public:
    SerializeTensor() {}
    SerializeTensor(tensorflow::Scope& scope, 
           tensorflow::Input tensor);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParseTensor{
  public:
    ParseTensor() {}
    ParseTensor(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParseSequenceExample{
  public:
    ParseSequenceExample() {}
    ParseSequenceExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::Input debug_name, 
           tensorflow::InputList context_dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::string> feature_list_dense_missing_assumed_empty, 
           tensorflow::gtl::ArraySlice<tensorflow::string> context_sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> context_dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> feature_list_sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> feature_list_dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> context_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcontext_dense, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_dense_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> context_dense_shapes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> feature_list_dense_shapes, 
           int64_t Ncontext_sparse = 0, 
           int64_t Ncontext_dense = 0, 
           int64_t Nfeature_list_sparse = 0, 
           int64_t Nfeature_list_dense = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParseExample{
  public:
    ParseExample() {}
    ParseExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::Input names, 
           tensorflow::Input sparse_keys, 
           tensorflow::Input dense_keys, 
           tensorflow::InputList dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tdense, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> dense_shapes, 
           int64_t Nsparse = 0, 
           int64_t Ndense = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeCompressed{
  public:
    DecodeCompressed() {}
    DecodeCompressed(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::string compression_type);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedBatchNormWithGlobalNormalization{
  public:
    QuantizedBatchNormWithGlobalNormalization() {}
    QuantizedBatchNormWithGlobalNormalization(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input t_min, 
           tensorflow::Input t_max, 
           tensorflow::Input m, 
           tensorflow::Input m_min, 
           tensorflow::Input m_max, 
           tensorflow::Input v, 
           tensorflow::Input v_min, 
           tensorflow::Input v_max, 
           tensorflow::Input beta, 
           tensorflow::Input beta_min, 
           tensorflow::Input beta_max, 
           tensorflow::Input gamma, 
           tensorflow::Input gamma_min, 
           tensorflow::Input gamma_max, 
           bool scale_after_normalization = false, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID, 
           float variance_epsilon = 0.0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedReluX{
  public:
    QuantizedReluX() {}
    QuantizedReluX(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input max_value, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type = tensorflow::DT_QUINT8);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedRelu{
  public:
    QuantizedRelu() {}
    QuantizedRelu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type = tensorflow::DT_QUINT8);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ScatterNdSub{
  public:
    ScatterNdSub() {}
    ScatterNdSub(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedConv2D{
  public:
    QuantizedConv2D() {}
    QuantizedConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::Input min_filter, 
           tensorflow::Input max_filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1}, 
           tensorflow::DataType out_type = tensorflow::DT_QINT32);
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

class FractionalMaxPool{
  public:
    FractionalMaxPool() {}
    FractionalMaxPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<float> pooling_ratio, 
           bool pseudo_random = false, 
           bool overlapping = false, 
           bool deterministic = false, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NthElement{
  public:
    NthElement() {}
    NthElement(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input n, 
           bool reverse = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class DatasetToSingleElement{
  public:
    DatasetToSingleElement() {}
    DatasetToSingleElement(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class SoftmaxCrossEntropyWithLogits{
  public:
    SoftmaxCrossEntropyWithLogits() {}
    SoftmaxCrossEntropyWithLogits(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input labels, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LogSoftmax{
  public:
    LogSoftmax() {}
    LogSoftmax(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableHashTableV2{
  public:
    MutableHashTableV2() {}
    MutableHashTableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Softplus{
  public:
    Softplus() {}
    Softplus(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Selu{
  public:
    Selu() {}
    Selu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EluGrad{
  public:
    EluGrad() {}
    EluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input outputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LeakyReluGrad{
  public:
    LeakyReluGrad() {}
    LeakyReluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           float alpha = 0.2000000029802322, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackPush{
  public:
    StackPush() {}
    StackPush(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input elem, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool swap_memory = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LeakyRelu{
  public:
    LeakyRelu() {}
    LeakyRelu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           float alpha = 0.2000000029802322, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseSplit{
  public:
    SparseSplit() {}
    SparseSplit(tensorflow::Scope& scope, 
           tensorflow::Input split_dim, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input shape, 
           int64_t num_split = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RaggedRange{
  public:
    RaggedRange() {}
    RaggedRange(tensorflow::Scope& scope, 
           tensorflow::Input starts, 
           tensorflow::Input limits, 
           tensorflow::Input deltas);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderSerializeStateV2{
  public:
    ReaderSerializeStateV2() {}
    ReaderSerializeStateV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Relu6{
  public:
    Relu6() {}
    Relu6(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReluGrad{
  public:
    ReluGrad() {}
    ReluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class All{
  public:
    All() {}
    All(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Dilation2DBackpropInput{
  public:
    Dilation2DBackpropInput() {}
    Dilation2DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradWithArgmax{
  public:
    MaxPoolGradWithArgmax() {}
    MaxPoolGradWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input grad, 
           tensorflow::Input argmax, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradGradV2{
  public:
    MaxPoolGradGradV2() {}
    MaxPoolGradGradV2(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradV2{
  public:
    MaxPoolGradV2() {}
    MaxPoolGradV2(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Roll{
  public:
    Roll() {}
    Roll(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input shift, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGrad{
  public:
    MaxPoolGrad() {}
    MaxPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LRNGrad{
  public:
    LRNGrad() {}
    LRNGrad(tensorflow::Scope& scope, 
           tensorflow::Input input_grads, 
           tensorflow::Input input_image, 
           tensorflow::Input output_image, 
           int64_t depth_radius = 5, 
           float bias = 1.0, 
           float alpha = 1.0, 
           float beta = 0.5, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPool3DGradGrad{
  public:
    MaxPool3DGradGrad() {}
    MaxPool3DGradGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3DBackpropFilter{
  public:
    Conv3DBackpropFilter() {}
    Conv3DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3D{
  public:
    Conv3D() {}
    Conv3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CropAndResize{
  public:
    CropAndResize() {}
    CropAndResize(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::Input crop_size, 
           float extrapolation_value = 0.0, 
           tensorflow::string method = "bilinear");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DepthwiseConv2dNativeBackpropFilter{
  public:
    DepthwiseConv2dNativeBackpropFilter() {}
    DepthwiseConv2dNativeBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
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

class Conv2DBackpropInput{
  public:
    Conv2DBackpropInput() {}
    Conv2DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_cudnn_on_gpu = true, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _NcclReduceRecv{
  public:
    _NcclReduceRecv() {}
    _NcclReduceRecv(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv2D{
  public:
    Conv2D() {}
    Conv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_cudnn_on_gpu = true, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
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

class FusedBatchNormV2{
  public:
    FusedBatchNormV2() {}
    FusedBatchNormV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input offset, 
           tensorflow::Input mean, 
           tensorflow::Input variance, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool is_training = true, 
           float epsilon = 9.999999747378752e-05, 
           tensorflow::string data_format = "NHWC");
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

class FusedBatchNorm{
  public:
    FusedBatchNorm() {}
    FusedBatchNorm(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input offset, 
           tensorflow::Input mean, 
           tensorflow::Input variance, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           float epsilon = 9.999999747378752e-05, 
           tensorflow::string data_format = "NHWC", 
           bool is_training = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReduceDataset{
  public:
    ReduceDataset() {}
    ReduceDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList initial_state, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tstate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism = true);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class FakeQuantWithMinMaxArgs{
  public:
    FakeQuantWithMinMaxArgs() {}
    FakeQuantWithMinMaxArgs(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           float min = -6.0, 
           float max = 6.0, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchNormWithGlobalNormalization{
  public:
    BatchNormWithGlobalNormalization() {}
    BatchNormWithGlobalNormalization(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta, 
           tensorflow::Input gamma, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           float variance_epsilon = 0.0, 
           bool scale_after_normalization = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyFtrlV2{
  public:
    ApplyFtrlV2() {}
    ApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Where{
  public:
    Where() {}
    Where(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _NcclReduceSend{
  public:
    _NcclReduceSend() {}
    _NcclReduceSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
};

class GetSessionTensor{
  public:
    GetSessionTensor() {}
    GetSessionTensor(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
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

class NcclAllReduce{
  public:
    NcclAllReduce() {}
    NcclAllReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::string shared_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReadVariableOp{
  public:
    ReadVariableOp() {}
    ReadVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
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

class CompareAndBitpack{
  public:
    CompareAndBitpack() {}
    CompareAndBitpack(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input threshold);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizeDownAndShrinkRange{
  public:
    QuantizeDownAndShrinkRange() {}
    QuantizeDownAndShrinkRange(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID);
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

class BatchNormWithGlobalNormalizationGrad{
  public:
    BatchNormWithGlobalNormalizationGrad() {}
    BatchNormWithGlobalNormalizationGrad(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input gamma, 
           tensorflow::Input backprop, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           float variance_epsilon = 0.0, 
           bool scale_after_normalization = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Bincount{
  public:
    Bincount() {}
    Bincount(tensorflow::Scope& scope, 
           tensorflow::Input arr, 
           tensorflow::Input size, 
           tensorflow::Input weights, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DestroyResourceOp{
  public:
    DestroyResourceOp() {}
    DestroyResourceOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           bool ignore_lookup_error = true);
    tensorflow::Operation operation;
};

class HistogramFixedWidth{
  public:
    HistogramFixedWidth() {}
    HistogramFixedWidth(tensorflow::Scope& scope, 
           tensorflow::Input values, 
           tensorflow::Input value_range, 
           tensorflow::Input nbins, 
           tensorflow::DataType dtype = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchSelfAdjointEigV2{
  public:
    BatchSelfAdjointEigV2() {}
    BatchSelfAdjointEigV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_v = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NcclBroadcast{
  public:
    NcclBroadcast() {}
    NcclBroadcast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
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

class Conj{
  public:
    Conj() {}
    Conj(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_COMPLEX64);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalSleepDataset{
  public:
    ExperimentalSleepDataset() {}
    ExperimentalSleepDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input sleep_microseconds, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _MklAdd{
  public:
    _MklAdd() {}
    _MklAdd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class SparseSoftmaxCrossEntropyWithLogits{
  public:
    SparseSoftmaxCrossEntropyWithLogits() {}
    SparseSoftmaxCrossEntropyWithLogits(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input labels, 
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

class _ReadVariablesOp{
  public:
    _ReadVariablesOp() {}
    _ReadVariablesOp(tensorflow::Scope& scope, 
           tensorflow::InputList resources, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class L2Loss{
  public:
    L2Loss() {}
    L2Loss(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Cast{
  public:
    Cast() {}
    Cast(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           bool Truncate = false, 
           tensorflow::DataType DstT = tensorflow::DT_INVALID);
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

class ResizeBilinearGrad{
  public:
    ResizeBilinearGrad() {}
    ResizeBilinearGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input original_image, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
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

class AccumulatorApplyGradient{
  public:
    AccumulatorApplyGradient() {}
    AccumulatorApplyGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input local_step, 
           tensorflow::Input gradient);
    tensorflow::Operation operation;
};

class SampleDistortedBoundingBoxV2{
  public:
    SampleDistortedBoundingBoxV2() {}
    SampleDistortedBoundingBoxV2(tensorflow::Scope& scope, 
           tensorflow::Input image_size, 
           tensorflow::Input bounding_boxes, 
           tensorflow::Input min_object_covered, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::gtl::ArraySlice<float> aspect_ratio_range = {0.75, 1.330000042915344}, 
           tensorflow::gtl::ArraySlice<float> area_range = {0.05000000074505806, 1.0}, 
           int64_t max_attempts = 100, 
           bool use_image_if_no_bounding_boxes = false);
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

class SeluGrad{
  public:
    SeluGrad() {}
    SeluGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input outputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Select{
  public:
    Select() {}
    Select(tensorflow::Scope& scope, 
           tensorflow::Input condition, 
           tensorflow::Input t, 
           tensorflow::Input e, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CollectiveBcastSend{
  public:
    CollectiveBcastSend() {}
    CollectiveBcastSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t group_size = 0, 
           int64_t group_key = 0, 
           int64_t instance_key = 0, 
           tensorflow::PartialTensorShape shape = {});
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

class WriteGraphSummary{
  public:
    WriteGraphSummary() {}
    WriteGraphSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tensor);
    tensorflow::Operation operation;
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

class Equal{
  public:
    Equal() {}
    Equal(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
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

class GreaterEqual{
  public:
    GreaterEqual() {}
    GreaterEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceScatterMax{
  public:
    ResourceScatterMax() {}
    ResourceScatterMax(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates);
    tensorflow::Operation operation;
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

class Assert{
  public:
    Assert() {}
    Assert(tensorflow::Scope& scope, 
           tensorflow::Input condition, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           int64_t summarize = 3);
    tensorflow::Operation operation;
};

class Transpose{
  public:
    Transpose() {}
    Transpose(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input perm, 
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

class StringSplitV2{
  public:
    StringSplitV2() {}
    StringSplitV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input sep, 
           int64_t maxsplit = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ImportEvent{
  public:
    ImportEvent() {}
    ImportEvent(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input event);
    tensorflow::Operation operation;
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

class RealDiv{
  public:
    RealDiv() {}
    RealDiv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TruncateDiv{
  public:
    TruncateDiv() {}
    TruncateDiv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StringToHashBucketStrong{
  public:
    StringToHashBucketStrong() {}
    StringToHashBucketStrong(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> key, 
           int64_t num_buckets = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueEnqueue{
  public:
    QueueEnqueue() {}
    QueueEnqueue(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
};

class _MklSub{
  public:
    _MklSub() {}
    _MklSub(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AsString{
  public:
    AsString() {}
    AsString(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string fill, 
           int64_t width = -1, 
           int64_t precision = -1, 
           bool scientific = false, 
           bool shortest = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3DBackpropFilterV2{
  public:
    Conv3DBackpropFilterV2() {}
    Conv3DBackpropFilterV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
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

class TryRpc{
  public:
    TryRpc() {}
    TryRpc(tensorflow::Scope& scope, 
           tensorflow::Input address, 
           tensorflow::Input method, 
           tensorflow::Input request, 
           tensorflow::string protocol, 
           bool fail_fast = true, 
           int64_t timeout_in_ms = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceGather{
  public:
    ResourceGather() {}
    ResourceGather(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           bool validate_indices = true, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UniformCandidateSampler{
  public:
    UniformCandidateSampler() {}
    UniformCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true = 0, 
           int64_t num_sampled = 0, 
           bool unique = false, 
           int64_t range_max = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
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

class Floor{
  public:
    Floor() {}
    Floor(tensorflow::Scope& scope, 
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

class IsFinite{
  public:
    IsFinite() {}
    IsFinite(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPool3D{
  public:
    MaxPool3D() {}
    MaxPool3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class BesselI1e{
  public:
    BesselI1e() {}
    BesselI1e(tensorflow::Scope& scope, 
           tensorflow::Input x, 
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

class BiasAddGrad{
  public:
    BiasAddGrad() {}
    BiasAddGrad(tensorflow::Scope& scope, 
           tensorflow::Input out_backprop, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WriteHistogramSummary{
  public:
    WriteHistogramSummary() {}
    WriteHistogramSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input values);
    tensorflow::Operation operation;
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

class Cos{
  public:
    Cos() {}
    Cos(tensorflow::Scope& scope, 
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

class Digamma{
  public:
    Digamma() {}
    Digamma(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesSerializeEnsemble{
  public:
    BoostedTreesSerializeEnsemble() {}
    BoostedTreesSerializeEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle);
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

class Cosh{
  public:
    Cosh() {}
    Cosh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyProximalAdagrad{
  public:
    ResourceApplyProximalAdagrad() {}
    ResourceApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           bool use_locking = false);
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

class Asin{
  public:
    Asin() {}
    Asin(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _HostRecv{
  public:
    _HostRecv() {}
    _HostRecv(tensorflow::Scope& scope, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           tensorflow::DataType tensor_type = tensorflow::DT_INVALID, 
           int64_t send_device_incarnation = 0, 
           bool client_terminated = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalScanDataset{
  public:
    ExperimentalScanDataset() {}
    ExperimentalScanDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList initial_state, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tstate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality = false);
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

class TensorArraySize{
  public:
    TensorArraySize() {}
    TensorArraySize(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in);
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

class Exp{
  public:
    Exp() {}
    Exp(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class MutableHashTableOfTensors{
  public:
    MutableHashTableOfTensors() {}
    MutableHashTableOfTensors(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape value_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Dilation2D{
  public:
    Dilation2D() {}
    Dilation2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeserializeIterator{
  public:
    DeserializeIterator() {}
    DeserializeIterator(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle, 
           tensorflow::Input serialized);
    tensorflow::Operation operation;
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

class Rsqrt{
  public:
    Rsqrt() {}
    Rsqrt(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InitializeTableFromTextFile{
  public:
    InitializeTableFromTextFile() {}
    InitializeTableFromTextFile(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input filename, 
           int64_t key_index = 0, 
           int64_t value_index = 0, 
           int64_t vocab_size = -1, 
           tensorflow::string delimiter = "	");
    tensorflow::Operation operation;
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

class _MklMaximum{
  public:
    _MklMaximum() {}
    _MklMaximum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class Inv{
  public:
    Inv() {}
    Inv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalStatsAggregatorSummary{
  public:
    ExperimentalStatsAggregatorSummary() {}
    ExperimentalStatsAggregatorSummary(tensorflow::Scope& scope, 
           tensorflow::Input iterator);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _HostCast{
  public:
    _HostCast() {}
    _HostCast(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           bool Truncate = false, 
           tensorflow::DataType DstT = tensorflow::DT_INVALID);
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

class AccumulateNV2{
  public:
    AccumulateNV2() {}
    AccumulateNV2(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InitializeTableFromTextFileV2{
  public:
    InitializeTableFromTextFileV2() {}
    InitializeTableFromTextFileV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input filename, 
           int64_t key_index = 0, 
           int64_t value_index = 0, 
           int64_t vocab_size = -1, 
           tensorflow::string delimiter = "	");
    tensorflow::Operation operation;
};

class InitializeTable{
  public:
    InitializeTable() {}
    InitializeTable(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

class FractionalAvgPoolGrad{
  public:
    FractionalAvgPoolGrad() {}
    FractionalAvgPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_tensor_shape, 
           tensorflow::Input out_backprop, 
           tensorflow::Input row_pooling_sequence, 
           tensorflow::Input col_pooling_sequence, 
           bool overlapping = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableDenseHashTableV2{
  public:
    MutableDenseHashTableV2() {}
    MutableDenseHashTableV2(tensorflow::Scope& scope, 
           tensorflow::Input empty_key, 
           tensorflow::Input deleted_key, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           float max_load_factor = 0.800000011920929, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape value_shape = {}, 
           int64_t initial_num_buckets = 131072);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableHashTable{
  public:
    MutableHashTable() {}
    MutableHashTable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesCenterBias{
  public:
    BoostedTreesCenterBias() {}
    BoostedTreesCenterBias(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input mean_gradients, 
           tensorflow::Input mean_hessians, 
           tensorflow::Input l1, 
           tensorflow::Input l2);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class HashTableV2{
  public:
    HashTableV2() {}
    HashTableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class HashTable{
  public:
    HashTable() {}
    HashTable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LookupTableImportV2{
  public:
    LookupTableImportV2() {}
    LookupTableImportV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

class RegexFullMatch{
  public:
    RegexFullMatch() {}
    RegexFullMatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pattern);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LookupTableImport{
  public:
    LookupTableImport() {}
    LookupTableImport(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

class NonMaxSuppressionWithOverlaps{
  public:
    NonMaxSuppressionWithOverlaps() {}
    NonMaxSuppressionWithOverlaps(tensorflow::Scope& scope, 
           tensorflow::Input overlaps, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input overlap_threshold, 
           tensorflow::Input score_threshold);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LookupTableExportV2{
  public:
    LookupTableExportV2() {}
    LookupTableExportV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::DataType Tkeys = tensorflow::DT_INVALID, 
           tensorflow::DataType Tvalues = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AssignVariableOp{
  public:
    AssignVariableOp() {}
    AssignVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value);
    tensorflow::Operation operation;
};

class LookupTableSize{
  public:
    LookupTableSize() {}
    LookupTableSize(tensorflow::Scope& scope, 
           tensorflow::Input table_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PaddingFIFOQueueV2{
  public:
    PaddingFIFOQueueV2() {}
    PaddingFIFOQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LookupTableFind{
  public:
    LookupTableFind() {}
    LookupTableFind(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input default_value, 
           tensorflow::DataType Tout = tensorflow::DT_INVALID);
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

class Timestamp{
  public:
    Timestamp() {}
    Timestamp(tensorflow::Scope& scope);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MergeSummary{
  public:
    MergeSummary() {}
    MergeSummary(tensorflow::Scope& scope, 
           tensorflow::InputList inputs);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AvgPool{
  public:
    AvgPool() {}
    AvgPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AudioSummaryV2{
  public:
    AudioSummaryV2() {}
    AudioSummaryV2(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input sample_rate, 
           int64_t max_outputs = 3);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class HistogramSummary{
  public:
    HistogramSummary() {}
    HistogramSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input values);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListScatter{
  public:
    TensorListScatter() {}
    TensorListScatter(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input element_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListSetItem{
  public:
    TensorListSetItem() {}
    TensorListSetItem(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input index, 
           tensorflow::Input item);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ClipByValue{
  public:
    ClipByValue() {}
    ClipByValue(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::Input clip_value_min, 
           tensorflow::Input clip_value_max, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListReserve{
  public:
    TensorListReserve() {}
    TensorListReserve(tensorflow::Scope& scope, 
           tensorflow::Input element_shape, 
           tensorflow::Input num_elements, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalThreadPoolHandle{
  public:
    ExperimentalThreadPoolHandle() {}
    ExperimentalThreadPoolHandle(tensorflow::Scope& scope, 
           tensorflow::string display_name, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t num_threads = 0, 
           int64_t max_intra_op_parallelism = 1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListFromTensor{
  public:
    TensorListFromTensor() {}
    TensorListFromTensor(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input element_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListStack{
  public:
    TensorListStack() {}
    TensorListStack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID, 
           int64_t num_elements = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _MklMul{
  public:
    _MklMul() {}
    _MklMul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorScatterUpdate{
  public:
    TensorScatterUpdate() {}
    TensorScatterUpdate(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TakeDataset{
  public:
    TakeDataset() {}
    TakeDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListPopBack{
  public:
    TensorListPopBack() {}
    TensorListPopBack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListLength{
  public:
    TensorListLength() {}
    TensorListLength(tensorflow::Scope& scope, 
           tensorflow::Input input_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalIndexedDatasetGet{
  public:
    ExperimentalIndexedDatasetGet() {}
    ExperimentalIndexedDatasetGet(tensorflow::Scope& scope, 
           tensorflow::Input materialized, 
           tensorflow::Input index, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class TensorListPushBackBatch{
  public:
    TensorListPushBackBatch() {}
    TensorListPushBackBatch(tensorflow::Scope& scope, 
           tensorflow::Input input_handles, 
           tensorflow::Input tensor);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EmptyTensorList{
  public:
    EmptyTensorList() {}
    EmptyTensorList(tensorflow::Scope& scope, 
           tensorflow::Input element_shape, 
           tensorflow::Input max_num_elements, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomStandardNormal{
  public:
    RandomStandardNormal() {}
    RandomStandardNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
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

class QuantizedBiasAdd{
  public:
    QuantizedBiasAdd() {}
    QuantizedBiasAdd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input bias, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::Input min_bias, 
           tensorflow::Input max_bias, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DataFormatVecPermute{
  public:
    DataFormatVecPermute() {}
    DataFormatVecPermute(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INT32, 
           tensorflow::string src_format = "NHWC", 
           tensorflow::string dst_format = "NCHW");
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

class DebugNumericSummary{
  public:
    DebugNumericSummary() {}
    DebugNumericSummary(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           bool gated_grpc = false, 
           float lower_bound = -INFINITY, 
           float upper_bound = INFINITY, 
           bool mute_if_healthy = false);
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

class LookupTableFindV2{
  public:
    LookupTableFindV2() {}
    LookupTableFindV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input default_value, 
           tensorflow::DataType Tout = tensorflow::DT_INVALID);
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

class CollectiveBcastRecv{
  public:
    CollectiveBcastRecv() {}
    CollectiveBcastRecv(tensorflow::Scope& scope, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t group_size = 0, 
           int64_t group_key = 0, 
           int64_t instance_key = 0, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayScatterV3{
  public:
    TensorArrayScatterV3() {}
    TensorArrayScatterV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
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

class SelfAdjointEig{
  public:
    SelfAdjointEig() {}
    SelfAdjointEig(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Reshape{
  public:
    Reshape() {}
    Reshape(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input shape, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class StaticRegexFullMatch{
  public:
    StaticRegexFullMatch() {}
    StaticRegexFullMatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string pattern);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParseSingleSequenceExample{
  public:
    ParseSingleSequenceExample() {}
    ParseSingleSequenceExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::Input feature_list_dense_missing_assumed_empty, 
           tensorflow::Input context_sparse_keys, 
           tensorflow::Input context_dense_keys, 
           tensorflow::Input feature_list_sparse_keys, 
           tensorflow::Input feature_list_dense_keys, 
           tensorflow::InputList context_dense_defaults, 
           tensorflow::Input debug_name, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> context_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcontext_dense, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_dense_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> context_dense_shapes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> feature_list_sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> feature_list_dense_shapes, 
           int64_t Ncontext_sparse = 0, 
           int64_t Ncontext_dense = 0, 
           int64_t Nfeature_list_sparse = 0, 
           int64_t Nfeature_list_dense = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LookupTableExport{
  public:
    LookupTableExport() {}
    LookupTableExport(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::DataType Tkeys = tensorflow::DT_INVALID, 
           tensorflow::DataType Tvalues = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueDequeue{
  public:
    QueueDequeue() {}
    QueueDequeue(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class TensorListSplit{
  public:
    TensorListSplit() {}
    TensorListSplit(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input element_shape, 
           tensorflow::Input lengths);
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

class MatrixDeterminant{
  public:
    MatrixDeterminant() {}
    MatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
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

class MatchingFiles{
  public:
    MatchingFiles() {}
    MatchingFiles(tensorflow::Scope& scope, 
           tensorflow::Input pattern);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WriteImageSummary{
  public:
    WriteImageSummary() {}
    WriteImageSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input bad_color, 
           int64_t max_images = 3);
    tensorflow::Operation operation;
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

class TensorArrayConcatV2{
  public:
    TensorArrayConcatV2() {}
    TensorArrayConcatV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape_except0 = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WriteFile{
  public:
    WriteFile() {}
    WriteFile(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input contents);
    tensorflow::Operation operation;
};

class TruncatedNormal{
  public:
    TruncatedNormal() {}
    TruncatedNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReadFile{
  public:
    ReadFile() {}
    ReadFile(tensorflow::Scope& scope, 
           tensorflow::Input filename);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxVarsPerChannelGradient{
  public:
    FakeQuantWithMinMaxVarsPerChannelGradient() {}
    FakeQuantWithMinMaxVarsPerChannelGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PrintV2{
  public:
    PrintV2() {}
    PrintV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string output_stream = "stderr");
    tensorflow::Operation operation;
};

class ReaderResetV2{
  public:
    ReaderResetV2() {}
    ReaderResetV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
};

class ReaderSerializeState{
  public:
    ReaderSerializeState() {}
    ReaderSerializeState(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderNumWorkUnitsCompletedV2{
  public:
    ReaderNumWorkUnitsCompletedV2() {}
    ReaderNumWorkUnitsCompletedV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
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

class Greater{
  public:
    Greater() {}
    Greater(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderNumWorkUnitsCompleted{
  public:
    ReaderNumWorkUnitsCompleted() {}
    ReaderNumWorkUnitsCompleted(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeRaw{
  public:
    DecodeRaw() {}
    DecodeRaw(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID, 
           bool little_endian = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderNumRecordsProducedV2{
  public:
    ReaderNumRecordsProducedV2() {}
    ReaderNumRecordsProducedV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
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

class ReaderReadV2{
  public:
    ReaderReadV2() {}
    ReaderReadV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle);
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

class IdentityReader{
  public:
    IdentityReader() {}
    IdentityReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Slice{
  public:
    Slice() {}
    Slice(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input begin, 
           tensorflow::Input size, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LMDBReader{
  public:
    LMDBReader() {}
    LMDBReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TFRecordReaderV2{
  public:
    TFRecordReaderV2() {}
    TFRecordReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string compression_type);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TFRecordReader{
  public:
    TFRecordReader() {}
    TFRecordReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string compression_type);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FixedLengthRecordReaderV2{
  public:
    FixedLengthRecordReaderV2() {}
    FixedLengthRecordReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string encoding, 
           int64_t header_bytes = 0, 
           int64_t record_bytes = 0, 
           int64_t footer_bytes = 0, 
           int64_t hop_bytes = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IdentityReaderV2{
  public:
    IdentityReaderV2() {}
    IdentityReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TextLineReaderV2{
  public:
    TextLineReaderV2() {}
    TextLineReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t skip_header_lines = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ShardedFilename{
  public:
    ShardedFilename() {}
    ShardedFilename(tensorflow::Scope& scope, 
           tensorflow::Input basename, 
           tensorflow::Input shard, 
           tensorflow::Input num_shards);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RestoreSlice{
  public:
    RestoreSlice() {}
    RestoreSlice(tensorflow::Scope& scope, 
           tensorflow::Input file_pattern, 
           tensorflow::Input tensor_name, 
           tensorflow::Input shape_and_slice, 
           tensorflow::DataType dt = tensorflow::DT_INVALID, 
           int64_t preferred_shard = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Restore{
  public:
    Restore() {}
    Restore(tensorflow::Scope& scope, 
           tensorflow::Input file_pattern, 
           tensorflow::Input tensor_name, 
           tensorflow::DataType dt = tensorflow::DT_INVALID, 
           int64_t preferred_shard = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SaveSlices{
  public:
    SaveSlices() {}
    SaveSlices(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shapes_and_slices, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T);
    tensorflow::Operation operation;
};

class Save{
  public:
    Save() {}
    Save(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input tensor_names, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T);
    tensorflow::Operation operation;
};

class MergeV2Checkpoints{
  public:
    MergeV2Checkpoints() {}
    MergeV2Checkpoints(tensorflow::Scope& scope, 
           tensorflow::Input checkpoint_prefixes, 
           tensorflow::Input destination_prefix, 
           bool delete_old_dirs = true);
    tensorflow::Operation operation;
};

class NonMaxSuppressionV2{
  public:
    NonMaxSuppressionV2() {}
    NonMaxSuppressionV2(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RefExit{
  public:
    RefExit() {}
    RefExit(tensorflow::Scope& scope, 
           tensorflow::Input data, 
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

class LookupTableRemoveV2{
  public:
    LookupTableRemoveV2() {}
    LookupTableRemoveV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys);
    tensorflow::Operation operation;
};

class NonMaxSuppression{
  public:
    NonMaxSuppression() {}
    NonMaxSuppression(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           float iou_threshold = 0.5);
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

class CropAndResizeGradImage{
  public:
    CropAndResizeGradImage() {}
    CropAndResizeGradImage(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::Input image_size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string method = "bilinear");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AdjustSaturation{
  public:
    AdjustSaturation() {}
    AdjustSaturation(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input scale);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyPowerSign{
  public:
    ApplyPowerSign() {}
    ApplyPowerSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input logbase, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedAvgPool{
  public:
    QuantizedAvgPool() {}
    QuantizedAvgPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AdjustContrastv2{
  public:
    AdjustContrastv2() {}
    AdjustContrastv2(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input contrast_factor);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Rank{
  public:
    Rank() {}
    Rank(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EncodeJpeg{
  public:
    EncodeJpeg() {}
    EncodeJpeg(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::string format, 
           tensorflow::string xmp_metadata, 
           int64_t quality = 95, 
           bool progressive = false, 
           bool optimize_size = false, 
           bool chroma_downsampling = true, 
           tensorflow::string density_unit = "in", 
           int64_t x_density = 300, 
           int64_t y_density = 300);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayConcat{
  public:
    TensorArrayConcat() {}
    TensorArrayConcat(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape_except0 = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeAndCropJpeg{
  public:
    DecodeAndCropJpeg() {}
    DecodeAndCropJpeg(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::Input crop_window, 
           tensorflow::string dct_method, 
           int64_t channels = 0, 
           int64_t ratio = 1, 
           bool fancy_upscaling = true, 
           bool try_recover_truncated = false, 
           float acceptable_fraction = 1.0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeJpeg{
  public:
    DecodeJpeg() {}
    DecodeJpeg(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::string dct_method, 
           int64_t channels = 0, 
           int64_t ratio = 1, 
           bool fancy_upscaling = true, 
           bool try_recover_truncated = false, 
           float acceptable_fraction = 1.0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomCrop{
  public:
    RandomCrop() {}
    RandomCrop(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::Input size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BigQueryReader{
  public:
    BigQueryReader() {}
    BigQueryReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string project_id, 
           tensorflow::string dataset_id, 
           tensorflow::string table_id, 
           tensorflow::gtl::ArraySlice<tensorflow::string> columns, 
           tensorflow::string test_end_point, 
           int64_t timestamp_millis = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResizeNearestNeighborGrad{
  public:
    ResizeNearestNeighborGrad() {}
    ResizeNearestNeighborGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LRN{
  public:
    LRN() {}
    LRN(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t depth_radius = 5, 
           float bias = 1.0, 
           float alpha = 1.0, 
           float beta = 0.5, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3DBackpropInputV2{
  public:
    Conv3DBackpropInputV2() {}
    Conv3DBackpropInputV2(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResizeBilinear{
  public:
    ResizeBilinear() {}
    ResizeBilinear(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AssignAddVariableOp{
  public:
    AssignAddVariableOp() {}
    AssignAddVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value);
    tensorflow::Operation operation;
};

class DepthwiseConv2dNativeBackpropInput{
  public:
    DepthwiseConv2dNativeBackpropInput() {}
    DepthwiseConv2dNativeBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input_sizes, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
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

class TensorListPushBack{
  public:
    TensorListPushBack() {}
    TensorListPushBack(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input tensor);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseApplyMomentum{
  public:
    SparseApplyMomentum() {}
    SparseApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input momentum, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UniqueWithCounts{
  public:
    UniqueWithCounts() {}
    UniqueWithCounts(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResizeBicubicGrad{
  public:
    ResizeBicubicGrad() {}
    ResizeBicubicGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input original_image, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class HSVToRGB{
  public:
    HSVToRGB() {}
    HSVToRGB(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
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

class ResizeBicubic{
  public:
    ResizeBicubic() {}
    ResizeBicubic(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderRestoreState{
  public:
    ReaderRestoreState() {}
    ReaderRestoreState(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input state);
    tensorflow::Operation operation;
};

class ResizeArea{
  public:
    ResizeArea() {}
    ResizeArea(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners = false);
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

class FakeParam{
  public:
    FakeParam() {}
    FakeParam(tensorflow::Scope& scope, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
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

class PartitionedCall{
  public:
    PartitionedCall() {}
    PartitionedCall(tensorflow::Scope& scope, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f, 
           tensorflow::string config, 
           tensorflow::string config_proto, 
           tensorflow::string executor_type);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
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

class While{
  public:
    While() {}
    While(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
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

class _While{
  public:
    _While() {}
    _While(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class AddManySparseToTensorsMap{
  public:
    AddManySparseToTensorsMap() {}
    AddManySparseToTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FlatMapDataset{
  public:
    FlatMapDataset() {}
    FlatMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StatelessIf{
  public:
    StatelessIf() {}
    StatelessIf(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
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

class RemoteCall{
  public:
    RemoteCall() {}
    RemoteCall(tensorflow::Scope& scope, 
           tensorflow::Input target, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class ExperimentalMapAndBatchDataset{
  public:
    ExperimentalMapAndBatchDataset() {}
    ExperimentalMapAndBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input batch_size, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::Input drop_remainder, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality = false);
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

class _ArrayToList{
  public:
    _ArrayToList() {}
    _ArrayToList(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> out_types);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class _ListToArray{
  public:
    _ListToArray() {}
    _ListToArray(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class _Arg{
  public:
    _Arg() {}
    _Arg(tensorflow::Scope& scope, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t index = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderRead{
  public:
    ReaderRead() {}
    ReaderRead(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MirrorPad{
  public:
    MirrorPad() {}
    MirrorPad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::string mode, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayV3{
  public:
    TensorArrayV3() {}
    TensorArrayV3(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {}, 
           bool dynamic_size = false, 
           bool clear_after_read = true, 
           bool identical_element_shapes = false);
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

class ExperimentalIdentityIndexedDataset{
  public:
    ExperimentalIdentityIndexedDataset() {}
    ExperimentalIdentityIndexedDataset(tensorflow::Scope& scope, 
           tensorflow::Input size);
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

class ExperimentalAssertNextDataset{
  public:
    ExperimentalAssertNextDataset() {}
    ExperimentalAssertNextDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input transformations, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
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

class Relu{
  public:
    Relu() {}
    Relu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class ExperimentalThreadPoolDataset{
  public:
    ExperimentalThreadPoolDataset() {}
    ExperimentalThreadPoolDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input thread_pool, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SoftplusGrad{
  public:
    SoftplusGrad() {}
    SoftplusGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalIndexedDatasetMaterialize{
  public:
    ExperimentalIndexedDatasetMaterialize() {}
    ExperimentalIndexedDatasetMaterialize(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input materialized);
    tensorflow::Operation operation;
};

class QuantizeAndDequantizeV3{
  public:
    QuantizeAndDequantizeV3() {}
    QuantizeAndDequantizeV3(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::Input num_bits, 
           bool signed_input = true, 
           bool range_given = true, 
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

class BatchToSpace{
  public:
    BatchToSpace() {}
    BatchToSpace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input crops, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t block_size = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalPrivateThreadPoolDataset{
  public:
    ExperimentalPrivateThreadPoolDataset() {}
    ExperimentalPrivateThreadPoolDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input num_threads, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AddSparseToTensorsMap{
  public:
    AddSparseToTensorsMap() {}
    AddSparseToTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Elu{
  public:
    Elu() {}
    Elu(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalBytesProducedStatsDataset{
  public:
    ExperimentalBytesProducedStatsDataset() {}
    ExperimentalBytesProducedStatsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input tag, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalIteratorGetDevice{
  public:
    ExperimentalIteratorGetDevice() {}
    ExperimentalIteratorGetDevice(tensorflow::Scope& scope, 
           tensorflow::Input resource);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StringFormat{
  public:
    StringFormat() {}
    StringFormat(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::string ctemplate = "%s", 
           tensorflow::string placeholder = "%s", 
           int64_t summarize = 3);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalUniqueDataset{
  public:
    ExperimentalUniqueDataset() {}
    ExperimentalUniqueDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalUnbatchDataset{
  public:
    ExperimentalUnbatchDataset() {}
    ExperimentalUnbatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayPack{
  public:
    TensorArrayPack() {}
    TensorArrayPack(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalStatsAggregatorHandle{
  public:
    ExperimentalStatsAggregatorHandle() {}
    ExperimentalStatsAggregatorHandle(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LookupTableSizeV2{
  public:
    LookupTableSizeV2() {}
    LookupTableSizeV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalSqlDataset{
  public:
    ExperimentalSqlDataset() {}
    ExperimentalSqlDataset(tensorflow::Scope& scope, 
           tensorflow::Input driver_name, 
           tensorflow::Input data_source_name, 
           tensorflow::Input query, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayUnpack{
  public:
    TensorArrayUnpack() {}
    TensorArrayUnpack(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalSetStatsAggregatorDataset{
  public:
    ExperimentalSetStatsAggregatorDataset() {}
    ExperimentalSetStatsAggregatorDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input stats_aggregator, 
           tensorflow::Input tag, 
           tensorflow::Input counter_prefix, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
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

class _UnaryOpsComposition{
  public:
    _UnaryOpsComposition() {}
    _UnaryOpsComposition(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::gtl::ArraySlice<tensorflow::string> op_names, 
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

class ExperimentalIgnoreErrorsDataset{
  public:
    ExperimentalIgnoreErrorsDataset() {}
    ExperimentalIgnoreErrorsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalRandomDataset{
  public:
    ExperimentalRandomDataset() {}
    ExperimentalRandomDataset(tensorflow::Scope& scope, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PriorityQueue{
  public:
    PriorityQueue() {}
    PriorityQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class For{
  public:
    For() {}
    For(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input limit, 
           tensorflow::Input delta, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList body);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class ExperimentalParallelInterleaveDataset{
  public:
    ExperimentalParallelInterleaveDataset() {}
    ExperimentalParallelInterleaveDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input cycle_length, 
           tensorflow::Input block_length, 
           tensorflow::Input sloppy, 
           tensorflow::Input buffer_output_elements, 
           tensorflow::Input prefetch_input_elements, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Skipgram{
  public:
    Skipgram() {}
    Skipgram(tensorflow::Scope& scope, 
           tensorflow::string filename, 
           int64_t batch_size = 0, 
           int64_t window_size = 5, 
           int64_t min_count = 5, 
           float subsample = 0.001000000047497451);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalMatchingFilesDataset{
  public:
    ExperimentalMatchingFilesDataset() {}
    ExperimentalMatchingFilesDataset(tensorflow::Scope& scope, 
           tensorflow::Input patterns);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StageClear{
  public:
    StageClear() {}
    StageClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class ExperimentalMapDataset{
  public:
    ExperimentalMapDataset() {}
    ExperimentalMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism = true, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BiasAdd{
  public:
    BiasAdd() {}
    BiasAdd(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input bias, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalGroupByReducerDataset{
  public:
    ExperimentalGroupByReducerDataset() {}
    ExperimentalGroupByReducerDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList key_func_other_arguments, 
           tensorflow::InputList init_func_other_arguments, 
           tensorflow::InputList reduce_func_other_arguments, 
           tensorflow::InputList finalize_func_other_arguments, 
           tensorflow::NameAttrList key_func, 
           tensorflow::NameAttrList init_func, 
           tensorflow::NameAttrList reduce_func, 
           tensorflow::NameAttrList finalize_func, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tkey_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinit_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Treduce_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tfinalize_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CropAndResizeGradBoxes{
  public:
    CropAndResizeGradBoxes() {}
    CropAndResizeGradBoxes(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input image, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::string method = "bilinear");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FIFOQueueV2{
  public:
    FIFOQueueV2() {}
    FIFOQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchToSpaceND{
  public:
    BatchToSpaceND() {}
    BatchToSpaceND(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input block_shape, 
           tensorflow::Input crops, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AccumulatorSetGlobalStep{
  public:
    AccumulatorSetGlobalStep() {}
    AccumulatorSetGlobalStep(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input new_global_step);
    tensorflow::Operation operation;
};

class ExperimentalDatasetCardinality{
  public:
    ExperimentalDatasetCardinality() {}
    ExperimentalDatasetCardinality(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _DeviceRetval{
  public:
    _DeviceRetval() {}
    _DeviceRetval(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t index = 0);
    tensorflow::Operation operation;
};

class LogUniformCandidateSampler{
  public:
    LogUniformCandidateSampler() {}
    LogUniformCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true = 0, 
           int64_t num_sampled = 0, 
           bool unique = false, 
           int64_t range_max = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapDefun{
  public:
    MapDefun() {}
    MapDefun(tensorflow::Scope& scope, 
           tensorflow::InputList arguments, 
           tensorflow::InputList captured_inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcaptured, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           tensorflow::NameAttrList f);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class ExperimentalCSVDataset{
  public:
    ExperimentalCSVDataset() {}
    ExperimentalCSVDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input compression_type, 
           tensorflow::Input buffer_size, 
           tensorflow::Input header, 
           tensorflow::Input field_delim, 
           tensorflow::Input use_quote_delim, 
           tensorflow::Input na_value, 
           tensorflow::Input select_cols, 
           tensorflow::InputList record_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
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

class TensorForestTreePredict{
  public:
    TensorForestTreePredict() {}
    TensorForestTreePredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input dense_features, 
           int64_t logits_dimension = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EncodeProto{
  public:
    EncodeProto() {}
    EncodeProto(tensorflow::Scope& scope, 
           tensorflow::Input sizes, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::string> field_names, 
           tensorflow::string message_type, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinput_types, 
           tensorflow::string descriptor_source = "local://");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalDirectedInterleaveDataset{
  public:
    ExperimentalDirectedInterleaveDataset() {}
    ExperimentalDirectedInterleaveDataset(tensorflow::Scope& scope, 
           tensorflow::Input selector_input_dataset, 
           tensorflow::InputList data_input_datasets, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
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

class UnicodeDecode{
  public:
    UnicodeDecode() {}
    UnicodeDecode(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string errors = "replace", 
           int64_t replacement_char = 65533, 
           bool replace_control_characters = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WriteSummary{
  public:
    WriteSummary() {}
    WriteSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tensor, 
           tensorflow::Input tag, 
           tensorflow::Input summary_metadata);
    tensorflow::Operation operation;
};

class Batch{
  public:
    Batch() {}
    Batch(tensorflow::Scope& scope, 
           tensorflow::InputList in_tensors, 
           tensorflow::gtl::ArraySlice<int64_t> allowed_batch_sizes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string batching_queue, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           int64_t num_batch_threads = 0, 
           int64_t max_batch_size = 0, 
           int64_t max_enqueued_batches = 10, 
           int64_t batch_timeout_micros = 0, 
           int64_t grad_timeout_micros = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class ParallelInterleaveDatasetV2{
  public:
    ParallelInterleaveDatasetV2() {}
    ParallelInterleaveDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input cycle_length, 
           tensorflow::Input block_length, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool sloppy = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueIsClosed{
  public:
    QueueIsClosed() {}
    QueueIsClosed(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MultiDeviceIteratorFromStringHandle{
  public:
    MultiDeviceIteratorFromStringHandle() {}
    MultiDeviceIteratorFromStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradGrad{
  public:
    MaxPoolGradGrad() {}
    MaxPoolGradGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnwrapDatasetVariant{
  public:
    UnwrapDatasetVariant() {}
    UnwrapDatasetVariant(tensorflow::Scope& scope, 
           tensorflow::Input input_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WrapDatasetVariant{
  public:
    WrapDatasetVariant() {}
    WrapDatasetVariant(tensorflow::Scope& scope, 
           tensorflow::Input input_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Stage{
  public:
    Stage() {}
    Stage(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class IdentityN{
  public:
    IdentityN() {}
    IdentityN(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class OptionalHasValue{
  public:
    OptionalHasValue() {}
    OptionalHasValue(tensorflow::Scope& scope, 
           tensorflow::Input optional);
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

class StatefulPartitionedCall{
  public:
    StatefulPartitionedCall() {}
    StatefulPartitionedCall(tensorflow::Scope& scope, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f, 
           tensorflow::string config, 
           tensorflow::string config_proto, 
           tensorflow::string executor_type);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class OptionalFromValue{
  public:
    OptionalFromValue() {}
    OptionalFromValue(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DatasetToGraph{
  public:
    DatasetToGraph() {}
    DatasetToGraph(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExtractGlimpse{
  public:
    ExtractGlimpse() {}
    ExtractGlimpse(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input size, 
           tensorflow::Input offsets, 
           bool centered = true, 
           bool normalized = true, 
           bool uniform_noise = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalDatasetToTFRecord{
  public:
    ExperimentalDatasetToTFRecord() {}
    ExperimentalDatasetToTFRecord(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input filename, 
           tensorflow::Input compression_type);
    tensorflow::Operation operation;
};

class ShardedFilespec{
  public:
    ShardedFilespec() {}
    ShardedFilespec(tensorflow::Scope& scope, 
           tensorflow::Input basename, 
           tensorflow::Input num_shards);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyCenteredRMSProp{
  public:
    ResourceApplyCenteredRMSProp() {}
    ResourceApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class SerializeIterator{
  public:
    SerializeIterator() {}
    SerializeIterator(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle);
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

class VarIsInitializedOp{
  public:
    VarIsInitializedOp() {}
    VarIsInitializedOp(tensorflow::Scope& scope, 
           tensorflow::Input resource);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxVarsPerChannel{
  public:
    FakeQuantWithMinMaxVarsPerChannel() {}
    FakeQuantWithMinMaxVarsPerChannel(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WriteAudioSummary{
  public:
    WriteAudioSummary() {}
    WriteAudioSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input sample_rate, 
           int64_t max_outputs = 3);
    tensorflow::Operation operation;
};

class IteratorFromStringHandle{
  public:
    IteratorFromStringHandle() {}
    IteratorFromStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
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

class BroadcastTo{
  public:
    BroadcastTo() {}
    BroadcastTo(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input shape, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorToStringHandle{
  public:
    IteratorToStringHandle() {}
    IteratorToStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle);
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

class MakeIterator{
  public:
    MakeIterator() {}
    MakeIterator(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input iterator);
    tensorflow::Operation operation;
};

class UniqueWithCountsV2{
  public:
    UniqueWithCountsV2() {}
    UniqueWithCountsV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AnonymousIterator{
  public:
    AnonymousIterator() {}
    AnonymousIterator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DebugGradientRefIdentity{
  public:
    DebugGradientRefIdentity() {}
    DebugGradientRefIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorV2{
  public:
    IteratorV2() {}
    IteratorV2(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ImmutableConst{
  public:
    ImmutableConst() {}
    ImmutableConst(tensorflow::Scope& scope, 
           tensorflow::string memory_region_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesQuantileStreamResourceAddSummaries{
  public:
    BoostedTreesQuantileStreamResourceAddSummaries() {}
    BoostedTreesQuantileStreamResourceAddSummaries(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input summaries, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
};

class Iterator{
  public:
    Iterator() {}
    Iterator(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Rpc{
  public:
    Rpc() {}
    Rpc(tensorflow::Scope& scope, 
           tensorflow::Input address, 
           tensorflow::Input method, 
           tensorflow::Input request, 
           tensorflow::string protocol, 
           bool fail_fast = true, 
           int64_t timeout_in_ms = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TFRecordDataset{
  public:
    TFRecordDataset() {}
    TFRecordDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input compression_type, 
           tensorflow::Input buffer_size);
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

class CacheDataset{
  public:
    CacheDataset() {}
    CacheDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input filename, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolV2{
  public:
    MaxPoolV2() {}
    MaxPoolV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input ksize, 
           tensorflow::Input strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_FLOAT, 
           tensorflow::string data_format = "NHWC");
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

class ShuffleAndRepeatDataset{
  public:
    ShuffleAndRepeatDataset() {}
    ShuffleAndRepeatDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _NcclBroadcastSend{
  public:
    _NcclBroadcastSend() {}
    _NcclBroadcastSend(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string shared_name, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
};

class CudnnRNN{
  public:
    CudnnRNN() {}
    CudnnRNN(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           bool is_training = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BatchDataset{
  public:
    BatchDataset() {}
    BatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SoftsignGrad{
  public:
    SoftsignGrad() {}
    SoftsignGrad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SetSize{
  public:
    SetSize() {}
    SetSize(tensorflow::Scope& scope, 
           tensorflow::Input set_indices, 
           tensorflow::Input set_values, 
           tensorflow::Input set_shape, 
           bool validate_indices = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WindowDataset{
  public:
    WindowDataset() {}
    WindowDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input size, 
           tensorflow::Input shift, 
           tensorflow::Input stride, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyRMSProp{
  public:
    ResourceApplyRMSProp() {}
    ResourceApplyRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class MaxPool3DGrad{
  public:
    MaxPool3DGrad() {}
    MaxPool3DGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InterleaveDataset{
  public:
    InterleaveDataset() {}
    InterleaveDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input cycle_length, 
           tensorflow::Input block_length, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
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

class BoostedTreesTrainingPredict{
  public:
    BoostedTreesTrainingPredict() {}
    BoostedTreesTrainingPredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input cached_tree_ids, 
           tensorflow::Input cached_node_ids, 
           tensorflow::Input bucketized_features, 
           int64_t num_bucketized_features = 0, 
           int64_t logits_dimension = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LoopCond{
  public:
    LoopCond() {}
    LoopCond(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParallelMapDataset{
  public:
    ParallelMapDataset() {}
    ParallelMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism = true, 
           bool sloppy = false, 
           bool preserve_cardinality = false);
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

class QuantizedReshape{
  public:
    QuantizedReshape() {}
    QuantizedReshape(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input shape, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapDataset{
  public:
    MapDataset() {}
    MapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism = true, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SkipDataset{
  public:
    SkipDataset() {}
    SkipDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv2DBackpropFilter{
  public:
    Conv2DBackpropFilter() {}
    Conv2DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter_sizes, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_cudnn_on_gpu = true, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorGetNextSync{
  public:
    IteratorGetNextSync() {}
    IteratorGetNextSync(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class ReaderNumRecordsProduced{
  public:
    ReaderNumRecordsProduced() {}
    ReaderNumRecordsProduced(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ModelDataset{
  public:
    ModelDataset() {}
    ModelDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderReadUpToV2{
  public:
    ReaderReadUpToV2() {}
    ReaderReadUpToV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle, 
           tensorflow::Input num_records);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueDequeueV2{
  public:
    QueueDequeueV2() {}
    QueueDequeueV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class ReaderReadUpTo{
  public:
    ReaderReadUpTo() {}
    ReaderReadUpTo(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle, 
           tensorflow::Input num_records);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Unpack{
  public:
    Unpack() {}
    Unpack(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           int64_t num = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t axis = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ConcatenateDataset{
  public:
    ConcatenateDataset() {}
    ConcatenateDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input another_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PlaceholderV2{
  public:
    PlaceholderV2() {}
    PlaceholderV2(tensorflow::Scope& scope, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GeneratorDataset{
  public:
    GeneratorDataset() {}
    GeneratorDataset(tensorflow::Scope& scope, 
           tensorflow::InputList init_func_other_args, 
           tensorflow::InputList next_func_other_args, 
           tensorflow::InputList finalize_func_other_args, 
           tensorflow::NameAttrList init_func, 
           tensorflow::NameAttrList next_func, 
           tensorflow::NameAttrList finalize_func, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinit_func_args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tnext_func_args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tfinalize_func_args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorSliceDataset{
  public:
    TensorSliceDataset() {}
    TensorSliceDataset(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StringToHashBucket{
  public:
    StringToHashBucket() {}
    StringToHashBucket(tensorflow::Scope& scope, 
           tensorflow::Input string_tensor, 
           int64_t num_buckets = 0);
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

class RandomShuffleQueueV2{
  public:
    RandomShuffleQueueV2() {}
    RandomShuffleQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1, 
           int64_t min_after_dequeue = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseTensorSliceDataset{
  public:
    SparseTensorSliceDataset() {}
    SparseTensorSliceDataset(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input dense_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorDataset{
  public:
    TensorDataset() {}
    TensorDataset(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListElementShape{
  public:
    TensorListElementShape() {}
    TensorListElementShape(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType shape_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NcclReduce{
  public:
    NcclReduce() {}
    NcclReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string reduction, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_devices = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyProximalAdagrad{
  public:
    ApplyProximalAdagrad() {}
    ApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
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

class MatrixExponential{
  public:
    MatrixExponential() {}
    MatrixExponential(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GatherNd{
  public:
    GatherNd() {}
    GatherNd(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           tensorflow::DataType Tparams = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueCloseV2{
  public:
    QueueCloseV2() {}
    QueueCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues = false);
    tensorflow::Operation operation;
};

class MaxPool{
  public:
    MaxPool() {}
    MaxPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_FLOAT, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OrderedMapClear{
  public:
    OrderedMapClear() {}
    OrderedMapClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class OrderedMapSize{
  public:
    OrderedMapSize() {}
    OrderedMapSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayCloseV3{
  public:
    TensorArrayCloseV3() {}
    TensorArrayCloseV3(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class SaveV2{
  public:
    SaveV2() {}
    SaveV2(tensorflow::Scope& scope, 
           tensorflow::Input prefix, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shape_and_slices, 
           tensorflow::InputList tensors, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes);
    tensorflow::Operation operation;
};

class OrderedMapStage{
  public:
    OrderedMapStage() {}
    OrderedMapStage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> fake_dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class RandomGamma{
  public:
    RandomGamma() {}
    RandomGamma(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input alpha, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedResizeBilinear{
  public:
    QuantizedResizeBilinear() {}
    QuantizedResizeBilinear(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OrderedMapIncompleteSize{
  public:
    OrderedMapIncompleteSize() {}
    OrderedMapIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapIncompleteSize{
  public:
    MapIncompleteSize() {}
    MapIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
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

class ApplyMomentum{
  public:
    ApplyMomentum() {}
    ApplyMomentum(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input grad, 
           tensorflow::Input momentum, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false, 
           bool use_nesterov = false);
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

class ExperimentalGroupByWindowDataset{
  public:
    ExperimentalGroupByWindowDataset() {}
    ExperimentalGroupByWindowDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList key_func_other_arguments, 
           tensorflow::InputList reduce_func_other_arguments, 
           tensorflow::InputList window_size_func_other_arguments, 
           tensorflow::NameAttrList key_func, 
           tensorflow::NameAttrList reduce_func, 
           tensorflow::NameAttrList window_size_func, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tkey_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Treduce_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Twindow_size_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyAdamWithAmsgrad{
  public:
    ResourceApplyAdamWithAmsgrad() {}
    ResourceApplyAdamWithAmsgrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input vhat, 
           tensorflow::Input beta1_power, 
           tensorflow::Input beta2_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class _NcclBroadcastRecv{
  public:
    _NcclBroadcastRecv() {}
    _NcclBroadcastRecv(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::string shared_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_devices = 0);
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

class TextLineDataset{
  public:
    TextLineDataset() {}
    TextLineDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input compression_type, 
           tensorflow::Input buffer_size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorSummaryV2{
  public:
    TensorSummaryV2() {}
    TensorSummaryV2(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input serialized_summary_metadata);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Unbatch{
  public:
    Unbatch() {}
    Unbatch(tensorflow::Scope& scope, 
           tensorflow::Input batched_tensor, 
           tensorflow::Input batch_index, 
           tensorflow::Input id, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t timeout_micros = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapUnstage{
  public:
    MapUnstage() {}
    MapUnstage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
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

class MapPeek{
  public:
    MapPeek() {}
    MapPeek(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
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

class FusedBatchNormGradV2{
  public:
    FusedBatchNormGradV2() {}
    FusedBatchNormGradV2(tensorflow::Scope& scope, 
           tensorflow::Input y_backprop, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input reserve_space_1, 
           tensorflow::Input reserve_space_2, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool is_training = true, 
           float epsilon = 9.999999747378752e-05, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BarrierReadySize{
  public:
    BarrierReadySize() {}
    BarrierReadySize(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapStage{
  public:
    MapStage() {}
    MapStage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> fake_dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class Unstage{
  public:
    Unstage() {}
    Unstage(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class Variable{
  public:
    Variable() {}
    Variable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArray{
  public:
    TensorArray() {}
    TensorArray(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           bool dynamic_size = false, 
           bool clear_after_read = true, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SigmoidGrad{
  public:
    SigmoidGrad() {}
    SigmoidGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListGather{
  public:
    TensorListGather() {}
    TensorListGather(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input indices, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeleteSessionTensor{
  public:
    DeleteSessionTensor() {}
    DeleteSessionTensor(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class ResourceApplyAdam{
  public:
    ResourceApplyAdam() {}
    ResourceApplyAdam(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input v, 
           tensorflow::Input beta1_power, 
           tensorflow::Input beta2_power, 
           tensorflow::Input lr, 
           tensorflow::Input beta1, 
           tensorflow::Input beta2, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_nesterov = false, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class ResourceSparseApplyAdadelta{
  public:
    ResourceSparseApplyAdadelta() {}
    ResourceSparseApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class Sigmoid{
  public:
    Sigmoid() {}
    Sigmoid(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyAdagradDA{
  public:
    ResourceApplyAdagradDA() {}
    ResourceApplyAdagradDA(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input gradient_accumulator, 
           tensorflow::Input gradient_squared_accumulator, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input global_step, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class SparseToDense{
  public:
    SparseToDense() {}
    SparseToDense(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input output_shape, 
           tensorflow::Input sparse_values, 
           tensorflow::Input default_value, 
           bool validate_indices = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Bitcast{
  public:
    Bitcast() {}
    Bitcast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GetSessionHandleV2{
  public:
    GetSessionHandleV2() {}
    GetSessionHandleV2(tensorflow::Scope& scope, 
           tensorflow::Input value);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxVars{
  public:
    FakeQuantWithMinMaxVars() {}
    FakeQuantWithMinMaxVars(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BarrierIncompleteSize{
  public:
    BarrierIncompleteSize() {}
    BarrierIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Any{
  public:
    Any() {}
    Any(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorForestCreateTreeVariable{
  public:
    TensorForestCreateTreeVariable() {}
    TensorForestCreateTreeVariable(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input tree_config);
    tensorflow::Operation operation;
};

class BatchFunction{
  public:
    BatchFunction() {}
    BatchFunction(tensorflow::Scope& scope, 
           tensorflow::InputList in_tensors, 
           tensorflow::InputList captured_tensors, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<int64_t> allowed_batch_sizes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string batching_queue, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcaptured, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           int64_t num_batch_threads = 0, 
           int64_t max_batch_size = 0, 
           int64_t batch_timeout_micros = 0, 
           int64_t max_enqueued_batches = 10);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class BatchDatasetV2{
  public:
    BatchDatasetV2() {}
    BatchDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SelfAdjointEigV2{
  public:
    SelfAdjointEigV2() {}
    SelfAdjointEigV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_v = true, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Pack{
  public:
    Pack() {}
    Pack(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t axis = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BarrierClose{
  public:
    BarrierClose() {}
    BarrierClose(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues = false);
    tensorflow::Operation operation;
};

class PyFunc{
  public:
    PyFunc() {}
    PyFunc(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
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

class TensorArrayV2{
  public:
    TensorArrayV2() {}
    TensorArrayV2(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {}, 
           bool dynamic_size = false, 
           bool clear_after_read = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyGradientDescent{
  public:
    ResourceApplyGradientDescent() {}
    ResourceApplyGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input delta, 
           bool use_locking = false);
    tensorflow::Operation operation;
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

class BarrierTakeMany{
  public:
    BarrierTakeMany() {}
    BarrierTakeMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input num_elements, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           bool allow_small_batch = false, 
           bool wait_for_incomplete = false, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceSparseApplyProximalAdagrad{
  public:
    ResourceSparseApplyProximalAdagrad() {}
    ResourceSparseApplyProximalAdagrad(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           bool use_locking = false);
    tensorflow::Operation operation;
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

class Barrier{
  public:
    Barrier() {}
    Barrier(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
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

class TensorArraySizeV2{
  public:
    TensorArraySizeV2() {}
    TensorArraySizeV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AdjustContrast{
  public:
    AdjustContrast() {}
    AdjustContrast(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input contrast_factor, 
           tensorflow::Input min_value, 
           tensorflow::Input max_value);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MultiDeviceIteratorInit{
  public:
    MultiDeviceIteratorInit() {}
    MultiDeviceIteratorInit(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input multi_device_iterator, 
           tensorflow::Input max_buffer_size);
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

class RGBToHSV{
  public:
    RGBToHSV() {}
    RGBToHSV(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ListDiff{
  public:
    ListDiff() {}
    ListDiff(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayScatterV2{
  public:
    TensorArrayScatterV2() {}
    TensorArrayScatterV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
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

class TensorArrayGatherV2{
  public:
    TensorArrayGatherV2() {}
    TensorArrayGatherV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderRestoreStateV2{
  public:
    ReaderRestoreStateV2() {}
    ReaderRestoreStateV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input state);
    tensorflow::Operation operation;
};

class _DeviceArg{
  public:
    _DeviceArg() {}
    _DeviceArg(tensorflow::Scope& scope, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t index = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StagePeek{
  public:
    StagePeek() {}
    StagePeek(tensorflow::Scope& scope, 
           tensorflow::Input index, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class TensorArrayReadV2{
  public:
    TensorArrayReadV2() {}
    TensorArrayReadV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AudioSpectrogram{
  public:
    AudioSpectrogram() {}
    AudioSpectrogram(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t window_size = 0, 
           int64_t stride = 0, 
           bool magnitude_squared = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayRead{
  public:
    TensorArrayRead() {}
    TensorArrayRead(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
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

class BitwiseXor{
  public:
    BitwiseXor() {}
    BitwiseXor(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DenseToSparseSetOperation{
  public:
    DenseToSparseSetOperation() {}
    DenseToSparseSetOperation(tensorflow::Scope& scope, 
           tensorflow::Input set1, 
           tensorflow::Input set2_indices, 
           tensorflow::Input set2_values, 
           tensorflow::Input set2_shape, 
           tensorflow::string set_operation, 
           bool validate_indices = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayWriteV2{
  public:
    TensorArrayWriteV2() {}
    TensorArrayWriteV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayWrite{
  public:
    TensorArrayWrite() {}
    TensorArrayWrite(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReverseSequence{
  public:
    ReverseSequence() {}
    ReverseSequence(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input seq_lengths, 
           int64_t seq_dim = 0, 
           int64_t batch_dim = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGatherV3{
  public:
    TensorArrayGatherV3() {}
    TensorArrayGatherV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FilterByLastComponentDataset{
  public:
    FilterByLastComponentDataset() {}
    FilterByLastComponentDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ShuffleDataset{
  public:
    ShuffleDataset() {}
    ShuffleDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool reshuffle_each_iteration = true);
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

class EditDistance{
  public:
    EditDistance() {}
    EditDistance(tensorflow::Scope& scope, 
           tensorflow::Input hypothesis_indices, 
           tensorflow::Input hypothesis_values, 
           tensorflow::Input hypothesis_shape, 
           tensorflow::Input truth_indices, 
           tensorflow::Input truth_values, 
           tensorflow::Input truth_shape, 
           bool normalize = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AvgPoolGrad{
  public:
    AvgPoolGrad() {}
    AvgPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_shape, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParallelConcat{
  public:
    ParallelConcat() {}
    ParallelConcat(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RangeDataset{
  public:
    RangeDataset() {}
    RangeDataset(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input stop, 
           tensorflow::Input step, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
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

class TensorArrayGradWithShape{
  public:
    TensorArrayGradWithShape() {}
    TensorArrayGradWithShape(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::Input shape_to_prepend, 
           tensorflow::string source);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MultiDeviceIteratorToStringHandle{
  public:
    MultiDeviceIteratorToStringHandle() {}
    MultiDeviceIteratorToStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input multi_device_iterator);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGradV3{
  public:
    TensorArrayGradV3() {}
    TensorArrayGradV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseApplyFtrlV2{
  public:
    SparseApplyFtrlV2() {}
    SparseApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackPop{
  public:
    StackPop() {}
    StackPop(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType elem_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Stack{
  public:
    Stack() {}
    Stack(tensorflow::Scope& scope, 
           tensorflow::string stack_name, 
           tensorflow::DataType elem_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Abs{
  public:
    Abs() {}
    Abs(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Gather{
  public:
    Gather() {}
    Gather(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           bool validate_indices = true, 
           tensorflow::DataType Tparams = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayReadV3{
  public:
    TensorArrayReadV3() {}
    TensorArrayReadV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AvgPool3DGrad{
  public:
    AvgPool3DGrad() {}
    AvgPool3DGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input_shape, 
           tensorflow::Input grad, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayCloseV2{
  public:
    TensorArrayCloseV2() {}
    TensorArrayCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class ThreadUnsafeUnigramCandidateSampler{
  public:
    ThreadUnsafeUnigramCandidateSampler() {}
    ThreadUnsafeUnigramCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true = 0, 
           int64_t num_sampled = 0, 
           bool unique = false, 
           int64_t range_max = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackCloseV2{
  public:
    StackCloseV2() {}
    StackCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class StackPopV2{
  public:
    StackPopV2() {}
    StackPopV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType elem_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackPushV2{
  public:
    StackPushV2() {}
    StackPushV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input elem, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool swap_memory = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TileGrad{
  public:
    TileGrad() {}
    TileGrad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input multiples, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueDequeueUpTo{
  public:
    QueueDequeueUpTo() {}
    QueueDequeueUpTo(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class AudioSummary{
  public:
    AudioSummary() {}
    AudioSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           float sample_rate = 0.0, 
           int64_t max_outputs = 3);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PaddedBatchDataset{
  public:
    PaddedBatchDataset() {}
    PaddedBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::InputList padded_shapes, 
           tensorflow::InputList padding_values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackV2{
  public:
    StackV2() {}
    StackV2(tensorflow::Scope& scope, 
           tensorflow::Input max_size, 
           tensorflow::string stack_name, 
           tensorflow::DataType elem_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseConditionalAccumulator{
  public:
    SparseConditionalAccumulator() {}
    SparseConditionalAccumulator(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::string reduction_type = "MEAN");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OrderedMapUnstage{
  public:
    OrderedMapUnstage() {}
    OrderedMapUnstage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class _VarHandlesOp{
  public:
    _VarHandlesOp() {}
    _VarHandlesOp(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::string> containers, 
           tensorflow::gtl::ArraySlice<tensorflow::string> shared_names, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class TensorArraySplitV2{
  public:
    TensorArraySplitV2() {}
    TensorArraySplitV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AccumulatorTakeGradient{
  public:
    AccumulatorTakeGradient() {}
    AccumulatorTakeGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input num_required, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExtractJpegShape{
  public:
    ExtractJpegShape() {}
    ExtractJpegShape(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::DataType output_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ConditionalAccumulator{
  public:
    ConditionalAccumulator() {}
    ConditionalAccumulator(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::string reduction_type = "MEAN");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AccumulatorNumAccumulated{
  public:
    AccumulatorNumAccumulated() {}
    AccumulatorNumAccumulated(tensorflow::Scope& scope, 
           tensorflow::Input handle);
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

class QueueSize{
  public:
    QueueSize() {}
    QueueSize(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySplitV3{
  public:
    TensorArraySplitV3() {}
    TensorArraySplitV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorGetNextAsOptional{
  public:
    IteratorGetNextAsOptional() {}
    IteratorGetNextAsOptional(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GcsConfigureCredentials{
  public:
    GcsConfigureCredentials() {}
    GcsConfigureCredentials(tensorflow::Scope& scope, 
           tensorflow::Input json);
    tensorflow::Operation operation;
};

class QueueDequeueManyV2{
  public:
    QueueDequeueManyV2() {}
    QueueDequeueManyV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class VarHandleOp{
  public:
    VarHandleOp() {}
    VarHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ComputeAccidentalHits{
  public:
    ComputeAccidentalHits() {}
    ComputeAccidentalHits(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           tensorflow::Input sampled_candidates, 
           int64_t num_true = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueDequeueMany{
  public:
    QueueDequeueMany() {}
    QueueDequeueMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class ExperimentalMaxIntraOpParallelismDataset{
  public:
    ExperimentalMaxIntraOpParallelismDataset() {}
    ExperimentalMaxIntraOpParallelismDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input max_intra_op_parallelism, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueEnqueueMany{
  public:
    QueueEnqueueMany() {}
    QueueEnqueueMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
};

class PaddingFIFOQueue{
  public:
    PaddingFIFOQueue() {}
    PaddingFIFOQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OrderedMapUnstageNoKey{
  public:
    OrderedMapUnstageNoKey() {}
    OrderedMapUnstageNoKey(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorForestTreeResourceHandleOp{
  public:
    TensorForestTreeResourceHandleOp() {}
    TensorForestTreeResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
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

class FIFOQueue{
  public:
    FIFOQueue() {}
    FIFOQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayWriteV3{
  public:
    TensorArrayWriteV3() {}
    TensorArrayWriteV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RefMerge{
  public:
    RefMerge() {}
    RefMerge(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BitwiseOr{
  public:
    BitwiseOr() {}
    BitwiseOr(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayScatter{
  public:
    TensorArrayScatter() {}
    TensorArrayScatter(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RestoreV2{
  public:
    RestoreV2() {}
    RestoreV2(tensorflow::Scope& scope, 
           tensorflow::Input prefix, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shape_and_slices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class RandomShuffleQueue{
  public:
    RandomShuffleQueue() {}
    RandomShuffleQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1, 
           int64_t min_after_dequeue = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Invert{
  public:
    Invert() {}
    Invert(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodePng{
  public:
    DecodePng() {}
    DecodePng(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t channels = 0, 
           tensorflow::DataType dtype = tensorflow::DT_UINT8);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ControlTrigger{
  public:
    ControlTrigger() {}
    ControlTrigger(tensorflow::Scope& scope);
    tensorflow::Operation operation;
};

class ParallelDynamicStitch{
  public:
    ParallelDynamicStitch() {}
    ParallelDynamicStitch(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapSize{
  public:
    MapSize() {}
    MapSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
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

class TensorArrayGradV2{
  public:
    TensorArrayGradV2() {}
    TensorArrayGradV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolGradGradWithArgmax{
  public:
    MaxPoolGradGradWithArgmax() {}
    MaxPoolGradGradWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input grad, 
           tensorflow::Input argmax, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class ApplyGradientDescent{
  public:
    ApplyGradientDescent() {}
    ApplyGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input delta, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CollectiveReduce{
  public:
    CollectiveReduce() {}
    CollectiveReduce(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string merge_op, 
           tensorflow::string final_op, 
           tensorflow::gtl::ArraySlice<int64_t> subdiv_offsets, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t group_size = 0, 
           int64_t group_key = 0, 
           int64_t instance_key = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CreateSummaryFileWriter{
  public:
    CreateSummaryFileWriter() {}
    CreateSummaryFileWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input logdir, 
           tensorflow::Input max_queue, 
           tensorflow::Input flush_millis, 
           tensorflow::Input filename_suffix);
    tensorflow::Operation operation;
};

class QueueIsClosedV2{
  public:
    QueueIsClosedV2() {}
    QueueIsClosedV2(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _ParallelConcatUpdate{
  public:
    _ParallelConcatUpdate() {}
    _ParallelConcatUpdate(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input update, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t loc = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNCanonicalToParams{
  public:
    CudnnRNNCanonicalToParams() {}
    CudnnRNNCanonicalToParams(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::Input weights, 
           tensorflow::Input biases, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_params = 0, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySizeV3{
  public:
    TensorArraySizeV3() {}
    TensorArraySizeV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in);
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

class CudnnRNNParamsToCanonical{
  public:
    CudnnRNNParamsToCanonical() {}
    CudnnRNNParamsToCanonical(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::Input params, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_params = 0, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _ParallelConcatStart{
  public:
    _ParallelConcatStart() {}
    _ParallelConcatStart(tensorflow::Scope& scope, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Size{
  public:
    Size() {}
    Size(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQuantWithMinMaxVarsGradient{
  public:
    FakeQuantWithMinMaxVarsGradient() {}
    FakeQuantWithMinMaxVarsGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NonMaxSuppressionV4{
  public:
    NonMaxSuppressionV4() {}
    NonMaxSuppressionV4(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold, 
           tensorflow::Input score_threshold, 
           bool pad_to_max_output_size = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNBackprop{
  public:
    CudnnRNNBackprop() {}
    CudnnRNNBackprop(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::Input output, 
           tensorflow::Input output_h, 
           tensorflow::Input output_c, 
           tensorflow::Input output_backprop, 
           tensorflow::Input output_h_backprop, 
           tensorflow::Input output_c_backprop, 
           tensorflow::Input reserve_space, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Pad{
  public:
    Pad() {}
    Pad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNV2{
  public:
    CudnnRNNV2() {}
    CudnnRNNV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           bool is_training = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DynamicStitch{
  public:
    DynamicStitch() {}
    DynamicStitch(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _Retval{
  public:
    _Retval() {}
    _Retval(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t index = 0);
    tensorflow::Operation operation;
};

class CTCBeamSearchDecoder{
  public:
    CTCBeamSearchDecoder() {}
    CTCBeamSearchDecoder(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input sequence_length, 
           int64_t beam_width = 0, 
           int64_t top_paths = 0, 
           bool merge_repeated = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OrderedMapPeek{
  public:
    OrderedMapPeek() {}
    OrderedMapPeek(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class FusedResizeAndPadConv2D{
  public:
    FusedResizeAndPadConv2D() {}
    FusedResizeAndPadConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input size, 
           tensorflow::Input paddings, 
           tensorflow::Input filter, 
           tensorflow::string mode, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool resize_align_corners = false);
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

class RefNextIteration{
  public:
    RefNextIteration() {}
    RefNextIteration(tensorflow::Scope& scope, 
           tensorflow::Input data, 
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

class ExperimentalNonSerializableDataset{
  public:
    ExperimentalNonSerializableDataset() {}
    ExperimentalNonSerializableDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Exit{
  public:
    Exit() {}
    Exit(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StringStrip{
  public:
    StringStrip() {}
    StringStrip(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RefSelect{
  public:
    RefSelect() {}
    RefSelect(tensorflow::Scope& scope, 
           tensorflow::Input index, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Softmax{
  public:
    Softmax() {}
    Softmax(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ScalarSummary{
  public:
    ScalarSummary() {}
    ScalarSummary(tensorflow::Scope& scope, 
           tensorflow::Input tags, 
           tensorflow::Input values);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Identity{
  public:
    Identity() {}
    Identity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReverseV2{
  public:
    ReverseV2() {}
    ReverseV2(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RefSwitch{
  public:
    RefSwitch() {}
    RefSwitch(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input pred, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NoOp{
  public:
    NoOp() {}
    NoOp(tensorflow::Scope& scope);
    tensorflow::Operation operation;
};

class LoadAndRemapMatrix{
  public:
    LoadAndRemapMatrix() {}
    LoadAndRemapMatrix(tensorflow::Scope& scope, 
           tensorflow::Input ckpt_path, 
           tensorflow::Input old_tensor_name, 
           tensorflow::Input row_remapping, 
           tensorflow::Input col_remapping, 
           tensorflow::Input initializing_values, 
           int64_t num_rows = 0, 
           int64_t num_cols = 0, 
           int64_t max_rows_in_memory = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorFromStringHandleV2{
  public:
    IteratorFromStringHandleV2() {}
    IteratorFromStringHandleV2(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GenerateVocabRemapping{
  public:
    GenerateVocabRemapping() {}
    GenerateVocabRemapping(tensorflow::Scope& scope, 
           tensorflow::Input new_vocab_file, 
           tensorflow::Input old_vocab_file, 
           int64_t new_vocab_offset = 0, 
           int64_t num_new_vocab = 0, 
           int64_t old_vocab_size = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class If{
  public:
    If() {}
    If(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class TensorForestTreeDeserialize{
  public:
    TensorForestTreeDeserialize() {}
    TensorForestTreeDeserialize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle, 
           tensorflow::Input tree_config);
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

class BoostedTreesGetEnsembleStates{
  public:
    BoostedTreesGetEnsembleStates() {}
    BoostedTreesGetEnsembleStates(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorForestTreeSerialize{
  public:
    TensorForestTreeSerialize() {}
    TensorForestTreeSerialize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MultiDeviceIterator{
  public:
    MultiDeviceIterator() {}
    MultiDeviceIterator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::string> devices, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNParamsSize{
  public:
    CudnnRNNParamsSize() {}
    CudnnRNNParamsSize(tensorflow::Scope& scope, 
           tensorflow::Input num_layers, 
           tensorflow::Input num_units, 
           tensorflow::Input input_size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType S = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalDenseToSparseBatchDataset{
  public:
    ExperimentalDenseToSparseBatchDataset() {}
    ExperimentalDenseToSparseBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::Input row_shape, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
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

class EnsureShape{
  public:
    EnsureShape() {}
    EnsureShape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorForestTreeIsInitializedOp{
  public:
    TensorForestTreeIsInitializedOp() {}
    TensorForestTreeIsInitializedOp(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle);
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

class GatherV2{
  public:
    GatherV2() {}
    GatherV2(tensorflow::Scope& scope, 
           tensorflow::Input params, 
           tensorflow::Input indices, 
           tensorflow::Input axis, 
           tensorflow::DataType Tparams = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalParseExampleDataset{
  public:
    ExperimentalParseExampleDataset() {}
    ExperimentalParseExampleDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::InputList dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::string> sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tdense, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> dense_shapes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool sloppy = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesBucketize{
  public:
    BoostedTreesBucketize() {}
    BoostedTreesBucketize(tensorflow::Scope& scope, 
           tensorflow::Input float_values, 
           tensorflow::Input bucket_boundaries, 
           int64_t num_features = 0);
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

class BoostedTreesQuantileStreamResourceGetBucketBoundaries{
  public:
    BoostedTreesQuantileStreamResourceGetBucketBoundaries() {}
    BoostedTreesQuantileStreamResourceGetBucketBoundaries(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PopulationCount{
  public:
    PopulationCount() {}
    PopulationCount(tensorflow::Scope& scope, 
           tensorflow::Input x);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WholeFileReaderV2{
  public:
    WholeFileReaderV2() {}
    WholeFileReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesQuantileStreamResourceFlush{
  public:
    BoostedTreesQuantileStreamResourceFlush() {}
    BoostedTreesQuantileStreamResourceFlush(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input num_buckets, 
           bool generate_quantiles = false);
    tensorflow::Operation operation;
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

class FakeQueue{
  public:
    FakeQueue() {}
    FakeQueue(tensorflow::Scope& scope, 
           tensorflow::Input resource);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesPredict{
  public:
    BoostedTreesPredict() {}
    BoostedTreesPredict(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input bucketized_features, 
           int64_t num_bucketized_features = 0, 
           int64_t logits_dimension = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesMakeStatsSummary{
  public:
    BoostedTreesMakeStatsSummary() {}
    BoostedTreesMakeStatsSummary(tensorflow::Scope& scope, 
           tensorflow::Input node_ids, 
           tensorflow::Input gradients, 
           tensorflow::Input hessians, 
           tensorflow::Input bucketized_features_list, 
           int64_t max_splits = 0, 
           int64_t num_buckets = 0, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BiasAddV1{
  public:
    BiasAddV1() {}
    BiasAddV1(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input bias, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class BoostedTreesDeserializeEnsemble{
  public:
    BoostedTreesDeserializeEnsemble() {}
    BoostedTreesDeserializeEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input stamp_token, 
           tensorflow::Input tree_ensemble_serialized);
    tensorflow::Operation operation;
};

class NegTrain{
  public:
    NegTrain() {}
    NegTrain(tensorflow::Scope& scope, 
           tensorflow::Input w_in, 
           tensorflow::Input w_out, 
           tensorflow::Input examples, 
           tensorflow::Input labels, 
           tensorflow::Input lr, 
           tensorflow::gtl::ArraySlice<int64_t> vocab_count, 
           int64_t num_negative_samples = 0);
    tensorflow::Operation operation;
};

class ConcatV2{
  public:
    ConcatV2() {}
    ConcatV2(tensorflow::Scope& scope, 
           tensorflow::InputList values, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ConcatOffset{
  public:
    ConcatOffset() {}
    ConcatOffset(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList shape);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class BoostedTreesExampleDebugOutputs{
  public:
    BoostedTreesExampleDebugOutputs() {}
    BoostedTreesExampleDebugOutputs(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input bucketized_features, 
           int64_t num_bucketized_features = 0, 
           int64_t logits_dimension = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeGif{
  public:
    DecodeGif() {}
    DecodeGif(tensorflow::Scope& scope, 
           tensorflow::Input contents);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesCalculateBestGainsPerFeature{
  public:
    BoostedTreesCalculateBestGainsPerFeature() {}
    BoostedTreesCalculateBestGainsPerFeature(tensorflow::Scope& scope, 
           tensorflow::Input node_id_range, 
           tensorflow::Input stats_summary_list, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input tree_complexity, 
           tensorflow::Input min_node_weight, 
           int64_t max_splits = 0, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SampleDistortedBoundingBox{
  public:
    SampleDistortedBoundingBox() {}
    SampleDistortedBoundingBox(tensorflow::Scope& scope, 
           tensorflow::Input image_size, 
           tensorflow::Input bounding_boxes, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           float min_object_covered = 0.1000000014901161, 
           tensorflow::gtl::ArraySlice<float> aspect_ratio_range = {0.75, 1.330000042915344}, 
           tensorflow::gtl::ArraySlice<float> area_range = {0.05000000074505806, 1.0}, 
           int64_t max_attempts = 100, 
           bool use_image_if_no_bounding_boxes = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeBmp{
  public:
    DecodeBmp() {}
    DecodeBmp(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t channels = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RightShift{
  public:
    RightShift() {}
    RightShift(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
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

class MutableDenseHashTable{
  public:
    MutableDenseHashTable() {}
    MutableDenseHashTable(tensorflow::Scope& scope, 
           tensorflow::Input empty_key, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           float max_load_factor = 0.800000011920929, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape value_shape = {}, 
           int64_t initial_num_buckets = 131072);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGrad{
  public:
    TensorArrayGrad() {}
    TensorArrayGrad(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _MklSquaredDifference{
  public:
    _MklSquaredDifference() {}
    _MklSquaredDifference(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input mkl_x, 
           tensorflow::Input mkl_y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnbatchGrad{
  public:
    UnbatchGrad() {}
    UnbatchGrad(tensorflow::Scope& scope, 
           tensorflow::Input original_input, 
           tensorflow::Input batch_index, 
           tensorflow::Input grad, 
           tensorflow::Input id, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
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

class BroadcastGradientArgs{
  public:
    BroadcastGradientArgs() {}
    BroadcastGradientArgs(tensorflow::Scope& scope, 
           tensorflow::Input s0, 
           tensorflow::Input s1, 
           tensorflow::DataType T = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NonMaxSuppressionV3{
  public:
    NonMaxSuppressionV3() {}
    NonMaxSuppressionV3(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold, 
           tensorflow::Input score_threshold);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _If{
  public:
    _If() {}
    _If(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class BatchIFFT{
  public:
    BatchIFFT() {}
    BatchIFFT(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueDequeueUpToV2{
  public:
    QueueDequeueUpToV2() {}
    QueueDequeueUpToV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class DecodeWav{
  public:
    DecodeWav() {}
    DecodeWav(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t desired_channels = -1, 
           int64_t desired_samples = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseAccumulatorApplyGradient{
  public:
    SparseAccumulatorApplyGradient() {}
    SparseAccumulatorApplyGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input local_step, 
           tensorflow::Input gradient_indices, 
           tensorflow::Input gradient_values, 
           tensorflow::Input gradient_shape, 
           bool has_known_shape = false);
    tensorflow::Operation operation;
};

class AssignSubVariableOp{
  public:
    AssignSubVariableOp() {}
    AssignSubVariableOp(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input value);
    tensorflow::Operation operation;
};

class FusedBatchNormGrad{
  public:
    FusedBatchNormGrad() {}
    FusedBatchNormGrad(tensorflow::Scope& scope, 
           tensorflow::Input y_backprop, 
           tensorflow::Input x, 
           tensorflow::Input scale, 
           tensorflow::Input reserve_space_1, 
           tensorflow::Input reserve_space_2, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           float epsilon = 9.999999747378752e-05, 
           tensorflow::string data_format = "NHWC", 
           bool is_training = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnravelIndex{
  public:
    UnravelIndex() {}
    UnravelIndex(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input dims, 
           tensorflow::DataType Tidx = tensorflow::DT_INT32);
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

class TensorArrayClose{
  public:
    TensorArrayClose() {}
    TensorArrayClose(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
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

class ResizeNearestNeighbor{
  public:
    ResizeNearestNeighbor() {}
    ResizeNearestNeighbor(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
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

class OnesLike{
  public:
    OnesLike() {}
    OnesLike(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EncodeWav{
  public:
    EncodeWav() {}
    EncodeWav(tensorflow::Scope& scope, 
           tensorflow::Input audio, 
           tensorflow::Input sample_rate);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FixedLengthRecordDatasetV2{
  public:
    FixedLengthRecordDatasetV2() {}
    FixedLengthRecordDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input header_bytes, 
           tensorflow::Input record_bytes, 
           tensorflow::Input footer_bytes, 
           tensorflow::Input buffer_size, 
           tensorflow::Input compression_type);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorGetNext{
  public:
    IteratorGetNext() {}
    IteratorGetNext(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class FakeQuantWithMinMaxArgsGradient{
  public:
    FakeQuantWithMinMaxArgsGradient() {}
    FakeQuantWithMinMaxArgsGradient(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input inputs, 
           float min = -6.0, 
           float max = 6.0, 
           int64_t num_bits = 8, 
           bool narrow_range = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyAdadelta{
  public:
    ResourceApplyAdadelta() {}
    ResourceApplyAdadelta(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input accum_update, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class BoostedTreesQuantileStreamResourceDeserialize{
  public:
    BoostedTreesQuantileStreamResourceDeserialize() {}
    BoostedTreesQuantileStreamResourceDeserialize(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input bucket_boundaries, 
           int64_t num_streams = 0);
    tensorflow::Operation operation;
};

class GetSessionHandle{
  public:
    GetSessionHandle() {}
    GetSessionHandle(tensorflow::Scope& scope, 
           tensorflow::Input value);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListConcat{
  public:
    TensorListConcat() {}
    TensorListConcat(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FixedLengthRecordReader{
  public:
    FixedLengthRecordReader() {}
    FixedLengthRecordReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t header_bytes = 0, 
           int64_t record_bytes = 0, 
           int64_t footer_bytes = 0, 
           int64_t hop_bytes = 0);
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

class IsBoostedTreesQuantileStreamResourceInitialized{
  public:
    IsBoostedTreesQuantileStreamResourceInitialized() {}
    IsBoostedTreesQuantileStreamResourceInitialized(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LeftShift{
  public:
    LeftShift() {}
    LeftShift(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class EncodePng{
  public:
    EncodePng() {}
    EncodePng(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           int64_t compression = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Enter{
  public:
    Enter() {}
    Enter(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::string frame_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool is_constant = false, 
           int64_t parallel_iterations = 10);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StageSize{
  public:
    StageSize() {}
    StageSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RaggedTensorToSparse{
  public:
    RaggedTensorToSparse() {}
    RaggedTensorToSparse(tensorflow::Scope& scope, 
           tensorflow::Input rt_nested_splits, 
           tensorflow::Input rt_dense_values, 
           int64_t RAGGED_RANK = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Unique{
  public:
    Unique() {}
    Unique(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ScatterNd{
  public:
    ScatterNd() {}
    ScatterNd(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::Input shape, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayConcatV3{
  public:
    TensorArrayConcatV3() {}
    TensorArrayConcatV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape_except0 = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyFtrlV2{
  public:
    ResourceApplyFtrlV2() {}
    ResourceApplyFtrlV2(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input l2_shrinkage, 
           tensorflow::Input lr_power, 
           bool use_locking = false);
    tensorflow::Operation operation;
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

class StridedSliceAssign{
  public:
    StridedSliceAssign() {}
    StridedSliceAssign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t shrink_axis_mask = 0, 
           int64_t begin_mask = 0, 
           int64_t end_mask = 0, 
           int64_t ellipsis_mask = 0, 
           int64_t new_axis_mask = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedConcat{
  public:
    QuantizedConcat() {}
    QuantizedConcat(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList values, 
           tensorflow::InputList input_mins, 
           tensorflow::InputList input_maxes, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LookupTableInsert{
  public:
    LookupTableInsert() {}
    LookupTableInsert(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

class ExtractVolumePatches{
  public:
    ExtractVolumePatches() {}
    ExtractVolumePatches(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksizes, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FixedUnigramCandidateSampler{
  public:
    FixedUnigramCandidateSampler() {}
    FixedUnigramCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           tensorflow::string vocab_file, 
           tensorflow::gtl::ArraySlice<float> unigrams, 
           int64_t num_true = 0, 
           int64_t num_sampled = 0, 
           bool unique = false, 
           int64_t range_max = 0, 
           float distortion = 1.0, 
           int64_t num_reserved_ids = 0, 
           int64_t num_shards = 1, 
           int64_t shard = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Merge{
  public:
    Merge() {}
    Merge(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PaddedBatchDatasetV2{
  public:
    PaddedBatchDatasetV2() {}
    PaddedBatchDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::InputList padded_shapes, 
           tensorflow::InputList padding_values, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExtractImagePatches{
  public:
    ExtractImagePatches() {}
    ExtractImagePatches(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::gtl::ArraySlice<int64_t> ksizes, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AllCandidateSampler{
  public:
    AllCandidateSampler() {}
    AllCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true = 0, 
           int64_t num_sampled = 0, 
           bool unique = false, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DepthToSpace{
  public:
    DepthToSpace() {}
    DepthToSpace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t block_size = 0, 
           tensorflow::string data_format = "NHWC");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SpaceToDepth{
  public:
    SpaceToDepth() {}
    SpaceToDepth(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t block_size = 0, 
           tensorflow::string data_format = "NHWC");
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

class RefIdentity{
  public:
    RefIdentity() {}
    RefIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FilterDataset{
  public:
    FilterDataset() {}
    FilterDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList predicate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeserializeSparse{
  public:
    DeserializeSparse() {}
    DeserializeSparse(tensorflow::Scope& scope, 
           tensorflow::Input serialized_sparse, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapClear{
  public:
    MapClear() {}
    MapClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class QuantizedRelu6{
  public:
    QuantizedRelu6() {}
    QuantizedRelu6(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::Input min_features, 
           tensorflow::Input max_features, 
           tensorflow::DataType out_type = tensorflow::DT_QUINT8);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceStridedSliceAssign{
  public:
    ResourceStridedSliceAssign() {}
    ResourceStridedSliceAssign(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input value, 
           int64_t new_axis_mask = 0, 
           int64_t shrink_axis_mask = 0, 
           int64_t begin_mask = 0, 
           int64_t end_mask = 0, 
           int64_t ellipsis_mask = 0);
    tensorflow::Operation operation;
};

class Squeeze{
  public:
    Squeeze() {}
    Squeeze(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> squeeze_dims, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InplaceUpdate{
  public:
    InplaceUpdate() {}
    InplaceUpdate(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input i, 
           tensorflow::Input v, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InitializeTableV2{
  public:
    InitializeTableV2() {}
    InitializeTableV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

class NextIteration{
  public:
    NextIteration() {}
    NextIteration(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Copy{
  public:
    Copy() {}
    Copy(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_ops_spec, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StringLength{
  public:
    StringLength() {}
    StringLength(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string unit = "BYTE");
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

class TensorSummary{
  public:
    TensorSummary() {}
    TensorSummary(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string description, 
           tensorflow::gtl::ArraySlice<tensorflow::string> labels, 
           tensorflow::string display_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseApplyProximalGradientDescent{
  public:
    SparseApplyProximalGradientDescent() {}
    SparseApplyProximalGradientDescent(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input alpha, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Tile{
  public:
    Tile() {}
    Tile(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input multiples, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class _HostSend{
  public:
    _HostSend() {}
    _HostSend(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string tensor_name, 
           tensorflow::string send_device, 
           tensorflow::string recv_device, 
           bool client_terminated = false, 
           int64_t send_device_incarnation = 0);
    tensorflow::Operation operation;
};

class ExpandDims{
  public:
    ExpandDims() {}
    ExpandDims(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input dim, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SpaceToBatch{
  public:
    SpaceToBatch() {}
    SpaceToBatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t block_size = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MaxPoolWithArgmax{
  public:
    MaxPoolWithArgmax() {}
    MaxPoolWithArgmax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType Targmax = tensorflow::DT_INT64, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RefEnter{
  public:
    RefEnter() {}
    RefEnter(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::string frame_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool is_constant = false, 
           int64_t parallel_iterations = 10);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PriorityQueueV2{
  public:
    PriorityQueueV2() {}
    PriorityQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IsBoostedTreesEnsembleInitialized{
  public:
    IsBoostedTreesEnsembleInitialized() {}
    IsBoostedTreesEnsembleInitialized(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RepeatDataset{
  public:
    RepeatDataset() {}
    RepeatDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesCreateEnsemble{
  public:
    BoostedTreesCreateEnsemble() {}
    BoostedTreesCreateEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input stamp_token, 
           tensorflow::Input tree_ensemble_serialized);
    tensorflow::Operation operation;
};

class Fill{
  public:
    Fill() {}
    Fill(tensorflow::Scope& scope, 
           tensorflow::Input dims, 
           tensorflow::Input value, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyCenteredRMSProp{
  public:
    ApplyCenteredRMSProp() {}
    ApplyCenteredRMSProp(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input mg, 
           tensorflow::Input ms, 
           tensorflow::Input mom, 
           tensorflow::Input lr, 
           tensorflow::Input rho, 
           tensorflow::Input momentum, 
           tensorflow::Input epsilon, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Const{
  public:
    Const() {}
    Const(tensorflow::Scope& scope, 
           tensorflow::Tensor value, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PlaceholderWithDefault{
  public:
    PlaceholderWithDefault() {}
    PlaceholderWithDefault(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Placeholder{
  public:
    Placeholder() {}
    Placeholder(tensorflow::Scope& scope, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueEnqueueManyV2{
  public:
    QueueEnqueueManyV2() {}
    QueueEnqueueManyV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
};

class Shape{
  public:
    Shape() {}
    Shape(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Dilation2DBackpropFilter{
  public:
    Dilation2DBackpropFilter() {}
    Dilation2DBackpropFilter(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class AvgPool3D{
  public:
    AvgPool3D() {}
    AvgPool3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::string data_format = "NDHWC", 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DataFormatDimMap{
  public:
    DataFormatDimMap() {}
    DataFormatDimMap(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INT32, 
           tensorflow::string src_format = "NHWC", 
           tensorflow::string dst_format = "NCHW");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackClose{
  public:
    StackClose() {}
    StackClose(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class QueueSizeV2{
  public:
    QueueSizeV2() {}
    QueueSizeV2(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StatelessWhile{
  public:
    StatelessWhile() {}
    StatelessWhile(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
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

class DecodeProtoV2{
  public:
    DecodeProtoV2() {}
    DecodeProtoV2(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::string message_type, 
           tensorflow::gtl::ArraySlice<tensorflow::string> field_names, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::string descriptor_source = "local://", 
           tensorflow::string message_format = "binary", 
           bool sanitize = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Print{
  public:
    Print() {}
    Print(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> U, 
           tensorflow::string message, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t first_n = -1, 
           int64_t summarize = 3);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizeAndDequantizeV2{
  public:
    QuantizeAndDequantizeV2() {}
    QuantizeAndDequantizeV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           bool signed_input = true, 
           int64_t num_bits = 8, 
           bool range_given = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string round_mode = "HALF_TO_EVEN");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FractionalAvgPool{
  public:
    FractionalAvgPool() {}
    FractionalAvgPool(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::gtl::ArraySlice<float> pooling_ratio, 
           bool pseudo_random = false, 
           bool overlapping = false, 
           bool deterministic = false, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SparseAccumulatorTakeGradient{
  public:
    SparseAccumulatorTakeGradient() {}
    SparseAccumulatorTakeGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input num_required, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TruncateMod{
  public:
    TruncateMod() {}
    TruncateMod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyFtrl{
  public:
    ResourceApplyFtrl() {}
    ResourceApplyFtrl(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input accum, 
           tensorflow::Input linear, 
           tensorflow::Input grad, 
           tensorflow::Input lr, 
           tensorflow::Input l1, 
           tensorflow::Input l2, 
           tensorflow::Input lr_power, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class StridedSliceGrad{
  public:
    StridedSliceGrad() {}
    StridedSliceGrad(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::Input dy, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t shrink_axis_mask = 0, 
           int64_t begin_mask = 0, 
           int64_t end_mask = 0, 
           int64_t ellipsis_mask = 0, 
           int64_t new_axis_mask = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizeAndDequantize{
  public:
    QuantizeAndDequantize() {}
    QuantizeAndDequantize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool signed_input = true, 
           int64_t num_bits = 8, 
           bool range_given = false, 
           float input_min = 0.0, 
           float input_max = 0.0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesUpdateEnsemble{
  public:
    BoostedTreesUpdateEnsemble() {}
    BoostedTreesUpdateEnsemble(tensorflow::Scope& scope, 
           tensorflow::Input tree_ensemble_handle, 
           tensorflow::Input feature_ids, 
           tensorflow::Input node_ids, 
           tensorflow::Input gains, 
           tensorflow::Input thresholds, 
           tensorflow::Input left_node_contribs, 
           tensorflow::Input right_node_contribs, 
           tensorflow::Input max_depth, 
           tensorflow::Input learning_rate, 
           int64_t pruning_mode = 0, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
};

class Relu6Grad{
  public:
    Relu6Grad() {}
    Relu6Grad(tensorflow::Scope& scope, 
           tensorflow::Input gradients, 
           tensorflow::Input features, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Range{
  public:
    Range() {}
    Range(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input limit, 
           tensorflow::Input delta, 
           tensorflow::DataType Tidx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PrefetchDataset{
  public:
    PrefetchDataset() {}
    PrefetchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeepCopy{
  public:
    DeepCopy() {}
    DeepCopy(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalLatencyStatsDataset{
  public:
    ExperimentalLatencyStatsDataset() {}
    ExperimentalLatencyStatsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input tag, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MultiDeviceIteratorGetNextFromShard{
  public:
    MultiDeviceIteratorGetNextFromShard() {}
    MultiDeviceIteratorGetNextFromShard(tensorflow::Scope& scope, 
           tensorflow::Input multi_device_iterator, 
           tensorflow::Input shard_num, 
           tensorflow::Input incarnation_id, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
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

class TensorArrayGather{
  public:
    TensorArrayGather() {}
    TensorArrayGather(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {});
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

class ZipDataset{
  public:
    ZipDataset() {}
    ZipDataset(tensorflow::Scope& scope, 
           tensorflow::InputList input_datasets, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueClose{
  public:
    QueueClose() {}
    QueueClose(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues = false);
    tensorflow::Operation operation;
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

class Snapshot{
  public:
    Snapshot() {}
    Snapshot(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UniqueV2{
  public:
    UniqueV2() {}
    UniqueV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::DataType out_idx = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CudnnRNNBackpropV2{
  public:
    CudnnRNNBackpropV2() {}
    CudnnRNNBackpropV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_h, 
           tensorflow::Input input_c, 
           tensorflow::Input params, 
           tensorflow::Input output, 
           tensorflow::Input output_h, 
           tensorflow::Input output_c, 
           tensorflow::Input output_backprop, 
           tensorflow::Input output_h_backprop, 
           tensorflow::Input output_c_backprop, 
           tensorflow::Input reserve_space, 
           tensorflow::Input host_reserved, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string rnn_mode = "lstm", 
           tensorflow::string input_mode = "linear_input", 
           tensorflow::string direction = "unidirectional", 
           float dropout = 0.0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InvertPermutation{
  public:
    InvertPermutation() {}
    InvertPermutation(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderReset{
  public:
    ReaderReset() {}
    ReaderReset(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
};

class StopGradient{
  public:
    StopGradient() {}
    StopGradient(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
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

class TensorForestTreeSize{
  public:
    TensorForestTreeSize() {}
    TensorForestTreeSize(tensorflow::Scope& scope, 
           tensorflow::Input tree_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
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

class Abort{
  public:
    Abort() {}
    Abort(tensorflow::Scope& scope, 
           tensorflow::string error_msg, 
           bool exit_without_error = false);
    tensorflow::Operation operation;
};

class MutableHashTableOfTensorsV2{
  public:
    MutableHashTableOfTensorsV2() {}
    MutableHashTableOfTensorsV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape value_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorListConcatLists{
  public:
    TensorListConcatLists() {}
    TensorListConcatLists(tensorflow::Scope& scope, 
           tensorflow::Input input_a, 
           tensorflow::Input input_b, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OneHot{
  public:
    OneHot() {}
    OneHot(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input depth, 
           tensorflow::Input on_value, 
           tensorflow::Input off_value, 
           int64_t axis = -1, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Reverse{
  public:
    Reverse() {}
    Reverse(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input dims, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesCreateQuantileStreamResource{
  public:
    BoostedTreesCreateQuantileStreamResource() {}
    BoostedTreesCreateQuantileStreamResource(tensorflow::Scope& scope, 
           tensorflow::Input quantile_stream_resource_handle, 
           tensorflow::Input epsilon, 
           tensorflow::Input num_streams, 
           int64_t max_elements = 1099511627776);
    tensorflow::Operation operation;
};

class ParseSingleExample{
  public:
    ParseSingleExample() {}
    ParseSingleExample(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::InputList dense_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::string> sparse_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::string> dense_keys, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> sparse_types, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tdense, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> dense_shapes, 
           int64_t num_sparse = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GuaranteeConst{
  public:
    GuaranteeConst() {}
    GuaranteeConst(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueEnqueueV2{
  public:
    QueueEnqueueV2() {}
    QueueEnqueueV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
};

class _ScopedAllocatorConcat{
  public:
    _ScopedAllocatorConcat() {}
    _ScopedAllocatorConcat(tensorflow::Scope& scope, 
           tensorflow::Input backing, 
           tensorflow::InputList inputs, 
           tensorflow::string sa_name, 
           tensorflow::PartialTensorShape shape = {}, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool reshape = false, 
           int64_t id = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesQuantileStreamResourceHandleOp{
  public:
    BoostedTreesQuantileStreamResourceHandleOp() {}
    BoostedTreesQuantileStreamResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StatelessTruncatedNormal{
  public:
    StatelessTruncatedNormal() {}
    StatelessTruncatedNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input seed, 
           tensorflow::DataType dtype = tensorflow::DT_FLOAT);
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

class StridedSlice{
  public:
    StridedSlice() {}
    StridedSlice(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input begin, 
           tensorflow::Input end, 
           tensorflow::Input strides, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t shrink_axis_mask = 0, 
           int64_t begin_mask = 0, 
           int64_t end_mask = 0, 
           int64_t ellipsis_mask = 0, 
           int64_t new_axis_mask = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PreventGradient{
  public:
    PreventGradient() {}
    PreventGradient(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string message, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
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

class FusedPadConv2D{
  public:
    FusedPadConv2D() {}
    FusedPadConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::Input filter, 
           tensorflow::string mode, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LookupTableInsertV2{
  public:
    LookupTableInsertV2() {}
    LookupTableInsertV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

class BarrierInsertMany{
  public:
    BarrierInsertMany() {}
    BarrierInsertMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input keys, 
           tensorflow::Input values, 
           int64_t component_index = 0);
    tensorflow::Operation operation;
};

class SplitV{
  public:
    SplitV() {}
    SplitV(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           tensorflow::Input size_splits, 
           tensorflow::Input split_dim, 
           int64_t num_split = 0, 
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

class Bucketize{
  public:
    Bucketize() {}
    Bucketize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<float> boundaries);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DrawBoundingBoxes{
  public:
    DrawBoundingBoxes() {}
    DrawBoundingBoxes(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input boxes, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ZerosLike{
  public:
    ZerosLike() {}
    ZerosLike(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ImageSummary{
  public:
    ImageSummary() {}
    ImageSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           int64_t max_images = 3, 
           tensorflow::Tensor bad_color = _to_tensor({255, 0, 0, 255}, {tensorflow::DT_UINT8}));
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ShapeN{
  public:
    ShapeN() {}
    ShapeN(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::DataType out_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class HostConst{
  public:
    HostConst() {}
    HostConst(tensorflow::Scope& scope, 
           tensorflow::Tensor value, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Empty{
  public:
    Empty() {}
    Empty(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           bool init = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Split{
  public:
    Split() {}
    Split(tensorflow::Scope& scope, 
           tensorflow::Input split_dim, 
           tensorflow::Input value, 
           int64_t num_split = 0, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Conv3DBackpropInput{
  public:
    Conv3DBackpropInput() {}
    Conv3DBackpropInput(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input out_backprop, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DepthwiseConv2dNative{
  public:
    DepthwiseConv2dNative() {}
    DepthwiseConv2dNative(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LearnedUnigramCandidateSampler{
  public:
    LearnedUnigramCandidateSampler() {}
    LearnedUnigramCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true = 0, 
           int64_t num_sampled = 0, 
           bool unique = false, 
           int64_t range_max = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DebugNanCount{
  public:
    DebugNanCount() {}
    DebugNanCount(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           bool gated_grpc = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnicodeScript{
  public:
    UnicodeScript() {}
    UnicodeScript(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OptionalGetValue{
  public:
    OptionalGetValue() {}
    OptionalGetValue(tensorflow::Scope& scope, 
           tensorflow::Input optional, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class TensorListGetItem{
  public:
    TensorListGetItem() {}
    TensorListGetItem(tensorflow::Scope& scope, 
           tensorflow::Input input_handle, 
           tensorflow::Input index, 
           tensorflow::DataType element_dtype = tensorflow::DT_INVALID);
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

class OneShotIterator{
  public:
    OneShotIterator() {}
    OneShotIterator(tensorflow::Scope& scope, 
           tensorflow::NameAttrList dataset_factory, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ResourceApplyPowerSign{
  public:
    ResourceApplyPowerSign() {}
    ResourceApplyPowerSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input logbase, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           bool use_locking = false);
    tensorflow::Operation operation;
};

class Concat{
  public:
    Concat() {}
    Concat(tensorflow::Scope& scope, 
           tensorflow::Input concat_dim, 
           tensorflow::InputList values, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TextLineReader{
  public:
    TextLineReader() {}
    TextLineReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t skip_header_lines = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RecordInput{
  public:
    RecordInput() {}
    RecordInput(tensorflow::Scope& scope, 
           tensorflow::string file_pattern, 
           tensorflow::string compression_type, 
           int64_t file_random_seed = 301, 
           float file_shuffle_shift_ratio = 0.0, 
           int64_t file_buffer_size = 10000, 
           int64_t file_parallelism = 16, 
           int64_t batch_size = 32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ApplyAddSign{
  public:
    ApplyAddSign() {}
    ApplyAddSign(tensorflow::Scope& scope, 
           tensorflow::Input var, 
           tensorflow::Input m, 
           tensorflow::Input lr, 
           tensorflow::Input alpha, 
           tensorflow::Input sign_decay, 
           tensorflow::Input beta, 
           tensorflow::Input grad, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool use_locking = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BitwiseAnd{
  public:
    BitwiseAnd() {}
    BitwiseAnd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
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

class _FusedConv2D{
  public:
    _FusedConv2D() {}
    _FusedConv2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input filter, 
           tensorflow::Input args, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::gtl::ArraySlice<tensorflow::string> fused_ops, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t num_args = 0, 
           tensorflow::string data_format = "NHWC", 
           tensorflow::gtl::ArraySlice<int64_t> dilations = {1, 1, 1, 1}, 
           float epsilon = 9.999999747378752e-05);
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

class AdjustHue{
  public:
    AdjustHue() {}
    AdjustHue(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input delta);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SpaceToBatchND{
  public:
    SpaceToBatchND() {}
    SpaceToBatchND(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input block_shape, 
           tensorflow::Input paddings, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QuantizedMaxPool{
  public:
    QuantizedMaxPool() {}
    QuantizedMaxPool(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_input, 
           tensorflow::Input max_input, 
           tensorflow::gtl::ArraySlice<int64_t> ksize, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MirrorPadGrad{
  public:
    MirrorPadGrad() {}
    MirrorPadGrad(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::string mode, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CTCGreedyDecoder{
  public:
    CTCGreedyDecoder() {}
    CTCGreedyDecoder(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input sequence_length, 
           bool merge_repeated = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CopyHost{
  public:
    CopyHost() {}
    CopyHost(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_ops_spec, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapUnstageNoKey{
  public:
    MapUnstageNoKey() {}
    MapUnstageNoKey(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorScatterAdd{
  public:
    TensorScatterAdd() {}
    TensorScatterAdd(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalMaterializedIndexDatasetHandle{
  public:
    ExperimentalMaterializedIndexDatasetHandle() {}
    ExperimentalMaterializedIndexDatasetHandle(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesEnsembleResourceHandleOp{
  public:
    BoostedTreesEnsembleResourceHandleOp() {}
    BoostedTreesEnsembleResourceHandleOp(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
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

class OptimizeDataset{
  public:
    OptimizeDataset() {}
    OptimizeDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input optimizations, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DebugIdentity{
  public:
    DebugIdentity() {}
    DebugIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string device_name, 
           tensorflow::string tensor_name, 
           tensorflow::gtl::ArraySlice<tensorflow::string> debug_urls, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool gated_grpc = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BroadcastArgs{
  public:
    BroadcastArgs() {}
    BroadcastArgs(tensorflow::Scope& scope, 
           tensorflow::Input s0, 
           tensorflow::Input s1, 
           tensorflow::DataType T = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DecodeCSV{
  public:
    DecodeCSV() {}
    DecodeCSV(tensorflow::Scope& scope, 
           tensorflow::Input records, 
           tensorflow::InputList record_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> OUT_TYPE, 
           tensorflow::string na_value, 
           tensorflow::gtl::ArraySlice<int64_t> select_cols, 
           tensorflow::string field_delim = ",", 
           bool use_quote_delim = true);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class ExperimentalLMDBDataset{
  public:
    ExperimentalLMDBDataset() {}
    ExperimentalLMDBDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OptionalNone{
  public:
    OptionalNone() {}
    OptionalNone(tensorflow::Scope& scope);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalNumaMapAndBatchDataset{
  public:
    ExperimentalNumaMapAndBatchDataset() {}
    ExperimentalNumaMapAndBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input batch_size, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::Input drop_remainder, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DynamicPartition{
  public:
    DynamicPartition() {}
    DynamicPartition(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input partitions, 
           int64_t num_partitions = 0, 
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

class FixedLengthRecordDataset{
  public:
    FixedLengthRecordDataset() {}
    FixedLengthRecordDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input header_bytes, 
           tensorflow::Input record_bytes, 
           tensorflow::Input footer_bytes, 
           tensorflow::Input buffer_size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CTCLoss{
  public:
    CTCLoss() {}
    CTCLoss(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input labels_indices, 
           tensorflow::Input labels_values, 
           tensorflow::Input sequence_length, 
           bool preprocess_collapse_repeated = false, 
           bool ctc_merge_repeated = true, 
           bool ignore_longer_outputs_than_inputs = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DebugGradientIdentity{
  public:
    DebugGradientIdentity() {}
    DebugGradientIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySplit{
  public:
    TensorArraySplit() {}
    TensorArraySplit(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnicodeEncode{
  public:
    UnicodeEncode() {}
    UnicodeEncode(tensorflow::Scope& scope, 
           tensorflow::Input input_values, 
           tensorflow::Input input_splits, 
           tensorflow::string output_encoding, 
           tensorflow::string errors = "replace", 
           int64_t replacement_char = 65533);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Switch{
  public:
    Switch() {}
    Switch(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input pred, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
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

class WholeFileReader{
  public:
    WholeFileReader() {}
    WholeFileReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ExperimentalSlidingWindowDataset{
  public:
    ExperimentalSlidingWindowDataset() {}
    ExperimentalSlidingWindowDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input window_size, 
           tensorflow::Input window_shift, 
           tensorflow::Input window_stride, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TakeManySparseFromTensorsMap{
  public:
    TakeManySparseFromTensorsMap() {}
    TakeManySparseFromTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_handles, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class BoostedTreesMakeQuantileSummaries{
  public:
    BoostedTreesMakeQuantileSummaries() {}
    BoostedTreesMakeQuantileSummaries(tensorflow::Scope& scope, 
           tensorflow::Input float_values, 
           tensorflow::Input example_weights, 
           tensorflow::Input epsilon, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FractionalMaxPoolGrad{
  public:
    FractionalMaxPoolGrad() {}
    FractionalMaxPoolGrad(tensorflow::Scope& scope, 
           tensorflow::Input orig_input, 
           tensorflow::Input orig_output, 
           tensorflow::Input out_backprop, 
           tensorflow::Input row_pooling_sequence, 
           tensorflow::Input col_pooling_sequence, 
           bool overlapping = false, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

