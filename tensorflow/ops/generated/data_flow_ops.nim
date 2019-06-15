import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAccumulatorApplyGradient(root: Scope, handle: Out, local_step: Out, gradient: Out) {.header:std_ops, importcpp:"tensorflow::ops::AccumulatorApplyGradient(*#, #, #, #)".}

proc iAccumulatorNumAccumulated(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulatorNumAccumulated(*#, #)".}

proc iAccumulatorSetGlobalStep(root: Scope, handle: Out, new_global_step: Out) {.header:std_ops, importcpp:"tensorflow::ops::AccumulatorSetGlobalStep(*#, #, #)".}

proc iAccumulatorTakeGradient(root: Scope, handle: Out, num_required: Out, dtype: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::AccumulatorTakeGradient(*#, #, #, #)".}

proc iBarrier(root: Scope, component_types: core.DType, attrs: BarrierAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Barrier(*#, #, #)".}

proc iBarrierClose(root: Scope, handle: Out, attrs: BarrierCloseAttrs) {.header:std_ops, importcpp:"tensorflow::ops::BarrierClose(*#, #, #)".}

proc iBarrierIncompleteSize(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierIncompleteSize(*#, #)".}

proc iBarrierInsertMany(root: Scope, handle: Out, keys: Out, values: Out, component_index: int) {.header:std_ops, importcpp:"tensorflow::ops::BarrierInsertMany(*#, #, #, #, #)".}

proc iBarrierReadySize(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierReadySize(*#, #)".}

proc iBarrierTakeMany(root: Scope, handle: Out, num_elements: Out, component_types: core.DType, attrs: BarrierTakeManyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::BarrierTakeMany(*#, #, #, #, #)".}

proc iConditionalAccumulator(root: Scope, dtype: core.DType, shape: TensorShape, attrs: ConditionalAccumulatorAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ConditionalAccumulator(*#, #, #, #)".}

proc iDeleteSessionTensor(root: Scope, handle: Out) {.header:std_ops, importcpp:"tensorflow::ops::DeleteSessionTensor(*#, #)".}

proc iDynamicPartition(root: Scope, data: Out, partitions: Out, num_partitions: int): OutList {.header:std_ops, importcpp:"tensorflow::ops::DynamicPartition(*#, #, #, #).output".}

proc iDynamicStitch(root: Scope, indices: InList, data: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::DynamicStitch(*#, *#, *#)".}

proc iFIFOQueue(root: Scope, component_types: core.DType, attrs: FIFOQueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FIFOQueue(*#, #, #)".}

proc iGetSessionHandle(root: Scope, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GetSessionHandle(*#, #)".}

proc iGetSessionHandleV2(root: Scope, value: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::GetSessionHandleV2(*#, #)".}

proc iGetSessionTensor(root: Scope, handle: Out, dtype: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::GetSessionTensor(*#, #, #)".}

proc iMapClear(root: Scope, dtypes: core.DType, attrs: MapClearAttrs) {.header:std_ops, importcpp:"tensorflow::ops::MapClear(*#, #, #)".}

proc iMapIncompleteSize(root: Scope, dtypes: core.DType, attrs: MapIncompleteSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapIncompleteSize(*#, #, #)".}

proc iMapPeek(root: Scope, key: Out, indices: Out, dtypes: core.DType, attrs: MapPeekAttrs) {.header:std_ops, importcpp:"tensorflow::ops::MapPeek(*#, #, #, #, #)".}

proc iMapSize(root: Scope, dtypes: core.DType, attrs: MapSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapSize(*#, #, #)".}

proc iMapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: core.DType, attrs: MapStageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::MapStage(*#, #, #, *#, #, #)".}

proc iMapUnstage(root: Scope, key: Out, indices: Out, dtypes: core.DType, attrs: MapUnstageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::MapUnstage(*#, #, #, #, #)".}

proc iMapUnstageNoKey(root: Scope, indices: Out, dtypes: core.DType, attrs: MapUnstageNoKeyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MapUnstageNoKey(*#, #, #, #)".}

proc iOrderedMapClear(root: Scope, dtypes: core.DType, attrs: OrderedMapClearAttrs) {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapClear(*#, #, #)".}

proc iOrderedMapIncompleteSize(root: Scope, dtypes: core.DType, attrs: OrderedMapIncompleteSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapIncompleteSize(*#, #, #)".}

proc iOrderedMapPeek(root: Scope, key: Out, indices: Out, dtypes: core.DType, attrs: OrderedMapPeekAttrs) {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapPeek(*#, #, #, #, #)".}

proc iOrderedMapSize(root: Scope, dtypes: core.DType, attrs: OrderedMapSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapSize(*#, #, #)".}

proc iOrderedMapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: core.DType, attrs: OrderedMapStageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapStage(*#, #, #, *#, #, #)".}

proc iOrderedMapUnstage(root: Scope, key: Out, indices: Out, dtypes: core.DType, attrs: OrderedMapUnstageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapUnstage(*#, #, #, #, #)".}

proc iOrderedMapUnstageNoKey(root: Scope, indices: Out, dtypes: core.DType, attrs: OrderedMapUnstageNoKeyAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapUnstageNoKey(*#, #, #, #)".}

proc iPaddingFIFOQueue(root: Scope, component_types: core.DType, attrs: PaddingFIFOQueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::PaddingFIFOQueue(*#, #, #)".}

proc iParallelDynamicStitch(root: Scope, indices: InList, data: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::ParallelDynamicStitch(*#, *#, *#)".}

proc iPriorityQueue(root: Scope, shapes: ArraySlice[TensorShape], attrs: PriorityQueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::PriorityQueue(*#, #, #)".}

proc iQueueClose(root: Scope, handle: Out, attrs: QueueCloseAttrs) {.header:std_ops, importcpp:"tensorflow::ops::QueueClose(*#, #, #)".}

proc iQueueDequeue(root: Scope, handle: Out, component_types: core.DType, attrs: QueueDequeueAttrs) {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeue(*#, #, #, #)".}

proc iQueueDequeueMany(root: Scope, handle: Out, n: Out, component_types: core.DType, attrs: QueueDequeueManyAttrs) {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeueMany(*#, #, #, #, #)".}

proc iQueueDequeueUpTo(root: Scope, handle: Out, n: Out, component_types: core.DType, attrs: QueueDequeueUpToAttrs) {.header:std_ops, importcpp:"tensorflow::ops::QueueDequeueUpTo(*#, #, #, #, #)".}

proc iQueueEnqueue(root: Scope, handle: Out, components: InList, attrs: QueueEnqueueAttrs) {.header:std_ops, importcpp:"tensorflow::ops::QueueEnqueue(*#, #, *#, #)".}

proc iQueueEnqueueMany(root: Scope, handle: Out, components: InList, attrs: QueueEnqueueManyAttrs) {.header:std_ops, importcpp:"tensorflow::ops::QueueEnqueueMany(*#, #, *#, #)".}

proc iQueueIsClosed(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueIsClosed(*#, #)".}

proc iQueueIsClosedV2(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueIsClosedV2(*#, #)".}

proc iQueueSize(root: Scope, handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QueueSize(*#, #)".}

proc iRandomShuffleQueue(root: Scope, component_types: core.DType, attrs: RandomShuffleQueueAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RandomShuffleQueue(*#, #, #)".}

proc iRecordInput(root: Scope, file_pattern: cppstring, attrs: RecordInputAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RecordInput(*#, #, #)".}

proc iSparseAccumulatorApplyGradient(root: Scope, handle: Out, local_step: Out, gradient_indices: Out, gradient_values: Out, gradient_shape: Out, has_known_shape: bool) {.header:std_ops, importcpp:"tensorflow::ops::SparseAccumulatorApplyGradient(*#, #, #, #, #, #, #)".}

proc iSparseAccumulatorTakeGradient(root: Scope, handle: Out, num_required: Out, dtype: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseAccumulatorTakeGradient(*#, #, #, #)".}

proc iSparseConditionalAccumulator(root: Scope, dtype: core.DType, shape: TensorShape, attrs: SparseConditionalAccumulatorAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SparseConditionalAccumulator(*#, #, #, #)".}

proc iStage(root: Scope, values: InList, attrs: StageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::Stage(*#, *#, #)".}

proc iStageClear(root: Scope, dtypes: core.DType, attrs: StageClearAttrs) {.header:std_ops, importcpp:"tensorflow::ops::StageClear(*#, #, #)".}

proc iStagePeek(root: Scope, index: Out, dtypes: core.DType, attrs: StagePeekAttrs) {.header:std_ops, importcpp:"tensorflow::ops::StagePeek(*#, #, #, #)".}

proc iStageSize(root: Scope, dtypes: core.DType, attrs: StageSizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StageSize(*#, #, #)".}

proc iTensorArray(root: Scope, size: Out, dtype: core.DType, attrs: TensorArrayAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArray(*#, #, #, #)".}

proc iTensorArrayClose(root: Scope, handle: Out) {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayClose(*#, #)".}

proc iTensorArrayConcat(root: Scope, handle: Out, flow_in: Out, dtype: core.DType, attrs: TensorArrayConcatAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayConcat(*#, #, #, #, #)".}

proc iTensorArrayGather(root: Scope, handle: Out, indices: Out, flow_in: Out, dtype: core.DType, attrs: TensorArrayGatherAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayGather(*#, #, #, #, #, #)".}

proc iTensorArrayGrad(root: Scope, handle: Out, flow_in: Out, source: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayGrad(*#, #, #, #)".}

proc iTensorArrayGradWithShape(root: Scope, handle: Out, flow_in: Out, shape_to_prepend: Out, source: cppstring): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayGradWithShape(*#, #, #, #, #)".}

proc iTensorArrayRead(root: Scope, handle: Out, index: Out, flow_in: Out, dtype: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayRead(*#, #, #, #, #)".}

proc iTensorArrayScatter(root: Scope, handle: Out, indices: Out, value: Out, flow_in: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayScatter(*#, #, #, #, #)".}

proc iTensorArraySize(root: Scope, handle: Out, flow_in: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArraySize(*#, #, #)".}

proc iTensorArraySplit(root: Scope, handle: Out, value: Out, lengths: Out, flow_in: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArraySplit(*#, #, #, #, #)".}

proc iTensorArrayWrite(root: Scope, handle: Out, index: Out, value: Out, flow_in: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::TensorArrayWrite(*#, #, #, #, #)".}

proc iUnstage(root: Scope, dtypes: core.DType, attrs: UnstageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::Unstage(*#, #, #)".}

proc AccumulatorApplyGradient(root: Scope, handle: Out, local_step: Out, gradient: Out) =
  iAccumulatorApplyGradient(root, handle, local_step, gradient)

proc AccumulatorNumAccumulated(root: Scope, handle: Out): Out =
  iAccumulatorNumAccumulated(root, handle)

proc AccumulatorSetGlobalStep(root: Scope, handle: Out, new_global_step: Out) =
  iAccumulatorSetGlobalStep(root, handle, new_global_step)

proc AccumulatorTakeGradient(root: Scope, handle: Out, num_required: Out, dtype: core.DType): Out =
  iAccumulatorTakeGradient(root, handle, num_required, dtype)

proc Barrier(root: Scope, component_types: core.DType, attrs: BarrierAttrs): Out =
  iBarrier(root, component_types, attrs)

proc Barrier(root: Scope, component_types: core.DType, capacity = none(int), container = none(string), shapes = none(ArraySlice[TensorShape]), sharedName = none(string)): Out =
  var attrs = BarrierAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if shapes.isSome:
    attrs = attrs.Shapes(shapes.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return Barrier(root, component_types, attrs)

proc BarrierClose(root: Scope, handle: Out, attrs: BarrierCloseAttrs) =
  iBarrierClose(root, handle, attrs)

proc BarrierClose(root: Scope, handle: Out, cancelPendingEnqueues = none(bool)) =
  var attrs = BarrierCloseAttrs()

  if cancelPendingEnqueues.isSome:
    attrs = attrs.CancelPendingEnqueues(cancelPendingEnqueues.get())

  BarrierClose(root, handle, attrs)

proc BarrierIncompleteSize(root: Scope, handle: Out): Out =
  iBarrierIncompleteSize(root, handle)

proc BarrierInsertMany(root: Scope, handle: Out, keys: Out, values: Out, component_index: int) =
  iBarrierInsertMany(root, handle, keys, values, component_index)

proc BarrierReadySize(root: Scope, handle: Out): Out =
  iBarrierReadySize(root, handle)

proc BarrierTakeMany(root: Scope, handle: Out, num_elements: Out, component_types: core.DType, attrs: BarrierTakeManyAttrs): Out =
  iBarrierTakeMany(root, handle, num_elements, component_types, attrs)

proc BarrierTakeMany(root: Scope, handle: Out, num_elements: Out, component_types: core.DType, allowSmallBatch = none(bool), timeoutMs = none(int), waitForIncomplete = none(bool)): Out =
  var attrs = BarrierTakeManyAttrs()

  if allowSmallBatch.isSome:
    attrs = attrs.AllowSmallBatch(allowSmallBatch.get())
  if timeoutMs.isSome:
    attrs = attrs.TimeoutMs(timeoutMs.get())
  if waitForIncomplete.isSome:
    attrs = attrs.WaitForIncomplete(waitForIncomplete.get())

  return BarrierTakeMany(root, handle, num_elements, component_types, attrs)

proc ConditionalAccumulator(root: Scope, dtype: core.DType, shape: TensorShape, attrs: ConditionalAccumulatorAttrs): Out =
  iConditionalAccumulator(root, dtype, shape, attrs)

proc ConditionalAccumulator(root: Scope, dtype: core.DType, shape: TensorShape, container = none(string), reductionType = none(string), sharedName = none(string)): Out =
  var attrs = ConditionalAccumulatorAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if reductionType.isSome:
    attrs = attrs.ReductionType(newCPPString(reductionType.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return ConditionalAccumulator(root, dtype, shape, attrs)

proc DeleteSessionTensor(root: Scope, handle: Out) =
  iDeleteSessionTensor(root, handle)

proc DynamicPartition(root: Scope, data: Out, partitions: Out, num_partitions: int): OutList =
  iDynamicPartition(root, data, partitions, num_partitions)

proc DynamicStitch(root: Scope, indices: InList, data: InList): Out =
  iDynamicStitch(root, indices, data)

proc DynamicStitch(root: Scope, indices: OutList, data: OutList): Out {.header:std_ops, importcpp:"tensorflow::ops::DynamicStitch(*#, #, *)".}

proc FIFOQueue(root: Scope, component_types: core.DType, attrs: FIFOQueueAttrs): Out =
  iFIFOQueue(root, component_types, attrs)

proc FIFOQueue(root: Scope, component_types: core.DType, capacity = none(int), container = none(string), shapes = none(ArraySlice[TensorShape]), sharedName = none(string)): Out =
  var attrs = FIFOQueueAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if shapes.isSome:
    attrs = attrs.Shapes(shapes.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return FIFOQueue(root, component_types, attrs)

proc GetSessionHandle(root: Scope, value: Out): Out =
  iGetSessionHandle(root, value)

proc GetSessionHandleV2(root: Scope, value: Out): Out =
  iGetSessionHandleV2(root, value)

proc GetSessionTensor(root: Scope, handle: Out, dtype: core.DType): Out =
  iGetSessionTensor(root, handle, dtype)

proc MapClear(root: Scope, dtypes: core.DType, attrs: MapClearAttrs) =
  iMapClear(root, dtypes, attrs)

proc MapClear(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = MapClearAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  MapClear(root, dtypes, attrs)

proc MapIncompleteSize(root: Scope, dtypes: core.DType, attrs: MapIncompleteSizeAttrs): Out =
  iMapIncompleteSize(root, dtypes, attrs)

proc MapIncompleteSize(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)): Out =
  var attrs = MapIncompleteSizeAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return MapIncompleteSize(root, dtypes, attrs)

proc MapPeek(root: Scope, key: Out, indices: Out, dtypes: core.DType, attrs: MapPeekAttrs) =
  iMapPeek(root, key, indices, dtypes, attrs)

proc MapPeek(root: Scope, key: Out, indices: Out, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = MapPeekAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  MapPeek(root, key, indices, dtypes, attrs)

proc MapSize(root: Scope, dtypes: core.DType, attrs: MapSizeAttrs): Out =
  iMapSize(root, dtypes, attrs)

proc MapSize(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)): Out =
  var attrs = MapSizeAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return MapSize(root, dtypes, attrs)

proc MapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: core.DType, attrs: MapStageAttrs) =
  iMapStage(root, key, indices, values, dtypes, attrs)

proc MapStage(root: Scope, key: Out, indices: Out, values: OutList, dtypes: core.DType, attrs: MapStageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::MapStage(*#, #, #, #, #, #)".}

proc MapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = MapStageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  MapStage(root, key, indices, values, dtypes, attrs)

proc MapStage(root: Scope, key: Out, indices: Out, values: OutList, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = MapStageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  MapStage(root, key, indices, values, dtypes, attrs)

proc MapUnstage(root: Scope, key: Out, indices: Out, dtypes: core.DType, attrs: MapUnstageAttrs) =
  iMapUnstage(root, key, indices, dtypes, attrs)

proc MapUnstage(root: Scope, key: Out, indices: Out, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = MapUnstageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  MapUnstage(root, key, indices, dtypes, attrs)

proc MapUnstageNoKey(root: Scope, indices: Out, dtypes: core.DType, attrs: MapUnstageNoKeyAttrs): Out =
  iMapUnstageNoKey(root, indices, dtypes, attrs)

proc MapUnstageNoKey(root: Scope, indices: Out, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)): Out =
  var attrs = MapUnstageNoKeyAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return MapUnstageNoKey(root, indices, dtypes, attrs)

proc OrderedMapClear(root: Scope, dtypes: core.DType, attrs: OrderedMapClearAttrs) =
  iOrderedMapClear(root, dtypes, attrs)

proc OrderedMapClear(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = OrderedMapClearAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  OrderedMapClear(root, dtypes, attrs)

proc OrderedMapIncompleteSize(root: Scope, dtypes: core.DType, attrs: OrderedMapIncompleteSizeAttrs): Out =
  iOrderedMapIncompleteSize(root, dtypes, attrs)

proc OrderedMapIncompleteSize(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)): Out =
  var attrs = OrderedMapIncompleteSizeAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return OrderedMapIncompleteSize(root, dtypes, attrs)

proc OrderedMapPeek(root: Scope, key: Out, indices: Out, dtypes: core.DType, attrs: OrderedMapPeekAttrs) =
  iOrderedMapPeek(root, key, indices, dtypes, attrs)

proc OrderedMapPeek(root: Scope, key: Out, indices: Out, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = OrderedMapPeekAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  OrderedMapPeek(root, key, indices, dtypes, attrs)

proc OrderedMapSize(root: Scope, dtypes: core.DType, attrs: OrderedMapSizeAttrs): Out =
  iOrderedMapSize(root, dtypes, attrs)

proc OrderedMapSize(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)): Out =
  var attrs = OrderedMapSizeAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return OrderedMapSize(root, dtypes, attrs)

proc OrderedMapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: core.DType, attrs: OrderedMapStageAttrs) =
  iOrderedMapStage(root, key, indices, values, dtypes, attrs)

proc OrderedMapStage(root: Scope, key: Out, indices: Out, values: OutList, dtypes: core.DType, attrs: OrderedMapStageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::OrderedMapStage(*#, #, #, #, #, #)".}

proc OrderedMapStage(root: Scope, key: Out, indices: Out, values: InList, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = OrderedMapStageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  OrderedMapStage(root, key, indices, values, dtypes, attrs)

proc OrderedMapStage(root: Scope, key: Out, indices: Out, values: OutList, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = OrderedMapStageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  OrderedMapStage(root, key, indices, values, dtypes, attrs)

proc OrderedMapUnstage(root: Scope, key: Out, indices: Out, dtypes: core.DType, attrs: OrderedMapUnstageAttrs) =
  iOrderedMapUnstage(root, key, indices, dtypes, attrs)

proc OrderedMapUnstage(root: Scope, key: Out, indices: Out, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = OrderedMapUnstageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  OrderedMapUnstage(root, key, indices, dtypes, attrs)

proc OrderedMapUnstageNoKey(root: Scope, indices: Out, dtypes: core.DType, attrs: OrderedMapUnstageNoKeyAttrs): Out =
  iOrderedMapUnstageNoKey(root, indices, dtypes, attrs)

proc OrderedMapUnstageNoKey(root: Scope, indices: Out, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)): Out =
  var attrs = OrderedMapUnstageNoKeyAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return OrderedMapUnstageNoKey(root, indices, dtypes, attrs)

proc PaddingFIFOQueue(root: Scope, component_types: core.DType, attrs: PaddingFIFOQueueAttrs): Out =
  iPaddingFIFOQueue(root, component_types, attrs)

proc PaddingFIFOQueue(root: Scope, component_types: core.DType, capacity = none(int), container = none(string), shapes = none(ArraySlice[TensorShape]), sharedName = none(string)): Out =
  var attrs = PaddingFIFOQueueAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if shapes.isSome:
    attrs = attrs.Shapes(shapes.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return PaddingFIFOQueue(root, component_types, attrs)

proc ParallelDynamicStitch(root: Scope, indices: InList, data: InList): Out =
  iParallelDynamicStitch(root, indices, data)

proc ParallelDynamicStitch(root: Scope, indices: OutList, data: OutList): Out {.header:std_ops, importcpp:"tensorflow::ops::ParallelDynamicStitch(*#, #, *)".}

proc PriorityQueue(root: Scope, shapes: ArraySlice[TensorShape], attrs: PriorityQueueAttrs): Out =
  iPriorityQueue(root, shapes, attrs)

proc PriorityQueue(root: Scope, shapes: ArraySlice[TensorShape], capacity = none(int), componentTypes = none(core.DType), container = none(string), sharedName = none(string)): Out =
  var attrs = PriorityQueueAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if componentTypes.isSome:
    attrs = attrs.ComponentTypes(componentTypes.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return PriorityQueue(root, shapes, attrs)

proc QueueClose(root: Scope, handle: Out, attrs: QueueCloseAttrs) =
  iQueueClose(root, handle, attrs)

proc QueueClose(root: Scope, handle: Out, cancelPendingEnqueues = none(bool)) =
  var attrs = QueueCloseAttrs()

  if cancelPendingEnqueues.isSome:
    attrs = attrs.CancelPendingEnqueues(cancelPendingEnqueues.get())

  QueueClose(root, handle, attrs)

proc QueueDequeue(root: Scope, handle: Out, component_types: core.DType, attrs: QueueDequeueAttrs) =
  iQueueDequeue(root, handle, component_types, attrs)

proc QueueDequeue(root: Scope, handle: Out, component_types: core.DType, timeoutMs = none(int)) =
  var attrs = QueueDequeueAttrs()

  if timeoutMs.isSome:
    attrs = attrs.TimeoutMs(timeoutMs.get())

  QueueDequeue(root, handle, component_types, attrs)

proc QueueDequeueMany(root: Scope, handle: Out, n: Out, component_types: core.DType, attrs: QueueDequeueManyAttrs) =
  iQueueDequeueMany(root, handle, n, component_types, attrs)

proc QueueDequeueMany(root: Scope, handle: Out, n: Out, component_types: core.DType, timeoutMs = none(int)) =
  var attrs = QueueDequeueManyAttrs()

  if timeoutMs.isSome:
    attrs = attrs.TimeoutMs(timeoutMs.get())

  QueueDequeueMany(root, handle, n, component_types, attrs)

proc QueueDequeueUpTo(root: Scope, handle: Out, n: Out, component_types: core.DType, attrs: QueueDequeueUpToAttrs) =
  iQueueDequeueUpTo(root, handle, n, component_types, attrs)

proc QueueDequeueUpTo(root: Scope, handle: Out, n: Out, component_types: core.DType, timeoutMs = none(int)) =
  var attrs = QueueDequeueUpToAttrs()

  if timeoutMs.isSome:
    attrs = attrs.TimeoutMs(timeoutMs.get())

  QueueDequeueUpTo(root, handle, n, component_types, attrs)

proc QueueEnqueue(root: Scope, handle: Out, components: InList, attrs: QueueEnqueueAttrs) =
  iQueueEnqueue(root, handle, components, attrs)

proc QueueEnqueue(root: Scope, handle: Out, components: OutList, attrs: QueueEnqueueAttrs) {.header:std_ops, importcpp:"tensorflow::ops::QueueEnqueue(*#, #, #, #)".}

proc QueueEnqueue(root: Scope, handle: Out, components: InList, timeoutMs = none(int)) =
  var attrs = QueueEnqueueAttrs()

  if timeoutMs.isSome:
    attrs = attrs.TimeoutMs(timeoutMs.get())

  QueueEnqueue(root, handle, components, attrs)

proc QueueEnqueue(root: Scope, handle: Out, components: OutList, timeoutMs = none(int)) =
  var attrs = QueueEnqueueAttrs()

  if timeoutMs.isSome:
    attrs = attrs.TimeoutMs(timeoutMs.get())

  QueueEnqueue(root, handle, components, attrs)

proc QueueEnqueueMany(root: Scope, handle: Out, components: InList, attrs: QueueEnqueueManyAttrs) =
  iQueueEnqueueMany(root, handle, components, attrs)

proc QueueEnqueueMany(root: Scope, handle: Out, components: OutList, attrs: QueueEnqueueManyAttrs) {.header:std_ops, importcpp:"tensorflow::ops::QueueEnqueueMany(*#, #, #, #)".}

proc QueueEnqueueMany(root: Scope, handle: Out, components: InList, timeoutMs = none(int)) =
  var attrs = QueueEnqueueManyAttrs()

  if timeoutMs.isSome:
    attrs = attrs.TimeoutMs(timeoutMs.get())

  QueueEnqueueMany(root, handle, components, attrs)

proc QueueEnqueueMany(root: Scope, handle: Out, components: OutList, timeoutMs = none(int)) =
  var attrs = QueueEnqueueManyAttrs()

  if timeoutMs.isSome:
    attrs = attrs.TimeoutMs(timeoutMs.get())

  QueueEnqueueMany(root, handle, components, attrs)

proc QueueIsClosed(root: Scope, handle: Out): Out =
  iQueueIsClosed(root, handle)

proc QueueIsClosedV2(root: Scope, handle: Out): Out =
  iQueueIsClosedV2(root, handle)

proc QueueSize(root: Scope, handle: Out): Out =
  iQueueSize(root, handle)

proc RandomShuffleQueue(root: Scope, component_types: core.DType, attrs: RandomShuffleQueueAttrs): Out =
  iRandomShuffleQueue(root, component_types, attrs)

proc RandomShuffleQueue(root: Scope, component_types: core.DType, capacity = none(int), container = none(string), minAfterDequeue = none(int), seed = none(int), seed2 = none(int), shapes = none(ArraySlice[TensorShape]), sharedName = none(string)): Out =
  var attrs = RandomShuffleQueueAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if minAfterDequeue.isSome:
    attrs = attrs.MinAfterDequeue(minAfterDequeue.get())
  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())
  if shapes.isSome:
    attrs = attrs.Shapes(shapes.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return RandomShuffleQueue(root, component_types, attrs)

proc RecordInput(root: Scope, file_pattern: cppstring, attrs: RecordInputAttrs): Out =
  iRecordInput(root, file_pattern, attrs)

proc RecordInput(root: Scope, file_pattern: string, attrs: RecordInputAttrs): Out =
  let cppstr1 = newCPPString(file_pattern)
  return RecordInput(root, cppstr1, attrs)

proc RecordInput(root: Scope, file_pattern: cppstring, batchSize = none(int), compressionType = none(string), fileBufferSize = none(int), fileParallelism = none(int), fileRandomSeed = none(int), fileShuffleShiftRatio = none(float)): Out =
  var attrs = RecordInputAttrs()

  if batchSize.isSome:
    attrs = attrs.BatchSize(batchSize.get())
  if compressionType.isSome:
    attrs = attrs.CompressionType(newCPPString(compressionType.get()))
  if fileBufferSize.isSome:
    attrs = attrs.FileBufferSize(fileBufferSize.get())
  if fileParallelism.isSome:
    attrs = attrs.FileParallelism(fileParallelism.get())
  if fileRandomSeed.isSome:
    attrs = attrs.FileRandomSeed(fileRandomSeed.get())
  if fileShuffleShiftRatio.isSome:
    attrs = attrs.FileShuffleShiftRatio(fileShuffleShiftRatio.get())

  return RecordInput(root, file_pattern, attrs)

proc SparseAccumulatorApplyGradient(root: Scope, handle: Out, local_step: Out, gradient_indices: Out, gradient_values: Out, gradient_shape: Out, has_known_shape: bool) =
  iSparseAccumulatorApplyGradient(root, handle, local_step, gradient_indices, gradient_values, gradient_shape, has_known_shape)

proc SparseAccumulatorTakeGradient(root: Scope, handle: Out, num_required: Out, dtype: core.DType): Out =
  iSparseAccumulatorTakeGradient(root, handle, num_required, dtype)

proc SparseConditionalAccumulator(root: Scope, dtype: core.DType, shape: TensorShape, attrs: SparseConditionalAccumulatorAttrs): Out =
  iSparseConditionalAccumulator(root, dtype, shape, attrs)

proc SparseConditionalAccumulator(root: Scope, dtype: core.DType, shape: TensorShape, container = none(string), reductionType = none(string), sharedName = none(string)): Out =
  var attrs = SparseConditionalAccumulatorAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if reductionType.isSome:
    attrs = attrs.ReductionType(newCPPString(reductionType.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return SparseConditionalAccumulator(root, dtype, shape, attrs)

proc Stage(root: Scope, values: InList, attrs: StageAttrs) =
  iStage(root, values, attrs)

proc Stage(root: Scope, values: OutList, attrs: StageAttrs) {.header:std_ops, importcpp:"tensorflow::ops::Stage(*#, #, #)".}

proc Stage(root: Scope, values: InList, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = StageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  Stage(root, values, attrs)

proc Stage(root: Scope, values: OutList, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = StageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  Stage(root, values, attrs)

proc StageClear(root: Scope, dtypes: core.DType, attrs: StageClearAttrs) =
  iStageClear(root, dtypes, attrs)

proc StageClear(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = StageClearAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  StageClear(root, dtypes, attrs)

proc StagePeek(root: Scope, index: Out, dtypes: core.DType, attrs: StagePeekAttrs) =
  iStagePeek(root, index, dtypes, attrs)

proc StagePeek(root: Scope, index: Out, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = StagePeekAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  StagePeek(root, index, dtypes, attrs)

proc StageSize(root: Scope, dtypes: core.DType, attrs: StageSizeAttrs): Out =
  iStageSize(root, dtypes, attrs)

proc StageSize(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)): Out =
  var attrs = StageSizeAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return StageSize(root, dtypes, attrs)

proc TensorArray(root: Scope, size: Out, dtype: core.DType, attrs: TensorArrayAttrs): Out =
  iTensorArray(root, size, dtype, attrs)

proc TensorArray(root: Scope, size: Out, dtype: core.DType, clearAfterRead = none(bool), dynamicSize = none(bool), elementShape = none(TensorShape), identicalElementShapes = none(bool), tensorArrayName = none(string)): Out =
  var attrs = TensorArrayAttrs()

  if clearAfterRead.isSome:
    attrs = attrs.ClearAfterRead(clearAfterRead.get())
  if dynamicSize.isSome:
    attrs = attrs.DynamicSize(dynamicSize.get())
  if elementShape.isSome:
    attrs = attrs.ElementShape(elementShape.get())
  if identicalElementShapes.isSome:
    attrs = attrs.IdenticalElementShapes(identicalElementShapes.get())
  if tensorArrayName.isSome:
    attrs = attrs.TensorArrayName(newCPPString(tensorArrayName.get()))

  return TensorArray(root, size, dtype, attrs)

proc TensorArrayClose(root: Scope, handle: Out) =
  iTensorArrayClose(root, handle)

proc TensorArrayConcat(root: Scope, handle: Out, flow_in: Out, dtype: core.DType, attrs: TensorArrayConcatAttrs): Out =
  iTensorArrayConcat(root, handle, flow_in, dtype, attrs)

proc TensorArrayConcat(root: Scope, handle: Out, flow_in: Out, dtype: core.DType, elementShapeExcept0 = none(TensorShape)): Out =
  var attrs = TensorArrayConcatAttrs()

  if elementShapeExcept0.isSome:
    attrs = attrs.ElementShapeExcept0(elementShapeExcept0.get())

  return TensorArrayConcat(root, handle, flow_in, dtype, attrs)

proc TensorArrayGather(root: Scope, handle: Out, indices: Out, flow_in: Out, dtype: core.DType, attrs: TensorArrayGatherAttrs): Out =
  iTensorArrayGather(root, handle, indices, flow_in, dtype, attrs)

proc TensorArrayGather(root: Scope, handle: Out, indices: Out, flow_in: Out, dtype: core.DType, elementShape = none(TensorShape)): Out =
  var attrs = TensorArrayGatherAttrs()

  if elementShape.isSome:
    attrs = attrs.ElementShape(elementShape.get())

  return TensorArrayGather(root, handle, indices, flow_in, dtype, attrs)

proc TensorArrayGrad(root: Scope, handle: Out, flow_in: Out, source: cppstring): Out =
  iTensorArrayGrad(root, handle, flow_in, source)

proc TensorArrayGrad(root: Scope, handle: Out, flow_in: Out, source: string): Out =
  let cppstr3 = newCPPString(source)
  return TensorArrayGrad(root, handle, flow_in, cppstr3)

proc TensorArrayGradWithShape(root: Scope, handle: Out, flow_in: Out, shape_to_prepend: Out, source: cppstring): Out =
  iTensorArrayGradWithShape(root, handle, flow_in, shape_to_prepend, source)

proc TensorArrayGradWithShape(root: Scope, handle: Out, flow_in: Out, shape_to_prepend: Out, source: string): Out =
  let cppstr4 = newCPPString(source)
  return TensorArrayGradWithShape(root, handle, flow_in, shape_to_prepend, cppstr4)

proc TensorArrayRead(root: Scope, handle: Out, index: Out, flow_in: Out, dtype: core.DType): Out =
  iTensorArrayRead(root, handle, index, flow_in, dtype)

proc TensorArrayScatter(root: Scope, handle: Out, indices: Out, value: Out, flow_in: Out): Out =
  iTensorArrayScatter(root, handle, indices, value, flow_in)

proc TensorArraySize(root: Scope, handle: Out, flow_in: Out): Out =
  iTensorArraySize(root, handle, flow_in)

proc TensorArraySplit(root: Scope, handle: Out, value: Out, lengths: Out, flow_in: Out): Out =
  iTensorArraySplit(root, handle, value, lengths, flow_in)

proc TensorArrayWrite(root: Scope, handle: Out, index: Out, value: Out, flow_in: Out): Out =
  iTensorArrayWrite(root, handle, index, value, flow_in)

proc Unstage(root: Scope, dtypes: core.DType, attrs: UnstageAttrs) =
  iUnstage(root, dtypes, attrs)

proc Unstage(root: Scope, dtypes: core.DType, capacity = none(int), container = none(string), memoryLimit = none(int), sharedName = none(string)) =
  var attrs = UnstageAttrs()

  if capacity.isSome:
    attrs = attrs.Capacity(capacity.get())
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if memoryLimit.isSome:
    attrs = attrs.MemoryLimit(memoryLimit.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  Unstage(root, dtypes, attrs)

export AccumulatorApplyGradient,
       AccumulatorNumAccumulated,
       AccumulatorSetGlobalStep,
       AccumulatorTakeGradient,
       Barrier,
       BarrierClose,
       BarrierIncompleteSize,
       BarrierInsertMany,
       BarrierReadySize,
       BarrierTakeMany,
       ConditionalAccumulator,
       DeleteSessionTensor,
       DynamicPartition,
       DynamicStitch,
       FIFOQueue,
       GetSessionHandle,
       GetSessionHandleV2,
       GetSessionTensor,
       MapClear,
       MapIncompleteSize,
       MapPeek,
       MapSize,
       MapStage,
       MapUnstage,
       MapUnstageNoKey,
       OrderedMapClear,
       OrderedMapIncompleteSize,
       OrderedMapPeek,
       OrderedMapSize,
       OrderedMapStage,
       OrderedMapUnstage,
       OrderedMapUnstageNoKey,
       PaddingFIFOQueue,
       ParallelDynamicStitch,
       PriorityQueue,
       QueueClose,
       QueueDequeue,
       QueueDequeueMany,
       QueueDequeueUpTo,
       QueueEnqueue,
       QueueEnqueueMany,
       QueueIsClosed,
       QueueIsClosedV2,
       QueueSize,
       RandomShuffleQueue,
       RecordInput,
       SparseAccumulatorApplyGradient,
       SparseAccumulatorTakeGradient,
       SparseConditionalAccumulator,
       Stage,
       StageClear,
       StagePeek,
       StageSize,
       TensorArray,
       TensorArrayClose,
       TensorArrayConcat,
       TensorArrayGather,
       TensorArrayGrad,
       TensorArrayGradWithShape,
       TensorArrayRead,
       TensorArrayScatter,
       TensorArraySize,
       TensorArraySplit,
       TensorArrayWrite,
       Unstage