import ../core/core.nim
import ../utils/utils.nim

proc Assign(root: Scope, ref: Out, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::Assign(*@)".}

proc Assign(root: Scope, ref: Out, value: Out, attrs: AssignAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Assign(*@)".}

proc AssignAdd(root: Scope, ref: Out, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AssignAdd(*@)".}

proc AssignAdd(root: Scope, ref: Out, value: Out, attrs: AssignAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AssignAdd(*@)".}

proc AssignSub(root: Scope, ref: Out, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AssignSub(*@)".}

proc AssignSub(root: Scope, ref: Out, value: Out, attrs: AssignSubAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AssignSub(*@)".}

proc CountUpTo(root: Scope, ref: Out, limit: int): Out {.header:std_ops, importcpp:"tensorflow::ops::CountUpTo(*@)".}

proc DestroyTemporaryVariable(root: Scope, ref: Out, var_name: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::DestroyTemporaryVariable(*@)".}

proc IsVariableInitialized(root: Scope, ref: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::IsVariableInitialized(*@)".}

proc ResourceCountUpTo(root: Scope, resource: Out, limit: int, T: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceCountUpTo(*@)".}

proc ResourceScatterNdAdd(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceScatterNdAdd(*@)".}

proc ResourceScatterNdAdd(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ResourceScatterNdAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceScatterNdAdd(*@)".}

proc ResourceScatterNdUpdate(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceScatterNdUpdate(*@)".}

proc ResourceScatterNdUpdate(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ResourceScatterNdUpdateAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResourceScatterNdUpdate(*@)".}

proc ScatterAdd(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterAdd(*@)".}

proc ScatterAdd(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterAdd(*@)".}

proc ScatterDiv(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterDiv(*@)".}

proc ScatterDiv(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterDivAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterDiv(*@)".}

proc ScatterMax(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMax(*@)".}

proc ScatterMax(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterMaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMax(*@)".}

proc ScatterMin(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMin(*@)".}

proc ScatterMin(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterMinAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMin(*@)".}

proc ScatterMul(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMul(*@)".}

proc ScatterMul(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterMul(*@)".}

proc ScatterNdAdd(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdAdd(*@)".}

proc ScatterNdAdd(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterNdAddAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdAdd(*@)".}

proc ScatterNdSub(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdSub(*@)".}

proc ScatterNdSub(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterNdSubAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdSub(*@)".}

proc ScatterNdUpdate(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdUpdate(*@)".}

proc ScatterNdUpdate(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterNdUpdateAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterNdUpdate(*@)".}

proc ScatterSub(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterSub(*@)".}

proc ScatterSub(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterSubAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterSub(*@)".}

proc ScatterUpdate(root: Scope, ref: Out, indices: Out, updates: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterUpdate(*@)".}

proc ScatterUpdate(root: Scope, ref: Out, indices: Out, updates: Out, attrs: ScatterUpdateAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ScatterUpdate(*@)".}

proc TemporaryVariable(root: Scope, shape: PartialTensorShape, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::TemporaryVariable(*@)".}

proc TemporaryVariable(root: Scope, shape: PartialTensorShape, dtype: DType, attrs: TemporaryVariableAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TemporaryVariable(*@)".}

proc Variable(root: Scope, shape: PartialTensorShape, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::Variable(*@)".}

proc Variable(root: Scope, shape: PartialTensorShape, dtype: DType, attrs: VariableAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Variable(*@)".}

