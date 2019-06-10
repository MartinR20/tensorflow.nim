import ../core/core.nim
import ../utils/utils.nim

proc AsString(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AsString(*@)".}

proc AsString(root: Scope, input: Out, attrs: AsStringAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AsString(*@)".}

proc DecodeBase64(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeBase64(*@)".}

proc EncodeBase64(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodeBase64(*@)".}

proc EncodeBase64(root: Scope, input: Out, attrs: EncodeBase64Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodeBase64(*@)".}

proc ReduceJoin(root: Scope, inputs: Out, reduction_indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReduceJoin(*@)".}

proc ReduceJoin(root: Scope, inputs: Out, reduction_indices: Out, attrs: ReduceJoinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ReduceJoin(*@)".}

proc RegexFullMatch(root: Scope, input: Out, pattern: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RegexFullMatch(*@)".}

proc RegexReplace(root: Scope, input: Out, pattern: Out, rewrite: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RegexReplace(*@)".}

proc RegexReplace(root: Scope, input: Out, pattern: Out, rewrite: Out, attrs: RegexReplaceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RegexReplace(*@)".}

proc StringFormat(root: Scope, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::StringFormat(*@)".}

proc StringFormat(root: Scope, inputs: InList, attrs: StringFormatAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringFormat(*@)".}

proc StringJoin(root: Scope, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::StringJoin(*@)".}

proc StringJoin(root: Scope, inputs: InList, attrs: StringJoinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringJoin(*@)".}

proc StringLength(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StringLength(*@)".}

proc StringLength(root: Scope, input: Out, attrs: StringLengthAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringLength(*@)".}

proc StringSplit(root: Scope, input: Out, delimiter: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StringSplit(*@)".}

proc StringSplit(root: Scope, input: Out, delimiter: Out, attrs: StringSplitAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringSplit(*@)".}

proc StringSplitV2(root: Scope, input: Out, sep: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StringSplitV2(*@)".}

proc StringSplitV2(root: Scope, input: Out, sep: Out, attrs: StringSplitV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringSplitV2(*@)".}

proc StringStrip(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StringStrip(*@)".}

proc StringToHashBucket(root: Scope, string_tensor: Out, num_buckets: int): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToHashBucket(*@)".}

proc StringToHashBucketFast(root: Scope, input: Out, num_buckets: int): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToHashBucketFast(*@)".}

proc StringToHashBucketStrong(root: Scope, input: Out, num_buckets: int, key: ArraySlice[int]): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToHashBucketStrong(*@)".}

proc Substr(root: Scope, input: Out, pos: Out, len: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Substr(*@)".}

proc UnicodeScript(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnicodeScript(*@)".}

