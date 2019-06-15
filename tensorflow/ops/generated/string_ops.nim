import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAsString(root: Scope, input: Out, attrs: AsStringAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AsString(*#, #, #)".}

proc iDecodeBase64(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeBase64(*#, #)".}

proc iEncodeBase64(root: Scope, input: Out, attrs: EncodeBase64Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodeBase64(*#, #, #)".}

proc iReduceJoin(root: Scope, inputs: Out, reduction_indices: Out, attrs: ReduceJoinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ReduceJoin(*#, #, #, #)".}

proc iRegexFullMatch(root: Scope, input: Out, pattern: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RegexFullMatch(*#, #, #)".}

proc iRegexReplace(root: Scope, input: Out, pattern: Out, rewrite: Out, attrs: RegexReplaceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RegexReplace(*#, #, #, #, #)".}

proc iStringFormat(root: Scope, inputs: InList, attrs: StringFormatAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringFormat(*#, *#, #)".}

proc iStringJoin(root: Scope, inputs: InList, attrs: StringJoinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringJoin(*#, *#, #)".}

proc iStringLength(root: Scope, input: Out, attrs: StringLengthAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringLength(*#, #, #)".}

proc iStringSplit(root: Scope, input: Out, delimiter: Out, attrs: StringSplitAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringSplit(*#, #, #, #)".}

proc iStringSplitV2(root: Scope, input: Out, sep: Out, attrs: StringSplitV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringSplitV2(*#, #, #, #)".}

proc iStringStrip(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StringStrip(*#, #)".}

proc iStringToHashBucket(root: Scope, string_tensor: Out, num_buckets: int): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToHashBucket(*#, #, #)".}

proc iStringToHashBucketFast(root: Scope, input: Out, num_buckets: int): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToHashBucketFast(*#, #, #)".}

proc iStringToHashBucketStrong(root: Scope, input: Out, num_buckets: int, key: ArraySlice[int]): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToHashBucketStrong(*#, #, #, #)".}

proc iSubstr(root: Scope, input: Out, pos: Out, len: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Substr(*#, #, #, #)".}

proc iUnicodeScript(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::UnicodeScript(*#, #)".}

proc AsString(root: Scope, input: Out, attrs: AsStringAttrs): Out =
  iAsString(root, input, attrs)

proc AsString(root: Scope, input: Out, fill = none(string), precision = none(int), scientific = none(bool), shortest = none(bool), width = none(int)): Out =
  var attrs = AsStringAttrs()

  if fill.isSome:
    attrs = attrs.Fill(newCPPString(fill.get()))
  if precision.isSome:
    attrs = attrs.Precision(precision.get())
  if scientific.isSome:
    attrs = attrs.Scientific(scientific.get())
  if shortest.isSome:
    attrs = attrs.Shortest(shortest.get())
  if width.isSome:
    attrs = attrs.Width(width.get())

  return AsString(root, input, attrs)

proc DecodeBase64(root: Scope, input: Out): Out =
  iDecodeBase64(root, input)

proc EncodeBase64(root: Scope, input: Out, attrs: EncodeBase64Attrs): Out =
  iEncodeBase64(root, input, attrs)

proc EncodeBase64(root: Scope, input: Out, pad = none(bool)): Out =
  var attrs = EncodeBase64Attrs()

  if pad.isSome:
    attrs = attrs.Pad(pad.get())

  return EncodeBase64(root, input, attrs)

proc ReduceJoin(root: Scope, inputs: Out, reduction_indices: Out, attrs: ReduceJoinAttrs): Out =
  iReduceJoin(root, inputs, reduction_indices, attrs)

proc ReduceJoin(root: Scope, inputs: Out, reduction_indices: Out, keepDims = none(bool), separator = none(string)): Out =
  var attrs = ReduceJoinAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())
  if separator.isSome:
    attrs = attrs.Separator(newCPPString(separator.get()))

  return ReduceJoin(root, inputs, reduction_indices, attrs)

proc RegexFullMatch(root: Scope, input: Out, pattern: Out): Out =
  iRegexFullMatch(root, input, pattern)

proc RegexReplace(root: Scope, input: Out, pattern: Out, rewrite: Out, attrs: RegexReplaceAttrs): Out =
  iRegexReplace(root, input, pattern, rewrite, attrs)

proc RegexReplace(root: Scope, input: Out, pattern: Out, rewrite: Out, replaceGlobal = none(bool)): Out =
  var attrs = RegexReplaceAttrs()

  if replaceGlobal.isSome:
    attrs = attrs.ReplaceGlobal(replaceGlobal.get())

  return RegexReplace(root, input, pattern, rewrite, attrs)

proc StringFormat(root: Scope, inputs: InList, attrs: StringFormatAttrs): Out =
  iStringFormat(root, inputs, attrs)

proc StringFormat(root: Scope, inputs: OutList, attrs: StringFormatAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringFormat(*#, #, #)".}

proc StringFormat(root: Scope, inputs: InList, placeholder = none(string), summarize = none(int), ttemplate = none(string)): Out =
  var attrs = StringFormatAttrs()

  if placeholder.isSome:
    attrs = attrs.Placeholder(newCPPString(placeholder.get()))
  if summarize.isSome:
    attrs = attrs.Summarize(summarize.get())
  if ttemplate.isSome:
    attrs = attrs.Template(newCPPString(ttemplate.get()))

  return StringFormat(root, inputs, attrs)

proc StringFormat(root: Scope, inputs: OutList, placeholder = none(string), summarize = none(int), ttemplate = none(string)): Out =
  var attrs = StringFormatAttrs()

  if placeholder.isSome:
    attrs = attrs.Placeholder(newCPPString(placeholder.get()))
  if summarize.isSome:
    attrs = attrs.Summarize(summarize.get())
  if ttemplate.isSome:
    attrs = attrs.Template(newCPPString(ttemplate.get()))

  return StringFormat(root, inputs, attrs)

proc StringJoin(root: Scope, inputs: InList, attrs: StringJoinAttrs): Out =
  iStringJoin(root, inputs, attrs)

proc StringJoin(root: Scope, inputs: OutList, attrs: StringJoinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringJoin(*#, #, #)".}

proc StringJoin(root: Scope, inputs: InList, separator = none(string)): Out =
  var attrs = StringJoinAttrs()

  if separator.isSome:
    attrs = attrs.Separator(newCPPString(separator.get()))

  return StringJoin(root, inputs, attrs)

proc StringJoin(root: Scope, inputs: OutList, separator = none(string)): Out =
  var attrs = StringJoinAttrs()

  if separator.isSome:
    attrs = attrs.Separator(newCPPString(separator.get()))

  return StringJoin(root, inputs, attrs)

proc StringLength(root: Scope, input: Out, attrs: StringLengthAttrs): Out =
  iStringLength(root, input, attrs)

proc StringLength(root: Scope, input: Out, unit = none(string)): Out =
  var attrs = StringLengthAttrs()

  if unit.isSome:
    attrs = attrs.Unit(newCPPString(unit.get()))

  return StringLength(root, input, attrs)

proc StringSplit(root: Scope, input: Out, delimiter: Out, attrs: StringSplitAttrs): Out =
  iStringSplit(root, input, delimiter, attrs)

proc StringSplit(root: Scope, input: Out, delimiter: Out, skipEmpty = none(bool)): Out =
  var attrs = StringSplitAttrs()

  if skipEmpty.isSome:
    attrs = attrs.SkipEmpty(skipEmpty.get())

  return StringSplit(root, input, delimiter, attrs)

proc StringSplitV2(root: Scope, input: Out, sep: Out, attrs: StringSplitV2Attrs): Out =
  iStringSplitV2(root, input, sep, attrs)

proc StringSplitV2(root: Scope, input: Out, sep: Out, maxsplit = none(int)): Out =
  var attrs = StringSplitV2Attrs()

  if maxsplit.isSome:
    attrs = attrs.Maxsplit(maxsplit.get())

  return StringSplitV2(root, input, sep, attrs)

proc StringStrip(root: Scope, input: Out): Out =
  iStringStrip(root, input)

proc StringToHashBucket(root: Scope, string_tensor: Out, num_buckets: int): Out =
  iStringToHashBucket(root, string_tensor, num_buckets)

proc StringToHashBucketFast(root: Scope, input: Out, num_buckets: int): Out =
  iStringToHashBucketFast(root, input, num_buckets)

proc StringToHashBucketStrong(root: Scope, input: Out, num_buckets: int, key: ArraySlice[int]): Out =
  iStringToHashBucketStrong(root, input, num_buckets, key)

proc Substr(root: Scope, input: Out, pos: Out, len: Out): Out =
  iSubstr(root, input, pos, len)

proc UnicodeScript(root: Scope, input: Out): Out =
  iUnicodeScript(root, input)

export AsString,
       DecodeBase64,
       EncodeBase64,
       ReduceJoin,
       RegexFullMatch,
       RegexReplace,
       StringFormat,
       StringJoin,
       StringLength,
       StringSplit,
       StringSplitV2,
       StringStrip,
       StringToHashBucket,
       StringToHashBucketFast,
       StringToHashBucketStrong,
       Substr,
       UnicodeScript