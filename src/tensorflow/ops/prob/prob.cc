#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/prob/prob.h"

AllCandidateSampler::AllCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true, 
           int64_t num_sampled, 
           bool unique, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _true_classes = ::tensorflow::ops::AsNodeOut(scope, true_classes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AllCandidateSampler");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AllCandidateSampler")
                                   .Input(_true_classes)
                                   .Attr("num_true", num_true)
                                   .Attr("num_sampled", num_sampled)
                                   .Attr("unique", unique)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FixedUnigramCandidateSampler::FixedUnigramCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           tensorflow::string vocab_file, 
           tensorflow::gtl::ArraySlice<float> unigrams, 
           int64_t num_true, 
           int64_t num_sampled, 
           bool unique, 
           int64_t range_max, 
           float distortion, 
           int64_t num_reserved_ids, 
           int64_t num_shards, 
           int64_t shard, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _true_classes = ::tensorflow::ops::AsNodeOut(scope, true_classes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FixedUnigramCandidateSampler");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FixedUnigramCandidateSampler")
                                   .Input(_true_classes)
                                   .Attr("vocab_file", vocab_file)
                                   .Attr("unigrams", unigrams)
                                   .Attr("num_true", num_true)
                                   .Attr("num_sampled", num_sampled)
                                   .Attr("unique", unique)
                                   .Attr("range_max", range_max)
                                   .Attr("distortion", distortion)
                                   .Attr("num_reserved_ids", num_reserved_ids)
                                   .Attr("num_shards", num_shards)
                                   .Attr("shard", shard)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LearnedUnigramCandidateSampler::LearnedUnigramCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true, 
           int64_t num_sampled, 
           bool unique, 
           int64_t range_max, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _true_classes = ::tensorflow::ops::AsNodeOut(scope, true_classes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LearnedUnigramCandidateSampler");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LearnedUnigramCandidateSampler")
                                   .Input(_true_classes)
                                   .Attr("num_true", num_true)
                                   .Attr("num_sampled", num_sampled)
                                   .Attr("unique", unique)
                                   .Attr("range_max", range_max)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LogUniformCandidateSampler::LogUniformCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true, 
           int64_t num_sampled, 
           bool unique, 
           int64_t range_max, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _true_classes = ::tensorflow::ops::AsNodeOut(scope, true_classes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LogUniformCandidateSampler");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LogUniformCandidateSampler")
                                   .Input(_true_classes)
                                   .Attr("num_true", num_true)
                                   .Attr("num_sampled", num_sampled)
                                   .Attr("unique", unique)
                                   .Attr("range_max", range_max)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Multinomial::Multinomial(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::Input num_samples, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType output_dtype) {
      if (!scope.ok())
          return;
      auto _logits = ::tensorflow::ops::AsNodeOut(scope, logits);
      if (!scope.ok())
          return;
      auto _num_samples = ::tensorflow::ops::AsNodeOut(scope, num_samples);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Multinomial");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Multinomial")
                                   .Input(_logits)
                                   .Input(_num_samples)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("output_dtype", output_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ParameterizedTruncatedNormal::ParameterizedTruncatedNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input means, 
           tensorflow::Input stdevs, 
           tensorflow::Input minvals, 
           tensorflow::Input maxvals, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _means = ::tensorflow::ops::AsNodeOut(scope, means);
      if (!scope.ok())
          return;
      auto _stdevs = ::tensorflow::ops::AsNodeOut(scope, stdevs);
      if (!scope.ok())
          return;
      auto _minvals = ::tensorflow::ops::AsNodeOut(scope, minvals);
      if (!scope.ok())
          return;
      auto _maxvals = ::tensorflow::ops::AsNodeOut(scope, maxvals);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParameterizedTruncatedNormal");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParameterizedTruncatedNormal")
                                   .Input(_shape)
                                   .Input(_means)
                                   .Input(_stdevs)
                                   .Input(_minvals)
                                   .Input(_maxvals)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomGamma::RandomGamma(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input alpha, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomGamma");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomGamma")
                                   .Input(_shape)
                                   .Input(_alpha)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomGammaGrad::RandomGammaGrad(tensorflow::Scope& scope, 
           tensorflow::Input alpha, 
           tensorflow::Input sample, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _alpha = ::tensorflow::ops::AsNodeOut(scope, alpha);
      if (!scope.ok())
          return;
      auto _sample = ::tensorflow::ops::AsNodeOut(scope, sample);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomGammaGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomGammaGrad")
                                   .Input(_alpha)
                                   .Input(_sample)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomPoisson::RandomPoisson(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input rate, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _rate = ::tensorflow::ops::AsNodeOut(scope, rate);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomPoisson");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomPoisson")
                                   .Input(_shape)
                                   .Input(_rate)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomPoissonV2::RandomPoissonV2(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input rate, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _rate = ::tensorflow::ops::AsNodeOut(scope, rate);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomPoissonV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomPoissonV2")
                                   .Input(_shape)
                                   .Input(_rate)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomShuffle::RandomShuffle(tensorflow::Scope& scope, 
           tensorflow::Input value, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomShuffle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomShuffle")
                                   .Input(_value)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomStandardNormal::RandomStandardNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomStandardNormal");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomStandardNormal")
                                   .Input(_shape)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomUniform::RandomUniform(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomUniform");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomUniform")
                                   .Input(_shape)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomUniformInt::RandomUniformInt(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input minval, 
           tensorflow::Input maxval, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType Tout) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _minval = ::tensorflow::ops::AsNodeOut(scope, minval);
      if (!scope.ok())
          return;
      auto _maxval = ::tensorflow::ops::AsNodeOut(scope, maxval);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomUniformInt");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomUniformInt")
                                   .Input(_shape)
                                   .Input(_minval)
                                   .Input(_maxval)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseAccumulatorTakeGradient::SparseAccumulatorTakeGradient(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input num_required, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _num_required = ::tensorflow::ops::AsNodeOut(scope, num_required);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseAccumulatorTakeGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseAccumulatorTakeGradient")
                                   .Input(_handle)
                                   .Input(_num_required)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StatelessMultinomial::StatelessMultinomial(tensorflow::Scope& scope, 
           tensorflow::Input logits, 
           tensorflow::Input num_samples, 
           tensorflow::Input seed, 
           tensorflow::DataType output_dtype) {
      if (!scope.ok())
          return;
      auto _logits = ::tensorflow::ops::AsNodeOut(scope, logits);
      if (!scope.ok())
          return;
      auto _num_samples = ::tensorflow::ops::AsNodeOut(scope, num_samples);
      if (!scope.ok())
          return;
      auto _seed = ::tensorflow::ops::AsNodeOut(scope, seed);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StatelessMultinomial");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StatelessMultinomial")
                                   .Input(_logits)
                                   .Input(_num_samples)
                                   .Input(_seed)
                                   .Attr("output_dtype", output_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StatelessRandomNormal::StatelessRandomNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input seed, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _seed = ::tensorflow::ops::AsNodeOut(scope, seed);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StatelessRandomNormal");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StatelessRandomNormal")
                                   .Input(_shape)
                                   .Input(_seed)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StatelessRandomUniform::StatelessRandomUniform(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input seed, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _seed = ::tensorflow::ops::AsNodeOut(scope, seed);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StatelessRandomUniform");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StatelessRandomUniform")
                                   .Input(_shape)
                                   .Input(_seed)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StatelessRandomUniformInt::StatelessRandomUniformInt(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input seed, 
           tensorflow::Input minval, 
           tensorflow::Input maxval, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _seed = ::tensorflow::ops::AsNodeOut(scope, seed);
      if (!scope.ok())
          return;
      auto _minval = ::tensorflow::ops::AsNodeOut(scope, minval);
      if (!scope.ok())
          return;
      auto _maxval = ::tensorflow::ops::AsNodeOut(scope, maxval);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StatelessRandomUniformInt");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StatelessRandomUniformInt")
                                   .Input(_shape)
                                   .Input(_seed)
                                   .Input(_minval)
                                   .Input(_maxval)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StatelessTruncatedNormal::StatelessTruncatedNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           tensorflow::Input seed, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      if (!scope.ok())
          return;
      auto _seed = ::tensorflow::ops::AsNodeOut(scope, seed);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StatelessTruncatedNormal");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StatelessTruncatedNormal")
                                   .Input(_shape)
                                   .Input(_seed)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ThreadUnsafeUnigramCandidateSampler::ThreadUnsafeUnigramCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true, 
           int64_t num_sampled, 
           bool unique, 
           int64_t range_max, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _true_classes = ::tensorflow::ops::AsNodeOut(scope, true_classes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ThreadUnsafeUnigramCandidateSampler");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ThreadUnsafeUnigramCandidateSampler")
                                   .Input(_true_classes)
                                   .Attr("num_true", num_true)
                                   .Attr("num_sampled", num_sampled)
                                   .Attr("unique", unique)
                                   .Attr("range_max", range_max)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TruncatedNormal::TruncatedNormal(tensorflow::Scope& scope, 
           tensorflow::Input shape, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _shape = ::tensorflow::ops::AsNodeOut(scope, shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TruncatedNormal");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TruncatedNormal")
                                   .Input(_shape)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UniformCandidateSampler::UniformCandidateSampler(tensorflow::Scope& scope, 
           tensorflow::Input true_classes, 
           int64_t num_true, 
           int64_t num_sampled, 
           bool unique, 
           int64_t range_max, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _true_classes = ::tensorflow::ops::AsNodeOut(scope, true_classes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UniformCandidateSampler");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UniformCandidateSampler")
                                   .Input(_true_classes)
                                   .Attr("num_true", num_true)
                                   .Attr("num_sampled", num_sampled)
                                   .Attr("unique", unique)
                                   .Attr("range_max", range_max)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

