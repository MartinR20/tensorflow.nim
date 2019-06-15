import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAllCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, attrs: AllCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AllCandidateSampler(*#, #, #, #, #, #)".}

proc iComputeAccidentalHits(root: Scope, true_classes: Out, sampled_candidates: Out, num_true: int, attrs: ComputeAccidentalHitsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ComputeAccidentalHits(*#, #, #, #, #)".}

proc iFixedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: FixedUnigramCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FixedUnigramCandidateSampler(*#, #, #, #, #, #, #)".}

proc iLearnedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: LearnedUnigramCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::LearnedUnigramCandidateSampler(*#, #, #, #, #, #, #)".}

proc iLogUniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: LogUniformCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::LogUniformCandidateSampler(*#, #, #, #, #, #, #)".}

proc iUniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: UniformCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::UniformCandidateSampler(*#, #, #, #, #, #, #)".}

proc AllCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, attrs: AllCandidateSamplerAttrs): Out =
  iAllCandidateSampler(root, true_classes, num_true, num_sampled, unique, attrs)

proc AllCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, seed = none(int), seed2 = none(int)): Out =
  var attrs = AllCandidateSamplerAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return AllCandidateSampler(root, true_classes, num_true, num_sampled, unique, attrs)

proc ComputeAccidentalHits(root: Scope, true_classes: Out, sampled_candidates: Out, num_true: int, attrs: ComputeAccidentalHitsAttrs): Out =
  iComputeAccidentalHits(root, true_classes, sampled_candidates, num_true, attrs)

proc ComputeAccidentalHits(root: Scope, true_classes: Out, sampled_candidates: Out, num_true: int, seed = none(int), seed2 = none(int)): Out =
  var attrs = ComputeAccidentalHitsAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return ComputeAccidentalHits(root, true_classes, sampled_candidates, num_true, attrs)

proc FixedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: FixedUnigramCandidateSamplerAttrs): Out =
  iFixedUnigramCandidateSampler(root, true_classes, num_true, num_sampled, unique, range_max, attrs)

proc FixedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, distortion = none(float), numReservedIds = none(int), numShards = none(int), seed = none(int), seed2 = none(int), shard = none(int), unigrams = none(ArraySlice[float]), vocabFile = none(string)): Out =
  var attrs = FixedUnigramCandidateSamplerAttrs()

  if distortion.isSome:
    attrs = attrs.Distortion(distortion.get())
  if numReservedIds.isSome:
    attrs = attrs.NumReservedIds(numReservedIds.get())
  if numShards.isSome:
    attrs = attrs.NumShards(numShards.get())
  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())
  if shard.isSome:
    attrs = attrs.Shard(shard.get())
  if unigrams.isSome:
    attrs = attrs.Unigrams(unigrams.get())
  if vocabFile.isSome:
    attrs = attrs.VocabFile(newCPPString(vocabFile.get()))

  return FixedUnigramCandidateSampler(root, true_classes, num_true, num_sampled, unique, range_max, attrs)

proc LearnedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: LearnedUnigramCandidateSamplerAttrs): Out =
  iLearnedUnigramCandidateSampler(root, true_classes, num_true, num_sampled, unique, range_max, attrs)

proc LearnedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, seed = none(int), seed2 = none(int)): Out =
  var attrs = LearnedUnigramCandidateSamplerAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return LearnedUnigramCandidateSampler(root, true_classes, num_true, num_sampled, unique, range_max, attrs)

proc LogUniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: LogUniformCandidateSamplerAttrs): Out =
  iLogUniformCandidateSampler(root, true_classes, num_true, num_sampled, unique, range_max, attrs)

proc LogUniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, seed = none(int), seed2 = none(int)): Out =
  var attrs = LogUniformCandidateSamplerAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return LogUniformCandidateSampler(root, true_classes, num_true, num_sampled, unique, range_max, attrs)

proc UniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: UniformCandidateSamplerAttrs): Out =
  iUniformCandidateSampler(root, true_classes, num_true, num_sampled, unique, range_max, attrs)

proc UniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, seed = none(int), seed2 = none(int)): Out =
  var attrs = UniformCandidateSamplerAttrs()

  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())

  return UniformCandidateSampler(root, true_classes, num_true, num_sampled, unique, range_max, attrs)

export AllCandidateSampler,
       ComputeAccidentalHits,
       FixedUnigramCandidateSampler,
       LearnedUnigramCandidateSampler,
       LogUniformCandidateSampler,
       UniformCandidateSampler