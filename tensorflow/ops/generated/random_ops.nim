import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iMultinomial(root: Scope, logits: Out, num_samples: Out, attrs: MultinomialAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Multinomial(*#, #, #, #)".}

proc iParameterizedTruncatedNormal(root: Scope, shape: Out, means: Out, stdevs: Out, minvals: Out, maxvals: Out, attrs: ParameterizedTruncatedNormalAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ParameterizedTruncatedNormal(*#, #, #, #, #, #, #)".}

proc iRandomGamma(root: Scope, shape: Out, alpha: Out, attrs: RandomGammaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomGamma(*#, #, #, #)".}

proc iRandomNormal(root: Scope, shape: Out, dtype: core.DType, attrs: RandomNormalAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomNormal(*#, #, #, #)".}

proc iRandomPoissonV2(root: Scope, shape: Out, rate: Out, attrs: RandomPoissonV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomPoissonV2(*#, #, #, #)".}

proc iRandomShuffle(root: Scope, value: Out, attrs: RandomShuffleAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomShuffle(*#, #, #)".}

proc iRandomUniform(root: Scope, shape: Out, dtype: core.DType, attrs: RandomUniformAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomUniform(*#, #, #, #)".}

proc iRandomUniformInt(root: Scope, shape: Out, minval: Out, maxval: Out, attrs: RandomUniformIntAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomUniformInt(*#, #, #, #, #)".}

proc iTruncatedNormal(root: Scope, shape: Out, dtype: core.DType, attrs: TruncatedNormalAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TruncatedNormal(*#, #, #, #)".}

proc Multinomial(root: Scope, logits: Out, num_samples: Out, attrs: MultinomialAttrs): Out =
  iMultinomial(root, logits, num_samples, attrs)

proc Multinomial(root: Scope, logits: Out, num_samples: Out, outputDtype = none(core.DType), seed = none(int), seed2 = none(int)): Out =
  var attrs = MultinomialAttrs()

  if outputDtype.isSome:
    attrs = attrs.OutputDtype(outputDtype.get())
  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return Multinomial(root, logits, num_samples, attrs)

proc ParameterizedTruncatedNormal(root: Scope, shape: Out, means: Out, stdevs: Out, minvals: Out, maxvals: Out, attrs: ParameterizedTruncatedNormalAttrs): Out =
  iParameterizedTruncatedNormal(root, shape, means, stdevs, minvals, maxvals, attrs)

proc ParameterizedTruncatedNormal(root: Scope, shape: Out, means: Out, stdevs: Out, minvals: Out, maxvals: Out, seed = none(int), seed2 = none(int)): Out =
  var attrs = ParameterizedTruncatedNormalAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return ParameterizedTruncatedNormal(root, shape, means, stdevs, minvals, maxvals, attrs)

proc RandomGamma(root: Scope, shape: Out, alpha: Out, attrs: RandomGammaAttrs): Out =
  iRandomGamma(root, shape, alpha, attrs)

proc RandomGamma(root: Scope, shape: Out, alpha: Out, seed = none(int), seed2 = none(int)): Out =
  var attrs = RandomGammaAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return RandomGamma(root, shape, alpha, attrs)

proc RandomNormal(root: Scope, shape: Out, dtype: core.DType, attrs: RandomNormalAttrs): Out =
  iRandomNormal(root, shape, dtype, attrs)

proc RandomNormal(root: Scope, shape: Out, dtype: core.DType, seed = none(int), seed2 = none(int)): Out =
  var attrs = RandomNormalAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return RandomNormal(root, shape, dtype, attrs)

proc RandomPoissonV2(root: Scope, shape: Out, rate: Out, attrs: RandomPoissonV2Attrs): Out =
  iRandomPoissonV2(root, shape, rate, attrs)

proc RandomPoissonV2(root: Scope, shape: Out, rate: Out, dtype = none(core.DType), seed = none(int), seed2 = none(int)): Out =
  var attrs = RandomPoissonV2Attrs()

  if dtype.isSome:
    attrs = attrs.Dtype(dtype.get())
  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return RandomPoissonV2(root, shape, rate, attrs)

proc RandomShuffle(root: Scope, value: Out, attrs: RandomShuffleAttrs): Out =
  iRandomShuffle(root, value, attrs)

proc RandomShuffle(root: Scope, value: Out, seed = none(int), seed2 = none(int)): Out =
  var attrs = RandomShuffleAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return RandomShuffle(root, value, attrs)

proc RandomUniform(root: Scope, shape: Out, dtype: core.DType, attrs: RandomUniformAttrs): Out =
  iRandomUniform(root, shape, dtype, attrs)

proc RandomUniform(root: Scope, shape: Out, dtype: core.DType, seed = none(int), seed2 = none(int)): Out =
  var attrs = RandomUniformAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return RandomUniform(root, shape, dtype, attrs)

proc RandomUniformInt(root: Scope, shape: Out, minval: Out, maxval: Out, attrs: RandomUniformIntAttrs): Out =
  iRandomUniformInt(root, shape, minval, maxval, attrs)

proc RandomUniformInt(root: Scope, shape: Out, minval: Out, maxval: Out, seed = none(int), seed2 = none(int)): Out =
  var attrs = RandomUniformIntAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return RandomUniformInt(root, shape, minval, maxval, attrs)

proc TruncatedNormal(root: Scope, shape: Out, dtype: core.DType, attrs: TruncatedNormalAttrs): Out =
  iTruncatedNormal(root, shape, dtype, attrs)

proc TruncatedNormal(root: Scope, shape: Out, dtype: core.DType, seed = none(int), seed2 = none(int)): Out =
  var attrs = TruncatedNormalAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return TruncatedNormal(root, shape, dtype, attrs)

export Multinomial,
       ParameterizedTruncatedNormal,
       RandomGamma,
       RandomNormal,
       RandomPoissonV2,
       RandomShuffle,
       RandomUniform,
       RandomUniformInt,
       TruncatedNormal