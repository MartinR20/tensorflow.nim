import ../core/core.nim
import ../utils/utils.nim

proc AllCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool): Out {.header:std_ops, importcpp:"tensorflow::ops::AllCandidateSampler(*@)".}

proc AllCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, attrs: AllCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AllCandidateSampler(*@)".}

proc ComputeAccidentalHits(root: Scope, true_classes: Out, sampled_candidates: Out, num_true: int): Out {.header:std_ops, importcpp:"tensorflow::ops::ComputeAccidentalHits(*@)".}

proc ComputeAccidentalHits(root: Scope, true_classes: Out, sampled_candidates: Out, num_true: int, attrs: ComputeAccidentalHitsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ComputeAccidentalHits(*@)".}

proc FixedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int): Out {.header:std_ops, importcpp:"tensorflow::ops::FixedUnigramCandidateSampler(*@)".}

proc FixedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: FixedUnigramCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FixedUnigramCandidateSampler(*@)".}

proc LearnedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int): Out {.header:std_ops, importcpp:"tensorflow::ops::LearnedUnigramCandidateSampler(*@)".}

proc LearnedUnigramCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: LearnedUnigramCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::LearnedUnigramCandidateSampler(*@)".}

proc LogUniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int): Out {.header:std_ops, importcpp:"tensorflow::ops::LogUniformCandidateSampler(*@)".}

proc LogUniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: LogUniformCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::LogUniformCandidateSampler(*@)".}

proc UniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int): Out {.header:std_ops, importcpp:"tensorflow::ops::UniformCandidateSampler(*@)".}

proc UniformCandidateSampler(root: Scope, true_classes: Out, num_true: int, num_sampled: int, unique: bool, range_max: int, attrs: UniformCandidateSamplerAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::UniformCandidateSampler(*@)".}

