import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAssert(root: Scope, condition: Out, data: InList, attrs: AssertAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::Assert(*#, #, *#, #).operation".}

proc iHistogramSummary(root: Scope, tag: Out, values: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::HistogramSummary(*#, #, #)".}

proc iMergeSummary(root: Scope, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::MergeSummary(*#, *#)".}

proc iPrint(root: Scope, input: Out, data: InList, attrs: PrintAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Print(*#, #, *#, #)".}

proc iPrintV2(root: Scope, input: Out, attrs: PrintV2Attrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::PrintV2(*#, #, #).operation".}

proc iScalarSummary(root: Scope, tags: Out, values: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScalarSummary(*#, #, #)".}

proc iTensorSummary(root: Scope, tensor: Out, attrs: TensorSummaryAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorSummary(*#, #, #)".}

proc iTensorSummaryV2(root: Scope, tag: Out, tensor: Out, serialized_summary_metadata: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorSummaryV2(*#, #, #, #)".}

proc iTimestamp(): Out {.header:std_ops, importcpp:"tensorflow::ops::Timestamp()".}

proc Assert(root: Scope, condition: Out, data: InList, attrs: AssertAttrs): Operation =
  iAssert(root, condition, data, attrs)

proc Assert(root: Scope, condition: Out, data: OutList, attrs: AssertAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::Assert(*#, #, #, #).operation".}

proc Assert(root: Scope, condition: Out, data: InList, summarize = none(int)): Operation =
  var attrs = AssertAttrs()

  if summarize.isSome:
    attrs = attrs.Summarize(summarize.get())

  return Assert(root, condition, data, attrs)

proc Assert(root: Scope, condition: Out, data: OutList, summarize = none(int)): Operation =
  var attrs = AssertAttrs()

  if summarize.isSome:
    attrs = attrs.Summarize(summarize.get())

  return Assert(root, condition, data, attrs)

proc HistogramSummary(root: Scope, tag: Out, values: Out): Out =
  iHistogramSummary(root, tag, values)

proc MergeSummary(root: Scope, inputs: InList): Out =
  iMergeSummary(root, inputs)

proc MergeSummary(root: Scope, inputs: OutList): Out {.header:std_ops, importcpp:"tensorflow::ops::MergeSummary(*#, #)".}

proc Print(root: Scope, input: Out, data: InList, attrs: PrintAttrs): Out =
  iPrint(root, input, data, attrs)

proc Print(root: Scope, input: Out, data: OutList, attrs: PrintAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Print(*#, #, #, #)".}

proc Print(root: Scope, input: Out, data: InList, firstN = none(int), message = none(string), summarize = none(int)): Out =
  var attrs = PrintAttrs()

  if firstN.isSome:
    attrs = attrs.FirstN(firstN.get())
  if message.isSome:
    attrs = attrs.Message(newCPPString(message.get()))
  if summarize.isSome:
    attrs = attrs.Summarize(summarize.get())

  return Print(root, input, data, attrs)

proc Print(root: Scope, input: Out, data: OutList, firstN = none(int), message = none(string), summarize = none(int)): Out =
  var attrs = PrintAttrs()

  if firstN.isSome:
    attrs = attrs.FirstN(firstN.get())
  if message.isSome:
    attrs = attrs.Message(newCPPString(message.get()))
  if summarize.isSome:
    attrs = attrs.Summarize(summarize.get())

  return Print(root, input, data, attrs)

proc PrintV2(root: Scope, input: Out, attrs: PrintV2Attrs): Operation =
  iPrintV2(root, input, attrs)

proc PrintV2(root: Scope, input: Out, outputStream = none(string)): Operation =
  var attrs = PrintV2Attrs()

  if outputStream.isSome:
    attrs = attrs.OutputStream(newCPPString(outputStream.get()))

  return PrintV2(root, input, attrs)

proc ScalarSummary(root: Scope, tags: Out, values: Out): Out =
  iScalarSummary(root, tags, values)

proc TensorSummary(root: Scope, tensor: Out, attrs: TensorSummaryAttrs): Out =
  iTensorSummary(root, tensor, attrs)

proc TensorSummary(root: Scope, tensor: Out, description = none(string), displayName = none(string), labels = none(ArraySlice[string])): Out =
  var attrs = TensorSummaryAttrs()

  if description.isSome:
    attrs = attrs.Description(newCPPString(description.get()))
  if displayName.isSome:
    attrs = attrs.DisplayName(newCPPString(displayName.get()))
  if labels.isSome:
    attrs = attrs.Labels(newArraySlice[cppstring](labels.get()))

  return TensorSummary(root, tensor, attrs)

proc TensorSummaryV2(root: Scope, tag: Out, tensor: Out, serialized_summary_metadata: Out): Out =
  iTensorSummaryV2(root, tag, tensor, serialized_summary_metadata)

proc Timestamp(): Out =
  iTimestamp()

export Assert,
       HistogramSummary,
       MergeSummary,
       Print,
       PrintV2,
       ScalarSummary,
       TensorSummary,
       TensorSummaryV2,
       Timestamp