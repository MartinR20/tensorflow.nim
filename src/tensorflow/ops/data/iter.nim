import ../../core

{.compile:"../../ops/data/iter/iter.cc".}


type AnonymousIterator* {.header:"../../ops/data/iter/iter.h", importcpp:"AnonymousIterator/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iianonymousIterator(scope: Scope,
                        output_types: ArraySlice[DType],
                        output_shapes: ArraySlice[TensorShape]): AnonymousIterator {.header:"../../ops/data/iter/iter.h", importcpp:"AnonymousIterator(*#, #, #)", constructor.}

proc anonymousIterator*(scope: Scope,
                        output_types: openArray[DType],
                        output_shapes: openArray[TensorShape]): AnonymousIterator =
  return iianonymousIterator(scope,
                             newArraySlice(output_types),
                             newArraySlice(output_shapes))

converter anonymousIteratorToOut*(op: AnonymousIterator): oresource {.inline.} = return op.output


type DeserializeIterator*{.header:"../../ops/data/iter/iter.h", importcpp:"DeserializeIterator/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iideserializeIterator(scope: Scope,
                          resource_handle: oresource,
                          serialized: ovariant): DeserializeIterator {.header:"../../ops/data/iter/iter.h", importcpp:"DeserializeIterator(*#, #, #)", constructor.}

proc deserializeIterator*(scope: Scope,
                          resource_handle: oresource,
                          serialized: ovariant): DeserializeIterator =
  return iideserializeIterator(scope,
                               resource_handle,
                               serialized)


type ExperimentalIteratorGetDevice* {.header:"../../ops/data/iter/iter.h", importcpp:"ExperimentalIteratorGetDevice/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiexperimentalIteratorGetDevice(scope: Scope,
                                    resource: oresource): ExperimentalIteratorGetDevice {.header:"../../ops/data/iter/iter.h", importcpp:"ExperimentalIteratorGetDevice(*#, #)", constructor.}

proc experimentalIteratorGetDevice*(scope: Scope,
                                    resource: oresource): ExperimentalIteratorGetDevice =
  return iiexperimentalIteratorGetDevice(scope,
                                         resource)

converter experimentalIteratorGetDeviceToOut*(op: ExperimentalIteratorGetDevice): ostring {.inline.} = return op.output


type Iterator* {.header:"../../ops/data/iter/iter.h", importcpp:"Iterator/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiniterator(scope: Scope,
                shared_name: cstring,
                container: cstring,
                output_types: ArraySlice[DType],
                output_shapes: ArraySlice[TensorShape]): Iterator {.header:"../../ops/data/iter/iter.h", importcpp:"Iterator(*#, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc niterator*(scope: Scope,
                shared_name: cstring,
                container: cstring,
                output_types: openArray[DType],
                output_shapes: openArray[TensorShape]): Iterator =
  return iiniterator(scope,
                     shared_name,
                     container,
                     newArraySlice(output_types),
                     newArraySlice(output_shapes))

converter niteratorToOut*(op: Iterator): oresource {.inline.} = return op.output


type IteratorFromStringHandle* {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorFromStringHandle/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiiteratorFromStringHandle(scope: Scope,
                               string_handle: ostring,
                               output_types: ArraySlice[DType],
                               output_shapes: ArraySlice[TensorShape]): IteratorFromStringHandle {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorFromStringHandle(*#, #, #, #)", constructor.}

proc iteratorFromStringHandle*(scope: Scope,
                               string_handle: ostring,
                               output_types: openArray[DType],
                               output_shapes: openArray[TensorShape]): IteratorFromStringHandle =
  return iiiteratorFromStringHandle(scope,
                                    string_handle,
                                    newArraySlice(output_types),
                                    newArraySlice(output_shapes))

converter iteratorFromStringHandleToOut*(op: IteratorFromStringHandle): oresource {.inline.} = return op.output


type IteratorFromStringHandleV2* {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorFromStringHandleV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiiteratorFromStringHandleV2(scope: Scope,
                                 string_handle: ostring,
                                 output_types: ArraySlice[DType],
                                 output_shapes: ArraySlice[TensorShape]): IteratorFromStringHandleV2 {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorFromStringHandleV2(*#, #, #, #)", constructor.}

proc iteratorFromStringHandleV2*(scope: Scope,
                                 string_handle: ostring,
                                 output_types: openArray[DType],
                                 output_shapes: openArray[TensorShape]): IteratorFromStringHandleV2 =
  return iiiteratorFromStringHandleV2(scope,
                                      string_handle,
                                      newArraySlice(output_types),
                                      newArraySlice(output_shapes))

converter iteratorFromStringHandleV2ToOut*(op: IteratorFromStringHandleV2): oresource {.inline.} = return op.output


type IteratorGetNext*[oT:oall] {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorGetNext/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiiteratorGetNext[oT: oall](scope: Scope,
                      niterator: oresource,
                      output_types: ArraySlice[DType],
                      output_shapes: ArraySlice[TensorShape],
                      explicitT: type(oT)): IteratorGetNext[oT] {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorGetNext(*#, #, #, #)", constructor.}

proc iteratorGetNext*(scope: Scope,
                      niterator: oresource,
                      output_types: openArray[DType],
                      output_shapes: openArray[TensorShape],
                      explicitT: type): auto =
  return iiiteratorGetNext(scope,
                           niterator,
                           newArraySlice(output_types),
                           newArraySlice(output_shapes),
                           explicitT)

converter iteratorGetNextToOutList*[oT: oall](op: IteratorGetNext[oT]): olist[oT] {.inline.} = return op.output


type IteratorGetNextAsOptional* {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorGetNextAsOptional/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiiteratorGetNextAsOptional(scope: Scope,
                                niterator: oresource,
                                output_types: ArraySlice[DType],
                                output_shapes: ArraySlice[TensorShape]): IteratorGetNextAsOptional {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorGetNextAsOptional(*#, #, #, #)", constructor.}

proc iteratorGetNextAsOptional*(scope: Scope,
                                niterator: oresource,
                                output_types: openArray[DType],
                                output_shapes: openArray[TensorShape]): IteratorGetNextAsOptional =
  return iiiteratorGetNextAsOptional(scope,
                                     niterator,
                                     newArraySlice(output_types),
                                     newArraySlice(output_shapes))

converter iteratorGetNextAsOptionalToOut*(op: IteratorGetNextAsOptional): ovariant {.inline.} = return op.output


type IteratorGetNextSync*[oT:oall] {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorGetNextSync/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiiteratorGetNextSync[oT: oall](scope: Scope,
                          niterator: oresource,
                          output_types: ArraySlice[DType],
                          output_shapes: ArraySlice[TensorShape],
                          explicitT: type(oT)): IteratorGetNextSync[oT] {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorGetNextSync(*#, #, #, #)", constructor.}

proc iteratorGetNextSync*(scope: Scope,
                          niterator: oresource,
                          output_types: openArray[DType],
                          output_shapes: openArray[TensorShape],
                          explicitT: type): auto =
  return iiiteratorGetNextSync(scope,
                               niterator,
                               newArraySlice(output_types),
                               newArraySlice(output_shapes),
                               explicitT)

converter iteratorGetNextSyncToOutList*[oT: oall](op: IteratorGetNextSync[oT]): olist[oT] {.inline.} = return op.output


type IteratorToStringHandle* {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorToStringHandle/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiiteratorToStringHandle(scope: Scope,
                             resource_handle: oresource): IteratorToStringHandle {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorToStringHandle(*#, #)", constructor.}

proc iteratorToStringHandle*(scope: Scope,
                             resource_handle: oresource): IteratorToStringHandle =
  return iiiteratorToStringHandle(scope,
                                  resource_handle)

converter iteratorToStringHandleToOut*(op: IteratorToStringHandle): ostring {.inline.} = return op.output


type IteratorV2* {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiiteratorV2(scope: Scope,
                 shared_name: cstring,
                 container: cstring,
                 output_types: ArraySlice[DType],
                 output_shapes: ArraySlice[TensorShape]): IteratorV2 {.header:"../../ops/data/iter/iter.h", importcpp:"IteratorV2(*#, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc iteratorV2*(scope: Scope,
                 shared_name: cstring,
                 container: cstring,
                 output_types: openArray[DType],
                 output_shapes: openArray[TensorShape]): IteratorV2 =
  return iiiteratorV2(scope,
                      shared_name,
                      container,
                      newArraySlice(output_types),
                      newArraySlice(output_shapes))

converter iteratorV2ToOut*(op: IteratorV2): oresource {.inline.} = return op.output


type MakeIterator*{.header:"../../ops/data/iter/iter.h", importcpp:"MakeIterator/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iimakeIterator(scope: Scope,
                   dataset: ovariant,
                   niterator: oresource): MakeIterator {.header:"../../ops/data/iter/iter.h", importcpp:"MakeIterator(*#, #, #)", constructor.}

proc makeIterator*(scope: Scope,
                   dataset: ovariant,
                   niterator: oresource): MakeIterator =
  return iimakeIterator(scope,
                        dataset,
                        niterator)


type MultiDeviceIterator* {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIterator/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iimultiDeviceIterator(scope: Scope,
                          devices: ArraySlice[cstring],
                          shared_name: cstring,
                          container: cstring,
                          output_types: ArraySlice[DType],
                          output_shapes: ArraySlice[TensorShape]): MultiDeviceIterator {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIterator(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc multiDeviceIterator*(scope: Scope,
                          devices: openArray[cstring],
                          shared_name: cstring,
                          container: cstring,
                          output_types: openArray[DType],
                          output_shapes: openArray[TensorShape]): MultiDeviceIterator =
  return iimultiDeviceIterator(scope,
                               newArraySlice(devices),
                               shared_name,
                               container,
                               newArraySlice(output_types),
                               newArraySlice(output_shapes))

converter multiDeviceIteratorToOut*(op: MultiDeviceIterator): oresource {.inline.} = return op.output


type MultiDeviceIteratorFromStringHandle* {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIteratorFromStringHandle/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iimultiDeviceIteratorFromStringHandle(scope: Scope,
                                          string_handle: ostring,
                                          output_types: ArraySlice[DType],
                                          output_shapes: ArraySlice[TensorShape]): MultiDeviceIteratorFromStringHandle {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIteratorFromStringHandle(*#, #, #, #)", constructor.}

proc multiDeviceIteratorFromStringHandle*(scope: Scope,
                                          string_handle: ostring,
                                          output_types: openArray[DType],
                                          output_shapes: openArray[TensorShape]): MultiDeviceIteratorFromStringHandle =
  return iimultiDeviceIteratorFromStringHandle(scope,
                                               string_handle,
                                               newArraySlice(output_types),
                                               newArraySlice(output_shapes))

converter multiDeviceIteratorFromStringHandleToOut*(op: MultiDeviceIteratorFromStringHandle): oresource {.inline.} = return op.output


type MultiDeviceIteratorGetNextFromShard*[oT:oall] {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIteratorGetNextFromShard/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iimultiDeviceIteratorGetNextFromShard[oT: oall](scope: Scope,
                                          multi_device_iterator: oresource,
                                          shard_num: oint32,
                                          incarnation_id: oint64,
                                          output_types: ArraySlice[DType],
                                          output_shapes: ArraySlice[TensorShape],
                                          explicitT: type(oT)): MultiDeviceIteratorGetNextFromShard[oT] {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIteratorGetNextFromShard(*#, #, #, #, #, #)", constructor.}

proc multiDeviceIteratorGetNextFromShard*(scope: Scope,
                                          multi_device_iterator: oresource,
                                          shard_num: oint32,
                                          incarnation_id: oint64,
                                          output_types: openArray[DType],
                                          output_shapes: openArray[TensorShape],
                                          explicitT: type): auto =
  return iimultiDeviceIteratorGetNextFromShard(scope,
                                               multi_device_iterator,
                                               shard_num,
                                               incarnation_id,
                                               newArraySlice(output_types),
                                               newArraySlice(output_shapes),
                                               explicitT)

converter multiDeviceIteratorGetNextFromShardToOutList*[oT: oall](op: MultiDeviceIteratorGetNextFromShard[oT]): olist[oT] {.inline.} = return op.output


type MultiDeviceIteratorInit* {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIteratorInit/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iimultiDeviceIteratorInit(scope: Scope,
                              dataset: ovariant,
                              multi_device_iterator: oresource,
                              max_buffer_size: oint64): MultiDeviceIteratorInit {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIteratorInit(*#, #, #, #)", constructor.}

proc multiDeviceIteratorInit*(scope: Scope,
                              dataset: ovariant,
                              multi_device_iterator: oresource,
                              max_buffer_size: oint64): MultiDeviceIteratorInit =
  return iimultiDeviceIteratorInit(scope,
                                   dataset,
                                   multi_device_iterator,
                                   max_buffer_size)

converter multiDeviceIteratorInitToOut*(op: MultiDeviceIteratorInit): oint64 {.inline.} = return op.output


type MultiDeviceIteratorToStringHandle* {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIteratorToStringHandle/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iimultiDeviceIteratorToStringHandle(scope: Scope,
                                        multi_device_iterator: oresource): MultiDeviceIteratorToStringHandle {.header:"../../ops/data/iter/iter.h", importcpp:"MultiDeviceIteratorToStringHandle(*#, #)", constructor.}

proc multiDeviceIteratorToStringHandle*(scope: Scope,
                                        multi_device_iterator: oresource): MultiDeviceIteratorToStringHandle =
  return iimultiDeviceIteratorToStringHandle(scope,
                                             multi_device_iterator)

converter multiDeviceIteratorToStringHandleToOut*(op: MultiDeviceIteratorToStringHandle): ostring {.inline.} = return op.output


type NextIteration*[oT:oall] {.header:"../../ops/data/iter/iter.h", importcpp:"NextIteration/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iinextIteration[oT: oall](scope: Scope,
                    data: oT,
                    T: DType): NextIteration[oT] {.header:"../../ops/data/iter/iter.h", importcpp:"NextIteration(*#, #, #)", constructor.}

proc nextIteration*[oT: oall](scope: Scope,
                    data: oT): NextIteration[oT] =
  return iinextIteration(scope,
                         data,
                         oT[].oTF)

converter nextIterationToOut*[oT: oall](op: NextIteration[oT]): oT {.inline.} = return op.output


type OneShotIterator* {.header:"../../ops/data/iter/iter.h", importcpp:"OneShotIterator/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iioneShotIterator(scope: Scope,
                      dataset_factory: NameAttrList,
                      output_types: ArraySlice[DType],
                      output_shapes: ArraySlice[TensorShape],
                      container: cstring,
                      shared_name: cstring): OneShotIterator {.header:"../../ops/data/iter/iter.h", importcpp:"OneShotIterator(*#, #, #, #, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc oneShotIterator*(scope: Scope,
                      dataset_factory: NameAttrList,
                      output_types: openArray[DType],
                      output_shapes: openArray[TensorShape],
                      container: cstring,
                      shared_name: cstring): OneShotIterator =
  return iioneShotIterator(scope,
                           dataset_factory,
                           newArraySlice(output_types),
                           newArraySlice(output_shapes),
                           container,
                           shared_name)

converter oneShotIteratorToOut*(op: OneShotIterator): oresource {.inline.} = return op.output


type RefNextIteration*[oT:oall] {.header:"../../ops/data/iter/iter.h", importcpp:"RefNextIteration/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirefNextIteration[oT: oall](scope: Scope,
                       data: oT,
                       T: DType): RefNextIteration[oT] {.header:"../../ops/data/iter/iter.h", importcpp:"RefNextIteration(*#, #, #)", constructor.}

proc refNextIteration*[oT: oall](scope: Scope,
                       data: oT): RefNextIteration[oT] =
  return iirefNextIteration(scope,
                            data,
                            oT[].oTF)

converter refNextIterationToOut*[oT: oall](op: RefNextIteration[oT]): oT {.inline.} = return op.output


type SerializeIterator* {.header:"../../ops/data/iter/iter.h", importcpp:"SerializeIterator/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iiserializeIterator(scope: Scope,
                        resource_handle: oresource): SerializeIterator {.header:"../../ops/data/iter/iter.h", importcpp:"SerializeIterator(*#, #)", constructor.}

proc serializeIterator*(scope: Scope,
                        resource_handle: oresource): SerializeIterator =
  return iiserializeIterator(scope,
                             resource_handle)

converter serializeIteratorToOut*(op: SerializeIterator): ovariant {.inline.} = return op.output

