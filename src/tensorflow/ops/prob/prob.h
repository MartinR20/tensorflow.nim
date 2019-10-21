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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

#pragma once
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

