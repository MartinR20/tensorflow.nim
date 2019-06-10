import ../core/core.nim
import ../utils/utils.nim

proc AddManySparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AddManySparseToTensorsMap(*@)".}

proc AddManySparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: AddManySparseToTensorsMapAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AddManySparseToTensorsMap(*@)".}

proc AddSparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AddSparseToTensorsMap(*@)".}

proc AddSparseToTensorsMap(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: AddSparseToTensorsMapAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::AddSparseToTensorsMap(*@)".}

proc DeserializeManySparse(root: Scope, serialized_sparse: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::DeserializeManySparse(*@)".}

proc DeserializeSparse(root: Scope, serialized_sparse: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::DeserializeSparse(*@)".}

proc SerializeManySparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SerializeManySparse(*@)".}

proc SerializeManySparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: SerializeManySparseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SerializeManySparse(*@)".}

proc SerializeSparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SerializeSparse(*@)".}

proc SerializeSparse(root: Scope, sparse_indices: Out, sparse_values: Out, sparse_shape: Out, attrs: SerializeSparseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SerializeSparse(*@)".}

proc SparseAdd(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out, thresh: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseAdd(*@)".}

proc SparseAddGrad(root: Scope, backprop_val_grad: Out, a_indices: Out, b_indices: Out, sum_indices: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseAddGrad(*@)".}

proc SparseConcat(root: Scope, indices: InList, values: InList, shapes: InList, concat_dim: int): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseConcat(*@)".}

proc SparseDenseCwiseAdd(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseDenseCwiseAdd(*@)".}

proc SparseDenseCwiseDiv(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseDenseCwiseDiv(*@)".}

proc SparseDenseCwiseMul(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out, dense: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseDenseCwiseMul(*@)".}

proc SparseFillEmptyRows(root: Scope, indices: Out, values: Out, dense_shape: Out, default_value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseFillEmptyRows(*@)".}

proc SparseFillEmptyRowsGrad(root: Scope, reverse_index_map: Out, grad_values: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseFillEmptyRowsGrad(*@)".}

proc SparseReduceMax(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceMax(*@)".}

proc SparseReduceMax(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceMaxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceMax(*@)".}

proc SparseReduceMaxSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceMaxSparse(*@)".}

proc SparseReduceMaxSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceMaxSparseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceMaxSparse(*@)".}

proc SparseReduceSum(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceSum(*@)".}

proc SparseReduceSum(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceSumAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceSum(*@)".}

proc SparseReduceSumSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceSumSparse(*@)".}

proc SparseReduceSumSparse(root: Scope, input_indices: Out, input_values: Out, input_shape: Out, reduction_axes: Out, attrs: SparseReduceSumSparseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReduceSumSparse(*@)".}

proc SparseReorder(root: Scope, input_indices: Out, input_values: Out, input_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReorder(*@)".}

proc SparseReshape(root: Scope, input_indices: Out, input_shape: Out, new_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseReshape(*@)".}

proc SparseSlice(root: Scope, indices: Out, values: Out, shape: Out, start: Out, size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSlice(*@)".}

proc SparseSoftmax(root: Scope, sp_indices: Out, sp_values: Out, sp_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSoftmax(*@)".}

proc SparseSparseMaximum(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSparseMaximum(*@)".}

proc SparseSparseMinimum(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b_indices: Out, b_values: Out, b_shape: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseSparseMinimum(*@)".}

proc SparseSplit(root: Scope, split_dim: Out, indices: Out, values: Out, shape: Out, num_split: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::SparseSplit(*@)".}

proc SparseTensorDenseAdd(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseTensorDenseAdd(*@)".}

proc SparseTensorDenseMatMul(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseTensorDenseMatMul(*@)".}

proc SparseTensorDenseMatMul(root: Scope, a_indices: Out, a_values: Out, a_shape: Out, b: Out, attrs: SparseTensorDenseMatMulAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseTensorDenseMatMul(*@)".}

proc TakeManySparseFromTensorsMap(root: Scope, sparse_handles: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::TakeManySparseFromTensorsMap(*@)".}

proc TakeManySparseFromTensorsMap(root: Scope, sparse_handles: Out, dtype: DType, attrs: TakeManySparseFromTensorsMapAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TakeManySparseFromTensorsMap(*@)".}

