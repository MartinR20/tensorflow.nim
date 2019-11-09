import ../core

{.compile:"array/array.cc".}


type AccumulateNV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AccumulateNV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiaccumulateNV2[oT: oall](scope: Scope,
                    inputs: olist[oT],
                    T: DType,
                    shape: TensorShape): AccumulateNV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AccumulateNV2(*#, #, #, #)", constructor.}

proc accumulateNV2*[oT: oall](scope: Scope,
                    inputs: olist[oT],
                    shape: TensorShape = [].shape): AccumulateNV2[oT] =
  return iiaccumulateNV2(scope,
                         inputs,
                         oT.oTF,
                         shape)

converter accumulateNV2ToOut*[oT: oall](op: AccumulateNV2[oT]): oT {.inline.} = return op.output


type AccumulatorNumAccumulated* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AccumulatorNumAccumulated/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iiaccumulatorNumAccumulated(scope: Scope,
                                handle: ostring): AccumulatorNumAccumulated {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AccumulatorNumAccumulated(*#, #)", constructor.}

proc accumulatorNumAccumulated*(scope: Scope,
                                handle: ostring): AccumulatorNumAccumulated =
  return iiaccumulatorNumAccumulated(scope,
                                     handle)

converter accumulatorNumAccumulatedToOut*(op: AccumulatorNumAccumulated): oint32 {.inline.} = return op.output


type AccumulatorSetGlobalStep*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AccumulatorSetGlobalStep/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiaccumulatorSetGlobalStep(scope: Scope,
                               handle: ostring,
                               new_global_step: oint64): AccumulatorSetGlobalStep {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AccumulatorSetGlobalStep(*#, #, #)", constructor.}

proc accumulatorSetGlobalStep*(scope: Scope,
                               handle: ostring,
                               new_global_step: oint64): AccumulatorSetGlobalStep =
  return iiaccumulatorSetGlobalStep(scope,
                                    handle,
                                    new_global_step)


type AccumulatorTakeGradient*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AccumulatorTakeGradient/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiaccumulatorTakeGradient[oT: oall](scope: Scope,
                              handle: ostring,
                              num_required: oint32,
                              dtype: DType,
                              explicitT: type(oT)): AccumulatorTakeGradient[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AccumulatorTakeGradient(*#, #, #, #)", constructor.}

proc accumulatorTakeGradient*(scope: Scope,
                              handle: ostring,
                              num_required: oint32,
                              dtype: type = oinvalid): auto =
  return iiaccumulatorTakeGradient(scope,
                                   handle,
                                   num_required,
                                   dtype.oTF,
                                   dtype)

converter accumulatorTakeGradientToOut*[oT: oall](op: AccumulatorTakeGradient[oT]): oT {.inline.} = return op.output

type AnyTidx* = oint32 | oint64

type Any* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Any/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiany(scope: Scope,
          input: obool,
          reduction_indices: AnyTidx,
          keep_dims: bool): Any {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Any(*#, #, #, #)", constructor.}

proc any*(scope: Scope,
          input: obool,
          reduction_indices: AnyTidx,
          keep_dims: bool = false): Any =
  return iiany(scope,
               input,
               reduction_indices,
               keep_dims)

converter anyToOut*(op: Any): obool {.inline.} = return op.output

type AssignAddVariableOpdtype* = oall

type AssignAddVariableOp*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AssignAddVariableOp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiassignAddVariableOp(scope: Scope,
                          resource: oresource,
                          value: AssignAddVariableOpdtype): AssignAddVariableOp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AssignAddVariableOp(*#, #, #)", constructor.}

proc assignAddVariableOp*(scope: Scope,
                          resource: oresource,
                          value: AssignAddVariableOpdtype): AssignAddVariableOp =
  return iiassignAddVariableOp(scope,
                               resource,
                               value)


type AssignSub*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AssignSub/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiassignSub[oT: oall](scope: Scope,
                nref: oT,
                value: oT,
                T: DType,
                use_locking: bool): AssignSub[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AssignSub(*#, #, #, #, #)", constructor.}

proc assignSub*[oT: oall](scope: Scope,
                nref: oT,
                value: oT,
                use_locking: bool = false): AssignSub[oT] =
  return iiassignSub(scope,
                     nref,
                     value,
                     oT.oTF,
                     use_locking)

converter assignSubToOut*[oT: oall](op: AssignSub[oT]): oT {.inline.} = return op.output

type AssignSubVariableOpdtype* = oall

type AssignSubVariableOp*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AssignSubVariableOp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiassignSubVariableOp(scope: Scope,
                          resource: oresource,
                          value: AssignSubVariableOpdtype): AssignSubVariableOp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AssignSubVariableOp(*#, #, #)", constructor.}

proc assignSubVariableOp*(scope: Scope,
                          resource: oresource,
                          value: AssignSubVariableOpdtype): AssignSubVariableOp =
  return iiassignSubVariableOp(scope,
                               resource,
                               value)

type AssignVariableOpdtype* = oall

type AssignVariableOp*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AssignVariableOp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiassignVariableOp(scope: Scope,
                       resource: oresource,
                       value: AssignVariableOpdtype): AssignVariableOp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"AssignVariableOp(*#, #, #)", constructor.}

proc assignVariableOp*(scope: Scope,
                       resource: oresource,
                       value: AssignVariableOpdtype): AssignVariableOp =
  return iiassignVariableOp(scope,
                            resource,
                            value)


type Barrier* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Barrier/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iibarrier(scope: Scope,
              component_types: ArraySlice[DType],
              shapes: ArraySlice[TensorShape],
              container: cstring,
              shared_name: cstring,
              capacity: int64): Barrier {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Barrier(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc barrier*(scope: Scope,
              component_types: openArray[DType],
              shapes: openArray[TensorShape],
              container: cstring,
              shared_name: cstring,
              capacity: int64 = -1.int): Barrier =
  return iibarrier(scope,
                   newArraySlice(component_types),
                   newArraySlice(shapes),
                   container,
                   shared_name,
                   capacity)

converter barrierToOut*(op: Barrier): ostring {.inline.} = return op.output


type BarrierClose*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierClose/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iibarrierClose(scope: Scope,
                   handle: ostring,
                   cancel_pending_enqueues: bool): BarrierClose {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierClose(*#, #, #)", constructor.}

proc barrierClose*(scope: Scope,
                   handle: ostring,
                   cancel_pending_enqueues: bool = false): BarrierClose =
  return iibarrierClose(scope,
                        handle,
                        cancel_pending_enqueues)


type BarrierIncompleteSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierIncompleteSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iibarrierIncompleteSize(scope: Scope,
                            handle: ostring): BarrierIncompleteSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierIncompleteSize(*#, #)", constructor.}

proc barrierIncompleteSize*(scope: Scope,
                            handle: ostring): BarrierIncompleteSize =
  return iibarrierIncompleteSize(scope,
                                 handle)

converter barrierIncompleteSizeToOut*(op: BarrierIncompleteSize): oint32 {.inline.} = return op.output

type BarrierInsertManyT* = oall

type BarrierInsertMany*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierInsertMany/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iibarrierInsertMany(scope: Scope,
                        handle: ostring,
                        keys: ostring,
                        values: BarrierInsertManyT,
                        component_index: int64): BarrierInsertMany {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierInsertMany(*#, #, #, #, #)", constructor.}

proc barrierInsertMany*(scope: Scope,
                        handle: ostring,
                        keys: ostring,
                        values: BarrierInsertManyT,
                        component_index: int64 = 0.int): BarrierInsertMany =
  return iibarrierInsertMany(scope,
                             handle,
                             keys,
                             values,
                             component_index)


type BarrierReadySize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierReadySize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iibarrierReadySize(scope: Scope,
                       handle: ostring): BarrierReadySize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierReadySize(*#, #)", constructor.}

proc barrierReadySize*(scope: Scope,
                       handle: ostring): BarrierReadySize =
  return iibarrierReadySize(scope,
                            handle)

converter barrierReadySizeToOut*(op: BarrierReadySize): oint32 {.inline.} = return op.output


type BarrierTakeMany* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierTakeMany/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iibarrierTakeMany(scope: Scope,
                      handle: ostring,
                      num_elements: oint32,
                      component_types: ArraySlice[DType],
                      allow_small_batch: bool,
                      wait_for_incomplete: bool,
                      timeout_ms: int64): BarrierTakeMany {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BarrierTakeMany(*#, #, #, #, #, #, #)", constructor.}

proc barrierTakeMany*(scope: Scope,
                      handle: ostring,
                      num_elements: oint32,
                      component_types: openArray[DType],
                      allow_small_batch: bool = false,
                      wait_for_incomplete: bool = false,
                      timeout_ms: int64 = -1.int): BarrierTakeMany =
  return iibarrierTakeMany(scope,
                           handle,
                           num_elements,
                           newArraySlice(component_types),
                           allow_small_batch,
                           wait_for_incomplete,
                           timeout_ms)

converter barrierTakeManyToOut*(op: BarrierTakeMany): oint64 {.inline.} = return op.output


type Batch*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Batch/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iibatch[oT: oall](scope: Scope,
            in_tensors: olist[oT],
            allowed_batch_sizes: ArraySlice[int],
            container: cstring,
            shared_name: cstring,
            batching_queue: cstring,
            T: ArraySlice[DType],
            num_batch_threads: int64,
            max_batch_size: int64,
            max_enqueued_batches: int64,
            batch_timeout_micros: int64,
            grad_timeout_micros: int64): Batch[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Batch(*#, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #, #, #, #)", constructor.}

proc batch*[oT: oall](scope: Scope,
            in_tensors: olist[oT],
            allowed_batch_sizes: openArray[int],
            container: cstring,
            shared_name: cstring,
            batching_queue: cstring,
            T: openArray[DType],
            num_batch_threads: int64 = 0.int,
            max_batch_size: int64 = 0.int,
            max_enqueued_batches: int64 = 10.int,
            batch_timeout_micros: int64 = 0.int,
            grad_timeout_micros: int64 = 0.int): Batch[oT] =
  return iibatch(scope,
                 in_tensors,
                 newArraySlice(allowed_batch_sizes),
                 container,
                 shared_name,
                 batching_queue,
                 newArraySlice(T),
                 num_batch_threads,
                 max_batch_size,
                 max_enqueued_batches,
                 batch_timeout_micros,
                 grad_timeout_micros)

converter batchToOutList*[oT: oall](op: Batch[oT]): olist[oT] {.inline.} = return op.output


type BatchSelfAdjointEigV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BatchSelfAdjointEigV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchSelfAdjointEigV2[oT: oall](scope: Scope,
                            input: oT,
                            compute_v: bool,
                            T: DType): BatchSelfAdjointEigV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BatchSelfAdjointEigV2(*#, #, #, #)", constructor.}

proc batchSelfAdjointEigV2*[oT: oall](scope: Scope,
                            input: oT,
                            compute_v: bool = true): BatchSelfAdjointEigV2[oT] =
  return iibatchSelfAdjointEigV2(scope,
                                 input,
                                 compute_v,
                                 oT.oTF)

converter batchSelfAdjointEigV2ToOut*[oT: oall](op: BatchSelfAdjointEigV2[oT]): oT {.inline.} = return op.output

type BatchToSpaceNDTblock_shape* = oint32 | oint64
type BatchToSpaceNDTcrops* = oint32 | oint64

type BatchToSpaceND*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BatchToSpaceND/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchToSpaceND[oT: oall](scope: Scope,
                     input: oT,
                     block_shape: BatchToSpaceNDTblock_shape,
                     crops: BatchToSpaceNDTcrops,
                     T: DType): BatchToSpaceND[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"BatchToSpaceND(*#, #, #, #, #)", constructor.}

proc batchToSpaceND*[oT: oall](scope: Scope,
                     input: oT,
                     block_shape: BatchToSpaceNDTblock_shape,
                     crops: BatchToSpaceNDTcrops): BatchToSpaceND[oT] =
  return iibatchToSpaceND(scope,
                          input,
                          block_shape,
                          crops,
                          oT.oTF)

converter batchToSpaceNDToOut*[oT: oall](op: BatchToSpaceND[oT]): oT {.inline.} = return op.output


type Bincount*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Bincount/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibincount[oT: oall](scope: Scope,
               arr: oint32,
               size: oint32,
               weights: oT,
               T: DType): Bincount[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Bincount(*#, #, #, #, #)", constructor.}

proc bincount*[oT: oall](scope: Scope,
               arr: oint32,
               size: oint32,
               weights: oT): Bincount[oT] =
  return iibincount(scope,
                    arr,
                    size,
                    weights,
                    oT.oTF)

converter bincountToOut*[oT: oall](op: Bincount[oT]): oT {.inline.} = return op.output

type BucketizeT* = oint32 | oint64 | ofloat | odouble

type Bucketize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Bucketize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iibucketize(scope: Scope,
                input: BucketizeT,
                boundaries: ArraySlice[float32]): Bucketize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Bucketize(*#, #, #)", constructor.}

proc bucketize*(scope: Scope,
                input: BucketizeT,
                boundaries: openArray[float32]): Bucketize =
  return iibucketize(scope,
                     input,
                     newArraySlice(boundaries))

converter bucketizeToOut*(op: Bucketize): oint32 {.inline.} = return op.output

type CastSrcT* = oall

type Cast*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Cast/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iincast[oT: oall](scope: Scope,
            x: CastSrcT,
            Truncate: bool,
            DstT: DType,
            explicitT: type(oT)): Cast[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Cast(*#, #, #, #)", constructor.}

proc ncast*(scope: Scope,
            x: CastSrcT,
            Truncate: bool = false,
            DstT: type = oinvalid): auto =
  return iincast(scope,
                 x,
                 Truncate,
                 DstT.oTF,
                 DstT)

converter ncastToOut*[oT: oall](op: Cast[oT]): oT {.inline.} = return op.output


type CollectiveBcastSend*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"CollectiveBcastSend/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicollectiveBcastSend[oT: oall](scope: Scope,
                          input: oT,
                          T: DType,
                          group_size: int64,
                          group_key: int64,
                          instance_key: int64,
                          shape: TensorShape): CollectiveBcastSend[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"CollectiveBcastSend(*#, #, #, #, #, #, #)", constructor.}

proc collectiveBcastSend*[oT: oall](scope: Scope,
                          input: oT,
                          group_size: int64 = 0.int,
                          group_key: int64 = 0.int,
                          instance_key: int64 = 0.int,
                          shape: TensorShape = [].shape): CollectiveBcastSend[oT] =
  return iicollectiveBcastSend(scope,
                               input,
                               oT.oTF,
                               group_size,
                               group_key,
                               instance_key,
                               shape)

converter collectiveBcastSendToOut*[oT: oall](op: CollectiveBcastSend[oT]): oT {.inline.} = return op.output


type CollectiveReduce*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"CollectiveReduce/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicollectiveReduce[oT: oall](scope: Scope,
                       input: oT,
                       merge_op: cstring,
                       final_op: cstring,
                       subdiv_offsets: ArraySlice[int],
                       T: DType,
                       group_size: int64,
                       group_key: int64,
                       instance_key: int64): CollectiveReduce[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"CollectiveReduce(*#, #, tensorflow::string(#), tensorflow::string(#), #, #, #, #, #)", constructor.}

proc collectiveReduce*[oT: oall](scope: Scope,
                       input: oT,
                       merge_op: cstring,
                       final_op: cstring,
                       subdiv_offsets: openArray[int],
                       group_size: int64 = 0.int,
                       group_key: int64 = 0.int,
                       instance_key: int64 = 0.int): CollectiveReduce[oT] =
  return iicollectiveReduce(scope,
                            input,
                            merge_op,
                            final_op,
                            newArraySlice(subdiv_offsets),
                            oT.oTF,
                            group_size,
                            group_key,
                            instance_key)

converter collectiveReduceToOut*[oT: oall](op: CollectiveReduce[oT]): oT {.inline.} = return op.output

type CompareAndBitpackT* = obool | ohalf | ofloat | odouble | oint8 | oint16 | oint32 | oint64

type CompareAndBitpack* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"CompareAndBitpack/*'0*/".} = object
  operation*: Operation[ouint8]
  output*: ouint8

proc iicompareAndBitpack(scope: Scope,
                        input: CompareAndBitpackT,
                        threshold: CompareAndBitpackT): CompareAndBitpack {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"CompareAndBitpack(*#, #, #)", constructor.}

proc compareAndBitpack*(scope: Scope,
                        input: CompareAndBitpackT,
                        threshold: CompareAndBitpackT): CompareAndBitpack =
  return iicompareAndBitpack(scope,
                             input,
                             threshold)

converter compareAndBitpackToOut*(op: CompareAndBitpack): ouint8 {.inline.} = return op.output


type ComputeAccidentalHits* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ComputeAccidentalHits/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iicomputeAccidentalHits(scope: Scope,
                            true_classes: oint64,
                            sampled_candidates: oint64,
                            num_true: int64,
                            seed: int64,
                            seed2: int64): ComputeAccidentalHits {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ComputeAccidentalHits(*#, #, #, #, #, #)", constructor.}

proc computeAccidentalHits*(scope: Scope,
                            true_classes: oint64,
                            sampled_candidates: oint64,
                            num_true: int64 = 0.int,
                            seed: int64 = 0.int,
                            seed2: int64 = 0.int): ComputeAccidentalHits =
  return iicomputeAccidentalHits(scope,
                                 true_classes,
                                 sampled_candidates,
                                 num_true,
                                 seed,
                                 seed2)

converter computeAccidentalHitsToOut*(op: ComputeAccidentalHits): oint32 {.inline.} = return op.output


type ConditionalAccumulator* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ConditionalAccumulator/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiconditionalAccumulator(scope: Scope,
                             container: cstring,
                             shared_name: cstring,
                             dtype: DType,
                             shape: TensorShape,
                             reduction_type: cstring): ConditionalAccumulator {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ConditionalAccumulator(*#, tensorflow::string(#), tensorflow::string(#), #, #, tensorflow::string(#))", constructor.}

proc conditionalAccumulator*(scope: Scope,
                             container: cstring,
                             shared_name: cstring,
                             dtype: type(ofloat) | type(odouble) | type(oint32) | type(ouint8) | type(oint16) | type(oint8) | type(ocomplex64) | type(oint64) | type(oqint8) | type(oquint8) | type(oqint32) | type(obfloat16) | type(ouint16) | type(ocomplex128) | type(ohalf) | type(ouint32) | type(ouint64) = oinvalid,
                             shape: TensorShape = [].shape,
                             reduction_type: cstring = "MEAN"): ConditionalAccumulator =
  return iiconditionalAccumulator(scope,
                                  container,
                                  shared_name,
                                  dtype.oTF,
                                  shape,
                                  reduction_type)

converter conditionalAccumulatorToOut*(op: ConditionalAccumulator): ostring {.inline.} = return op.output


type Copy*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Copy/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicopy[oT: oall](scope: Scope,
           input: oT,
           tensor_name: cstring,
           debug_ops_spec: ArraySlice[cstring],
           T: DType): Copy[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Copy(*#, #, tensorflow::string(#), #, #)", constructor.}

proc copy*[oT: oall](scope: Scope,
           input: oT,
           tensor_name: cstring,
           debug_ops_spec: openArray[cstring]): Copy[oT] =
  return iicopy(scope,
                input,
                tensor_name,
                newArraySlice(debug_ops_spec),
                oT.oTF)

converter copyToOut*[oT: oall](op: Copy[oT]): oT {.inline.} = return op.output

    # Performs CPU-to-CPU or GPU-to-GPU deep-copying of tensor, depending on the
    # device on which the tensor is allocated.
    # N.B.: If the all downstream attached debug ops are disabled given the current
    # gRPC gating status, the output will simply forward the input tensor without
    # deep-copying. See the documentation of Debug* ops for more details.
    # 
    # Unlike the CopyHost Op, this op does not have HostMemory constraint on its
    # input or output.


type CopyHost*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"CopyHost/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicopyHost[oT: oall](scope: Scope,
               input: oT,
               tensor_name: cstring,
               debug_ops_spec: ArraySlice[cstring],
               T: DType): CopyHost[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"CopyHost(*#, #, tensorflow::string(#), #, #)", constructor.}

proc copyHost*[oT: oall](scope: Scope,
               input: oT,
               tensor_name: cstring,
               debug_ops_spec: openArray[cstring]): CopyHost[oT] =
  return iicopyHost(scope,
                    input,
                    tensor_name,
                    newArraySlice(debug_ops_spec),
                    oT.oTF)

converter copyHostToOut*[oT: oall](op: CopyHost[oT]): oT {.inline.} = return op.output

    # Performs CPU-to-CPU deep-copying of tensor.
    # N.B.: If the all downstream attached debug ops are disabled given the current
    # gRPC gating status, the output will simply forward the input tensor without
    # deep-copying. See the documentation of Debug* ops for more details.
    # 
    # Unlike the Copy Op, this op has HostMemory constraint on its input or output.


type DataFormatDimMap*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DataFormatDimMap/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidataFormatDimMap[oT: oall](scope: Scope,
                       x: oT,
                       T: DType,
                       src_format: cstring,
                       dst_format: cstring): DataFormatDimMap[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DataFormatDimMap(*#, #, #, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc dataFormatDimMap*[oT: oall](scope: Scope,
                       x: oT,
                       src_format: cstring = "NHWC",
                       dst_format: cstring = "NCHW"): DataFormatDimMap[oT] =
  return iidataFormatDimMap(scope,
                            x,
                            oT.oTF,
                            src_format,
                            dst_format)

converter dataFormatDimMapToOut*[oT: oall](op: DataFormatDimMap[oT]): oT {.inline.} = return op.output


type DecodeProtoV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DecodeProtoV2/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iidecodeProtoV2(scope: Scope,
                    bytes: ostring,
                    message_type: cstring,
                    field_names: ArraySlice[cstring],
                    output_types: ArraySlice[DType],
                    descriptor_source: cstring,
                    message_format: cstring,
                    sanitize: bool): DecodeProtoV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DecodeProtoV2(*#, #, tensorflow::string(#), #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc decodeProtoV2*(scope: Scope,
                    bytes: ostring,
                    message_type: cstring,
                    field_names: openArray[cstring],
                    output_types: openArray[DType],
                    descriptor_source: cstring = "local://",
                    message_format: cstring = "binary",
                    sanitize: bool = false): DecodeProtoV2 =
  return iidecodeProtoV2(scope,
                         bytes,
                         message_type,
                         newArraySlice(field_names),
                         newArraySlice(output_types),
                         descriptor_source,
                         message_format,
                         sanitize)

converter decodeProtoV2ToOut*(op: DecodeProtoV2): oint32 {.inline.} = return op.output


type DeepCopy*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DeepCopy/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iideepCopy[oT: oall](scope: Scope,
               x: oT,
               T: DType): DeepCopy[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DeepCopy(*#, #, #)", constructor.}

proc deepCopy*[oT: oall](scope: Scope,
               x: oT): DeepCopy[oT] =
  return iideepCopy(scope,
                    x,
                    oT.oTF)

converter deepCopyToOut*[oT: oall](op: DeepCopy[oT]): oT {.inline.} = return op.output


type DeleteSessionTensor*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DeleteSessionTensor/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iideleteSessionTensor(scope: Scope,
                          handle: ostring): DeleteSessionTensor {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DeleteSessionTensor(*#, #)", constructor.}

proc deleteSessionTensor*(scope: Scope,
                          handle: ostring): DeleteSessionTensor =
  return iideleteSessionTensor(scope,
                               handle)

type DenseToDenseSetOperationT* = oint8 | oint16 | oint32 | oint64 | ouint8 | ouint16 | ostring

type DenseToDenseSetOperation* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DenseToDenseSetOperation/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iidenseToDenseSetOperation(scope: Scope,
                               set1: DenseToDenseSetOperationT,
                               set2: DenseToDenseSetOperationT,
                               set_operation: cstring,
                               validate_indices: bool): DenseToDenseSetOperation {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DenseToDenseSetOperation(*#, #, #, tensorflow::string(#), #)", constructor.}

proc denseToDenseSetOperation*(scope: Scope,
                               set1: DenseToDenseSetOperationT,
                               set2: DenseToDenseSetOperationT,
                               set_operation: cstring,
                               validate_indices: bool = true): DenseToDenseSetOperation =
  return iidenseToDenseSetOperation(scope,
                                    set1,
                                    set2,
                                    set_operation,
                                    validate_indices)

converter denseToDenseSetOperationToOut*(op: DenseToDenseSetOperation): oint64 {.inline.} = return op.output

type DenseToSparseSetOperationT* = oint8 | oint16 | oint32 | oint64 | ouint8 | ouint16 | ostring

type DenseToSparseSetOperation* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DenseToSparseSetOperation/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iidenseToSparseSetOperation(scope: Scope,
                                set1: DenseToSparseSetOperationT,
                                set2_indices: oint64,
                                set2_values: DenseToSparseSetOperationT,
                                set2_shape: oint64,
                                set_operation: cstring,
                                validate_indices: bool): DenseToSparseSetOperation {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DenseToSparseSetOperation(*#, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc denseToSparseSetOperation*(scope: Scope,
                                set1: DenseToSparseSetOperationT,
                                set2_indices: oint64,
                                set2_values: DenseToSparseSetOperationT,
                                set2_shape: oint64,
                                set_operation: cstring,
                                validate_indices: bool = true): DenseToSparseSetOperation =
  return iidenseToSparseSetOperation(scope,
                                     set1,
                                     set2_indices,
                                     set2_values,
                                     set2_shape,
                                     set_operation,
                                     validate_indices)

converter denseToSparseSetOperationToOut*(op: DenseToSparseSetOperation): oint64 {.inline.} = return op.output


type DepthToSpace*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DepthToSpace/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidepthToSpace[oT: oall](scope: Scope,
                   input: oT,
                   T: DType,
                   block_size: int64,
                   data_format: cstring): DepthToSpace[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DepthToSpace(*#, #, #, #, tensorflow::string(#))", constructor.}

proc depthToSpace*[oT: oall](scope: Scope,
                   input: oT,
                   block_size: int64 = 0.int,
                   data_format: cstring = "NHWC"): DepthToSpace[oT] =
  return iidepthToSpace(scope,
                        input,
                        oT.oTF,
                        block_size,
                        data_format)

converter depthToSpaceToOut*[oT: oall](op: DepthToSpace[oT]): oT {.inline.} = return op.output


type DeserializeManySparse* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DeserializeManySparse/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iideserializeManySparse(scope: Scope,
                            serialized_sparse: ostring,
                            dtype: DType): DeserializeManySparse {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DeserializeManySparse(*#, #, #)", constructor.}

proc deserializeManySparse*(scope: Scope,
                            serialized_sparse: ostring,
                            dtype: type oall = oinvalid): DeserializeManySparse =
  return iideserializeManySparse(scope,
                                 serialized_sparse,
                                 dtype.oTF)

converter deserializeManySparseToOut*(op: DeserializeManySparse): oint64 {.inline.} = return op.output


type DestroyResourceOp*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DestroyResourceOp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iidestroyResourceOp(scope: Scope,
                        resource: oresource,
                        ignore_lookup_error: bool): DestroyResourceOp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DestroyResourceOp(*#, #, #)", constructor.}

proc destroyResourceOp*(scope: Scope,
                        resource: oresource,
                        ignore_lookup_error: bool = true): DestroyResourceOp =
  return iidestroyResourceOp(scope,
                             resource,
                             ignore_lookup_error)


type DestroyTemporaryVariable*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DestroyTemporaryVariable/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidestroyTemporaryVariable[oT: oall](scope: Scope,
                               nref: oT,
                               var_name: cstring,
                               T: DType): DestroyTemporaryVariable[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"DestroyTemporaryVariable(*#, #, tensorflow::string(#), #)", constructor.}

proc destroyTemporaryVariable*[oT: oall](scope: Scope,
                               nref: oT,
                               var_name: cstring): DestroyTemporaryVariable[oT] =
  return iidestroyTemporaryVariable(scope,
                                    nref,
                                    var_name,
                                    oT.oTF)

converter destroyTemporaryVariableToOut*[oT: oall](op: DestroyTemporaryVariable[oT]): oT {.inline.} = return op.output

type EmptyTensorListshape_type* = oint32 | oint64

type EmptyTensorList* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"EmptyTensorList/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiemptyTensorList(scope: Scope,
                      element_shape: EmptyTensorListshape_type,
                      max_num_elements: oint32,
                      element_dtype: DType): EmptyTensorList {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"EmptyTensorList(*#, #, #, #)", constructor.}

proc emptyTensorList*(scope: Scope,
                      element_shape: EmptyTensorListshape_type,
                      max_num_elements: oint32,
                      element_dtype: type oall = oinvalid): EmptyTensorList =
  return iiemptyTensorList(scope,
                           element_shape,
                           max_num_elements,
                           element_dtype.oTF)

converter emptyTensorListToOut*(op: EmptyTensorList): ovariant {.inline.} = return op.output


type EncodeProto* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"EncodeProto/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiencodeProto(scope: Scope,
                  sizes: oint32,
                  values: olist[oall],
                  field_names: ArraySlice[cstring],
                  message_type: cstring,
                  Tinput_types: ArraySlice[DType],
                  descriptor_source: cstring): EncodeProto {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"EncodeProto(*#, #, #, #, tensorflow::string(#), #, tensorflow::string(#))", constructor.}

proc encodeProto*(scope: Scope,
                  sizes: oint32,
                  values: olist[oall],
                  field_names: openArray[cstring],
                  message_type: cstring,
                  Tinput_types: openArray[DType],
                  descriptor_source: cstring = "local://"): EncodeProto =
  return iiencodeProto(scope,
                       sizes,
                       values,
                       newArraySlice(field_names),
                       message_type,
                       newArraySlice(Tinput_types),
                       descriptor_source)

converter encodeProtoToOut*(op: EncodeProto): ostring {.inline.} = return op.output


type ExperimentalThreadPoolHandle* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ExperimentalThreadPoolHandle/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiexperimentalThreadPoolHandle(scope: Scope,
                                   display_name: cstring,
                                   container: cstring,
                                   shared_name: cstring,
                                   num_threads: int64,
                                   max_intra_op_parallelism: int64): ExperimentalThreadPoolHandle {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ExperimentalThreadPoolHandle(*#, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc experimentalThreadPoolHandle*(scope: Scope,
                                   display_name: cstring,
                                   container: cstring,
                                   shared_name: cstring,
                                   num_threads: int64 = 0.int,
                                   max_intra_op_parallelism: int64 = 1.int): ExperimentalThreadPoolHandle =
  return iiexperimentalThreadPoolHandle(scope,
                                        display_name,
                                        container,
                                        shared_name,
                                        num_threads,
                                        max_intra_op_parallelism)

converter experimentalThreadPoolHandleToOut*(op: ExperimentalThreadPoolHandle): oresource {.inline.} = return op.output


type FakeQuantWithMinMaxArgs* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxArgs/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iifakeQuantWithMinMaxArgs(scope: Scope,
                              inputs: ofloat,
                              min: float32,
                              max: float32,
                              num_bits: int64,
                              narrow_range: bool): FakeQuantWithMinMaxArgs {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxArgs(*#, #, #, #, #, #)", constructor.}

proc fakeQuantWithMinMaxArgs*(scope: Scope,
                              inputs: ofloat,
                              min: float32 = -6.0.float32,
                              max: float32 = 6.0.float32,
                              num_bits: int64 = 8.int,
                              narrow_range: bool = false): FakeQuantWithMinMaxArgs =
  return iifakeQuantWithMinMaxArgs(scope,
                                   inputs,
                                   min,
                                   max,
                                   num_bits,
                                   narrow_range)

converter fakeQuantWithMinMaxArgsToOut*(op: FakeQuantWithMinMaxArgs): ofloat {.inline.} = return op.output


type FakeQuantWithMinMaxArgsGradient* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxArgsGradient/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iifakeQuantWithMinMaxArgsGradient(scope: Scope,
                                      gradients: ofloat,
                                      inputs: ofloat,
                                      min: float32,
                                      max: float32,
                                      num_bits: int64,
                                      narrow_range: bool): FakeQuantWithMinMaxArgsGradient {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxArgsGradient(*#, #, #, #, #, #, #)", constructor.}

proc fakeQuantWithMinMaxArgsGradient*(scope: Scope,
                                      gradients: ofloat,
                                      inputs: ofloat,
                                      min: float32 = -6.0.float32,
                                      max: float32 = 6.0.float32,
                                      num_bits: int64 = 8.int,
                                      narrow_range: bool = false): FakeQuantWithMinMaxArgsGradient =
  return iifakeQuantWithMinMaxArgsGradient(scope,
                                           gradients,
                                           inputs,
                                           min,
                                           max,
                                           num_bits,
                                           narrow_range)

converter fakeQuantWithMinMaxArgsGradientToOut*(op: FakeQuantWithMinMaxArgsGradient): ofloat {.inline.} = return op.output


type FakeQuantWithMinMaxVars* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxVars/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iifakeQuantWithMinMaxVars(scope: Scope,
                              inputs: ofloat,
                              min: ofloat,
                              max: ofloat,
                              num_bits: int64,
                              narrow_range: bool): FakeQuantWithMinMaxVars {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxVars(*#, #, #, #, #, #)", constructor.}

proc fakeQuantWithMinMaxVars*(scope: Scope,
                              inputs: ofloat,
                              min: ofloat,
                              max: ofloat,
                              num_bits: int64 = 8.int,
                              narrow_range: bool = false): FakeQuantWithMinMaxVars =
  return iifakeQuantWithMinMaxVars(scope,
                                   inputs,
                                   min,
                                   max,
                                   num_bits,
                                   narrow_range)

converter fakeQuantWithMinMaxVarsToOut*(op: FakeQuantWithMinMaxVars): ofloat {.inline.} = return op.output


type FakeQuantWithMinMaxVarsGradient* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxVarsGradient/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iifakeQuantWithMinMaxVarsGradient(scope: Scope,
                                      gradients: ofloat,
                                      inputs: ofloat,
                                      min: ofloat,
                                      max: ofloat,
                                      num_bits: int64,
                                      narrow_range: bool): FakeQuantWithMinMaxVarsGradient {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxVarsGradient(*#, #, #, #, #, #, #)", constructor.}

proc fakeQuantWithMinMaxVarsGradient*(scope: Scope,
                                      gradients: ofloat,
                                      inputs: ofloat,
                                      min: ofloat,
                                      max: ofloat,
                                      num_bits: int64 = 8.int,
                                      narrow_range: bool = false): FakeQuantWithMinMaxVarsGradient =
  return iifakeQuantWithMinMaxVarsGradient(scope,
                                           gradients,
                                           inputs,
                                           min,
                                           max,
                                           num_bits,
                                           narrow_range)

converter fakeQuantWithMinMaxVarsGradientToOut*(op: FakeQuantWithMinMaxVarsGradient): ofloat {.inline.} = return op.output


type FakeQuantWithMinMaxVarsPerChannel* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxVarsPerChannel/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iifakeQuantWithMinMaxVarsPerChannel(scope: Scope,
                                        inputs: ofloat,
                                        min: ofloat,
                                        max: ofloat,
                                        num_bits: int64,
                                        narrow_range: bool): FakeQuantWithMinMaxVarsPerChannel {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxVarsPerChannel(*#, #, #, #, #, #)", constructor.}

proc fakeQuantWithMinMaxVarsPerChannel*(scope: Scope,
                                        inputs: ofloat,
                                        min: ofloat,
                                        max: ofloat,
                                        num_bits: int64 = 8.int,
                                        narrow_range: bool = false): FakeQuantWithMinMaxVarsPerChannel =
  return iifakeQuantWithMinMaxVarsPerChannel(scope,
                                             inputs,
                                             min,
                                             max,
                                             num_bits,
                                             narrow_range)

converter fakeQuantWithMinMaxVarsPerChannelToOut*(op: FakeQuantWithMinMaxVarsPerChannel): ofloat {.inline.} = return op.output


type FakeQuantWithMinMaxVarsPerChannelGradient* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxVarsPerChannelGradient/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iifakeQuantWithMinMaxVarsPerChannelGradient(scope: Scope,
                                                gradients: ofloat,
                                                inputs: ofloat,
                                                min: ofloat,
                                                max: ofloat,
                                                num_bits: int64,
                                                narrow_range: bool): FakeQuantWithMinMaxVarsPerChannelGradient {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FakeQuantWithMinMaxVarsPerChannelGradient(*#, #, #, #, #, #, #)", constructor.}

proc fakeQuantWithMinMaxVarsPerChannelGradient*(scope: Scope,
                                                gradients: ofloat,
                                                inputs: ofloat,
                                                min: ofloat,
                                                max: ofloat,
                                                num_bits: int64 = 8.int,
                                                narrow_range: bool = false): FakeQuantWithMinMaxVarsPerChannelGradient =
  return iifakeQuantWithMinMaxVarsPerChannelGradient(scope,
                                                     gradients,
                                                     inputs,
                                                     min,
                                                     max,
                                                     num_bits,
                                                     narrow_range)

converter fakeQuantWithMinMaxVarsPerChannelGradientToOut*(op: FakeQuantWithMinMaxVarsPerChannelGradient): ofloat {.inline.} = return op.output


type FusedBatchNormGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FusedBatchNormGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifusedBatchNormGrad[oT: oall](scope: Scope,
                         y_backprop: oT,
                         x: oT,
                         scale: oT,
                         reserve_space_1: oT,
                         reserve_space_2: oT,
                         T: DType,
                         epsilon: float32,
                         data_format: cstring,
                         is_training: bool): FusedBatchNormGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FusedBatchNormGrad(*#, #, #, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc fusedBatchNormGrad*[oT: oall](scope: Scope,
                         y_backprop: oT,
                         x: oT,
                         scale: oT,
                         reserve_space_1: oT,
                         reserve_space_2: oT,
                         epsilon: float32 = 9.999999747378752e-05.float32,
                         data_format: cstring = "NHWC",
                         is_training: bool = true): FusedBatchNormGrad[oT] =
  return iifusedBatchNormGrad(scope,
                              y_backprop,
                              x,
                              scale,
                              reserve_space_1,
                              reserve_space_2,
                              oT.oTF,
                              epsilon,
                              data_format,
                              is_training)

converter fusedBatchNormGradToOut*[oT: oall](op: FusedBatchNormGrad[oT]): oT {.inline.} = return op.output

type FusedBatchNormGradV2U* = ofloat

type FusedBatchNormGradV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FusedBatchNormGradV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifusedBatchNormGradV2[oT: oall](scope: Scope,
                           y_backprop: oT,
                           x: oT,
                           scale: ofloat,
                           reserve_space_1: FusedBatchNormGradV2U,
                           reserve_space_2: FusedBatchNormGradV2U,
                           T: DType,
                           is_training: bool,
                           epsilon: float32,
                           data_format: cstring): FusedBatchNormGradV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"FusedBatchNormGradV2(*#, #, #, #, #, #, #, #, #, tensorflow::string(#))", constructor.}

proc fusedBatchNormGradV2*[oT: oall](scope: Scope,
                           y_backprop: oT,
                           x: oT,
                           scale: ofloat,
                           reserve_space_1: FusedBatchNormGradV2U,
                           reserve_space_2: FusedBatchNormGradV2U,
                           is_training: bool = true,
                           epsilon: float32 = 9.999999747378752e-05.float32,
                           data_format: cstring = "NHWC"): FusedBatchNormGradV2[oT] =
  return iifusedBatchNormGradV2(scope,
                                y_backprop,
                                x,
                                scale,
                                reserve_space_1,
                                reserve_space_2,
                                oT.oTF,
                                is_training,
                                epsilon,
                                data_format)

converter fusedBatchNormGradV2ToOut*[oT: oall](op: FusedBatchNormGradV2[oT]): oT {.inline.} = return op.output

type GatherV2Taxis* = oint32 | oint64
type GatherV2Tindices* = oint32 | oint64

type GatherV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"GatherV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iigatherV2[oT: oall](scope: Scope,
               params: oT,
               indices: GatherV2Tindices,
               axis: GatherV2Taxis,
               Tparams: DType): GatherV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"GatherV2(*#, #, #, #, #)", constructor.}

proc gatherV2*[oT: oall](scope: Scope,
               params: oT,
               indices: GatherV2Tindices,
               axis: GatherV2Taxis): GatherV2[oT] =
  return iigatherV2(scope,
                    params,
                    indices,
                    axis,
                    oT.oTF)

converter gatherV2ToOut*[oT: oall](op: GatherV2[oT]): oT {.inline.} = return op.output

type GetSessionHandleT* = oall

type GetSessionHandle* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"GetSessionHandle/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iigetSessionHandle(scope: Scope,
                       value: GetSessionHandleT): GetSessionHandle {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"GetSessionHandle(*#, #)", constructor.}

proc getSessionHandle*(scope: Scope,
                       value: GetSessionHandleT): GetSessionHandle =
  return iigetSessionHandle(scope,
                            value)

converter getSessionHandleToOut*(op: GetSessionHandle): ostring {.inline.} = return op.output

type GetSessionHandleV2T* = oall

type GetSessionHandleV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"GetSessionHandleV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iigetSessionHandleV2(scope: Scope,
                         value: GetSessionHandleV2T): GetSessionHandleV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"GetSessionHandleV2(*#, #)", constructor.}

proc getSessionHandleV2*(scope: Scope,
                         value: GetSessionHandleV2T): GetSessionHandleV2 =
  return iigetSessionHandleV2(scope,
                              value)

converter getSessionHandleV2ToOut*(op: GetSessionHandleV2): oresource {.inline.} = return op.output


type GetSessionTensor*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"GetSessionTensor/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iigetSessionTensor[oT: oall](scope: Scope,
                       handle: ostring,
                       dtype: DType,
                       explicitT: type(oT)): GetSessionTensor[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"GetSessionTensor(*#, #, #)", constructor.}

proc getSessionTensor*(scope: Scope,
                       handle: ostring,
                       dtype: type = oinvalid): auto =
  return iigetSessionTensor(scope,
                            handle,
                            dtype.oTF,
                            dtype)

converter getSessionTensorToOut*[oT: oall](op: GetSessionTensor[oT]): oT {.inline.} = return op.output


type HostConst*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"HostConst/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iihostConst[oT: oall](scope: Scope,
                value: Tensor[oT],
                dtype: DType): HostConst[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"HostConst(*#, *#, #)", constructor.}

proc hostConst*[oT: oall](scope: Scope,
                value: Tensor[oT]): HostConst[oT] =
  return iihostConst(scope,
                     value,
                     oT.oTF)

converter hostConstToOut*[oT: oall](op: HostConst[oT]): oT {.inline.} = return op.output


type ImmutableConst*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ImmutableConst/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiimmutableConst[oT: oall](scope: Scope,
                     memory_region_name: cstring,
                     dtype: DType,
                     shape: TensorShape,
                     explicitT: type(oT)): ImmutableConst[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ImmutableConst(*#, tensorflow::string(#), #, #)", constructor.}

proc immutableConst*(scope: Scope,
                     memory_region_name: cstring,
                     dtype: type = oinvalid,
                     shape: TensorShape = [].shape): auto =
  return iiimmutableConst(scope,
                          memory_region_name,
                          dtype.oTF,
                          shape,
                          dtype)

converter immutableConstToOut*[oT: oall](op: ImmutableConst[oT]): oT {.inline.} = return op.output


type InplaceUpdate*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"InplaceUpdate/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiinplaceUpdate[oT: oall](scope: Scope,
                    x: oT,
                    i: oint32,
                    v: oT,
                    T: DType): InplaceUpdate[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"InplaceUpdate(*#, #, #, #, #)", constructor.}

proc inplaceUpdate*[oT: oall](scope: Scope,
                    x: oT,
                    i: oint32,
                    v: oT): InplaceUpdate[oT] =
  return iiinplaceUpdate(scope,
                         x,
                         i,
                         v,
                         oT.oTF)

converter inplaceUpdateToOut*[oT: oall](op: InplaceUpdate[oT]): oT {.inline.} = return op.output


type InvertPermutation*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"InvertPermutation/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiinvertPermutation[oT: oall](scope: Scope,
                        x: oT,
                        T: DType): InvertPermutation[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"InvertPermutation(*#, #, #)", constructor.}

proc invertPermutation*[oT: oall](scope: Scope,
                        x: oT): InvertPermutation[oT] =
  return iiinvertPermutation(scope,
                             x,
                             oT.oTF)

converter invertPermutationToOut*[oT: oall](op: InvertPermutation[oT]): oT {.inline.} = return op.output

type IsVariableInitializeddtype* = oall

type IsVariableInitialized* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"IsVariableInitialized/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiisVariableInitialized(scope: Scope,
                            nref: IsVariableInitializeddtype): IsVariableInitialized {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"IsVariableInitialized(*#, #)", constructor.}

proc isVariableInitialized*(scope: Scope,
                            nref: IsVariableInitializeddtype): IsVariableInitialized =
  return iiisVariableInitialized(scope,
                                 nref)

converter isVariableInitializedToOut*(op: IsVariableInitialized): obool {.inline.} = return op.output


type ListDiff*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ListDiff/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilistDiff[oT: oall](scope: Scope,
               x: oT,
               y: oT,
               T: DType,
               out_idx: DType): ListDiff[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ListDiff(*#, #, #, #, #)", constructor.}

proc listDiff*[oT: oall](scope: Scope,
               x: oT,
               y: oT,
               out_idx: type(oint32) | type(oint64) = oint32): ListDiff[oT] =
  return iilistDiff(scope,
                    x,
                    y,
                    oT.oTF,
                    oT.oTF)

converter listDiffToOut*[oT: oall](op: ListDiff[oT]): oT {.inline.} = return op.output


type LoadAndRemapMatrix* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"LoadAndRemapMatrix/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiloadAndRemapMatrix(scope: Scope,
                         ckpt_path: ostring,
                         old_tensor_name: ostring,
                         row_remapping: oint64,
                         col_remapping: oint64,
                         initializing_values: ofloat,
                         num_rows: int64,
                         num_cols: int64,
                         max_rows_in_memory: int64): LoadAndRemapMatrix {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"LoadAndRemapMatrix(*#, #, #, #, #, #, #, #, #)", constructor.}

proc loadAndRemapMatrix*(scope: Scope,
                         ckpt_path: ostring,
                         old_tensor_name: ostring,
                         row_remapping: oint64,
                         col_remapping: oint64,
                         initializing_values: ofloat,
                         num_rows: int64 = 0.int,
                         num_cols: int64 = 0.int,
                         max_rows_in_memory: int64 = -1.int): LoadAndRemapMatrix =
  return iiloadAndRemapMatrix(scope,
                              ckpt_path,
                              old_tensor_name,
                              row_remapping,
                              col_remapping,
                              initializing_values,
                              num_rows,
                              num_cols,
                              max_rows_in_memory)

converter loadAndRemapMatrixToOut*(op: LoadAndRemapMatrix): ofloat {.inline.} = return op.output

type MirrorPadTpaddings* = oint32 | oint64

type MirrorPad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"MirrorPad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimirrorPad[oT: oall](scope: Scope,
                input: oT,
                paddings: MirrorPadTpaddings,
                mode: cstring,
                T: DType): MirrorPad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"MirrorPad(*#, #, #, tensorflow::string(#), #)", constructor.}

proc mirrorPad*[oT: oall](scope: Scope,
                input: oT,
                paddings: MirrorPadTpaddings,
                mode: cstring): MirrorPad[oT] =
  return iimirrorPad(scope,
                     input,
                     paddings,
                     mode,
                     oT.oTF)

converter mirrorPadToOut*[oT: oall](op: MirrorPad[oT]): oT {.inline.} = return op.output


type MutableHashTableV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"MutableHashTableV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iimutableHashTableV2(scope: Scope,
                         container: cstring,
                         shared_name: cstring,
                         use_node_name_sharing: bool,
                         key_dtype: DType,
                         value_dtype: DType): MutableHashTableV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"MutableHashTableV2(*#, tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc mutableHashTableV2*(scope: Scope,
                         container: cstring,
                         shared_name: cstring,
                         use_node_name_sharing: bool = false,
                         key_dtype: type oall = oinvalid,
                         value_dtype: type oall = oinvalid): MutableHashTableV2 =
  return iimutableHashTableV2(scope,
                              container,
                              shared_name,
                              use_node_name_sharing,
                              key_dtype.oTF,
                              value_dtype.oTF)

converter mutableHashTableV2ToOut*(op: MutableHashTableV2): oresource {.inline.} = return op.output


type NcclReduce*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NcclReduce/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iincclReduce[oT: oall](scope: Scope,
                 input: olist[oT],
                 reduction: cstring,
                 T: DType,
                 num_devices: int64): NcclReduce[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NcclReduce(*#, #, tensorflow::string(#), #, #)", constructor.}

proc ncclReduce*[oT: oall](scope: Scope,
                 input: olist[oT],
                 reduction: cstring,
                 num_devices: int64 = 0.int): NcclReduce[oT] =
  return iincclReduce(scope,
                      input,
                      reduction,
                      oT.oTF,
                      num_devices)

converter ncclReduceToOut*[oT: oall](op: NcclReduce[oT]): oT {.inline.} = return op.output


type NoOp*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NoOp/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iinoOp(scope: Scope): NoOp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NoOp(*#)", constructor.}

proc noOp*(scope: Scope): NoOp =
  return iinoOp(scope)

type NonMaxSuppressionV3T* = ohalf | ofloat

type NonMaxSuppressionV3* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NonMaxSuppressionV3/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iinonMaxSuppressionV3(scope: Scope,
                          boxes: NonMaxSuppressionV3T,
                          scores: NonMaxSuppressionV3T,
                          max_output_size: oint32,
                          iou_threshold: ofloat,
                          score_threshold: ofloat): NonMaxSuppressionV3 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NonMaxSuppressionV3(*#, #, #, #, #, #)", constructor.}

proc nonMaxSuppressionV3*(scope: Scope,
                          boxes: NonMaxSuppressionV3T,
                          scores: NonMaxSuppressionV3T,
                          max_output_size: oint32,
                          iou_threshold: ofloat,
                          score_threshold: ofloat): NonMaxSuppressionV3 =
  return iinonMaxSuppressionV3(scope,
                               boxes,
                               scores,
                               max_output_size,
                               iou_threshold,
                               score_threshold)

converter nonMaxSuppressionV3ToOut*(op: NonMaxSuppressionV3): oint32 {.inline.} = return op.output

type NonMaxSuppressionV4T* = ohalf | ofloat

type NonMaxSuppressionV4* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NonMaxSuppressionV4/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iinonMaxSuppressionV4(scope: Scope,
                          boxes: NonMaxSuppressionV4T,
                          scores: NonMaxSuppressionV4T,
                          max_output_size: oint32,
                          iou_threshold: ofloat,
                          score_threshold: ofloat,
                          pad_to_max_output_size: bool): NonMaxSuppressionV4 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NonMaxSuppressionV4(*#, #, #, #, #, #, #)", constructor.}

proc nonMaxSuppressionV4*(scope: Scope,
                          boxes: NonMaxSuppressionV4T,
                          scores: NonMaxSuppressionV4T,
                          max_output_size: oint32,
                          iou_threshold: ofloat,
                          score_threshold: ofloat,
                          pad_to_max_output_size: bool = false): NonMaxSuppressionV4 =
  return iinonMaxSuppressionV4(scope,
                               boxes,
                               scores,
                               max_output_size,
                               iou_threshold,
                               score_threshold,
                               pad_to_max_output_size)

converter nonMaxSuppressionV4ToOut*(op: NonMaxSuppressionV4): oint32 {.inline.} = return op.output


type NonMaxSuppressionWithOverlaps* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NonMaxSuppressionWithOverlaps/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iinonMaxSuppressionWithOverlaps(scope: Scope,
                                    overlaps: ofloat,
                                    scores: ofloat,
                                    max_output_size: oint32,
                                    overlap_threshold: ofloat,
                                    score_threshold: ofloat): NonMaxSuppressionWithOverlaps {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NonMaxSuppressionWithOverlaps(*#, #, #, #, #, #)", constructor.}

proc nonMaxSuppressionWithOverlaps*(scope: Scope,
                                    overlaps: ofloat,
                                    scores: ofloat,
                                    max_output_size: oint32,
                                    overlap_threshold: ofloat,
                                    score_threshold: ofloat): NonMaxSuppressionWithOverlaps =
  return iinonMaxSuppressionWithOverlaps(scope,
                                         overlaps,
                                         scores,
                                         max_output_size,
                                         overlap_threshold,
                                         score_threshold)

converter nonMaxSuppressionWithOverlapsToOut*(op: NonMaxSuppressionWithOverlaps): oint32 {.inline.} = return op.output


type NthElement*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NthElement/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iinthElement[oT: oall](scope: Scope,
                 input: oT,
                 n: oint32,
                 reverse: bool,
                 T: DType): NthElement[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"NthElement(*#, #, #, #, #)", constructor.}

proc nthElement*[oT: oall](scope: Scope,
                 input: oT,
                 n: oint32,
                 reverse: bool = false): NthElement[oT] =
  return iinthElement(scope,
                      input,
                      n,
                      reverse,
                      oT.oTF)

converter nthElementToOut*[oT: oall](op: NthElement[oT]): oT {.inline.} = return op.output

type OneHotTI* = ouint8 | oint32 | oint64

type OneHot*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OneHot/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iioneHot[oT: oall](scope: Scope,
             indices: OneHotTI,
             depth: oint32,
             on_value: oT,
             off_value: oT,
             axis: int64,
             T: DType): OneHot[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OneHot(*#, #, #, #, #, #, #)", constructor.}

proc oneHot*[oT: oall](scope: Scope,
             indices: OneHotTI,
             depth: oint32,
             on_value: oT,
             off_value: oT,
             axis: int64 = -1.int): OneHot[oT] =
  return iioneHot(scope,
                  indices,
                  depth,
                  on_value,
                  off_value,
                  axis,
                  oT.oTF)

converter oneHotToOut*[oT: oall](op: OneHot[oT]): oT {.inline.} = return op.output


type OptionalFromValue* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OptionalFromValue/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iioptionalFromValue(scope: Scope,
                        components: olist[oall],
                        Toutput_types: ArraySlice[DType]): OptionalFromValue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OptionalFromValue(*#, #, #)", constructor.}

proc optionalFromValue*(scope: Scope,
                        components: olist[oall],
                        Toutput_types: openArray[DType]): OptionalFromValue =
  return iioptionalFromValue(scope,
                             components,
                             newArraySlice(Toutput_types))

converter optionalFromValueToOut*(op: OptionalFromValue): ovariant {.inline.} = return op.output


type OptionalGetValue*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OptionalGetValue/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iioptionalGetValue[oT: oall](scope: Scope,
                       optional: ovariant,
                       output_types: ArraySlice[DType],
                       output_shapes: ArraySlice[TensorShape],
                       explicitT: type(oT)): OptionalGetValue[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OptionalGetValue(*#, #, #, #)", constructor.}

proc optionalGetValue*(scope: Scope,
                       optional: ovariant,
                       output_types: openArray[DType],
                       output_shapes: openArray[TensorShape],
                       explicitT: type): auto =
  return iioptionalGetValue(scope,
                            optional,
                            newArraySlice(output_types),
                            newArraySlice(output_shapes),
                            explicitT)

converter optionalGetValueToOutList*[oT: oall](op: OptionalGetValue[oT]): olist[oT] {.inline.} = return op.output


type OptionalHasValue* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OptionalHasValue/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iioptionalHasValue(scope: Scope,
                       optional: ovariant): OptionalHasValue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OptionalHasValue(*#, #)", constructor.}

proc optionalHasValue*(scope: Scope,
                       optional: ovariant): OptionalHasValue =
  return iioptionalHasValue(scope,
                            optional)

converter optionalHasValueToOut*(op: OptionalHasValue): obool {.inline.} = return op.output


type OptionalNone* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OptionalNone/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iioptionalNone(scope: Scope): OptionalNone {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"OptionalNone(*#)", constructor.}

proc optionalNone*(scope: Scope): OptionalNone =
  return iioptionalNone(scope)

converter optionalNoneToOut*(op: OptionalNone): ovariant {.inline.} = return op.output


type Pack*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Pack/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iipack[oT: oall](scope: Scope,
           values: olist[oT],
           T: DType,
           axis: int64): Pack[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Pack(*#, #, #, #)", constructor.}

proc pack*[oT: oall](scope: Scope,
           values: olist[oT],
           axis: int64 = 0.int): Pack[oT] =
  return iipack(scope,
                values,
                oT.oTF,
                axis)

converter packToOut*[oT: oall](op: Pack[oT]): oT {.inline.} = return op.output


type PaddedBatchDataset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PaddedBatchDataset/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iipaddedBatchDataset(scope: Scope,
                         input_dataset: ovariant,
                         batch_size: oint64,
                         padded_shapes: olist[oint64],
                         padding_values: olist[oall],
                         Toutput_types: ArraySlice[DType],
                         output_shapes: ArraySlice[TensorShape]): PaddedBatchDataset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PaddedBatchDataset(*#, #, #, #, #, #, #)", constructor.}

proc paddedBatchDataset*(scope: Scope,
                         input_dataset: ovariant,
                         batch_size: oint64,
                         padded_shapes: olist[oint64],
                         padding_values: olist[oall],
                         Toutput_types: openArray[DType],
                         output_shapes: openArray[TensorShape]): PaddedBatchDataset =
  return iipaddedBatchDataset(scope,
                              input_dataset,
                              batch_size,
                              padded_shapes,
                              padding_values,
                              newArraySlice(Toutput_types),
                              newArraySlice(output_shapes))

converter paddedBatchDatasetToOut*(op: PaddedBatchDataset): ovariant {.inline.} = return op.output


type ParallelConcat*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ParallelConcat/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiparallelConcat[oT: oall](scope: Scope,
                     values: olist[oT],
                     T: DType,
                     shape: TensorShape): ParallelConcat[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ParallelConcat(*#, #, #, #)", constructor.}

proc parallelConcat*[oT: oall](scope: Scope,
                     values: olist[oT],
                     shape: TensorShape = [].shape): ParallelConcat[oT] =
  return iiparallelConcat(scope,
                          values,
                          oT.oTF,
                          shape)

converter parallelConcatToOut*[oT: oall](op: ParallelConcat[oT]): oT {.inline.} = return op.output


type PlaceholderV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PlaceholderV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiplaceholderV2[oT: oall](scope: Scope,
                    dtype: DType,
                    shape: TensorShape,
                    explicitT: type(oT)): PlaceholderV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PlaceholderV2(*#, #, #)", constructor.}

proc placeholderV2*(scope: Scope,
                    dtype: type = oinvalid,
                    shape: TensorShape = [].shape): auto =
  return iiplaceholderV2(scope,
                         dtype.oTF,
                         shape,
                         dtype)

converter placeholderV2ToOut*[oT: oall](op: PlaceholderV2[oT]): oT {.inline.} = return op.output


type PlaceholderWithDefault*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PlaceholderWithDefault/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiplaceholderWithDefault[oT: oall](scope: Scope,
                             input: oT,
                             dtype: DType,
                             shape: TensorShape): PlaceholderWithDefault[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PlaceholderWithDefault(*#, #, #, #)", constructor.}

proc placeholderWithDefault*[oT: oall](scope: Scope,
                             input: oT,
                             shape: TensorShape = [].shape): PlaceholderWithDefault[oT] =
  return iiplaceholderWithDefault(scope,
                                  input,
                                  oT.oTF,
                                  shape)

converter placeholderWithDefaultToOut*[oT: oall](op: PlaceholderWithDefault[oT]): oT {.inline.} = return op.output

type PopulationCountT* = oint8 | oint16 | oint32 | oint64 | ouint8 | ouint16 | ouint32 | ouint64

type PopulationCount* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PopulationCount/*'0*/".} = object
  operation*: Operation[ouint8]
  output*: ouint8

proc iipopulationCount(scope: Scope,
                      x: PopulationCountT): PopulationCount {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PopulationCount(*#, #)", constructor.}

proc populationCount*(scope: Scope,
                      x: PopulationCountT): PopulationCount =
  return iipopulationCount(scope,
                           x)

converter populationCountToOut*(op: PopulationCount): ouint8 {.inline.} = return op.output


type PrintV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PrintV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiprintV2(scope: Scope,
              input: ostring,
              output_stream: cstring): PrintV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"PrintV2(*#, #, tensorflow::string(#))", constructor.}

proc printV2*(scope: Scope,
              input: ostring,
              output_stream: cstring = "stderr"): PrintV2 =
  return iiprintV2(scope,
                   input,
                   output_stream)


type QuantizeAndDequantize*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizeAndDequantize/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizeAndDequantize[oT: oall](scope: Scope,
                            input: oT,
                            signed_input: bool,
                            num_bits: int64,
                            range_given: bool,
                            input_min: float32,
                            input_max: float32,
                            T: DType): QuantizeAndDequantize[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizeAndDequantize(*#, #, #, #, #, #, #, #)", constructor.}

proc quantizeAndDequantize*[oT: oall](scope: Scope,
                            input: oT,
                            signed_input: bool = true,
                            num_bits: int64 = 8.int,
                            range_given: bool = false,
                            input_min: float32 = 0.0.float32,
                            input_max: float32 = 0.0.float32): QuantizeAndDequantize[oT] =
  return iiquantizeAndDequantize(scope,
                                 input,
                                 signed_input,
                                 num_bits,
                                 range_given,
                                 input_min,
                                 input_max,
                                 oT.oTF)

converter quantizeAndDequantizeToOut*[oT: oall](op: QuantizeAndDequantize[oT]): oT {.inline.} = return op.output


type QuantizeAndDequantizeV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizeAndDequantizeV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizeAndDequantizeV2[oT: oall](scope: Scope,
                              input: oT,
                              input_min: oT,
                              input_max: oT,
                              signed_input: bool,
                              num_bits: int64,
                              range_given: bool,
                              T: DType,
                              round_mode: cstring): QuantizeAndDequantizeV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizeAndDequantizeV2(*#, #, #, #, #, #, #, #, tensorflow::string(#))", constructor.}

proc quantizeAndDequantizeV2*[oT: oall](scope: Scope,
                              input: oT,
                              input_min: oT,
                              input_max: oT,
                              signed_input: bool = true,
                              num_bits: int64 = 8.int,
                              range_given: bool = false,
                              round_mode: cstring = "HALF_TO_EVEN"): QuantizeAndDequantizeV2[oT] =
  return iiquantizeAndDequantizeV2(scope,
                                   input,
                                   input_min,
                                   input_max,
                                   signed_input,
                                   num_bits,
                                   range_given,
                                   oT.oTF,
                                   round_mode)

converter quantizeAndDequantizeV2ToOut*[oT: oall](op: QuantizeAndDequantizeV2[oT]): oT {.inline.} = return op.output


type QuantizeAndDequantizeV3*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizeAndDequantizeV3/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizeAndDequantizeV3[oT: oall](scope: Scope,
                              input: oT,
                              input_min: oT,
                              input_max: oT,
                              num_bits: oint32,
                              signed_input: bool,
                              range_given: bool,
                              T: DType): QuantizeAndDequantizeV3[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizeAndDequantizeV3(*#, #, #, #, #, #, #, #)", constructor.}

proc quantizeAndDequantizeV3*[oT: oall](scope: Scope,
                              input: oT,
                              input_min: oT,
                              input_max: oT,
                              num_bits: oint32,
                              signed_input: bool = true,
                              range_given: bool = true): QuantizeAndDequantizeV3[oT] =
  return iiquantizeAndDequantizeV3(scope,
                                   input,
                                   input_min,
                                   input_max,
                                   num_bits,
                                   signed_input,
                                   range_given,
                                   oT.oTF)

converter quantizeAndDequantizeV3ToOut*[oT: oall](op: QuantizeAndDequantizeV3[oT]): oT {.inline.} = return op.output

type QuantizeDownAndShrinkRangeTinput* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizeDownAndShrinkRange*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizeDownAndShrinkRange/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizeDownAndShrinkRange[oT: oall](scope: Scope,
                                 input: QuantizeDownAndShrinkRangeTinput,
                                 input_min: ofloat,
                                 input_max: ofloat,
                                 out_type: DType,
                                 explicitT: type(oT)): QuantizeDownAndShrinkRange[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizeDownAndShrinkRange(*#, #, #, #, #)", constructor.}

proc quantizeDownAndShrinkRange*(scope: Scope,
                                 input: QuantizeDownAndShrinkRangeTinput,
                                 input_min: ofloat,
                                 input_max: ofloat,
                                 out_type: type = oinvalid): auto =
  return iiquantizeDownAndShrinkRange(scope,
                                      input,
                                      input_min,
                                      input_max,
                                      out_type.oTF,
                                      out_type)

converter quantizeDownAndShrinkRangeToOut*[oT: oall](op: QuantizeDownAndShrinkRange[oT]): oT {.inline.} = return op.output


type QuantizedConcat*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizedConcat/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedConcat[oT: oall](scope: Scope,
                      concat_dim: oint32,
                      values: olist[oT],
                      input_mins: olist[ofloat],
                      input_maxes: olist[ofloat],
                      T: DType): QuantizedConcat[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizedConcat(*#, #, #, #, #, #)", constructor.}

proc quantizedConcat*[oT: oall](scope: Scope,
                      concat_dim: oint32,
                      values: olist[oT],
                      input_mins: olist[ofloat],
                      input_maxes: olist[ofloat]): QuantizedConcat[oT] =
  return iiquantizedConcat(scope,
                           concat_dim,
                           values,
                           input_mins,
                           input_maxes,
                           oT.oTF)

converter quantizedConcatToOut*[oT: oall](op: QuantizedConcat[oT]): oT {.inline.} = return op.output

type QuantizedReshapeTshape* = oint32 | oint64

type QuantizedReshape*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizedReshape/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedReshape[oT: oall](scope: Scope,
                       tensor: oT,
                       shape: QuantizedReshapeTshape,
                       input_min: ofloat,
                       input_max: ofloat,
                       T: DType): QuantizedReshape[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"QuantizedReshape(*#, #, #, #, #, #)", constructor.}

proc quantizedReshape*[oT: oall](scope: Scope,
                       tensor: oT,
                       shape: QuantizedReshapeTshape,
                       input_min: ofloat,
                       input_max: ofloat): QuantizedReshape[oT] =
  return iiquantizedReshape(scope,
                            tensor,
                            shape,
                            input_min,
                            input_max,
                            oT.oTF)

converter quantizedReshapeToOut*[oT: oall](op: QuantizedReshape[oT]): oT {.inline.} = return op.output

type RaggedGatherTvalues* = oall
type RaggedGatherTindices* = oint32 | oint64

type RaggedGather* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"RaggedGather/*'0*/".} = object
  operation*: Operation[oint64]
  output*: olist[oint64]

proc iiraggedGather(scope: Scope,
                   params_nested_splits: olist[oint64],
                   params_dense_values: RaggedGatherTvalues,
                   indices: RaggedGatherTindices,
                   OUTPUT_RAGGED_RANK: int64,
                   PARAMS_RAGGED_RANK: int64): RaggedGather {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"RaggedGather(*#, #, #, #, #, #)", constructor.}

proc raggedGather*(scope: Scope,
                   params_nested_splits: olist[oint64],
                   params_dense_values: RaggedGatherTvalues,
                   indices: RaggedGatherTindices,
                   OUTPUT_RAGGED_RANK: int64 = 0.int,
                   PARAMS_RAGGED_RANK: int64 = 0.int): RaggedGather =
  return iiraggedGather(scope,
                        params_nested_splits,
                        params_dense_values,
                        indices,
                        OUTPUT_RAGGED_RANK,
                        PARAMS_RAGGED_RANK)

converter raggedGatherToOutList*(op: RaggedGather): olist[oint64] {.inline.} = return op.output


type RefMerge*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"RefMerge/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirefMerge[oT: oall](scope: Scope,
               inputs: olist[oT],
               T: DType): RefMerge[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"RefMerge(*#, #, #)", constructor.}

proc refMerge*[oT: oall](scope: Scope,
               inputs: olist[oT]): RefMerge[oT] =
  return iirefMerge(scope,
                    inputs,
                    oT.oTF)

converter refMergeToOut*[oT: oall](op: RefMerge[oT]): oT {.inline.} = return op.output

type ResourceGatherTindices* = oint32 | oint64

type ResourceGather*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceGather/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiresourceGather[oT: oall](scope: Scope,
                     resource: oresource,
                     indices: ResourceGatherTindices,
                     validate_indices: bool,
                     dtype: DType,
                     explicitT: type(oT)): ResourceGather[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceGather(*#, #, #, #, #)", constructor.}

proc resourceGather*(scope: Scope,
                     resource: oresource,
                     indices: ResourceGatherTindices,
                     validate_indices: bool = true,
                     dtype: type = oinvalid): auto =
  return iiresourceGather(scope,
                          resource,
                          indices,
                          validate_indices,
                          dtype.oTF,
                          dtype)

converter resourceGatherToOut*[oT: oall](op: ResourceGather[oT]): oT {.inline.} = return op.output

type ResourceScatterMaxdtype* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceScatterMaxTindices* = oint32 | oint64

type ResourceScatterMax*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceScatterMax/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterMax(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterMaxTindices,
                         updates: ResourceScatterMaxdtype): ResourceScatterMax {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceScatterMax(*#, #, #, #)", constructor.}

proc resourceScatterMax*(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterMaxTindices,
                         updates: ResourceScatterMaxdtype): ResourceScatterMax =
  return iiresourceScatterMax(scope,
                              resource,
                              indices,
                              updates)

type ResourceScatterMindtype* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceScatterMinTindices* = oint32 | oint64

type ResourceScatterMin*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceScatterMin/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterMin(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterMinTindices,
                         updates: ResourceScatterMindtype): ResourceScatterMin {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceScatterMin(*#, #, #, #)", constructor.}

proc resourceScatterMin*(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterMinTindices,
                         updates: ResourceScatterMindtype): ResourceScatterMin =
  return iiresourceScatterMin(scope,
                              resource,
                              indices,
                              updates)

type ResourceScatterNdUpdateT* = oall
type ResourceScatterNdUpdateTindices* = oint32 | oint64

type ResourceScatterNdUpdate*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceScatterNdUpdate/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterNdUpdate(scope: Scope,
                              nref: oresource,
                              indices: ResourceScatterNdUpdateTindices,
                              updates: ResourceScatterNdUpdateT,
                              use_locking: bool): ResourceScatterNdUpdate {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceScatterNdUpdate(*#, #, #, #, #)", constructor.}

proc resourceScatterNdUpdate*(scope: Scope,
                              nref: oresource,
                              indices: ResourceScatterNdUpdateTindices,
                              updates: ResourceScatterNdUpdateT,
                              use_locking: bool = true): ResourceScatterNdUpdate =
  return iiresourceScatterNdUpdate(scope,
                                   nref,
                                   indices,
                                   updates,
                                   use_locking)

type ResourceScatterUpdatedtype* = oall
type ResourceScatterUpdateTindices* = oint32 | oint64

type ResourceScatterUpdate*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceScatterUpdate/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterUpdate(scope: Scope,
                            resource: oresource,
                            indices: ResourceScatterUpdateTindices,
                            updates: ResourceScatterUpdatedtype): ResourceScatterUpdate {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceScatterUpdate(*#, #, #, #)", constructor.}

proc resourceScatterUpdate*(scope: Scope,
                            resource: oresource,
                            indices: ResourceScatterUpdateTindices,
                            updates: ResourceScatterUpdatedtype): ResourceScatterUpdate =
  return iiresourceScatterUpdate(scope,
                                 resource,
                                 indices,
                                 updates)

type ResourceStridedSliceAssignT* = oall
type ResourceStridedSliceAssignIndex* = oint32 | oint64

type ResourceStridedSliceAssign*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceStridedSliceAssign/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceStridedSliceAssign(scope: Scope,
                                 nref: oresource,
                                 begin: ResourceStridedSliceAssignIndex,
                                 nend: ResourceStridedSliceAssignIndex,
                                 strides: ResourceStridedSliceAssignIndex,
                                 value: ResourceStridedSliceAssignT,
                                 new_axis_mask: int64,
                                 shrink_axis_mask: int64,
                                 begin_mask: int64,
                                 end_mask: int64,
                                 ellipsis_mask: int64): ResourceStridedSliceAssign {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ResourceStridedSliceAssign(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc resourceStridedSliceAssign*(scope: Scope,
                                 nref: oresource,
                                 begin: ResourceStridedSliceAssignIndex,
                                 nend: ResourceStridedSliceAssignIndex,
                                 strides: ResourceStridedSliceAssignIndex,
                                 value: ResourceStridedSliceAssignT,
                                 new_axis_mask: int64 = 0.int,
                                 shrink_axis_mask: int64 = 0.int,
                                 begin_mask: int64 = 0.int,
                                 end_mask: int64 = 0.int,
                                 ellipsis_mask: int64 = 0.int): ResourceStridedSliceAssign =
  return iiresourceStridedSliceAssign(scope,
                                      nref,
                                      begin,
                                      nend,
                                      strides,
                                      value,
                                      new_axis_mask,
                                      shrink_axis_mask,
                                      begin_mask,
                                      end_mask,
                                      ellipsis_mask)

type ReverseSequenceTlen* = oint32 | oint64

type ReverseSequence*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ReverseSequence/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireverseSequence[oT: oall](scope: Scope,
                      input: oT,
                      seq_lengths: ReverseSequenceTlen,
                      seq_dim: int64,
                      batch_dim: int64,
                      T: DType): ReverseSequence[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ReverseSequence(*#, #, #, #, #, #)", constructor.}

proc reverseSequence*[oT: oall](scope: Scope,
                      input: oT,
                      seq_lengths: ReverseSequenceTlen,
                      seq_dim: int64 = 0.int,
                      batch_dim: int64 = 0.int): ReverseSequence[oT] =
  return iireverseSequence(scope,
                           input,
                           seq_lengths,
                           seq_dim,
                           batch_dim,
                           oT.oTF)

converter reverseSequenceToOut*[oT: oall](op: ReverseSequence[oT]): oT {.inline.} = return op.output

type ReverseV2Tidx* = oint32 | oint64

type ReverseV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ReverseV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireverseV2[oT: oall](scope: Scope,
                tensor: oT,
                axis: ReverseV2Tidx,
                T: DType): ReverseV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ReverseV2(*#, #, #, #)", constructor.}

proc reverseV2*[oT: oall](scope: Scope,
                tensor: oT,
                axis: ReverseV2Tidx): ReverseV2[oT] =
  return iireverseV2(scope,
                     tensor,
                     axis,
                     oT.oTF)

converter reverseV2ToOut*[oT: oall](op: ReverseV2[oT]): oT {.inline.} = return op.output

type ScatterNdSubTindices* = oint32 | oint64

type ScatterNdSub*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ScatterNdSub/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterNdSub[oT: oall](scope: Scope,
                   nref: oT,
                   indices: ScatterNdSubTindices,
                   updates: oT,
                   T: DType,
                   use_locking: bool): ScatterNdSub[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ScatterNdSub(*#, #, #, #, #, #)", constructor.}

proc scatterNdSub*[oT: oall](scope: Scope,
                   nref: oT,
                   indices: ScatterNdSubTindices,
                   updates: oT,
                   use_locking: bool = false): ScatterNdSub[oT] =
  return iiscatterNdSub(scope,
                        nref,
                        indices,
                        updates,
                        oT.oTF,
                        use_locking)

converter scatterNdSubToOut*[oT: oall](op: ScatterNdSub[oT]): oT {.inline.} = return op.output

type ScatterNdUpdateTindices* = oint32 | oint64

type ScatterNdUpdate*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ScatterNdUpdate/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterNdUpdate[oT: oall](scope: Scope,
                      nref: oT,
                      indices: ScatterNdUpdateTindices,
                      updates: oT,
                      T: DType,
                      use_locking: bool): ScatterNdUpdate[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ScatterNdUpdate(*#, #, #, #, #, #)", constructor.}

proc scatterNdUpdate*[oT: oall](scope: Scope,
                      nref: oT,
                      indices: ScatterNdUpdateTindices,
                      updates: oT,
                      use_locking: bool = true): ScatterNdUpdate[oT] =
  return iiscatterNdUpdate(scope,
                           nref,
                           indices,
                           updates,
                           oT.oTF,
                           use_locking)

converter scatterNdUpdateToOut*[oT: oall](op: ScatterNdUpdate[oT]): oT {.inline.} = return op.output

type ScatterUpdateTindices* = oint32 | oint64

type ScatterUpdate*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ScatterUpdate/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterUpdate[oT: oall](scope: Scope,
                    nref: oT,
                    indices: ScatterUpdateTindices,
                    updates: oT,
                    T: DType,
                    use_locking: bool): ScatterUpdate[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"ScatterUpdate(*#, #, #, #, #, #)", constructor.}

proc scatterUpdate*[oT: oall](scope: Scope,
                    nref: oT,
                    indices: ScatterUpdateTindices,
                    updates: oT,
                    use_locking: bool = true): ScatterUpdate[oT] =
  return iiscatterUpdate(scope,
                         nref,
                         indices,
                         updates,
                         oT.oTF,
                         use_locking)

converter scatterUpdateToOut*[oT: oall](op: ScatterUpdate[oT]): oT {.inline.} = return op.output


type Select*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Select/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiselect[oT: oall](scope: Scope,
             condition: obool,
             t: oT,
             e: oT,
             T: DType): Select[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Select(*#, #, #, #, #)", constructor.}

proc select*[oT: oall](scope: Scope,
             condition: obool,
             t: oT,
             e: oT): Select[oT] =
  return iiselect(scope,
                  condition,
                  t,
                  e,
                  oT.oTF)

converter selectToOut*[oT: oall](op: Select[oT]): oT {.inline.} = return op.output


type SelfAdjointEigV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SelfAdjointEigV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiselfAdjointEigV2[oT: oall](scope: Scope,
                       input: oT,
                       compute_v: bool,
                       T: DType): SelfAdjointEigV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SelfAdjointEigV2(*#, #, #, #)", constructor.}

proc selfAdjointEigV2*[oT: oall](scope: Scope,
                       input: oT,
                       compute_v: bool = true): SelfAdjointEigV2[oT] =
  return iiselfAdjointEigV2(scope,
                            input,
                            compute_v,
                            oT.oTF)

converter selfAdjointEigV2ToOut*[oT: oall](op: SelfAdjointEigV2[oT]): oT {.inline.} = return op.output

type SerializeManySparseT* = oall

type SerializeManySparse*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SerializeManySparse/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiserializeManySparse[oT: oall](scope: Scope,
                          sparse_indices: oint64,
                          sparse_values: SerializeManySparseT,
                          sparse_shape: oint64,
                          out_type: DType,
                          explicitT: type(oT)): SerializeManySparse[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SerializeManySparse(*#, #, #, #, #)", constructor.}

proc serializeManySparse*(scope: Scope,
                          sparse_indices: oint64,
                          sparse_values: SerializeManySparseT,
                          sparse_shape: oint64,
                          out_type: type = ostring): auto =
  return iiserializeManySparse(scope,
                               sparse_indices,
                               sparse_values,
                               sparse_shape,
                               out_type.oTF,
                               out_type)

converter serializeManySparseToOut*[oT: oall](op: SerializeManySparse[oT]): oT {.inline.} = return op.output

type SerializeSparseT* = oall

type SerializeSparse*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SerializeSparse/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiserializeSparse[oT: oall](scope: Scope,
                      sparse_indices: oint64,
                      sparse_values: SerializeSparseT,
                      sparse_shape: oint64,
                      out_type: DType,
                      explicitT: type(oT)): SerializeSparse[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SerializeSparse(*#, #, #, #, #)", constructor.}

proc serializeSparse*(scope: Scope,
                      sparse_indices: oint64,
                      sparse_values: SerializeSparseT,
                      sparse_shape: oint64,
                      out_type: type = ostring): auto =
  return iiserializeSparse(scope,
                           sparse_indices,
                           sparse_values,
                           sparse_shape,
                           out_type.oTF,
                           out_type)

converter serializeSparseToOut*[oT: oall](op: SerializeSparse[oT]): oT {.inline.} = return op.output

type SetSizeT* = oint8 | oint16 | oint32 | oint64 | ouint8 | ouint16 | ostring

type SetSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SetSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iisetSize(scope: Scope,
              set_indices: oint64,
              set_values: SetSizeT,
              set_shape: oint64,
              validate_indices: bool): SetSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SetSize(*#, #, #, #, #)", constructor.}

proc setSize*(scope: Scope,
              set_indices: oint64,
              set_values: SetSizeT,
              set_shape: oint64,
              validate_indices: bool = true): SetSize =
  return iisetSize(scope,
                   set_indices,
                   set_values,
                   set_shape,
                   validate_indices)

converter setSizeToOut*(op: SetSize): oint32 {.inline.} = return op.output


type Skipgram* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Skipgram/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiskipgram(scope: Scope,
               filename: cstring,
               batch_size: int64,
               window_size: int64,
               min_count: int64,
               subsample: float32): Skipgram {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Skipgram(*#, tensorflow::string(#), #, #, #, #)", constructor.}

proc skipgram*(scope: Scope,
               filename: cstring,
               batch_size: int64 = 0.int,
               window_size: int64 = 5.int,
               min_count: int64 = 5.int,
               subsample: float32 = 0.001000000047497451.float32): Skipgram =
  return iiskipgram(scope,
                    filename,
                    batch_size,
                    window_size,
                    min_count,
                    subsample)

converter skipgramToOut*(op: Skipgram): ostring {.inline.} = return op.output


type Snapshot*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Snapshot/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisnapshot[oT: oall](scope: Scope,
               input: oT,
               T: DType): Snapshot[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Snapshot(*#, #, #)", constructor.}

proc snapshot*[oT: oall](scope: Scope,
               input: oT): Snapshot[oT] =
  return iisnapshot(scope,
                    input,
                    oT.oTF)

converter snapshotToOut*[oT: oall](op: Snapshot[oT]): oT {.inline.} = return op.output


type SpaceToDepth*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SpaceToDepth/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iispaceToDepth[oT: oall](scope: Scope,
                   input: oT,
                   T: DType,
                   block_size: int64,
                   data_format: cstring): SpaceToDepth[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SpaceToDepth(*#, #, #, #, tensorflow::string(#))", constructor.}

proc spaceToDepth*[oT: oall](scope: Scope,
                   input: oT,
                   block_size: int64 = 0.int,
                   data_format: cstring = "NHWC"): SpaceToDepth[oT] =
  return iispaceToDepth(scope,
                        input,
                        oT.oTF,
                        block_size,
                        data_format)

converter spaceToDepthToOut*[oT: oall](op: SpaceToDepth[oT]): oT {.inline.} = return op.output


type SparseAddGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseAddGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseAddGrad[oT: oall](scope: Scope,
                    backprop_val_grad: oT,
                    a_indices: oint64,
                    b_indices: oint64,
                    sum_indices: oint64,
                    T: DType): SparseAddGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseAddGrad(*#, #, #, #, #, #)", constructor.}

proc sparseAddGrad*[oT: oall](scope: Scope,
                    backprop_val_grad: oT,
                    a_indices: oint64,
                    b_indices: oint64,
                    sum_indices: oint64): SparseAddGrad[oT] =
  return iisparseAddGrad(scope,
                         backprop_val_grad,
                         a_indices,
                         b_indices,
                         sum_indices,
                         oT.oTF)

converter sparseAddGradToOut*[oT: oall](op: SparseAddGrad[oT]): oT {.inline.} = return op.output

type SparseConcatT* = oall

type SparseConcat* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseConcat/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseConcat(scope: Scope,
                   indices: olist[oint64],
                   values: olist[SparseConcatT],
                   shapes: olist[oint64],
                   concat_dim: int64): SparseConcat {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseConcat(*#, #, #, #, #)", constructor.}

proc sparseConcat*(scope: Scope,
                   indices: olist[oint64],
                   values: olist[SparseConcatT],
                   shapes: olist[oint64],
                   concat_dim: int64 = 0.int): SparseConcat =
  return iisparseConcat(scope,
                        indices,
                        values,
                        shapes,
                        concat_dim)

converter sparseConcatToOut*(op: SparseConcat): oint64 {.inline.} = return op.output


type SparseConditionalAccumulator* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseConditionalAccumulator/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iisparseConditionalAccumulator(scope: Scope,
                                   container: cstring,
                                   shared_name: cstring,
                                   dtype: DType,
                                   shape: TensorShape,
                                   reduction_type: cstring): SparseConditionalAccumulator {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseConditionalAccumulator(*#, tensorflow::string(#), tensorflow::string(#), #, #, tensorflow::string(#))", constructor.}

proc sparseConditionalAccumulator*(scope: Scope,
                                   container: cstring,
                                   shared_name: cstring,
                                   dtype: type(ofloat) | type(odouble) | type(oint32) | type(ouint8) | type(oint16) | type(oint8) | type(ocomplex64) | type(oint64) | type(oqint8) | type(oquint8) | type(oqint32) | type(obfloat16) | type(ouint16) | type(ocomplex128) | type(ohalf) | type(ouint32) | type(ouint64) = oinvalid,
                                   shape: TensorShape = [].shape,
                                   reduction_type: cstring = "MEAN"): SparseConditionalAccumulator =
  return iisparseConditionalAccumulator(scope,
                                        container,
                                        shared_name,
                                        dtype.oTF,
                                        shape,
                                        reduction_type)

converter sparseConditionalAccumulatorToOut*(op: SparseConditionalAccumulator): ostring {.inline.} = return op.output


type SparseCross* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseCross/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseCross(scope: Scope,
                  indices: olist[oint64],
                  values: olist[oall],
                  shapes: olist[oint64],
                  dense_inputs: olist[oall],
                  sparse_types: ArraySlice[DType],
                  dense_types: ArraySlice[DType],
                  hashed_output: bool,
                  num_buckets: int64,
                  hash_key: int64,
                  out_type: DType,
                  internal_type: DType): SparseCross {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseCross(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sparseCross*(scope: Scope,
                  indices: olist[oint64],
                  values: olist[oall],
                  shapes: olist[oint64],
                  dense_inputs: olist[oall],
                  sparse_types: openArray[DType],
                  dense_types: openArray[DType],
                  hashed_output: bool = false,
                  num_buckets: int64 = 0.int,
                  hash_key: int64 = 0.int,
                  out_type: type(oint64) | type(ostring) = oinvalid,
                  internal_type: type(oint64) | type(ostring) = oinvalid): SparseCross =
  return iisparseCross(scope,
                       indices,
                       values,
                       shapes,
                       dense_inputs,
                       newArraySlice(sparse_types),
                       newArraySlice(dense_types),
                       hashed_output,
                       num_buckets,
                       hash_key,
                       out_type.oTF,
                       internal_type.oTF)

converter sparseCrossToOut*(op: SparseCross): oint64 {.inline.} = return op.output


type SparseDenseCwiseAdd*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseDenseCwiseAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseDenseCwiseAdd[oT: oall](scope: Scope,
                          sp_indices: oint64,
                          sp_values: oT,
                          sp_shape: oint64,
                          dense: oT,
                          T: DType): SparseDenseCwiseAdd[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseDenseCwiseAdd(*#, #, #, #, #, #)", constructor.}

proc sparseDenseCwiseAdd*[oT: oall](scope: Scope,
                          sp_indices: oint64,
                          sp_values: oT,
                          sp_shape: oint64,
                          dense: oT): SparseDenseCwiseAdd[oT] =
  return iisparseDenseCwiseAdd(scope,
                               sp_indices,
                               sp_values,
                               sp_shape,
                               dense,
                               oT.oTF)

converter sparseDenseCwiseAddToOut*[oT: oall](op: SparseDenseCwiseAdd[oT]): oT {.inline.} = return op.output


type SparseDenseCwiseDiv*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseDenseCwiseDiv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseDenseCwiseDiv[oT: oall](scope: Scope,
                          sp_indices: oint64,
                          sp_values: oT,
                          sp_shape: oint64,
                          dense: oT,
                          T: DType): SparseDenseCwiseDiv[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseDenseCwiseDiv(*#, #, #, #, #, #)", constructor.}

proc sparseDenseCwiseDiv*[oT: oall](scope: Scope,
                          sp_indices: oint64,
                          sp_values: oT,
                          sp_shape: oint64,
                          dense: oT): SparseDenseCwiseDiv[oT] =
  return iisparseDenseCwiseDiv(scope,
                               sp_indices,
                               sp_values,
                               sp_shape,
                               dense,
                               oT.oTF)

converter sparseDenseCwiseDivToOut*[oT: oall](op: SparseDenseCwiseDiv[oT]): oT {.inline.} = return op.output

type SparseFillEmptyRowsT* = oall

type SparseFillEmptyRows* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseFillEmptyRows/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseFillEmptyRows(scope: Scope,
                          indices: oint64,
                          values: SparseFillEmptyRowsT,
                          dense_shape: oint64,
                          default_value: SparseFillEmptyRowsT): SparseFillEmptyRows {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseFillEmptyRows(*#, #, #, #, #)", constructor.}

proc sparseFillEmptyRows*(scope: Scope,
                          indices: oint64,
                          values: SparseFillEmptyRowsT,
                          dense_shape: oint64,
                          default_value: SparseFillEmptyRowsT): SparseFillEmptyRows =
  return iisparseFillEmptyRows(scope,
                               indices,
                               values,
                               dense_shape,
                               default_value)

converter sparseFillEmptyRowsToOut*(op: SparseFillEmptyRows): oint64 {.inline.} = return op.output


type SparseFillEmptyRowsGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseFillEmptyRowsGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseFillEmptyRowsGrad[oT: oall](scope: Scope,
                              reverse_index_map: oint64,
                              grad_values: oT,
                              T: DType): SparseFillEmptyRowsGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseFillEmptyRowsGrad(*#, #, #, #)", constructor.}

proc sparseFillEmptyRowsGrad*[oT: oall](scope: Scope,
                              reverse_index_map: oint64,
                              grad_values: oT): SparseFillEmptyRowsGrad[oT] =
  return iisparseFillEmptyRowsGrad(scope,
                                   reverse_index_map,
                                   grad_values,
                                   oT.oTF)

converter sparseFillEmptyRowsGradToOut*[oT: oall](op: SparseFillEmptyRowsGrad[oT]): oT {.inline.} = return op.output


type SparseReduceMax*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseReduceMax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseReduceMax[oT: oall](scope: Scope,
                      input_indices: oint64,
                      input_values: oT,
                      input_shape: oint64,
                      reduction_axes: oint32,
                      keep_dims: bool,
                      T: DType): SparseReduceMax[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseReduceMax(*#, #, #, #, #, #, #)", constructor.}

proc sparseReduceMax*[oT: oall](scope: Scope,
                      input_indices: oint64,
                      input_values: oT,
                      input_shape: oint64,
                      reduction_axes: oint32,
                      keep_dims: bool = false): SparseReduceMax[oT] =
  return iisparseReduceMax(scope,
                           input_indices,
                           input_values,
                           input_shape,
                           reduction_axes,
                           keep_dims,
                           oT.oTF)

converter sparseReduceMaxToOut*[oT: oall](op: SparseReduceMax[oT]): oT {.inline.} = return op.output

type SparseReorderT* = oall

type SparseReorder* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseReorder/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseReorder(scope: Scope,
                    input_indices: oint64,
                    input_values: SparseReorderT,
                    input_shape: oint64): SparseReorder {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseReorder(*#, #, #, #)", constructor.}

proc sparseReorder*(scope: Scope,
                    input_indices: oint64,
                    input_values: SparseReorderT,
                    input_shape: oint64): SparseReorder =
  return iisparseReorder(scope,
                         input_indices,
                         input_values,
                         input_shape)

converter sparseReorderToOut*(op: SparseReorder): oint64 {.inline.} = return op.output


type SparseReshape* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseReshape/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseReshape(scope: Scope,
                    input_indices: oint64,
                    input_shape: oint64,
                    new_shape: oint64): SparseReshape {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseReshape(*#, #, #, #)", constructor.}

proc sparseReshape*(scope: Scope,
                    input_indices: oint64,
                    input_shape: oint64,
                    new_shape: oint64): SparseReshape =
  return iisparseReshape(scope,
                         input_indices,
                         input_shape,
                         new_shape)

converter sparseReshapeToOut*(op: SparseReshape): oint64 {.inline.} = return op.output

type SparseSliceT* = oall

type SparseSlice* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSlice/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseSlice(scope: Scope,
                  indices: oint64,
                  values: SparseSliceT,
                  shape: oint64,
                  start: oint64,
                  size: oint64): SparseSlice {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSlice(*#, #, #, #, #, #)", constructor.}

proc sparseSlice*(scope: Scope,
                  indices: oint64,
                  values: SparseSliceT,
                  shape: oint64,
                  start: oint64,
                  size: oint64): SparseSlice =
  return iisparseSlice(scope,
                       indices,
                       values,
                       shape,
                       start,
                       size)

converter sparseSliceToOut*(op: SparseSlice): oint64 {.inline.} = return op.output


type SparseSliceGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSliceGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSliceGrad[oT: oall](scope: Scope,
                      backprop_val_grad: oT,
                      input_indices: oint64,
                      input_start: oint64,
                      output_indices: oint64,
                      T: DType): SparseSliceGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSliceGrad(*#, #, #, #, #, #)", constructor.}

proc sparseSliceGrad*[oT: oall](scope: Scope,
                      backprop_val_grad: oT,
                      input_indices: oint64,
                      input_start: oint64,
                      output_indices: oint64): SparseSliceGrad[oT] =
  return iisparseSliceGrad(scope,
                           backprop_val_grad,
                           input_indices,
                           input_start,
                           output_indices,
                           oT.oTF)

converter sparseSliceGradToOut*[oT: oall](op: SparseSliceGrad[oT]): oT {.inline.} = return op.output

type SparseSparseMaximumT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type SparseSparseMaximum* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSparseMaximum/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseSparseMaximum(scope: Scope,
                          a_indices: oint64,
                          a_values: SparseSparseMaximumT,
                          a_shape: oint64,
                          b_indices: oint64,
                          b_values: SparseSparseMaximumT,
                          b_shape: oint64): SparseSparseMaximum {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSparseMaximum(*#, #, #, #, #, #, #)", constructor.}

proc sparseSparseMaximum*(scope: Scope,
                          a_indices: oint64,
                          a_values: SparseSparseMaximumT,
                          a_shape: oint64,
                          b_indices: oint64,
                          b_values: SparseSparseMaximumT,
                          b_shape: oint64): SparseSparseMaximum =
  return iisparseSparseMaximum(scope,
                               a_indices,
                               a_values,
                               a_shape,
                               b_indices,
                               b_values,
                               b_shape)

converter sparseSparseMaximumToOut*(op: SparseSparseMaximum): oint64 {.inline.} = return op.output

type SparseSparseMinimumT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type SparseSparseMinimum* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSparseMinimum/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseSparseMinimum(scope: Scope,
                          a_indices: oint64,
                          a_values: SparseSparseMinimumT,
                          a_shape: oint64,
                          b_indices: oint64,
                          b_values: SparseSparseMinimumT,
                          b_shape: oint64): SparseSparseMinimum {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSparseMinimum(*#, #, #, #, #, #, #)", constructor.}

proc sparseSparseMinimum*(scope: Scope,
                          a_indices: oint64,
                          a_values: SparseSparseMinimumT,
                          a_shape: oint64,
                          b_indices: oint64,
                          b_values: SparseSparseMinimumT,
                          b_shape: oint64): SparseSparseMinimum =
  return iisparseSparseMinimum(scope,
                               a_indices,
                               a_values,
                               a_shape,
                               b_indices,
                               b_values,
                               b_shape)

converter sparseSparseMinimumToOut*(op: SparseSparseMinimum): oint64 {.inline.} = return op.output

type SparseSplitT* = oall

type SparseSplit* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSplit/*'0*/".} = object
  operation*: Operation[oint64]
  output*: olist[oint64]

proc iisparseSplit(scope: Scope,
                  split_dim: oint64,
                  indices: oint64,
                  values: SparseSplitT,
                  shape: oint64,
                  num_split: int64): SparseSplit {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseSplit(*#, #, #, #, #, #)", constructor.}

proc sparseSplit*(scope: Scope,
                  split_dim: oint64,
                  indices: oint64,
                  values: SparseSplitT,
                  shape: oint64,
                  num_split: int64 = 0.int): SparseSplit =
  return iisparseSplit(scope,
                       split_dim,
                       indices,
                       values,
                       shape,
                       num_split)

converter sparseSplitToOutList*(op: SparseSplit): olist[oint64] {.inline.} = return op.output

type SparseToDenseTindices* = oint32 | oint64

type SparseToDense*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseToDense/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseToDense[oT: oall](scope: Scope,
                    sparse_indices: SparseToDenseTindices,
                    output_shape: SparseToDenseTindices,
                    sparse_values: oT,
                    default_value: oT,
                    validate_indices: bool,
                    T: DType): SparseToDense[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseToDense(*#, #, #, #, #, #, #)", constructor.}

proc sparseToDense*[oT: oall](scope: Scope,
                    sparse_indices: SparseToDenseTindices,
                    output_shape: SparseToDenseTindices,
                    sparse_values: oT,
                    default_value: oT,
                    validate_indices: bool = true): SparseToDense[oT] =
  return iisparseToDense(scope,
                         sparse_indices,
                         output_shape,
                         sparse_values,
                         default_value,
                         validate_indices,
                         oT.oTF)

converter sparseToDenseToOut*[oT: oall](op: SparseToDense[oT]): oT {.inline.} = return op.output

type SparseToSparseSetOperationT* = oint8 | oint16 | oint32 | oint64 | ouint8 | ouint16 | ostring

type SparseToSparseSetOperation* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseToSparseSetOperation/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseToSparseSetOperation(scope: Scope,
                                 set1_indices: oint64,
                                 set1_values: SparseToSparseSetOperationT,
                                 set1_shape: oint64,
                                 set2_indices: oint64,
                                 set2_values: SparseToSparseSetOperationT,
                                 set2_shape: oint64,
                                 set_operation: cstring,
                                 validate_indices: bool): SparseToSparseSetOperation {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SparseToSparseSetOperation(*#, #, #, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc sparseToSparseSetOperation*(scope: Scope,
                                 set1_indices: oint64,
                                 set1_values: SparseToSparseSetOperationT,
                                 set1_shape: oint64,
                                 set2_indices: oint64,
                                 set2_values: SparseToSparseSetOperationT,
                                 set2_shape: oint64,
                                 set_operation: cstring,
                                 validate_indices: bool = true): SparseToSparseSetOperation =
  return iisparseToSparseSetOperation(scope,
                                      set1_indices,
                                      set1_values,
                                      set1_shape,
                                      set2_indices,
                                      set2_values,
                                      set2_shape,
                                      set_operation,
                                      validate_indices)

converter sparseToSparseSetOperationToOut*(op: SparseToSparseSetOperation): oint64 {.inline.} = return op.output

type SplitVTlen* = oint32 | oint64

type SplitV*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SplitV/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iisplitV[oT: oall](scope: Scope,
             value: oT,
             size_splits: SplitVTlen,
             split_dim: oint32,
             num_split: int64,
             T: DType): SplitV[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"SplitV(*#, #, #, #, #, #)", constructor.}

proc splitV*[oT: oall](scope: Scope,
             value: oT,
             size_splits: SplitVTlen,
             split_dim: oint32,
             num_split: int64 = 0.int): SplitV[oT] =
  return iisplitV(scope,
                  value,
                  size_splits,
                  split_dim,
                  num_split,
                  oT.oTF)

converter splitVToOutList*[oT: oall](op: SplitV[oT]): olist[oT] {.inline.} = return op.output


type StackPush*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StackPush/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistackPush[oT: oall](scope: Scope,
                handle: ostring,
                elem: oT,
                T: DType,
                swap_memory: bool): StackPush[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StackPush(*#, #, #, #, #)", constructor.}

proc stackPush*[oT: oall](scope: Scope,
                handle: ostring,
                elem: oT,
                swap_memory: bool = false): StackPush[oT] =
  return iistackPush(scope,
                     handle,
                     elem,
                     oT.oTF,
                     swap_memory)

converter stackPushToOut*[oT: oall](op: StackPush[oT]): oT {.inline.} = return op.output


type StackV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StackV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iistackV2(scope: Scope,
              max_size: oint32,
              stack_name: cstring,
              elem_type: DType): StackV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StackV2(*#, #, tensorflow::string(#), #)", constructor.}

proc stackV2*(scope: Scope,
              max_size: oint32,
              stack_name: cstring,
              elem_type: type oall = oinvalid): StackV2 =
  return iistackV2(scope,
                   max_size,
                   stack_name,
                   elem_type.oTF)

converter stackV2ToOut*(op: StackV2): oresource {.inline.} = return op.output


type Stage*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Stage/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iistage(scope: Scope,
            values: olist[oall],
            dtypes: ArraySlice[DType],
            container: cstring,
            shared_name: cstring,
            capacity: int64,
            memory_limit: int64): Stage {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Stage(*#, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc stage*(scope: Scope,
            values: olist[oall],
            dtypes: openArray[DType],
            container: cstring,
            shared_name: cstring,
            capacity: int64 = 0.int,
            memory_limit: int64 = 0.int): Stage =
  return iistage(scope,
                 values,
                 newArraySlice(dtypes),
                 container,
                 shared_name,
                 capacity,
                 memory_limit)


type StagePeek*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StagePeek/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iistagePeek[oT: oall](scope: Scope,
                index: oint32,
                dtypes: ArraySlice[DType],
                container: cstring,
                shared_name: cstring,
                capacity: int64,
                memory_limit: int64,
                explicitT: type(oT)): StagePeek[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StagePeek(*#, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc stagePeek*(scope: Scope,
                index: oint32,
                dtypes: openArray[DType],
                container: cstring,
                shared_name: cstring,
                capacity: int64 = 0.int,
                memory_limit: int64 = 0.int,
                explicitT: type): auto =
  return iistagePeek(scope,
                     index,
                     newArraySlice(dtypes),
                     container,
                     shared_name,
                     capacity,
                     memory_limit,
                     explicitT)

converter stagePeekToOutList*[oT: oall](op: StagePeek[oT]): olist[oT] {.inline.} = return op.output


type StageSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StageSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iistageSize(scope: Scope,
                dtypes: ArraySlice[DType],
                container: cstring,
                shared_name: cstring,
                capacity: int64,
                memory_limit: int64): StageSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StageSize(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc stageSize*(scope: Scope,
                dtypes: openArray[DType],
                container: cstring,
                shared_name: cstring,
                capacity: int64 = 0.int,
                memory_limit: int64 = 0.int): StageSize =
  return iistageSize(scope,
                     newArraySlice(dtypes),
                     container,
                     shared_name,
                     capacity,
                     memory_limit)

converter stageSizeToOut*(op: StageSize): oint32 {.inline.} = return op.output

type StridedSliceAssignIndex* = oint32 | oint64

type StridedSliceAssign*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StridedSliceAssign/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistridedSliceAssign[oT: oall](scope: Scope,
                         nref: oT,
                         begin: StridedSliceAssignIndex,
                         nend: StridedSliceAssignIndex,
                         strides: StridedSliceAssignIndex,
                         value: oT,
                         T: DType,
                         shrink_axis_mask: int64,
                         begin_mask: int64,
                         end_mask: int64,
                         ellipsis_mask: int64,
                         new_axis_mask: int64): StridedSliceAssign[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StridedSliceAssign(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc stridedSliceAssign*[oT: oall](scope: Scope,
                         nref: oT,
                         begin: StridedSliceAssignIndex,
                         nend: StridedSliceAssignIndex,
                         strides: StridedSliceAssignIndex,
                         value: oT,
                         shrink_axis_mask: int64 = 0.int,
                         begin_mask: int64 = 0.int,
                         end_mask: int64 = 0.int,
                         ellipsis_mask: int64 = 0.int,
                         new_axis_mask: int64 = 0.int): StridedSliceAssign[oT] =
  return iistridedSliceAssign(scope,
                              nref,
                              begin,
                              nend,
                              strides,
                              value,
                              oT.oTF,
                              shrink_axis_mask,
                              begin_mask,
                              end_mask,
                              ellipsis_mask,
                              new_axis_mask)

converter stridedSliceAssignToOut*[oT: oall](op: StridedSliceAssign[oT]): oT {.inline.} = return op.output

type StridedSliceGradIndex* = oint32 | oint64

type StridedSliceGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StridedSliceGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistridedSliceGrad[oT: oall](scope: Scope,
                       shape: StridedSliceGradIndex,
                       begin: StridedSliceGradIndex,
                       nend: StridedSliceGradIndex,
                       strides: StridedSliceGradIndex,
                       dy: oT,
                       T: DType,
                       shrink_axis_mask: int64,
                       begin_mask: int64,
                       end_mask: int64,
                       ellipsis_mask: int64,
                       new_axis_mask: int64): StridedSliceGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"StridedSliceGrad(*#, #, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc stridedSliceGrad*[oT: oall](scope: Scope,
                       shape: StridedSliceGradIndex,
                       begin: StridedSliceGradIndex,
                       nend: StridedSliceGradIndex,
                       strides: StridedSliceGradIndex,
                       dy: oT,
                       shrink_axis_mask: int64 = 0.int,
                       begin_mask: int64 = 0.int,
                       end_mask: int64 = 0.int,
                       ellipsis_mask: int64 = 0.int,
                       new_axis_mask: int64 = 0.int): StridedSliceGrad[oT] =
  return iistridedSliceGrad(scope,
                            shape,
                            begin,
                            nend,
                            strides,
                            dy,
                            oT.oTF,
                            shrink_axis_mask,
                            begin_mask,
                            end_mask,
                            ellipsis_mask,
                            new_axis_mask)

converter stridedSliceGradToOut*[oT: oall](op: StridedSliceGrad[oT]): oT {.inline.} = return op.output


type TemporaryVariable*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TemporaryVariable/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitemporaryVariable[oT: oall](scope: Scope,
                        var_name: cstring,
                        shape: TensorShape,
                        dtype: DType,
                        explicitT: type(oT)): TemporaryVariable[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TemporaryVariable(*#, tensorflow::string(#), #, #)", constructor.}

proc temporaryVariable*(scope: Scope,
                        var_name: cstring,
                        shape: TensorShape = [].shape,
                        dtype: type = oinvalid): auto =
  return iitemporaryVariable(scope,
                             var_name,
                             shape,
                             dtype.oTF,
                             dtype)

converter temporaryVariableToOut*[oT: oall](op: TemporaryVariable[oT]): oT {.inline.} = return op.output


type TensorListConcat*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListConcat/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorListConcat[oT: oall](scope: Scope,
                       input_handle: ovariant,
                       element_dtype: DType,
                       explicitT: type(oT)): TensorListConcat[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListConcat(*#, #, #)", constructor.}

proc tensorListConcat*(scope: Scope,
                       input_handle: ovariant,
                       element_dtype: type = oinvalid): auto =
  return iitensorListConcat(scope,
                            input_handle,
                            element_dtype.oTF,
                            element_dtype)

converter tensorListConcatToOut*[oT: oall](op: TensorListConcat[oT]): oT {.inline.} = return op.output


type TensorListConcatLists* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListConcatLists/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListConcatLists(scope: Scope,
                            input_a: ovariant,
                            input_b: ovariant,
                            element_dtype: DType): TensorListConcatLists {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListConcatLists(*#, #, #, #)", constructor.}

proc tensorListConcatLists*(scope: Scope,
                            input_a: ovariant,
                            input_b: ovariant,
                            element_dtype: type oall = oinvalid): TensorListConcatLists =
  return iitensorListConcatLists(scope,
                                 input_a,
                                 input_b,
                                 element_dtype.oTF)

converter tensorListConcatListsToOut*(op: TensorListConcatLists): ovariant {.inline.} = return op.output


type TensorListElementShape*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListElementShape/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorListElementShape[oT: oall](scope: Scope,
                             input_handle: ovariant,
                             shape_type: DType,
                             explicitT: type(oT)): TensorListElementShape[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListElementShape(*#, #, #)", constructor.}

proc tensorListElementShape*(scope: Scope,
                             input_handle: ovariant,
                             shape_type: type = oinvalid): auto =
  return iitensorListElementShape(scope,
                                  input_handle,
                                  shape_type.oTF,
                                  shape_type)

converter tensorListElementShapeToOut*[oT: oall](op: TensorListElementShape[oT]): oT {.inline.} = return op.output

type TensorListFromTensorelement_dtype* = oall
type TensorListFromTensorshape_type* = oint32 | oint64

type TensorListFromTensor* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListFromTensor/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListFromTensor(scope: Scope,
                           tensor: TensorListFromTensorelement_dtype,
                           element_shape: TensorListFromTensorshape_type): TensorListFromTensor {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListFromTensor(*#, #, #)", constructor.}

proc tensorListFromTensor*(scope: Scope,
                           tensor: TensorListFromTensorelement_dtype,
                           element_shape: TensorListFromTensorshape_type): TensorListFromTensor =
  return iitensorListFromTensor(scope,
                                tensor,
                                element_shape)

converter tensorListFromTensorToOut*(op: TensorListFromTensor): ovariant {.inline.} = return op.output


type TensorListGather*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListGather/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorListGather[oT: oall](scope: Scope,
                       input_handle: ovariant,
                       indices: oint32,
                       element_dtype: DType,
                       explicitT: type(oT)): TensorListGather[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListGather(*#, #, #, #)", constructor.}

proc tensorListGather*(scope: Scope,
                       input_handle: ovariant,
                       indices: oint32,
                       element_dtype: type = oinvalid): auto =
  return iitensorListGather(scope,
                            input_handle,
                            indices,
                            element_dtype.oTF,
                            element_dtype)

converter tensorListGatherToOut*[oT: oall](op: TensorListGather[oT]): oT {.inline.} = return op.output


type TensorListGetItem*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListGetItem/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorListGetItem[oT: oall](scope: Scope,
                        input_handle: ovariant,
                        index: oint32,
                        element_dtype: DType,
                        explicitT: type(oT)): TensorListGetItem[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListGetItem(*#, #, #, #)", constructor.}

proc tensorListGetItem*(scope: Scope,
                        input_handle: ovariant,
                        index: oint32,
                        element_dtype: type = oinvalid): auto =
  return iitensorListGetItem(scope,
                             input_handle,
                             index,
                             element_dtype.oTF,
                             element_dtype)

converter tensorListGetItemToOut*[oT: oall](op: TensorListGetItem[oT]): oT {.inline.} = return op.output


type TensorListLength* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListLength/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iitensorListLength(scope: Scope,
                       input_handle: ovariant): TensorListLength {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListLength(*#, #)", constructor.}

proc tensorListLength*(scope: Scope,
                       input_handle: ovariant): TensorListLength =
  return iitensorListLength(scope,
                            input_handle)

converter tensorListLengthToOut*(op: TensorListLength): oint32 {.inline.} = return op.output


type TensorListPopBack* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListPopBack/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListPopBack(scope: Scope,
                        input_handle: ovariant,
                        element_dtype: DType): TensorListPopBack {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListPopBack(*#, #, #)", constructor.}

proc tensorListPopBack*(scope: Scope,
                        input_handle: ovariant,
                        element_dtype: type oall = oinvalid): TensorListPopBack =
  return iitensorListPopBack(scope,
                             input_handle,
                             element_dtype.oTF)

converter tensorListPopBackToOut*(op: TensorListPopBack): ovariant {.inline.} = return op.output

type TensorListPushBackelement_dtype* = oall

type TensorListPushBack* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListPushBack/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListPushBack(scope: Scope,
                         input_handle: ovariant,
                         tensor: TensorListPushBackelement_dtype): TensorListPushBack {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListPushBack(*#, #, #)", constructor.}

proc tensorListPushBack*(scope: Scope,
                         input_handle: ovariant,
                         tensor: TensorListPushBackelement_dtype): TensorListPushBack =
  return iitensorListPushBack(scope,
                              input_handle,
                              tensor)

converter tensorListPushBackToOut*(op: TensorListPushBack): ovariant {.inline.} = return op.output

type TensorListPushBackBatchelement_dtype* = oall

type TensorListPushBackBatch* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListPushBackBatch/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListPushBackBatch(scope: Scope,
                              input_handles: ovariant,
                              tensor: TensorListPushBackBatchelement_dtype): TensorListPushBackBatch {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListPushBackBatch(*#, #, #)", constructor.}

proc tensorListPushBackBatch*(scope: Scope,
                              input_handles: ovariant,
                              tensor: TensorListPushBackBatchelement_dtype): TensorListPushBackBatch =
  return iitensorListPushBackBatch(scope,
                                   input_handles,
                                   tensor)

converter tensorListPushBackBatchToOut*(op: TensorListPushBackBatch): ovariant {.inline.} = return op.output

type TensorListReserveshape_type* = oint32 | oint64

type TensorListReserve* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListReserve/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListReserve(scope: Scope,
                        element_shape: TensorListReserveshape_type,
                        num_elements: oint32,
                        element_dtype: DType): TensorListReserve {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListReserve(*#, #, #, #)", constructor.}

proc tensorListReserve*(scope: Scope,
                        element_shape: TensorListReserveshape_type,
                        num_elements: oint32,
                        element_dtype: type oall = oinvalid): TensorListReserve =
  return iitensorListReserve(scope,
                             element_shape,
                             num_elements,
                             element_dtype.oTF)

converter tensorListReserveToOut*(op: TensorListReserve): ovariant {.inline.} = return op.output

type TensorListScatterelement_dtype* = oall
type TensorListScattershape_type* = oint32 | oint64

type TensorListScatter* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListScatter/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListScatter(scope: Scope,
                        tensor: TensorListScatterelement_dtype,
                        indices: oint32,
                        element_shape: TensorListScattershape_type): TensorListScatter {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListScatter(*#, #, #, #)", constructor.}

proc tensorListScatter*(scope: Scope,
                        tensor: TensorListScatterelement_dtype,
                        indices: oint32,
                        element_shape: TensorListScattershape_type): TensorListScatter =
  return iitensorListScatter(scope,
                             tensor,
                             indices,
                             element_shape)

converter tensorListScatterToOut*(op: TensorListScatter): ovariant {.inline.} = return op.output

type TensorListSetItemelement_dtype* = oall

type TensorListSetItem* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListSetItem/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListSetItem(scope: Scope,
                        input_handle: ovariant,
                        index: oint32,
                        item: TensorListSetItemelement_dtype): TensorListSetItem {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListSetItem(*#, #, #, #)", constructor.}

proc tensorListSetItem*(scope: Scope,
                        input_handle: ovariant,
                        index: oint32,
                        item: TensorListSetItemelement_dtype): TensorListSetItem =
  return iitensorListSetItem(scope,
                             input_handle,
                             index,
                             item)

converter tensorListSetItemToOut*(op: TensorListSetItem): ovariant {.inline.} = return op.output

type TensorListSplitelement_dtype* = oall
type TensorListSplitshape_type* = oint32 | oint64

type TensorListSplit* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListSplit/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iitensorListSplit(scope: Scope,
                      tensor: TensorListSplitelement_dtype,
                      element_shape: TensorListSplitshape_type,
                      lengths: oint64): TensorListSplit {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListSplit(*#, #, #, #)", constructor.}

proc tensorListSplit*(scope: Scope,
                      tensor: TensorListSplitelement_dtype,
                      element_shape: TensorListSplitshape_type,
                      lengths: oint64): TensorListSplit =
  return iitensorListSplit(scope,
                           tensor,
                           element_shape,
                           lengths)

converter tensorListSplitToOut*(op: TensorListSplit): ovariant {.inline.} = return op.output


type TensorListStack*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListStack/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorListStack[oT: oall](scope: Scope,
                      input_handle: ovariant,
                      element_dtype: DType,
                      num_elements: int64,
                      explicitT: type(oT)): TensorListStack[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorListStack(*#, #, #, #)", constructor.}

proc tensorListStack*(scope: Scope,
                      input_handle: ovariant,
                      element_dtype: type = oinvalid,
                      num_elements: int64 = -1.int): auto =
  return iitensorListStack(scope,
                           input_handle,
                           element_dtype.oTF,
                           num_elements,
                           element_dtype)

converter tensorListStackToOut*[oT: oall](op: TensorListStack[oT]): oT {.inline.} = return op.output

type TensorScatterAddTindices* = oint32 | oint64

type TensorScatterAdd*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorScatterAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorScatterAdd[oT: oall](scope: Scope,
                       tensor: oT,
                       indices: TensorScatterAddTindices,
                       updates: oT,
                       T: DType): TensorScatterAdd[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorScatterAdd(*#, #, #, #, #)", constructor.}

proc tensorScatterAdd*[oT: oall](scope: Scope,
                       tensor: oT,
                       indices: TensorScatterAddTindices,
                       updates: oT): TensorScatterAdd[oT] =
  return iitensorScatterAdd(scope,
                            tensor,
                            indices,
                            updates,
                            oT.oTF)

converter tensorScatterAddToOut*[oT: oall](op: TensorScatterAdd[oT]): oT {.inline.} = return op.output

type TensorScatterUpdateTindices* = oint32 | oint64

type TensorScatterUpdate*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorScatterUpdate/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorScatterUpdate[oT: oall](scope: Scope,
                          tensor: oT,
                          indices: TensorScatterUpdateTindices,
                          updates: oT,
                          T: DType): TensorScatterUpdate[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TensorScatterUpdate(*#, #, #, #, #)", constructor.}

proc tensorScatterUpdate*[oT: oall](scope: Scope,
                          tensor: oT,
                          indices: TensorScatterUpdateTindices,
                          updates: oT): TensorScatterUpdate[oT] =
  return iitensorScatterUpdate(scope,
                               tensor,
                               indices,
                               updates,
                               oT.oTF)

converter tensorScatterUpdateToOut*[oT: oall](op: TensorScatterUpdate[oT]): oT {.inline.} = return op.output


type TileGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TileGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitileGrad[oT: oall](scope: Scope,
               input: oT,
               multiples: oint32,
               T: DType): TileGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"TileGrad(*#, #, #, #)", constructor.}

proc tileGrad*[oT: oall](scope: Scope,
               input: oT,
               multiples: oint32): TileGrad[oT] =
  return iitileGrad(scope,
                    input,
                    multiples,
                    oT.oTF)

converter tileGradToOut*[oT: oall](op: TileGrad[oT]): oT {.inline.} = return op.output


type Unbatch*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Unbatch/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiunbatch[oT: oall](scope: Scope,
              batched_tensor: oT,
              batch_index: oint64,
              id: oint64,
              container: cstring,
              shared_name: cstring,
              timeout_micros: int64,
              T: DType): Unbatch[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Unbatch(*#, #, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc unbatch*[oT: oall](scope: Scope,
              batched_tensor: oT,
              batch_index: oint64,
              id: oint64,
              container: cstring,
              shared_name: cstring,
              timeout_micros: int64 = 0.int): Unbatch[oT] =
  return iiunbatch(scope,
                   batched_tensor,
                   batch_index,
                   id,
                   container,
                   shared_name,
                   timeout_micros,
                   oT.oTF)

converter unbatchToOut*[oT: oall](op: Unbatch[oT]): oT {.inline.} = return op.output


type UnbatchGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"UnbatchGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiunbatchGrad[oT: oall](scope: Scope,
                  original_input: oT,
                  batch_index: oint64,
                  grad: oT,
                  id: oint64,
                  container: cstring,
                  shared_name: cstring,
                  T: DType): UnbatchGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"UnbatchGrad(*#, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc unbatchGrad*[oT: oall](scope: Scope,
                  original_input: oT,
                  batch_index: oint64,
                  grad: oT,
                  id: oint64,
                  container: cstring,
                  shared_name: cstring): UnbatchGrad[oT] =
  return iiunbatchGrad(scope,
                       original_input,
                       batch_index,
                       grad,
                       id,
                       container,
                       shared_name,
                       oT.oTF)

converter unbatchGradToOut*[oT: oall](op: UnbatchGrad[oT]): oT {.inline.} = return op.output

type UniqueV2Taxis* = oint32 | oint64

type UniqueV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"UniqueV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiuniqueV2[oT: oall](scope: Scope,
               x: oT,
               axis: UniqueV2Taxis,
               T: DType,
               out_idx: DType): UniqueV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"UniqueV2(*#, #, #, #, #)", constructor.}

proc uniqueV2*[oT: oall](scope: Scope,
               x: oT,
               axis: UniqueV2Taxis,
               out_idx: type(oint32) | type(oint64) = oint32): UniqueV2[oT] =
  return iiuniqueV2(scope,
                    x,
                    axis,
                    oT.oTF,
                    oT.oTF)

converter uniqueV2ToOut*[oT: oall](op: UniqueV2[oT]): oT {.inline.} = return op.output

type UniqueWithCountsV2Taxis* = oint32 | oint64

type UniqueWithCountsV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"UniqueWithCountsV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiuniqueWithCountsV2[oT: oall](scope: Scope,
                         x: oT,
                         axis: UniqueWithCountsV2Taxis,
                         T: DType,
                         out_idx: DType): UniqueWithCountsV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"UniqueWithCountsV2(*#, #, #, #, #)", constructor.}

proc uniqueWithCountsV2*[oT: oall](scope: Scope,
                         x: oT,
                         axis: UniqueWithCountsV2Taxis,
                         out_idx: type(oint32) | type(oint64) = oint32): UniqueWithCountsV2[oT] =
  return iiuniqueWithCountsV2(scope,
                              x,
                              axis,
                              oT.oTF,
                              oT.oTF)

converter uniqueWithCountsV2ToOut*[oT: oall](op: UniqueWithCountsV2[oT]): oT {.inline.} = return op.output


type Unpack*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Unpack/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiunpack[oT: oall](scope: Scope,
             value: oT,
             num: int64,
             T: DType,
             axis: int64): Unpack[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Unpack(*#, #, #, #, #)", constructor.}

proc unpack*[oT: oall](scope: Scope,
             value: oT,
             num: int64 = 0.int,
             axis: int64 = 0.int): Unpack[oT] =
  return iiunpack(scope,
                  value,
                  num,
                  oT.oTF,
                  axis)

converter unpackToOutList*[oT: oall](op: Unpack[oT]): olist[oT] {.inline.} = return op.output


type Unstage*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Unstage/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiunstage[oT: oall](scope: Scope,
              dtypes: ArraySlice[DType],
              container: cstring,
              shared_name: cstring,
              capacity: int64,
              memory_limit: int64,
              explicitT: type(oT)): Unstage[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"Unstage(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc unstage*(scope: Scope,
              dtypes: openArray[DType],
              container: cstring,
              shared_name: cstring,
              capacity: int64 = 0.int,
              memory_limit: int64 = 0.int,
              explicitT: type): auto =
  return iiunstage(scope,
                   newArraySlice(dtypes),
                   container,
                   shared_name,
                   capacity,
                   memory_limit,
                   explicitT)

converter unstageToOutList*[oT: oall](op: Unstage[oT]): olist[oT] {.inline.} = return op.output


type VarHandleOp* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"VarHandleOp/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iivarHandleOp(scope: Scope,
                  container: cstring,
                  shared_name: cstring,
                  dtype: DType,
                  shape: TensorShape): VarHandleOp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"VarHandleOp(*#, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc varHandleOp*(scope: Scope,
                  container: cstring,
                  shared_name: cstring,
                  dtype: type oall = oinvalid,
                  shape: TensorShape = [].shape): VarHandleOp =
  return iivarHandleOp(scope,
                       container,
                       shared_name,
                       dtype.oTF,
                       shape)

converter varHandleOpToOut*(op: VarHandleOp): oresource {.inline.} = return op.output


type VarIsInitializedOp* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"VarIsInitializedOp/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iivarIsInitializedOp(scope: Scope,
                         resource: oresource): VarIsInitializedOp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"VarIsInitializedOp(*#, #)", constructor.}

proc varIsInitializedOp*(scope: Scope,
                         resource: oresource): VarIsInitializedOp =
  return iivarIsInitializedOp(scope,
                              resource)

converter varIsInitializedOpToOut*(op: VarIsInitializedOp): obool {.inline.} = return op.output


type VariableShape*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"VariableShape/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iivariableShape[oT: oall](scope: Scope,
                    input: oresource,
                    out_type: DType,
                    explicitT: type(oT)): VariableShape[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/array/array.h", importcpp:"VariableShape(*#, #, #)", constructor.}

proc variableShape*(scope: Scope,
                    input: oresource,
                    out_type: type = oint32): auto =
  return iivariableShape(scope,
                         input,
                         out_type.oTF,
                         out_type)

converter variableShapeToOut*[oT: oall](op: VariableShape[oT]): oT {.inline.} = return op.output

