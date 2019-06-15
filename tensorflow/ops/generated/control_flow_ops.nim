import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAbort(root: Scope, attrs: AbortAttrs) {.header:std_ops, importcpp:"tensorflow::ops::Abort(*#, #)".}

proc iControlTrigger() {.header:std_ops, importcpp:"tensorflow::ops::ControlTrigger()".}

proc iLoopCond(root: Scope, input: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::LoopCond(*#, #)".}

proc iMerge(root: Scope, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::Merge(*#, *#)".}

proc iNextIteration(root: Scope, data: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::NextIteration(*#, #)".}

proc iRefNextIteration(root: Scope, data: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RefNextIteration(*#, #)".}

proc iRefSelect(root: Scope, index: Out, inputs: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::RefSelect(*#, #, *#)".}

proc iRefSwitch(root: Scope, data: Out, pred: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RefSwitch(*#, #, #)".}

proc iSwitch(root: Scope, data: Out, pred: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Switch(*#, #, #)".}

proc Abort(root: Scope, attrs: AbortAttrs) =
  iAbort(root, attrs)

proc Abort(root: Scope, errorMsg = none(string), exitWithoutError = none(bool)) =
  var attrs = AbortAttrs()

  if errorMsg.isSome:
    attrs = attrs.ErrorMsg(newCPPString(errorMsg.get()))
  if exitWithoutError.isSome:
    attrs = attrs.ExitWithoutError(exitWithoutError.get())

  Abort(root, attrs)

proc ControlTrigger() =
  iControlTrigger()

proc LoopCond(root: Scope, input: Out): Out =
  iLoopCond(root, input)

proc Merge(root: Scope, inputs: InList): Out =
  iMerge(root, inputs)

proc Merge(root: Scope, inputs: OutList): Out {.header:std_ops, importcpp:"tensorflow::ops::Merge(*#, #)".}

proc NextIteration(root: Scope, data: Out): Out =
  iNextIteration(root, data)

proc RefNextIteration(root: Scope, data: Out): Out =
  iRefNextIteration(root, data)

proc RefSelect(root: Scope, index: Out, inputs: InList): Out =
  iRefSelect(root, index, inputs)

proc RefSelect(root: Scope, index: Out, inputs: OutList): Out {.header:std_ops, importcpp:"tensorflow::ops::RefSelect(*#, #, #)".}

proc RefSwitch(root: Scope, data: Out, pred: Out): Out =
  iRefSwitch(root, data, pred)

proc Switch(root: Scope, data: Out, pred: Out): Out =
  iSwitch(root, data, pred)

export Abort,
       ControlTrigger,
       LoopCond,
       Merge,
       NextIteration,
       RefNextIteration,
       RefSelect,
       RefSwitch,
       Switch