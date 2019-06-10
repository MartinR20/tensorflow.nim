import ../core/core.nim
import ../utils/utils.nim

proc Abort() =
proc Abort(root: Scope, attrs: AbortAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Abort(*@)".}

proc ControlTrigger() =
proc LoopCond(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LoopCond(*@)".}

proc Merge(root: Scope, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::Merge(*@)".}

proc NextIteration(root: Scope, data: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::NextIteration(*@)".}

proc RefNextIteration(root: Scope, data: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RefNextIteration(*@)".}

proc RefSelect(root: Scope, index: Out, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::RefSelect(*@)".}

proc RefSwitch(root: Scope, data: Out, pred: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RefSwitch(*@)".}

proc Switch(root: Scope, data: Out, pred: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Switch(*@)".}

