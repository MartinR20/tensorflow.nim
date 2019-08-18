import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAssign(root: Scope, rref: Out, value: Out, attrs: AssignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Assign(*#, #, #, #)".}

proc iAssignAdd(root: Scope, rref: Out, value: Out, attrs: AssignAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AssignAdd(*#, #, #, #)".}

proc iAssignSub(root: Scope, rref: Out, value: Out, attrs: AssignSubAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AssignSub(*#, #, #, #)".}

proc iCountUpTo(root: Scope, rref: Out, limit: int): Out {.header:std_ops, importcpp:"tensorflow::ops::CountUpTo(*#, #, #)".}

proc iDestroyTemporaryVariable(root: Scope, rref: Out, var_name: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::DestroyTemporaryVariable(*#, #, #)".}

proc iIsVariableInitialized(root: Scope, rref: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::IsVariableInitialized(*#, #)".}

proc iResourceCountUpTo(root: Scope, resource: Out, limit: int, T: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceCountUpTo(*#, #, #, #)".}

proc iResourceScatterNdAdd(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ResourceScatterNdAddAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::ResourceScatterNdAdd(*#, #, #, #, #).operation".}

proc iResourceScatterNdUpdate(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ResourceScatterNdUpdateAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::ResourceScatterNdUpdate(*#, #, #, #, #).operation".}

proc iScatterAdd(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterAdd(*#, #, #, #, #)".}

proc iScatterDiv(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterDivAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterDiv(*#, #, #, #, #)".}

proc iScatterMax(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterMaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMax(*#, #, #, #, #)".}

proc iScatterMin(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterMinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMin(*#, #, #, #, #)".}

proc iScatterMul(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMul(*#, #, #, #, #)".}

proc iScatterNdAdd(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterNdAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdAdd(*#, #, #, #, #)".}

proc iScatterNdSub(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterNdSubAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdSub(*#, #, #, #, #)".}

proc iScatterNdUpdate(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterNdUpdateAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdUpdate(*#, #, #, #, #)".}

proc iScatterSub(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterSubAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterSub(*#, #, #, #, #)".}

proc iScatterUpdate(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterUpdateAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterUpdate(*#, #, #, #, #)".}

proc iTemporaryVariable(root: Scope, shape: TensorShape, dtype: core.DType, attrs: TemporaryVariableAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TemporaryVariable(*#, #, #, #)".}

proc iVariable(root: Scope, shape: TensorShape, dtype: core.DType, attrs: VariableAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Variable(*#, #, #, #)".}

proc Assign(root: Scope, rref: Out, value: Out, attrs: AssignAttrs): Out =
  iAssign(root, rref, value, attrs)

proc Assign(root: Scope, rref: Out, value: Out, useLocking = none(bool), validateShape = none(bool)): Out =
  var attrs = AssignAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())
  if validateShape.isSome:
    attrs = attrs.ValidateShape(validateShape.get())

  return Assign(root, rref, value, attrs)

proc AssignAdd(root: Scope, rref: Out, value: Out, attrs: AssignAddAttrs): Out =
  iAssignAdd(root, rref, value, attrs)

proc AssignAdd(root: Scope, rref: Out, value: Out, useLocking = none(bool)): Out =
  var attrs = AssignAddAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return AssignAdd(root, rref, value, attrs)

proc AssignSub(root: Scope, rref: Out, value: Out, attrs: AssignSubAttrs): Out =
  iAssignSub(root, rref, value, attrs)

proc AssignSub(root: Scope, rref: Out, value: Out, useLocking = none(bool)): Out =
  var attrs = AssignSubAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return AssignSub(root, rref, value, attrs)

proc CountUpTo(root: Scope, rref: Out, limit: int): Out =
  iCountUpTo(root, rref, limit)

proc DestroyTemporaryVariable(root: Scope, rref: Out, var_name: cppstring): Out =
  iDestroyTemporaryVariable(root, rref, var_name)

proc DestroyTemporaryVariable(root: Scope, rref: Out, var_name: string): Out =
  let cppstr2 = newCPPString(var_name)
  return DestroyTemporaryVariable(root, rref, cppstr2)

proc IsVariableInitialized(root: Scope, rref: Out): Out =
  iIsVariableInitialized(root, rref)

proc ResourceCountUpTo(root: Scope, resource: Out, limit: int, T: core.DType): Out =
  iResourceCountUpTo(root, resource, limit, T)

proc ResourceScatterNdAdd(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ResourceScatterNdAddAttrs): Operation =
  iResourceScatterNdAdd(root, rref, indices, updates, attrs)

proc ResourceScatterNdAdd(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Operation =
  var attrs = ResourceScatterNdAddAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ResourceScatterNdAdd(root, rref, indices, updates, attrs)

proc ResourceScatterNdUpdate(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ResourceScatterNdUpdateAttrs): Operation =
  iResourceScatterNdUpdate(root, rref, indices, updates, attrs)

proc ResourceScatterNdUpdate(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Operation =
  var attrs = ResourceScatterNdUpdateAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ResourceScatterNdUpdate(root, rref, indices, updates, attrs)

proc ScatterAdd(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterAddAttrs): Out =
  iScatterAdd(root, rref, indices, updates, attrs)

proc ScatterAdd(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterAddAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterAdd(root, rref, indices, updates, attrs)

proc ScatterDiv(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterDivAttrs): Out =
  iScatterDiv(root, rref, indices, updates, attrs)

proc ScatterDiv(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterDivAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterDiv(root, rref, indices, updates, attrs)

proc ScatterMax(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterMaxAttrs): Out =
  iScatterMax(root, rref, indices, updates, attrs)

proc ScatterMax(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterMaxAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterMax(root, rref, indices, updates, attrs)

proc ScatterMin(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterMinAttrs): Out =
  iScatterMin(root, rref, indices, updates, attrs)

proc ScatterMin(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterMinAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterMin(root, rref, indices, updates, attrs)

proc ScatterMul(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterMulAttrs): Out =
  iScatterMul(root, rref, indices, updates, attrs)

proc ScatterMul(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterMulAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterMul(root, rref, indices, updates, attrs)

proc ScatterNdAdd(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterNdAddAttrs): Out =
  iScatterNdAdd(root, rref, indices, updates, attrs)

proc ScatterNdAdd(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterNdAddAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterNdAdd(root, rref, indices, updates, attrs)

proc ScatterNdSub(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterNdSubAttrs): Out =
  iScatterNdSub(root, rref, indices, updates, attrs)

proc ScatterNdSub(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterNdSubAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterNdSub(root, rref, indices, updates, attrs)

proc ScatterNdUpdate(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterNdUpdateAttrs): Out =
  iScatterNdUpdate(root, rref, indices, updates, attrs)

proc ScatterNdUpdate(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterNdUpdateAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterNdUpdate(root, rref, indices, updates, attrs)

proc ScatterSub(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterSubAttrs): Out =
  iScatterSub(root, rref, indices, updates, attrs)

proc ScatterSub(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterSubAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterSub(root, rref, indices, updates, attrs)

proc ScatterUpdate(root: Scope, rref: Out, indices: Out, updates: Out, attrs: ScatterUpdateAttrs): Out =
  iScatterUpdate(root, rref, indices, updates, attrs)

proc ScatterUpdate(root: Scope, rref: Out, indices: Out, updates: Out, useLocking = none(bool)): Out =
  var attrs = ScatterUpdateAttrs()

  if useLocking.isSome:
    attrs = attrs.UseLocking(useLocking.get())

  return ScatterUpdate(root, rref, indices, updates, attrs)

proc TemporaryVariable(root: Scope, shape: TensorShape, dtype: core.DType, attrs: TemporaryVariableAttrs): Out =
  iTemporaryVariable(root, shape, dtype, attrs)

proc TemporaryVariable(root: Scope, shape: TensorShape, dtype: core.DType, varName = none(string)): Out =
  var attrs = TemporaryVariableAttrs()

  if varName.isSome:
    attrs = attrs.VarName(newCPPString(varName.get()))

  return TemporaryVariable(root, shape, dtype, attrs)

proc Variable(root: Scope, shape: TensorShape, dtype: core.DType, attrs: VariableAttrs): Out =
  iVariable(root, shape, dtype, attrs)

proc Variable(root: Scope, shape: TensorShape, dtype: core.DType, container = none(string), sharedName = none(string)): Out =
  var attrs = VariableAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return Variable(root, shape, dtype, attrs)

export Assign,
       AssignAdd,
       AssignSub,
       CountUpTo,
       DestroyTemporaryVariable,
       IsVariableInitialized,
       ResourceCountUpTo,
       ResourceScatterNdAdd,
       ResourceScatterNdUpdate,
       ScatterAdd,
       ScatterDiv,
       ScatterMax,
       ScatterMin,
       ScatterMul,
       ScatterNdAdd,
       ScatterNdSub,
       ScatterNdUpdate,
       ScatterSub,
       ScatterUpdate,
       TemporaryVariable,
       Variable