import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAddManySparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: AddManySparseToTensorsMapAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AddManySparseToTensorsMap(*#, #, #, #, #)".}

proc iAddSparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: AddSparseToTensorsMapAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AddSparseToTensorsMap(*#, #, #, #, #)".}

proc iDeserializeManySparse(root: Scope, serialized_sparse: Out, dtype: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::DeserializeManySparse(*#, #, #)".}

proc iDeserializeSparse(root: Scope, serialized_sparse: Out, dtype: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::DeserializeSparse(*#, #, #)".}

proc iSerializeManySparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: SerializeManySparseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SerializeManySparse(*#, #, #, #, #)".}

proc iSerializeSparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: SerializeSparseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SerializeSparse(*#, #, #, #, #)".}

proc iSparseAdd(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out, thresh: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseAdd(*#, #, #, #, #, #, #, #)".}

proc iSparseAddGrad(root: Scope, backprop_val_grad: Out, a_indices: Out, b_indices: Out, sum_indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseAddGrad(*#, #, #, #, #)".}

proc iSparseConcat(root: Scope, indices: InList, values: InList, shapes: InList, concat_dim: int): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseConcat(*#, *#, *#, *#, #)".}

proc iSparseDenseCwiseAdd(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseDenseCwiseAdd(*#, #, #, #, #)".}

proc iSparseDenseCwiseDiv(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseDenseCwiseDiv(*#, #, #, #, #)".}

proc iSparseDenseCwiseMul(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseDenseCwiseMul(*#, #, #, #, #)".}

proc iSparseFillEmptyRows(root: Scope, indices: Out, values: Out, dense_shape: Out, default_value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseFillEmptyRows(*#, #, #, #, #)".}

proc iSparseFillEmptyRowsGrad(root: Scope, reverse_index_map: Out, grad_values: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseFillEmptyRowsGrad(*#, #, #)".}

proc iSparseReduceMax(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceMaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceMax(*#, #, #, #, #, #)".}

proc iSparseReduceMaxSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceMaxSparseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceMaxSparse(*#, #, #, #, #, #)".}

proc iSparseReduceSum(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceSumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceSum(*#, #, #, #, #, #)".}

proc iSparseReduceSumSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceSumSparseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceSumSparse(*#, #, #, #, #, #)".}

proc iSparseReorder(root: Scope, input_indices: Out, input_values: Out, input_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReorder(*#, #, #, #)".}

proc iSparseReshape(root: Scope, input_indices: Out, input_shape: Out, new_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReshape(*#, #, #, #)".}

proc iSparseSlice(root: Scope, indices: Out, values: Out, shape: Out, start: Out, size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSlice(*#, #, #, #, #, #)".}

proc iSparseSoftmax(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSoftmax(*#, #, #, #)".}

proc iSparseSparseMaximum(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSparseMaximum(*#, #, #, #, #, #, #)".}

proc iSparseSparseMinimum(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSparseMinimum(*#, #, #, #, #, #, #)".}

proc iSparseSplit(root: Scope, split_dim: Out, indices: Out, values: Out, shape: Out, num_split: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::SparseSplit(*#, #, #, #, #, #).output".}

proc iSparseTensorDenseAdd(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseTensorDenseAdd(*#, #, #, #, #)".}

proc iSparseTensorDenseMatMul(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b: Out, attrs: SparseTensorDenseMatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseTensorDenseMatMul(*#, #, #, #, #, #)".}

proc iTakeManySparseFromTensorsMap(root: Scope, sparse_handles: Out, dtype: core.DType, attrs: TakeManySparseFromTensorsMapAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TakeManySparseFromTensorsMap(*#, #, #, #)".}

proc AddManySparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: AddManySparseToTensorsMapAttrs): Out =
  iAddManySparseToTensorsMap(root, sparse_indices, sparse_values, sparse_shape, attrs)

proc AddManySparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, container = none(string), sharedName = none(string)): Out =
  var attrs = AddManySparseToTensorsMapAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return AddManySparseToTensorsMap(root, sparse_indices, sparse_values, sparse_shape, attrs)

proc AddSparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: AddSparseToTensorsMapAttrs): Out =
  iAddSparseToTensorsMap(root, sparse_indices, sparse_values, sparse_shape, attrs)

proc AddSparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, container = none(string), sharedName = none(string)): Out =
  var attrs = AddSparseToTensorsMapAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return AddSparseToTensorsMap(root, sparse_indices, sparse_values, sparse_shape, attrs)

proc DeserializeManySparse(root: Scope, serialized_sparse: Out, dtype: core.DType): Out =
  iDeserializeManySparse(root, serialized_sparse, dtype)

proc DeserializeSparse(root: Scope, serialized_sparse: Out, dtype: core.DType): Out =
  iDeserializeSparse(root, serialized_sparse, dtype)

proc SerializeManySparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: SerializeManySparseAttrs): Out =
  iSerializeManySparse(root, sparse_indices, sparse_values, sparse_shape, attrs)

proc SerializeManySparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, outType = none(core.DType)): Out =
  var attrs = SerializeManySparseAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return SerializeManySparse(root, sparse_indices, sparse_values, sparse_shape, attrs)

proc SerializeSparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: SerializeSparseAttrs): Out =
  iSerializeSparse(root, sparse_indices, sparse_values, sparse_shape, attrs)

proc SerializeSparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, outType = none(core.DType)): Out =
  var attrs = SerializeSparseAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return SerializeSparse(root, sparse_indices, sparse_values, sparse_shape, attrs)

proc SparseAdd(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out, thresh: Out): Out =
  iSparseAdd(root, a_indices, a_values, a_shape, b_indices, b_values, b_shape, thresh)

proc SparseAddGrad(root: Scope, backprop_val_grad: Out, a_indices: Out, b_indices: Out, sum_indices: Out): Out =
  iSparseAddGrad(root, backprop_val_grad, a_indices, b_indices, sum_indices)

proc SparseConcat(root: Scope, indices: InList, values: InList, shapes: InList, concat_dim: int): Out =
  iSparseConcat(root, indices, values, shapes, concat_dim)

proc SparseConcat(root: Scope, indices: OutList, values: OutList, shapes: OutList, concat_dim: int): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseConcat(*#, #, *, *# #)".}

proc SparseDenseCwiseAdd(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out =
  iSparseDenseCwiseAdd(root, sp_indices, sp_values, sp_shape, dense)

proc SparseDenseCwiseDiv(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out =
  iSparseDenseCwiseDiv(root, sp_indices, sp_values, sp_shape, dense)

proc SparseDenseCwiseMul(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out =
  iSparseDenseCwiseMul(root, sp_indices, sp_values, sp_shape, dense)

proc SparseFillEmptyRows(root: Scope, indices: Out, values: Out, dense_shape: Out, default_value: Out): Out =
  iSparseFillEmptyRows(root, indices, values, dense_shape, default_value)

proc SparseFillEmptyRowsGrad(root: Scope, reverse_index_map: Out, grad_values: Out): Out =
  iSparseFillEmptyRowsGrad(root, reverse_index_map, grad_values)

proc SparseReduceMax(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceMaxAttrs): Out =
  iSparseReduceMax(root, input_indices, input_values, input_shape, reduction_axes, attrs)

proc SparseReduceMax(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, keepDims = none(bool)): Out =
  var attrs = SparseReduceMaxAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return SparseReduceMax(root, input_indices, input_values, input_shape, reduction_axes, attrs)

proc SparseReduceMaxSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceMaxSparseAttrs): Out =
  iSparseReduceMaxSparse(root, input_indices, input_values, input_shape, reduction_axes, attrs)

proc SparseReduceMaxSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, keepDims = none(bool)): Out =
  var attrs = SparseReduceMaxSparseAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return SparseReduceMaxSparse(root, input_indices, input_values, input_shape, reduction_axes, attrs)

proc SparseReduceSum(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceSumAttrs): Out =
  iSparseReduceSum(root, input_indices, input_values, input_shape, reduction_axes, attrs)

proc SparseReduceSum(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, keepDims = none(bool)): Out =
  var attrs = SparseReduceSumAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return SparseReduceSum(root, input_indices, input_values, input_shape, reduction_axes, attrs)

proc SparseReduceSumSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceSumSparseAttrs): Out =
  iSparseReduceSumSparse(root, input_indices, input_values, input_shape, reduction_axes, attrs)

proc SparseReduceSumSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, keepDims = none(bool)): Out =
  var attrs = SparseReduceSumSparseAttrs()

  if keepDims.isSome:
    attrs = attrs.KeepDims(keepDims.get())

  return SparseReduceSumSparse(root, input_indices, input_values, input_shape, reduction_axes, attrs)

proc SparseReorder(root: Scope, input_indices: Out, input_values: Out, input_shape: Out): Out =
  iSparseReorder(root, input_indices, input_values, input_shape)

proc SparseReshape(root: Scope, input_indices: Out, input_shape: Out, new_shape: Out): Out =
  iSparseReshape(root, input_indices, input_shape, new_shape)

proc SparseSlice(root: Scope, indices: Out, values: Out, shape: Out, start: Out, size: Out): Out =
  iSparseSlice(root, indices, values, shape, start, size)

proc SparseSoftmax(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out): Out =
  iSparseSoftmax(root, sp_indices, sp_values, sp_shape)

proc SparseSparseMaximum(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out): Out =
  iSparseSparseMaximum(root, a_indices, a_values, a_shape, b_indices, b_values, b_shape)

proc SparseSparseMinimum(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out): Out =
  iSparseSparseMinimum(root, a_indices, a_values, a_shape, b_indices, b_values, b_shape)

proc SparseSplit(root: Scope, split_dim: Out, indices: Out, values: Out, shape: Out, num_split: int): OutList =
  iSparseSplit(root, split_dim, indices, values, shape, num_split)

proc SparseTensorDenseAdd(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b: Out): Out =
  iSparseTensorDenseAdd(root, a_indices, a_values, a_shape, b)

proc SparseTensorDenseMatMul(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b: Out, attrs: SparseTensorDenseMatMulAttrs): Out =
  iSparseTensorDenseMatMul(root, a_indices, a_values, a_shape, b, attrs)

proc SparseTensorDenseMatMul(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b: Out, adjointA = none(bool), adjointB = none(bool)): Out =
  var attrs = SparseTensorDenseMatMulAttrs()

  if adjointA.isSome:
    attrs = attrs.AdjointA(adjointA.get())
  if adjointB.isSome:
    attrs = attrs.AdjointB(adjointB.get())

  return SparseTensorDenseMatMul(root, a_indices, a_values, a_shape, b, attrs)

proc TakeManySparseFromTensorsMap(root: Scope, sparse_handles: Out, dtype: core.DType, attrs: TakeManySparseFromTensorsMapAttrs): Out =
  iTakeManySparseFromTensorsMap(root, sparse_handles, dtype, attrs)

proc TakeManySparseFromTensorsMap(root: Scope, sparse_handles: Out, dtype: core.DType, container = none(string), sharedName = none(string)): Out =
  var attrs = TakeManySparseFromTensorsMapAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return TakeManySparseFromTensorsMap(root, sparse_handles, dtype, attrs)

export AddManySparseToTensorsMap,
       AddSparseToTensorsMap,
       DeserializeManySparse,
       DeserializeSparse,
       SerializeManySparse,
       SerializeSparse,
       SparseAdd,
       SparseAddGrad,
       SparseConcat,
       SparseDenseCwiseAdd,
       SparseDenseCwiseDiv,
       SparseDenseCwiseMul,
       SparseFillEmptyRows,
       SparseFillEmptyRowsGrad,
       SparseReduceMax,
       SparseReduceMaxSparse,
       SparseReduceSum,
       SparseReduceSumSparse,
       SparseReorder,
       SparseReshape,
       SparseSlice,
       SparseSoftmax,
       SparseSparseMaximum,
       SparseSparseMinimum,
       SparseSplit,
       SparseTensorDenseAdd,
       SparseTensorDenseMatMul,
       TakeManySparseFromTensorsMap