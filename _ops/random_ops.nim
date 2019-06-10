import ../core/core.nim
import ../utils/utils.nim

proc Multinomial(root: Scope, logits: Out, num_samples: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Multinomial(*@)".}

proc Multinomial(root: Scope, logits: Out, num_samples: Out, attrs: MultinomialAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Multinomial(*@)".}

proc ParameterizedTruncatedNormal(root: Scope, shape: Out, means: Out, stdevs: Out, minvals: Out, maxvals: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ParameterizedTruncatedNormal(*@)".}

proc ParameterizedTruncatedNormal(root: Scope, shape: Out, means: Out, stdevs: Out, minvals: Out, maxvals: Out, attrs: ParameterizedTruncatedNormalAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ParameterizedTruncatedNormal(*@)".}

proc RandomGamma(root: Scope, shape: Out, alpha: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomGamma(*@)".}

proc RandomGamma(root: Scope, shape: Out, alpha: Out, attrs: RandomGammaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomGamma(*@)".}

proc RandomNormal(root: Scope, shape: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomNormal(*@)".}

proc RandomNormal(root: Scope, shape: Out, dtype: DType, attrs: RandomNormalAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomNormal(*@)".}

proc RandomPoissonV2(root: Scope, shape: Out, rate: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomPoissonV2(*@)".}

proc RandomPoissonV2(root: Scope, shape: Out, rate: Out, attrs: RandomPoissonV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomPoissonV2(*@)".}

proc RandomShuffle(root: Scope, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomShuffle(*@)".}

proc RandomShuffle(root: Scope, value: Out, attrs: RandomShuffleAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomShuffle(*@)".}

proc RandomUniform(root: Scope, shape: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomUniform(*@)".}

proc RandomUniform(root: Scope, shape: Out, dtype: DType, attrs: RandomUniformAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomUniform(*@)".}

proc RandomUniformInt(root: Scope, shape: Out, minval: Out, maxval: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomUniformInt(*@)".}

proc RandomUniformInt(root: Scope, shape: Out, minval: Out, maxval: Out, attrs: RandomUniformIntAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomUniformInt(*@)".}

proc TruncatedNormal(root: Scope, shape: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::TruncatedNormal(*@)".}

proc TruncatedNormal(root: Scope, shape: Out, dtype: DType, attrs: TruncatedNormalAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TruncatedNormal(*@)".}

