import ../core/core.nim
import ../utils/utils.nim

proc Assert(root: Scope, condition: Out, data: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::Assert(*@)".}

proc Assert(root: Scope, condition: Out, data: InList, attrs: AssertAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Assert(*@)".}

proc HistogramSummary(root: Scope, tag: Out, values: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::HistogramSummary(*@)".}

proc MergeSummary(root: Scope, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::MergeSummary(*@)".}

proc Print(root: Scope, input: Out, data: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::Print(*@)".}

proc Print(root: Scope, input: Out, data: InList, attrs: PrintAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Print(*@)".}

proc PrintV2(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::PrintV2(*@)".}

proc PrintV2(root: Scope, input: Out, attrs: PrintV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::PrintV2(*@)".}

proc ScalarSummary(root: Scope, tags: Out, values: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScalarSummary(*@)".}

proc TensorSummary(root: Scope, tensor: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorSummary(*@)".}

proc TensorSummary(root: Scope, tensor: Out, attrs: TensorSummaryAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorSummary(*@)".}

proc TensorSummaryV2(root: Scope, tag: Out, tensor: Out, serialized_summary_metadata: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorSummaryV2(*@)".}

proc Timestamp(