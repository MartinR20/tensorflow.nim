import ../core

{.compile:"prob/prob.cc".}


type AllCandidateSampler* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"AllCandidateSampler/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiallCandidateSampler(scope: Scope,
                          true_classes: oint64,
                          num_true: int64,
                          num_sampled: int64,
                          unique: bool,
                          seed: int64,
                          seed2: int64): AllCandidateSampler {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"AllCandidateSampler(*#, #, #, #, #, #, #)", constructor.}

proc allCandidateSampler*(scope: Scope,
                          true_classes: oint64,
                          num_true: int64 = 0.int,
                          num_sampled: int64 = 0.int,
                          unique: bool = false,
                          seed: int64 = 0.int,
                          seed2: int64 = 0.int): AllCandidateSampler =
  return iiallCandidateSampler(scope,
                               true_classes,
                               num_true,
                               num_sampled,
                               unique,
                               seed,
                               seed2)

converter allCandidateSamplerToOut*(op: AllCandidateSampler): oint64 {.inline.} = return op.output


type FixedUnigramCandidateSampler* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"FixedUnigramCandidateSampler/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iifixedUnigramCandidateSampler(scope: Scope,
                                   true_classes: oint64,
                                   vocab_file: cstring,
                                   unigrams: ArraySlice[float32],
                                   num_true: int64,
                                   num_sampled: int64,
                                   unique: bool,
                                   range_max: int64,
                                   distortion: float32,
                                   num_reserved_ids: int64,
                                   num_shards: int64,
                                   shard: int64,
                                   seed: int64,
                                   seed2: int64): FixedUnigramCandidateSampler {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"FixedUnigramCandidateSampler(*#, #, tensorflow::string(#), #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc fixedUnigramCandidateSampler*(scope: Scope,
                                   true_classes: oint64,
                                   vocab_file: cstring,
                                   unigrams: openArray[float32],
                                   num_true: int64 = 0.int,
                                   num_sampled: int64 = 0.int,
                                   unique: bool = false,
                                   range_max: int64 = 0.int,
                                   distortion: float32 = 1.0.float32,
                                   num_reserved_ids: int64 = 0.int,
                                   num_shards: int64 = 1.int,
                                   shard: int64 = 0.int,
                                   seed: int64 = 0.int,
                                   seed2: int64 = 0.int): FixedUnigramCandidateSampler =
  return iifixedUnigramCandidateSampler(scope,
                                        true_classes,
                                        vocab_file,
                                        newArraySlice(unigrams),
                                        num_true,
                                        num_sampled,
                                        unique,
                                        range_max,
                                        distortion,
                                        num_reserved_ids,
                                        num_shards,
                                        shard,
                                        seed,
                                        seed2)

converter fixedUnigramCandidateSamplerToOut*(op: FixedUnigramCandidateSampler): oint64 {.inline.} = return op.output


type LearnedUnigramCandidateSampler* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"LearnedUnigramCandidateSampler/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iilearnedUnigramCandidateSampler(scope: Scope,
                                     true_classes: oint64,
                                     num_true: int64,
                                     num_sampled: int64,
                                     unique: bool,
                                     range_max: int64,
                                     seed: int64,
                                     seed2: int64): LearnedUnigramCandidateSampler {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"LearnedUnigramCandidateSampler(*#, #, #, #, #, #, #, #)", constructor.}

proc learnedUnigramCandidateSampler*(scope: Scope,
                                     true_classes: oint64,
                                     num_true: int64 = 0.int,
                                     num_sampled: int64 = 0.int,
                                     unique: bool = false,
                                     range_max: int64 = 0.int,
                                     seed: int64 = 0.int,
                                     seed2: int64 = 0.int): LearnedUnigramCandidateSampler =
  return iilearnedUnigramCandidateSampler(scope,
                                          true_classes,
                                          num_true,
                                          num_sampled,
                                          unique,
                                          range_max,
                                          seed,
                                          seed2)

converter learnedUnigramCandidateSamplerToOut*(op: LearnedUnigramCandidateSampler): oint64 {.inline.} = return op.output


type LogUniformCandidateSampler* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"LogUniformCandidateSampler/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iilogUniformCandidateSampler(scope: Scope,
                                 true_classes: oint64,
                                 num_true: int64,
                                 num_sampled: int64,
                                 unique: bool,
                                 range_max: int64,
                                 seed: int64,
                                 seed2: int64): LogUniformCandidateSampler {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"LogUniformCandidateSampler(*#, #, #, #, #, #, #, #)", constructor.}

proc logUniformCandidateSampler*(scope: Scope,
                                 true_classes: oint64,
                                 num_true: int64 = 0.int,
                                 num_sampled: int64 = 0.int,
                                 unique: bool = false,
                                 range_max: int64 = 0.int,
                                 seed: int64 = 0.int,
                                 seed2: int64 = 0.int): LogUniformCandidateSampler =
  return iilogUniformCandidateSampler(scope,
                                      true_classes,
                                      num_true,
                                      num_sampled,
                                      unique,
                                      range_max,
                                      seed,
                                      seed2)

converter logUniformCandidateSamplerToOut*(op: LogUniformCandidateSampler): oint64 {.inline.} = return op.output

type MultinomialT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type Multinomial*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"Multinomial/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimultinomial[oT: oall](scope: Scope,
                  logits: MultinomialT,
                  num_samples: oint32,
                  seed: int64,
                  seed2: int64,
                  output_dtype: DType,
                  explicitT: type(oT)): Multinomial[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"Multinomial(*#, #, #, #, #, #)", constructor.}

proc multinomial*(scope: Scope,
                  logits: MultinomialT,
                  num_samples: oint32,
                  seed: int64 = 0.int,
                  seed2: int64 = 0.int,
                  output_dtype: type = oint64): auto =
  return iimultinomial(scope,
                       logits,
                       num_samples,
                       seed,
                       seed2,
                       output_dtype.oTF,
                       output_dtype)

converter multinomialToOut*[oT: oall](op: Multinomial[oT]): oT {.inline.} = return op.output

type ParameterizedTruncatedNormalT* = oint32 | oint64

type ParameterizedTruncatedNormal*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"ParameterizedTruncatedNormal/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiparameterizedTruncatedNormal[oT: oall](scope: Scope,
                                   shape: ParameterizedTruncatedNormalT,
                                   means: oT,
                                   stdevs: oT,
                                   minvals: oT,
                                   maxvals: oT,
                                   seed: int64,
                                   seed2: int64,
                                   dtype: DType): ParameterizedTruncatedNormal[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"ParameterizedTruncatedNormal(*#, #, #, #, #, #, #, #, #)", constructor.}

proc parameterizedTruncatedNormal*[oT: oall](scope: Scope,
                                   shape: ParameterizedTruncatedNormalT,
                                   means: oT,
                                   stdevs: oT,
                                   minvals: oT,
                                   maxvals: oT,
                                   seed: int64 = 0.int,
                                   seed2: int64 = 0.int): ParameterizedTruncatedNormal[oT] =
  return iiparameterizedTruncatedNormal(scope,
                                        shape,
                                        means,
                                        stdevs,
                                        minvals,
                                        maxvals,
                                        seed,
                                        seed2,
                                        oT.oTF)

converter parameterizedTruncatedNormalToOut*[oT: oall](op: ParameterizedTruncatedNormal[oT]): oT {.inline.} = return op.output

type RandomGammaS* = oint32 | oint64

type RandomGamma*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomGamma/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomGamma[oT: oall](scope: Scope,
                  shape: RandomGammaS,
                  alpha: oT,
                  seed: int64,
                  seed2: int64,
                  T: DType): RandomGamma[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomGamma(*#, #, #, #, #, #)", constructor.}

proc randomGamma*[oT: oall](scope: Scope,
                  shape: RandomGammaS,
                  alpha: oT,
                  seed: int64 = 0.int,
                  seed2: int64 = 0.int): RandomGamma[oT] =
  return iirandomGamma(scope,
                       shape,
                       alpha,
                       seed,
                       seed2,
                       oT.oTF)

converter randomGammaToOut*[oT: oall](op: RandomGamma[oT]): oT {.inline.} = return op.output


type RandomGammaGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomGammaGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomGammaGrad[oT: oall](scope: Scope,
                      alpha: oT,
                      sample: oT,
                      T: DType): RandomGammaGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomGammaGrad(*#, #, #, #)", constructor.}

proc randomGammaGrad*[oT: oall](scope: Scope,
                      alpha: oT,
                      sample: oT): RandomGammaGrad[oT] =
  return iirandomGammaGrad(scope,
                           alpha,
                           sample,
                           oT.oTF)

converter randomGammaGradToOut*[oT: oall](op: RandomGammaGrad[oT]): oT {.inline.} = return op.output

type RandomPoissonS* = oint32 | oint64

type RandomPoisson*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomPoisson/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomPoisson[oT: oall](scope: Scope,
                    shape: RandomPoissonS,
                    rate: oT,
                    seed: int64,
                    seed2: int64,
                    dtype: DType): RandomPoisson[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomPoisson(*#, #, #, #, #, #)", constructor.}

proc randomPoisson*[oT: oall](scope: Scope,
                    shape: RandomPoissonS,
                    rate: oT,
                    seed: int64 = 0.int,
                    seed2: int64 = 0.int): RandomPoisson[oT] =
  return iirandomPoisson(scope,
                         shape,
                         rate,
                         seed,
                         seed2,
                         oT.oTF)

converter randomPoissonToOut*[oT: oall](op: RandomPoisson[oT]): oT {.inline.} = return op.output

type RandomPoissonV2S* = oint32 | oint64
type RandomPoissonV2R* = ohalf | ofloat | odouble | oint32 | oint64

type RandomPoissonV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomPoissonV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomPoissonV2[oT: oall](scope: Scope,
                      shape: RandomPoissonV2S,
                      rate: RandomPoissonV2R,
                      seed: int64,
                      seed2: int64,
                      dtype: DType,
                      explicitT: type(oT)): RandomPoissonV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomPoissonV2(*#, #, #, #, #, #)", constructor.}

proc randomPoissonV2*(scope: Scope,
                      shape: RandomPoissonV2S,
                      rate: RandomPoissonV2R,
                      seed: int64 = 0.int,
                      seed2: int64 = 0.int,
                      dtype: type = oint64): auto =
  return iirandomPoissonV2(scope,
                           shape,
                           rate,
                           seed,
                           seed2,
                           dtype.oTF,
                           dtype)

converter randomPoissonV2ToOut*[oT: oall](op: RandomPoissonV2[oT]): oT {.inline.} = return op.output


type RandomShuffle*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomShuffle/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomShuffle[oT: oall](scope: Scope,
                    value: oT,
                    seed: int64,
                    seed2: int64,
                    T: DType): RandomShuffle[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomShuffle(*#, #, #, #, #)", constructor.}

proc randomShuffle*[oT: oall](scope: Scope,
                    value: oT,
                    seed: int64 = 0.int,
                    seed2: int64 = 0.int): RandomShuffle[oT] =
  return iirandomShuffle(scope,
                         value,
                         seed,
                         seed2,
                         oT.oTF)

converter randomShuffleToOut*[oT: oall](op: RandomShuffle[oT]): oT {.inline.} = return op.output

type RandomStandardNormalT* = oint32 | oint64

type RandomStandardNormal*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomStandardNormal/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomStandardNormal[oT: oall](scope: Scope,
                           shape: RandomStandardNormalT,
                           seed: int64,
                           seed2: int64,
                           dtype: DType,
                           explicitT: type(oT)): RandomStandardNormal[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomStandardNormal(*#, #, #, #, #)", constructor.}

proc randomStandardNormal*(scope: Scope,
                           shape: RandomStandardNormalT,
                           seed: int64 = 0.int,
                           seed2: int64 = 0.int,
                           dtype: type = oinvalid): auto =
  return iirandomStandardNormal(scope,
                                shape,
                                seed,
                                seed2,
                                dtype.oTF,
                                dtype)

converter randomStandardNormalToOut*[oT: oall](op: RandomStandardNormal[oT]): oT {.inline.} = return op.output

type RandomUniformT* = oint32 | oint64

type RandomUniform*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomUniform/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomUniform[oT: oall](scope: Scope,
                    shape: RandomUniformT,
                    seed: int64,
                    seed2: int64,
                    dtype: DType,
                    explicitT: type(oT)): RandomUniform[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomUniform(*#, #, #, #, #)", constructor.}

proc randomUniform*(scope: Scope,
                    shape: RandomUniformT,
                    seed: int64 = 0.int,
                    seed2: int64 = 0.int,
                    dtype: type = oinvalid): auto =
  return iirandomUniform(scope,
                         shape,
                         seed,
                         seed2,
                         dtype.oTF,
                         dtype)

converter randomUniformToOut*[oT: oall](op: RandomUniform[oT]): oT {.inline.} = return op.output

type RandomUniformIntT* = oint32 | oint64

type RandomUniformInt*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomUniformInt/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomUniformInt[oT: oall](scope: Scope,
                       shape: RandomUniformIntT,
                       minval: oT,
                       maxval: oT,
                       seed: int64,
                       seed2: int64,
                       Tout: DType): RandomUniformInt[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"RandomUniformInt(*#, #, #, #, #, #, #)", constructor.}

proc randomUniformInt*[oT: oall](scope: Scope,
                       shape: RandomUniformIntT,
                       minval: oT,
                       maxval: oT,
                       seed: int64 = 0.int,
                       seed2: int64 = 0.int): RandomUniformInt[oT] =
  return iirandomUniformInt(scope,
                            shape,
                            minval,
                            maxval,
                            seed,
                            seed2,
                            oT.oTF)

converter randomUniformIntToOut*[oT: oall](op: RandomUniformInt[oT]): oT {.inline.} = return op.output


type SparseAccumulatorTakeGradient* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"SparseAccumulatorTakeGradient/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseAccumulatorTakeGradient(scope: Scope,
                                    handle: ostring,
                                    num_required: oint32,
                                    dtype: DType): SparseAccumulatorTakeGradient {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"SparseAccumulatorTakeGradient(*#, #, #, #)", constructor.}

proc sparseAccumulatorTakeGradient*(scope: Scope,
                                    handle: ostring,
                                    num_required: oint32,
                                    dtype: type(ofloat) | type(odouble) | type(oint32) | type(ouint8) | type(oint16) | type(oint8) | type(ocomplex64) | type(oint64) | type(oqint8) | type(oquint8) | type(oqint32) | type(obfloat16) | type(ouint16) | type(ocomplex128) | type(ohalf) | type(ouint32) | type(ouint64) = oinvalid): SparseAccumulatorTakeGradient =
  return iisparseAccumulatorTakeGradient(scope,
                                         handle,
                                         num_required,
                                         dtype.oTF)

converter sparseAccumulatorTakeGradientToOut*(op: SparseAccumulatorTakeGradient): oint64 {.inline.} = return op.output

type StatelessMultinomialT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64
type StatelessMultinomialTseed* = oint32 | oint64

type StatelessMultinomial*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessMultinomial/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistatelessMultinomial[oT: oall](scope: Scope,
                           logits: StatelessMultinomialT,
                           num_samples: oint32,
                           seed: StatelessMultinomialTseed,
                           output_dtype: DType,
                           explicitT: type(oT)): StatelessMultinomial[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessMultinomial(*#, #, #, #, #)", constructor.}

proc statelessMultinomial*(scope: Scope,
                           logits: StatelessMultinomialT,
                           num_samples: oint32,
                           seed: StatelessMultinomialTseed,
                           output_dtype: type = oint64): auto =
  return iistatelessMultinomial(scope,
                                logits,
                                num_samples,
                                seed,
                                output_dtype.oTF,
                                output_dtype)

converter statelessMultinomialToOut*[oT: oall](op: StatelessMultinomial[oT]): oT {.inline.} = return op.output

type StatelessRandomNormalT* = oint32 | oint64
type StatelessRandomNormalTseed* = oint32 | oint64

type StatelessRandomNormal*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessRandomNormal/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistatelessRandomNormal[oT: oall](scope: Scope,
                            shape: StatelessRandomNormalT,
                            seed: StatelessRandomNormalTseed,
                            dtype: DType,
                            explicitT: type(oT)): StatelessRandomNormal[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessRandomNormal(*#, #, #, #)", constructor.}

proc statelessRandomNormal*(scope: Scope,
                            shape: StatelessRandomNormalT,
                            seed: StatelessRandomNormalTseed,
                            dtype: type = ofloat): auto =
  return iistatelessRandomNormal(scope,
                                 shape,
                                 seed,
                                 dtype.oTF,
                                 dtype)

converter statelessRandomNormalToOut*[oT: oall](op: StatelessRandomNormal[oT]): oT {.inline.} = return op.output

type StatelessRandomUniformT* = oint32 | oint64
type StatelessRandomUniformTseed* = oint32 | oint64

type StatelessRandomUniform*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessRandomUniform/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistatelessRandomUniform[oT: oall](scope: Scope,
                             shape: StatelessRandomUniformT,
                             seed: StatelessRandomUniformTseed,
                             dtype: DType,
                             explicitT: type(oT)): StatelessRandomUniform[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessRandomUniform(*#, #, #, #)", constructor.}

proc statelessRandomUniform*(scope: Scope,
                             shape: StatelessRandomUniformT,
                             seed: StatelessRandomUniformTseed,
                             dtype: type = ofloat): auto =
  return iistatelessRandomUniform(scope,
                                  shape,
                                  seed,
                                  dtype.oTF,
                                  dtype)

converter statelessRandomUniformToOut*[oT: oall](op: StatelessRandomUniform[oT]): oT {.inline.} = return op.output

type StatelessRandomUniformIntT* = oint32 | oint64
type StatelessRandomUniformIntTseed* = oint32 | oint64

type StatelessRandomUniformInt*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessRandomUniformInt/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistatelessRandomUniformInt[oT: oall](scope: Scope,
                                shape: StatelessRandomUniformIntT,
                                seed: StatelessRandomUniformIntTseed,
                                minval: oT,
                                maxval: oT,
                                dtype: DType): StatelessRandomUniformInt[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessRandomUniformInt(*#, #, #, #, #, #)", constructor.}

proc statelessRandomUniformInt*[oT: oall](scope: Scope,
                                shape: StatelessRandomUniformIntT,
                                seed: StatelessRandomUniformIntTseed,
                                minval: oT,
                                maxval: oT): StatelessRandomUniformInt[oT] =
  return iistatelessRandomUniformInt(scope,
                                     shape,
                                     seed,
                                     minval,
                                     maxval,
                                     oT.oTF)

converter statelessRandomUniformIntToOut*[oT: oall](op: StatelessRandomUniformInt[oT]): oT {.inline.} = return op.output

type StatelessTruncatedNormalT* = oint32 | oint64
type StatelessTruncatedNormalTseed* = oint32 | oint64

type StatelessTruncatedNormal*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessTruncatedNormal/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistatelessTruncatedNormal[oT: oall](scope: Scope,
                               shape: StatelessTruncatedNormalT,
                               seed: StatelessTruncatedNormalTseed,
                               dtype: DType,
                               explicitT: type(oT)): StatelessTruncatedNormal[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"StatelessTruncatedNormal(*#, #, #, #)", constructor.}

proc statelessTruncatedNormal*(scope: Scope,
                               shape: StatelessTruncatedNormalT,
                               seed: StatelessTruncatedNormalTseed,
                               dtype: type = ofloat): auto =
  return iistatelessTruncatedNormal(scope,
                                    shape,
                                    seed,
                                    dtype.oTF,
                                    dtype)

converter statelessTruncatedNormalToOut*[oT: oall](op: StatelessTruncatedNormal[oT]): oT {.inline.} = return op.output


type ThreadUnsafeUnigramCandidateSampler* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"ThreadUnsafeUnigramCandidateSampler/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iithreadUnsafeUnigramCandidateSampler(scope: Scope,
                                          true_classes: oint64,
                                          num_true: int64,
                                          num_sampled: int64,
                                          unique: bool,
                                          range_max: int64,
                                          seed: int64,
                                          seed2: int64): ThreadUnsafeUnigramCandidateSampler {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"ThreadUnsafeUnigramCandidateSampler(*#, #, #, #, #, #, #, #)", constructor.}

proc threadUnsafeUnigramCandidateSampler*(scope: Scope,
                                          true_classes: oint64,
                                          num_true: int64 = 0.int,
                                          num_sampled: int64 = 0.int,
                                          unique: bool = false,
                                          range_max: int64 = 0.int,
                                          seed: int64 = 0.int,
                                          seed2: int64 = 0.int): ThreadUnsafeUnigramCandidateSampler =
  return iithreadUnsafeUnigramCandidateSampler(scope,
                                               true_classes,
                                               num_true,
                                               num_sampled,
                                               unique,
                                               range_max,
                                               seed,
                                               seed2)

converter threadUnsafeUnigramCandidateSamplerToOut*(op: ThreadUnsafeUnigramCandidateSampler): oint64 {.inline.} = return op.output

type TruncatedNormalT* = oint32 | oint64

type TruncatedNormal*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"TruncatedNormal/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitruncatedNormal[oT: oall](scope: Scope,
                      shape: TruncatedNormalT,
                      seed: int64,
                      seed2: int64,
                      dtype: DType,
                      explicitT: type(oT)): TruncatedNormal[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"TruncatedNormal(*#, #, #, #, #)", constructor.}

proc truncatedNormal*(scope: Scope,
                      shape: TruncatedNormalT,
                      seed: int64 = 0.int,
                      seed2: int64 = 0.int,
                      dtype: type = oinvalid): auto =
  return iitruncatedNormal(scope,
                           shape,
                           seed,
                           seed2,
                           dtype.oTF,
                           dtype)

converter truncatedNormalToOut*[oT: oall](op: TruncatedNormal[oT]): oT {.inline.} = return op.output


type UniformCandidateSampler* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"UniformCandidateSampler/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiuniformCandidateSampler(scope: Scope,
                              true_classes: oint64,
                              num_true: int64,
                              num_sampled: int64,
                              unique: bool,
                              range_max: int64,
                              seed: int64,
                              seed2: int64): UniformCandidateSampler {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/prob/prob.h", importcpp:"UniformCandidateSampler(*#, #, #, #, #, #, #, #)", constructor.}

proc uniformCandidateSampler*(scope: Scope,
                              true_classes: oint64,
                              num_true: int64 = 0.int,
                              num_sampled: int64 = 0.int,
                              unique: bool = false,
                              range_max: int64 = 0.int,
                              seed: int64 = 0.int,
                              seed2: int64 = 0.int): UniformCandidateSampler =
  return iiuniformCandidateSampler(scope,
                                   true_classes,
                                   num_true,
                                   num_sampled,
                                   unique,
                                   range_max,
                                   seed,
                                   seed2)

converter uniformCandidateSamplerToOut*(op: UniformCandidateSampler): oint64 {.inline.} = return op.output

