import ../core/core.nim
import ../utils/utils.nim

proc AccumulatorApplyGradient(root: Scope, handle: Out, local_step: Out, gradient: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulatorApplyGradient(*@)".}

proc AccumulatorNumAccumulated(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulatorNumAccumulated(*@)".}

proc AccumulatorSetGlobalStep(root: Scope, handle: Out, new_global_step: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulatorSetGlobalStep(*@)".}

proc AccumulatorTakeGradient(root: Scope, handle: Out, num_required: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulatorTakeGradient(*@)".}

proc Barrier(root: Scope, component_types: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::Barrier(*@)".}

proc Barrier(root: Scope, component_types: DType, attrs: BarrierAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Barrier(*@)".}

proc BarrierClose(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierClose(*@)".}

proc BarrierClose(root: Scope, handle: Out, attrs: BarrierCloseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierClose(*@)".}

proc BarrierIncompleteSize(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierIncompleteSize(*@)".}

proc BarrierInsertMany(root: Scope, handle: Out, keys: Out, values: Out, component_index: int): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierInsertMany(*@)".}

proc BarrierReadySize(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierReadySize(*@)".}

proc BarrierTakeMany(root: Scope, handle: Out, num_elements: Out, component_types: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierTakeMany(*@)".}

proc BarrierTakeMany(root: Scope, handle: Out, num_elements: Out, component_types: DType, attrs: BarrierTakeManyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierTakeMany(*@)".}

proc ConditionalAccumulator(root: Scope, dtype: DType, shape: PartialTensorShape): Out {.header:std_ops, importcpp:"tensorflow::ops::ConditionalAccumulator(*@)".}

proc ConditionalAccumulator(root: Scope, dtype: DType, shape: PartialTensorShape, attrs: ConditionalAccumulatorAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ConditionalAccumulator(*@)".}

proc DeleteSessionTensor(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DeleteSessionTensor(*@)".}

proc DynamicPartition(root: Scope, data: Out, partitions: Out, num_partitions: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::DynamicPartition(*@)".}

proc DynamicStitch(root: Scope, indices: InList, data: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::DynamicStitch(*@)".}

proc FIFOQueue(root: Scope, component_types: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::FIFOQueue(*@)".}

proc FIFOQueue(root: Scope, component_types: DType, attrs: FIFOQueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FIFOQueue(*@)".}

proc GetSessionHandle(root: Scope, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GetSessionHandle(*@)".}

proc GetSessionHandleV2(root: Scope, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GetSessionHandleV2(*@)".}

proc GetSessionTensor(root: Scope, handle: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::GetSessionTensor(*@)".}

proc MapClear(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::MapClear(*@)".}

proc MapClear(root: Scope, dtypes: DType, attrs: MapClearAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapClear(*@)".}

proc MapIncompleteSize(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::MapIncompleteSize(*@)".}

proc MapIncompleteSize(root: Scope, dtypes: DType, attrs: MapIncompleteSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapIncompleteSize(*@)".}

proc MapPeek(root: Scope, key: Out, indices: Out, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::MapPeek(*@)".}

proc MapPeek(root: Scope, key: Out, indices: Out, dtypes: DType, attrs: MapPeekAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapPeek(*@)".}

proc MapSize(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::MapSize(*@)".}

proc MapSize(root: Scope, dtypes: DType, attrs: MapSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapSize(*@)".}

proc MapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::MapStage(*@)".}

proc MapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: DType, attrs: MapStageAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapStage(*@)".}

proc MapUnstage(root: Scope, key: Out, indices: Out, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::MapUnstage(*@)".}

proc MapUnstage(root: Scope, key: Out, indices: Out, dtypes: DType, attrs: MapUnstageAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapUnstage(*@)".}

proc MapUnstageNoKey(root: Scope, indices: Out, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::MapUnstageNoKey(*@)".}

proc MapUnstageNoKey(root: Scope, indices: Out, dtypes: DType, attrs: MapUnstageNoKeyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapUnstageNoKey(*@)".}

proc OrderedMapClear(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapClear(*@)".}

proc OrderedMapClear(root: Scope, dtypes: DType, attrs: OrderedMapClearAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapClear(*@)".}

proc OrderedMapIncompleteSize(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapIncompleteSize(*@)".}

proc OrderedMapIncompleteSize(root: Scope, dtypes: DType, attrs: OrderedMapIncompleteSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapIncompleteSize(*@)".}

proc OrderedMapPeek(root: Scope, key: Out, indices: Out, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapPeek(*@)".}

proc OrderedMapPeek(root: Scope, key: Out, indices: Out, dtypes: DType, attrs: OrderedMapPeekAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapPeek(*@)".}

proc OrderedMapSize(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapSize(*@)".}

proc OrderedMapSize(root: Scope, dtypes: DType, attrs: OrderedMapSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapSize(*@)".}

proc OrderedMapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapStage(*@)".}

proc OrderedMapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: DType, attrs: OrderedMapStageAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapStage(*@)".}

proc OrderedMapUnstage(root: Scope, key: Out, indices: Out, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapUnstage(*@)".}

proc OrderedMapUnstage(root: Scope, key: Out, indices: Out, dtypes: DType, attrs: OrderedMapUnstageAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapUnstage(*@)".}

proc OrderedMapUnstageNoKey(root: Scope, indices: Out, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapUnstageNoKey(*@)".}

proc OrderedMapUnstageNoKey(root: Scope, indices: Out, dtypes: DType, attrs: OrderedMapUnstageNoKeyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapUnstageNoKey(*@)".}

proc PaddingFIFOQueue(root: Scope, component_types: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::PaddingFIFOQueue(*@)".}

proc PaddingFIFOQueue(root: Scope, component_types: DType, attrs: PaddingFIFOQueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::PaddingFIFOQueue(*@)".}

proc ParallelDynamicStitch(root: Scope, indices: InList, data: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::ParallelDynamicStitch(*@)".}

proc PriorityQueue(root: Scope, shapes: ArraySlice[PartialTensorShape]): Out {.header:std_ops, importcpp:"tensorflow::ops::PriorityQueue(*@)".}

proc PriorityQueue(root: Scope, shapes: ArraySlice[PartialTensorShape], attrs: PriorityQueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::PriorityQueue(*@)".}

proc QueueClose(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueClose(*@)".}

proc QueueClose(root: Scope, handle: Out, attrs: QueueCloseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueClose(*@)".}

proc QueueDequeue(root: Scope, handle: Out, component_types: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeue(*@)".}

proc QueueDequeue(root: Scope, handle: Out, component_types: DType, attrs: QueueDequeueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeue(*@)".}

proc QueueDequeueMany(root: Scope, handle: Out, n: Out, component_types: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeueMany(*@)".}

proc QueueDequeueMany(root: Scope, handle: Out, n: Out, component_types: DType, attrs: QueueDequeueManyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeueMany(*@)".}

proc QueueDequeueUpTo(root: Scope, handle: Out, n: Out, component_types: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeueUpTo(*@)".}

proc QueueDequeueUpTo(root: Scope, handle: Out, n: Out, component_types: DType, attrs: QueueDequeueUpToAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeueUpTo(*@)".}

proc QueueEnqueue(root: Scope, handle: Out, components: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueEnqueue(*@)".}

proc QueueEnqueue(root: Scope, handle: Out, components: InList, attrs: QueueEnqueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueEnqueue(*@)".}

proc QueueEnqueueMany(root: Scope, handle: Out, components: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueEnqueueMany(*@)".}

proc QueueEnqueueMany(root: Scope, handle: Out, components: InList, attrs: QueueEnqueueManyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueEnqueueMany(*@)".}

proc QueueIsClosed(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueIsClosed(*@)".}

proc QueueIsClosedV2(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueIsClosedV2(*@)".}

proc QueueSize(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueSize(*@)".}

proc RandomShuffleQueue(root: Scope, component_types: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomShuffleQueue(*@)".}

proc RandomShuffleQueue(root: Scope, component_types: DType, attrs: RandomShuffleQueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomShuffleQueue(*@)".}

proc RecordInput(root: Scope, file_pattern: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::RecordInput(*@)".}

proc RecordInput(root: Scope, file_pattern: cppstring, attrs: RecordInputAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RecordInput(*@)".}

proc SparseAccumulatorApplyGradient(root: Scope, handle: Out, local_step: Out, gradient_indices: Out, gradient_values: Out, gradient_shape: Out, has_known_shape: bool): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseAccumulatorApplyGradient(*@)".}

proc SparseAccumulatorTakeGradient(root: Scope, handle: Out, num_required: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseAccumulatorTakeGradient(*@)".}

proc SparseConditionalAccumulator(root: Scope, dtype: DType, shape: PartialTensorShape): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseConditionalAccumulator(*@)".}

proc SparseConditionalAccumulator(root: Scope, dtype: DType, shape: PartialTensorShape, attrs: SparseConditionalAccumulatorAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseConditionalAccumulator(*@)".}

proc Stage(root: Scope, values: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::Stage(*@)".}

proc Stage(root: Scope, values: InList, attrs: StageAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Stage(*@)".}

proc StageClear(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::StageClear(*@)".}

proc StageClear(root: Scope, dtypes: DType, attrs: StageClearAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StageClear(*@)".}

proc StagePeek(root: Scope, index: Out, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::StagePeek(*@)".}

proc StagePeek(root: Scope, index: Out, dtypes: DType, attrs: StagePeekAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StagePeek(*@)".}

proc StageSize(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::StageSize(*@)".}

proc StageSize(root: Scope, dtypes: DType, attrs: StageSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StageSize(*@)".}

proc TensorArray(root: Scope, size: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArray(*@)".}

proc TensorArray(root: Scope, size: Out, dtype: DType, attrs: TensorArrayAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArray(*@)".}

proc TensorArrayClose(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayClose(*@)".}

proc TensorArrayConcat(root: Scope, handle: Out, flow_in: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayConcat(*@)".}

proc TensorArrayConcat(root: Scope, handle: Out, flow_in: Out, dtype: DType, attrs: TensorArrayConcatAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayConcat(*@)".}

proc TensorArrayGather(root: Scope, handle: Out, indices: Out, flow_in: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayGather(*@)".}

proc TensorArrayGather(root: Scope, handle: Out, indices: Out, flow_in: Out, dtype: DType, attrs: TensorArrayGatherAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayGather(*@)".}

proc TensorArrayGrad(root: Scope, handle: Out, flow_in: Out, source: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayGrad(*@)".}

proc TensorArrayGradWithShape(root: Scope, handle: Out, flow_in: Out, shape_to_prepend: Out, source: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayGradWithShape(*@)".}

proc TensorArrayRead(root: Scope, handle: Out, index: Out, flow_in: Out, dtype: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayRead(*@)".}

proc TensorArrayScatter(root: Scope, handle: Out, indices: Out, value: Out, flow_in: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayScatter(*@)".}

proc TensorArraySize(root: Scope, handle: Out, flow_in: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArraySize(*@)".}

proc TensorArraySplit(root: Scope, handle: Out, value: Out, lengths: Out, flow_in: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArraySplit(*@)".}

proc TensorArrayWrite(root: Scope, handle: Out, index: Out, value: Out, flow_in: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayWrite(*@)".}

proc Unstage(root: Scope, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::Unstage(*@)".}

proc Unstage(root: Scope, dtypes: DType, attrs: UnstageAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Unstage(*@)".}

