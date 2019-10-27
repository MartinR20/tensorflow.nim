import ../core

{.compile:"queue/queue.cc".}


type FIFOQueue* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"FIFOQueue/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iifIFOQueue(scope: Scope,
                component_types: ArraySlice[DType],
                shapes: ArraySlice[TensorShape],
                container: cstring,
                shared_name: cstring,
                capacity: int64): FIFOQueue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"FIFOQueue(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc fIFOQueue*(scope: Scope,
                component_types: openArray[DType],
                shapes: openArray[TensorShape],
                container: cstring,
                shared_name: cstring,
                capacity: int64 = -1.int): FIFOQueue =
  return iifIFOQueue(scope,
                     newArraySlice(component_types),
                     newArraySlice(shapes),
                     container,
                     shared_name,
                     capacity)

converter fIFOQueueToOut*(op: FIFOQueue): ostring {.inline.} = return op.output


type FIFOQueueV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"FIFOQueueV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iifIFOQueueV2(scope: Scope,
                  component_types: ArraySlice[DType],
                  shapes: ArraySlice[TensorShape],
                  container: cstring,
                  shared_name: cstring,
                  capacity: int64): FIFOQueueV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"FIFOQueueV2(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc fIFOQueueV2*(scope: Scope,
                  component_types: openArray[DType],
                  shapes: openArray[TensorShape],
                  container: cstring,
                  shared_name: cstring,
                  capacity: int64 = -1.int): FIFOQueueV2 =
  return iifIFOQueueV2(scope,
                       newArraySlice(component_types),
                       newArraySlice(shapes),
                       container,
                       shared_name,
                       capacity)

converter fIFOQueueV2ToOut*(op: FIFOQueueV2): oresource {.inline.} = return op.output


type FakeQueue* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"FakeQueue/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iifakeQueue(scope: Scope,
                resource: oresource): FakeQueue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"FakeQueue(*#, #)", constructor.}

proc fakeQueue*(scope: Scope,
                resource: oresource): FakeQueue =
  return iifakeQueue(scope,
                     resource)

converter fakeQueueToOut*(op: FakeQueue): ostring {.inline.} = return op.output


type PaddingFIFOQueue* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"PaddingFIFOQueue/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iipaddingFIFOQueue(scope: Scope,
                       component_types: ArraySlice[DType],
                       shapes: ArraySlice[TensorShape],
                       container: cstring,
                       shared_name: cstring,
                       capacity: int64): PaddingFIFOQueue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"PaddingFIFOQueue(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc paddingFIFOQueue*(scope: Scope,
                       component_types: openArray[DType],
                       shapes: openArray[TensorShape],
                       container: cstring,
                       shared_name: cstring,
                       capacity: int64 = -1.int): PaddingFIFOQueue =
  return iipaddingFIFOQueue(scope,
                            newArraySlice(component_types),
                            newArraySlice(shapes),
                            container,
                            shared_name,
                            capacity)

converter paddingFIFOQueueToOut*(op: PaddingFIFOQueue): ostring {.inline.} = return op.output


type PaddingFIFOQueueV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"PaddingFIFOQueueV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iipaddingFIFOQueueV2(scope: Scope,
                         component_types: ArraySlice[DType],
                         shapes: ArraySlice[TensorShape],
                         container: cstring,
                         shared_name: cstring,
                         capacity: int64): PaddingFIFOQueueV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"PaddingFIFOQueueV2(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc paddingFIFOQueueV2*(scope: Scope,
                         component_types: openArray[DType],
                         shapes: openArray[TensorShape],
                         container: cstring,
                         shared_name: cstring,
                         capacity: int64 = -1.int): PaddingFIFOQueueV2 =
  return iipaddingFIFOQueueV2(scope,
                              newArraySlice(component_types),
                              newArraySlice(shapes),
                              container,
                              shared_name,
                              capacity)

converter paddingFIFOQueueV2ToOut*(op: PaddingFIFOQueueV2): oresource {.inline.} = return op.output


type PriorityQueue* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"PriorityQueue/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iipriorityQueue(scope: Scope,
                    component_types: ArraySlice[DType],
                    shapes: ArraySlice[TensorShape],
                    container: cstring,
                    shared_name: cstring,
                    capacity: int64): PriorityQueue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"PriorityQueue(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc priorityQueue*(scope: Scope,
                    component_types: openArray[DType],
                    shapes: openArray[TensorShape],
                    container: cstring,
                    shared_name: cstring,
                    capacity: int64 = -1.int): PriorityQueue =
  return iipriorityQueue(scope,
                         newArraySlice(component_types),
                         newArraySlice(shapes),
                         container,
                         shared_name,
                         capacity)

converter priorityQueueToOut*(op: PriorityQueue): ostring {.inline.} = return op.output


type PriorityQueueV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"PriorityQueueV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iipriorityQueueV2(scope: Scope,
                      component_types: ArraySlice[DType],
                      shapes: ArraySlice[TensorShape],
                      container: cstring,
                      shared_name: cstring,
                      capacity: int64): PriorityQueueV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"PriorityQueueV2(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc priorityQueueV2*(scope: Scope,
                      component_types: openArray[DType],
                      shapes: openArray[TensorShape],
                      container: cstring,
                      shared_name: cstring,
                      capacity: int64 = -1.int): PriorityQueueV2 =
  return iipriorityQueueV2(scope,
                           newArraySlice(component_types),
                           newArraySlice(shapes),
                           container,
                           shared_name,
                           capacity)

converter priorityQueueV2ToOut*(op: PriorityQueueV2): oresource {.inline.} = return op.output


type QueueClose*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueClose/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiqueueClose(scope: Scope,
                 handle: ostring,
                 cancel_pending_enqueues: bool): QueueClose {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueClose(*#, #, #)", constructor.}

proc queueClose*(scope: Scope,
                 handle: ostring,
                 cancel_pending_enqueues: bool = false): QueueClose =
  return iiqueueClose(scope,
                      handle,
                      cancel_pending_enqueues)


type QueueCloseV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueCloseV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiqueueCloseV2(scope: Scope,
                   handle: oresource,
                   cancel_pending_enqueues: bool): QueueCloseV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueCloseV2(*#, #, #)", constructor.}

proc queueCloseV2*(scope: Scope,
                   handle: oresource,
                   cancel_pending_enqueues: bool = false): QueueCloseV2 =
  return iiqueueCloseV2(scope,
                        handle,
                        cancel_pending_enqueues)


type QueueDequeue*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeue/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiqueueDequeue[oT: oall](scope: Scope,
                   handle: ostring,
                   component_types: ArraySlice[DType],
                   timeout_ms: int64,
                   explicitT: type(oT)): QueueDequeue[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeue(*#, #, #, #)", constructor.}

proc queueDequeue*(scope: Scope,
                   handle: ostring,
                   component_types: openArray[DType],
                   timeout_ms: int64 = -1.int,
                   explicitT: type): auto =
  return iiqueueDequeue(scope,
                        handle,
                        newArraySlice(component_types),
                        timeout_ms,
                        explicitT)

converter queueDequeueToOutList*[oT: oall](op: QueueDequeue[oT]): olist[oT] {.inline.} = return op.output


type QueueDequeueMany*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueMany/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiqueueDequeueMany[oT: oall](scope: Scope,
                       handle: ostring,
                       n: oint32,
                       component_types: ArraySlice[DType],
                       timeout_ms: int64,
                       explicitT: type(oT)): QueueDequeueMany[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueMany(*#, #, #, #, #)", constructor.}

proc queueDequeueMany*(scope: Scope,
                       handle: ostring,
                       n: oint32,
                       component_types: openArray[DType],
                       timeout_ms: int64 = -1.int,
                       explicitT: type): auto =
  return iiqueueDequeueMany(scope,
                            handle,
                            n,
                            newArraySlice(component_types),
                            timeout_ms,
                            explicitT)

converter queueDequeueManyToOutList*[oT: oall](op: QueueDequeueMany[oT]): olist[oT] {.inline.} = return op.output


type QueueDequeueManyV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueManyV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiqueueDequeueManyV2[oT: oall](scope: Scope,
                         handle: oresource,
                         n: oint32,
                         component_types: ArraySlice[DType],
                         timeout_ms: int64,
                         explicitT: type(oT)): QueueDequeueManyV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueManyV2(*#, #, #, #, #)", constructor.}

proc queueDequeueManyV2*(scope: Scope,
                         handle: oresource,
                         n: oint32,
                         component_types: openArray[DType],
                         timeout_ms: int64 = -1.int,
                         explicitT: type): auto =
  return iiqueueDequeueManyV2(scope,
                              handle,
                              n,
                              newArraySlice(component_types),
                              timeout_ms,
                              explicitT)

converter queueDequeueManyV2ToOutList*[oT: oall](op: QueueDequeueManyV2[oT]): olist[oT] {.inline.} = return op.output


type QueueDequeueUpTo*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueUpTo/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiqueueDequeueUpTo[oT: oall](scope: Scope,
                       handle: ostring,
                       n: oint32,
                       component_types: ArraySlice[DType],
                       timeout_ms: int64,
                       explicitT: type(oT)): QueueDequeueUpTo[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueUpTo(*#, #, #, #, #)", constructor.}

proc queueDequeueUpTo*(scope: Scope,
                       handle: ostring,
                       n: oint32,
                       component_types: openArray[DType],
                       timeout_ms: int64 = -1.int,
                       explicitT: type): auto =
  return iiqueueDequeueUpTo(scope,
                            handle,
                            n,
                            newArraySlice(component_types),
                            timeout_ms,
                            explicitT)

converter queueDequeueUpToToOutList*[oT: oall](op: QueueDequeueUpTo[oT]): olist[oT] {.inline.} = return op.output


type QueueDequeueUpToV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueUpToV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiqueueDequeueUpToV2[oT: oall](scope: Scope,
                         handle: oresource,
                         n: oint32,
                         component_types: ArraySlice[DType],
                         timeout_ms: int64,
                         explicitT: type(oT)): QueueDequeueUpToV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueUpToV2(*#, #, #, #, #)", constructor.}

proc queueDequeueUpToV2*(scope: Scope,
                         handle: oresource,
                         n: oint32,
                         component_types: openArray[DType],
                         timeout_ms: int64 = -1.int,
                         explicitT: type): auto =
  return iiqueueDequeueUpToV2(scope,
                              handle,
                              n,
                              newArraySlice(component_types),
                              timeout_ms,
                              explicitT)

converter queueDequeueUpToV2ToOutList*[oT: oall](op: QueueDequeueUpToV2[oT]): olist[oT] {.inline.} = return op.output


type QueueDequeueV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiqueueDequeueV2[oT: oall](scope: Scope,
                     handle: oresource,
                     component_types: ArraySlice[DType],
                     timeout_ms: int64,
                     explicitT: type(oT)): QueueDequeueV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueDequeueV2(*#, #, #, #)", constructor.}

proc queueDequeueV2*(scope: Scope,
                     handle: oresource,
                     component_types: openArray[DType],
                     timeout_ms: int64 = -1.int,
                     explicitT: type): auto =
  return iiqueueDequeueV2(scope,
                          handle,
                          newArraySlice(component_types),
                          timeout_ms,
                          explicitT)

converter queueDequeueV2ToOutList*[oT: oall](op: QueueDequeueV2[oT]): olist[oT] {.inline.} = return op.output


type QueueEnqueue*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueEnqueue/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiqueueEnqueue(scope: Scope,
                   handle: ostring,
                   components: olist[oall],
                   Tcomponents: ArraySlice[DType],
                   timeout_ms: int64): QueueEnqueue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueEnqueue(*#, #, #, #, #)", constructor.}

proc queueEnqueue*(scope: Scope,
                   handle: ostring,
                   components: olist[oall],
                   Tcomponents: openArray[DType],
                   timeout_ms: int64 = -1.int): QueueEnqueue =
  return iiqueueEnqueue(scope,
                        handle,
                        components,
                        newArraySlice(Tcomponents),
                        timeout_ms)


type QueueEnqueueMany*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueEnqueueMany/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiqueueEnqueueMany(scope: Scope,
                       handle: ostring,
                       components: olist[oall],
                       Tcomponents: ArraySlice[DType],
                       timeout_ms: int64): QueueEnqueueMany {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueEnqueueMany(*#, #, #, #, #)", constructor.}

proc queueEnqueueMany*(scope: Scope,
                       handle: ostring,
                       components: olist[oall],
                       Tcomponents: openArray[DType],
                       timeout_ms: int64 = -1.int): QueueEnqueueMany =
  return iiqueueEnqueueMany(scope,
                            handle,
                            components,
                            newArraySlice(Tcomponents),
                            timeout_ms)


type QueueEnqueueManyV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueEnqueueManyV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiqueueEnqueueManyV2(scope: Scope,
                         handle: oresource,
                         components: olist[oall],
                         Tcomponents: ArraySlice[DType],
                         timeout_ms: int64): QueueEnqueueManyV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueEnqueueManyV2(*#, #, #, #, #)", constructor.}

proc queueEnqueueManyV2*(scope: Scope,
                         handle: oresource,
                         components: olist[oall],
                         Tcomponents: openArray[DType],
                         timeout_ms: int64 = -1.int): QueueEnqueueManyV2 =
  return iiqueueEnqueueManyV2(scope,
                              handle,
                              components,
                              newArraySlice(Tcomponents),
                              timeout_ms)


type QueueEnqueueV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueEnqueueV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiqueueEnqueueV2(scope: Scope,
                     handle: oresource,
                     components: olist[oall],
                     Tcomponents: ArraySlice[DType],
                     timeout_ms: int64): QueueEnqueueV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueEnqueueV2(*#, #, #, #, #)", constructor.}

proc queueEnqueueV2*(scope: Scope,
                     handle: oresource,
                     components: olist[oall],
                     Tcomponents: openArray[DType],
                     timeout_ms: int64 = -1.int): QueueEnqueueV2 =
  return iiqueueEnqueueV2(scope,
                          handle,
                          components,
                          newArraySlice(Tcomponents),
                          timeout_ms)


type QueueIsClosed* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueIsClosed/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiqueueIsClosed(scope: Scope,
                    handle: ostring): QueueIsClosed {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueIsClosed(*#, #)", constructor.}

proc queueIsClosed*(scope: Scope,
                    handle: ostring): QueueIsClosed =
  return iiqueueIsClosed(scope,
                         handle)

converter queueIsClosedToOut*(op: QueueIsClosed): obool {.inline.} = return op.output


type QueueIsClosedV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueIsClosedV2/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiqueueIsClosedV2(scope: Scope,
                      handle: oresource): QueueIsClosedV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueIsClosedV2(*#, #)", constructor.}

proc queueIsClosedV2*(scope: Scope,
                      handle: oresource): QueueIsClosedV2 =
  return iiqueueIsClosedV2(scope,
                           handle)

converter queueIsClosedV2ToOut*(op: QueueIsClosedV2): obool {.inline.} = return op.output


type QueueSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iiqueueSize(scope: Scope,
                handle: ostring): QueueSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueSize(*#, #)", constructor.}

proc queueSize*(scope: Scope,
                handle: ostring): QueueSize =
  return iiqueueSize(scope,
                     handle)

converter queueSizeToOut*(op: QueueSize): oint32 {.inline.} = return op.output


type QueueSizeV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueSizeV2/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iiqueueSizeV2(scope: Scope,
                  handle: oresource): QueueSizeV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"QueueSizeV2(*#, #)", constructor.}

proc queueSizeV2*(scope: Scope,
                  handle: oresource): QueueSizeV2 =
  return iiqueueSizeV2(scope,
                       handle)

converter queueSizeV2ToOut*(op: QueueSizeV2): oint32 {.inline.} = return op.output


type RandomShuffleQueue* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"RandomShuffleQueue/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iirandomShuffleQueue(scope: Scope,
                         component_types: ArraySlice[DType],
                         shapes: ArraySlice[TensorShape],
                         container: cstring,
                         shared_name: cstring,
                         capacity: int64,
                         min_after_dequeue: int64,
                         seed: int64,
                         seed2: int64): RandomShuffleQueue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"RandomShuffleQueue(*#, #, #, tensorflow::string(#), tensorflow::string(#), #, #, #, #)", constructor.}

proc randomShuffleQueue*(scope: Scope,
                         component_types: openArray[DType],
                         shapes: openArray[TensorShape],
                         container: cstring,
                         shared_name: cstring,
                         capacity: int64 = -1.int,
                         min_after_dequeue: int64 = 0.int,
                         seed: int64 = 0.int,
                         seed2: int64 = 0.int): RandomShuffleQueue =
  return iirandomShuffleQueue(scope,
                              newArraySlice(component_types),
                              newArraySlice(shapes),
                              container,
                              shared_name,
                              capacity,
                              min_after_dequeue,
                              seed,
                              seed2)

converter randomShuffleQueueToOut*(op: RandomShuffleQueue): ostring {.inline.} = return op.output


type RandomShuffleQueueV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"RandomShuffleQueueV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iirandomShuffleQueueV2(scope: Scope,
                           component_types: ArraySlice[DType],
                           shapes: ArraySlice[TensorShape],
                           container: cstring,
                           shared_name: cstring,
                           capacity: int64,
                           min_after_dequeue: int64,
                           seed: int64,
                           seed2: int64): RandomShuffleQueueV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/queue/queue.h", importcpp:"RandomShuffleQueueV2(*#, #, #, tensorflow::string(#), tensorflow::string(#), #, #, #, #)", constructor.}

proc randomShuffleQueueV2*(scope: Scope,
                           component_types: openArray[DType],
                           shapes: openArray[TensorShape],
                           container: cstring,
                           shared_name: cstring,
                           capacity: int64 = -1.int,
                           min_after_dequeue: int64 = 0.int,
                           seed: int64 = 0.int,
                           seed2: int64 = 0.int): RandomShuffleQueueV2 =
  return iirandomShuffleQueueV2(scope,
                                newArraySlice(component_types),
                                newArraySlice(shapes),
                                container,
                                shared_name,
                                capacity,
                                min_after_dequeue,
                                seed,
                                seed2)

converter randomShuffleQueueV2ToOut*(op: RandomShuffleQueueV2): oresource {.inline.} = return op.output

