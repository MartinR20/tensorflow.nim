import ../core

{.compile:"control/control.cc".}


type Abort*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Abort/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiabort(scope: Scope,
            error_msg: cstring,
            exit_without_error: bool): Abort {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Abort(*#, tensorflow::string(#), #)", constructor.}

proc abort*(scope: Scope,
            error_msg: cstring,
            exit_without_error: bool = false): Abort =
  return iiabort(scope,
                 error_msg,
                 exit_without_error)


type Assert*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Assert/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiassert(scope: Scope,
             condition: obool,
             data: olist[oall],
             T: ArraySlice[DType],
             summarize: int64): Assert {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Assert(*#, #, #, #, #)", constructor.}

proc assert*(scope: Scope,
             condition: obool,
             data: olist[oall],
             T: openArray[DType],
             summarize: int64 = 3.int): Assert =
  return iiassert(scope,
                  condition,
                  data,
                  newArraySlice(T),
                  summarize)


type CollectiveBcastRecv*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"CollectiveBcastRecv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicollectiveBcastRecv[oT: oall](scope: Scope,
                          T: DType,
                          group_size: int64,
                          group_key: int64,
                          instance_key: int64,
                          shape: TensorShape,
                          explicitT: type(oT)): CollectiveBcastRecv[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"CollectiveBcastRecv(*#, #, #, #, #, #)", constructor.}

proc collectiveBcastRecv*(scope: Scope,
                          T: type = oinvalid,
                          group_size: int64 = 0.int,
                          group_key: int64 = 0.int,
                          instance_key: int64 = 0.int,
                          shape: TensorShape = [].shape): auto =
  return iicollectiveBcastRecv(scope,
                               T.oTF,
                               group_size,
                               group_key,
                               instance_key,
                               shape,
                               T)

converter collectiveBcastRecvToOut*[oT: oall](op: CollectiveBcastRecv[oT]): oT {.inline.} = return op.output


type ConsumeMutexLock*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"ConsumeMutexLock/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiconsumeMutexLock(scope: Scope,
                       mutex_lock: ovariant): ConsumeMutexLock {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"ConsumeMutexLock(*#, #)", constructor.}

proc consumeMutexLock*(scope: Scope,
                       mutex_lock: ovariant): ConsumeMutexLock =
  return iiconsumeMutexLock(scope,
                            mutex_lock)


type ControlTrigger*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"ControlTrigger/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iicontrolTrigger(scope: Scope): ControlTrigger {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"ControlTrigger(*#)", constructor.}

proc controlTrigger*(scope: Scope): ControlTrigger =
  return iicontrolTrigger(scope)


type Enter*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Enter/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iienter[oT: oall](scope: Scope,
            data: oT,
            frame_name: cstring,
            T: DType,
            is_constant: bool,
            parallel_iterations: int64): Enter[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Enter(*#, #, tensorflow::string(#), #, #, #)", constructor.}

proc enter*[oT: oall](scope: Scope,
            data: oT,
            frame_name: cstring,
            is_constant: bool = false,
            parallel_iterations: int64 = 10.int): Enter[oT] =
  return iienter(scope,
                 data,
                 frame_name,
                 oT.oTF,
                 is_constant,
                 parallel_iterations)

converter enterToOut*[oT: oall](op: Enter[oT]): oT {.inline.} = return op.output


type Exit*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Exit/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiexit[oT: oall](scope: Scope,
           data: oT,
           T: DType): Exit[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Exit(*#, #, #)", constructor.}

proc exit*[oT: oall](scope: Scope,
           data: oT): Exit[oT] =
  return iiexit(scope,
                data,
                oT.oTF)

converter exitToOut*[oT: oall](op: Exit[oT]): oT {.inline.} = return op.output


type FakeParam*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"FakeParam/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifakeParam[oT: oall](scope: Scope,
                dtype: DType,
                shape: TensorShape,
                explicitT: type(oT)): FakeParam[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"FakeParam(*#, #, #)", constructor.}

proc fakeParam*(scope: Scope,
                dtype: type = oinvalid,
                shape: TensorShape = [].shape): auto =
  return iifakeParam(scope,
                     dtype.oTF,
                     shape,
                     dtype)

converter fakeParamToOut*[oT: oall](op: FakeParam[oT]): oT {.inline.} = return op.output


type For*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"For/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iinfor[oT: oall](scope: Scope,
           start: oint32,
           limit: oint32,
           delta: oint32,
           input: olist[oT],
           T: ArraySlice[DType],
           body: NameAttrList): For[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"For(*#, #, #, #, #, #, #)", constructor.}

proc nfor*[oT: oall](scope: Scope,
           start: oint32,
           limit: oint32,
           delta: oint32,
           input: olist[oT],
           T: openArray[DType],
           body: NameAttrList): For[oT] =
  return iinfor(scope,
                start,
                limit,
                delta,
                input,
                newArraySlice(T),
                body)

converter nforToOutList*[oT: oall](op: For[oT]): olist[oT] {.inline.} = return op.output

type IfTcond* = oall

type If*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"If/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iinif[oT: oall](scope: Scope,
          cond: IfTcond,
          input: olist[oall],
          Tin: ArraySlice[DType],
          Tout: ArraySlice[DType],
          then_branch: NameAttrList,
          else_branch: NameAttrList,
          output_shapes: ArraySlice[TensorShape],
          explicitT: type(oT)): If[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"If(*#, #, #, #, #, #, #, #)", constructor.}

proc nif*(scope: Scope,
          cond: IfTcond,
          input: olist[oall],
          Tin: openArray[DType],
          Tout: openArray[DType],
          then_branch: NameAttrList,
          else_branch: NameAttrList,
          output_shapes: openArray[TensorShape],
          explicitT: type): auto =
  return iinif(scope,
               cond,
               input,
               newArraySlice(Tin),
               newArraySlice(Tout),
               then_branch,
               else_branch,
               newArraySlice(output_shapes),
               explicitT)

converter nifToOutList*[oT: oall](op: If[oT]): olist[oT] {.inline.} = return op.output


type LoopCond* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"LoopCond/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiloopCond(scope: Scope,
               input: obool): LoopCond {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"LoopCond(*#, #)", constructor.}

proc loopCond*(scope: Scope,
               input: obool): LoopCond =
  return iiloopCond(scope,
                    input)

converter loopCondToOut*(op: LoopCond): obool {.inline.} = return op.output


type Merge*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Merge/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimerge[oT: oall](scope: Scope,
            inputs: olist[oT],
            T: DType): Merge[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Merge(*#, #, #)", constructor.}

proc merge*[oT: oall](scope: Scope,
            inputs: olist[oT]): Merge[oT] =
  return iimerge(scope,
                 inputs,
                 oT.oTF)

converter mergeToOut*[oT: oall](op: Merge[oT]): oT {.inline.} = return op.output


type MutexLock* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"MutexLock/*'0*/".} = object
  operation*: Operation[ovariant]
  output*: ovariant

proc iimutexLock(scope: Scope,
                mutex: oresource): MutexLock {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"MutexLock(*#, #)", constructor.}

proc mutexLock*(scope: Scope,
                mutex: oresource): MutexLock =
  return iimutexLock(scope,
                     mutex)

converter mutexLockToOut*(op: MutexLock): ovariant {.inline.} = return op.output


type MutexV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"MutexV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iimutexV2(scope: Scope,
              container: cstring,
              shared_name: cstring): MutexV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"MutexV2(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc mutexV2*(scope: Scope,
              container: cstring,
              shared_name: cstring): MutexV2 =
  return iimutexV2(scope,
                   container,
                   shared_name)

converter mutexV2ToOut*(op: MutexV2): oresource {.inline.} = return op.output


type PartitionedCall*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"PartitionedCall/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iipartitionedCall[oT: oall](scope: Scope,
                      args: olist[oall],
                      Tin: ArraySlice[DType],
                      Tout: ArraySlice[DType],
                      f: NameAttrList,
                      config: cstring,
                      config_proto: cstring,
                      executor_type: cstring,
                      explicitT: type(oT)): PartitionedCall[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"PartitionedCall(*#, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#))", constructor.}

proc partitionedCall*(scope: Scope,
                      args: olist[oall],
                      Tin: openArray[DType],
                      Tout: openArray[DType],
                      f: NameAttrList,
                      config: cstring,
                      config_proto: cstring,
                      executor_type: cstring,
                      explicitT: type): auto =
  return iipartitionedCall(scope,
                           args,
                           newArraySlice(Tin),
                           newArraySlice(Tout),
                           f,
                           config,
                           config_proto,
                           executor_type,
                           explicitT)

converter partitionedCallToOutList*[oT: oall](op: PartitionedCall[oT]): olist[oT] {.inline.} = return op.output


type PreventGradient*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"PreventGradient/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iipreventGradient[oT: oall](scope: Scope,
                      input: oT,
                      message: cstring,
                      T: DType): PreventGradient[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"PreventGradient(*#, #, tensorflow::string(#), #)", constructor.}

proc preventGradient*[oT: oall](scope: Scope,
                      input: oT,
                      message: cstring): PreventGradient[oT] =
  return iipreventGradient(scope,
                           input,
                           message,
                           oT.oTF)

converter preventGradientToOut*[oT: oall](op: PreventGradient[oT]): oT {.inline.} = return op.output


type ReaderRestoreStateV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"ReaderRestoreStateV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iireaderRestoreStateV2(scope: Scope,
                           reader_handle: oresource,
                           state: ostring): ReaderRestoreStateV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"ReaderRestoreStateV2(*#, #, #)", constructor.}

proc readerRestoreStateV2*(scope: Scope,
                           reader_handle: oresource,
                           state: ostring): ReaderRestoreStateV2 =
  return iireaderRestoreStateV2(scope,
                                reader_handle,
                                state)


type RefEnter*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RefEnter/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirefEnter[oT: oall](scope: Scope,
               data: oT,
               frame_name: cstring,
               T: DType,
               is_constant: bool,
               parallel_iterations: int64): RefEnter[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RefEnter(*#, #, tensorflow::string(#), #, #, #)", constructor.}

proc refEnter*[oT: oall](scope: Scope,
               data: oT,
               frame_name: cstring,
               is_constant: bool = false,
               parallel_iterations: int64 = 10.int): RefEnter[oT] =
  return iirefEnter(scope,
                    data,
                    frame_name,
                    oT.oTF,
                    is_constant,
                    parallel_iterations)

converter refEnterToOut*[oT: oall](op: RefEnter[oT]): oT {.inline.} = return op.output


type RefExit*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RefExit/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirefExit[oT: oall](scope: Scope,
              data: oT,
              T: DType): RefExit[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RefExit(*#, #, #)", constructor.}

proc refExit*[oT: oall](scope: Scope,
              data: oT): RefExit[oT] =
  return iirefExit(scope,
                   data,
                   oT.oTF)

converter refExitToOut*[oT: oall](op: RefExit[oT]): oT {.inline.} = return op.output


type RefSelect*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RefSelect/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirefSelect[oT: oall](scope: Scope,
                index: oint32,
                inputs: olist[oT],
                T: DType): RefSelect[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RefSelect(*#, #, #, #)", constructor.}

proc refSelect*[oT: oall](scope: Scope,
                index: oint32,
                inputs: olist[oT]): RefSelect[oT] =
  return iirefSelect(scope,
                     index,
                     inputs,
                     oT.oTF)

converter refSelectToOut*[oT: oall](op: RefSelect[oT]): oT {.inline.} = return op.output


type RefSwitch*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RefSwitch/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirefSwitch[oT: oall](scope: Scope,
                data: oT,
                pred: obool,
                T: DType): RefSwitch[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RefSwitch(*#, #, #, #)", constructor.}

proc refSwitch*[oT: oall](scope: Scope,
                data: oT,
                pred: obool): RefSwitch[oT] =
  return iirefSwitch(scope,
                     data,
                     pred,
                     oT.oTF)

converter refSwitchToOut*[oT: oall](op: RefSwitch[oT]): oT {.inline.} = return op.output


type RemoteCall*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RemoteCall/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiremoteCall[oT: oall](scope: Scope,
                 target: ostring,
                 args: olist[oall],
                 Tin: ArraySlice[DType],
                 Tout: ArraySlice[DType],
                 f: NameAttrList,
                 explicitT: type(oT)): RemoteCall[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RemoteCall(*#, #, #, #, #, #)", constructor.}

proc remoteCall*(scope: Scope,
                 target: ostring,
                 args: olist[oall],
                 Tin: openArray[DType],
                 Tout: openArray[DType],
                 f: NameAttrList,
                 explicitT: type): auto =
  return iiremoteCall(scope,
                      target,
                      args,
                      newArraySlice(Tin),
                      newArraySlice(Tout),
                      f,
                      explicitT)

converter remoteCallToOutList*[oT: oall](op: RemoteCall[oT]): olist[oT] {.inline.} = return op.output


type RemoteFusedGraphExecute*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RemoteFusedGraphExecute/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiremoteFusedGraphExecute[oT: oall](scope: Scope,
                              inputs: olist[oall],
                              Tinputs: ArraySlice[DType],
                              Toutputs: ArraySlice[DType],
                              serialized_remote_fused_graph_execute_info: cstring,
                              explicitT: type(oT)): RemoteFusedGraphExecute[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"RemoteFusedGraphExecute(*#, #, #, #, tensorflow::string(#))", constructor.}

proc remoteFusedGraphExecute*(scope: Scope,
                              inputs: olist[oall],
                              Tinputs: openArray[DType],
                              Toutputs: openArray[DType],
                              serialized_remote_fused_graph_execute_info: cstring,
                              explicitT: type): auto =
  return iiremoteFusedGraphExecute(scope,
                                   inputs,
                                   newArraySlice(Tinputs),
                                   newArraySlice(Toutputs),
                                   serialized_remote_fused_graph_execute_info,
                                   explicitT)

converter remoteFusedGraphExecuteToOutList*[oT: oall](op: RemoteFusedGraphExecute[oT]): olist[oT] {.inline.} = return op.output


type StageClear*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StageClear/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iistageClear(scope: Scope,
                 dtypes: ArraySlice[DType],
                 container: cstring,
                 shared_name: cstring,
                 capacity: int64,
                 memory_limit: int64): StageClear {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StageClear(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc stageClear*(scope: Scope,
                 dtypes: openArray[DType],
                 container: cstring,
                 shared_name: cstring,
                 capacity: int64 = 0.int,
                 memory_limit: int64 = 0.int): StageClear =
  return iistageClear(scope,
                      newArraySlice(dtypes),
                      container,
                      shared_name,
                      capacity,
                      memory_limit)


type StatefulPartitionedCall*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StatefulPartitionedCall/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iistatefulPartitionedCall[oT: oall](scope: Scope,
                              args: olist[oall],
                              Tin: ArraySlice[DType],
                              Tout: ArraySlice[DType],
                              f: NameAttrList,
                              config: cstring,
                              config_proto: cstring,
                              executor_type: cstring,
                              explicitT: type(oT)): StatefulPartitionedCall[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StatefulPartitionedCall(*#, #, #, #, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#))", constructor.}

proc statefulPartitionedCall*(scope: Scope,
                              args: olist[oall],
                              Tin: openArray[DType],
                              Tout: openArray[DType],
                              f: NameAttrList,
                              config: cstring,
                              config_proto: cstring,
                              executor_type: cstring,
                              explicitT: type): auto =
  return iistatefulPartitionedCall(scope,
                                   args,
                                   newArraySlice(Tin),
                                   newArraySlice(Tout),
                                   f,
                                   config,
                                   config_proto,
                                   executor_type,
                                   explicitT)

converter statefulPartitionedCallToOutList*[oT: oall](op: StatefulPartitionedCall[oT]): olist[oT] {.inline.} = return op.output

type StatelessIfTcond* = oall

type StatelessIf*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StatelessIf/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iistatelessIf[oT: oall](scope: Scope,
                  cond: StatelessIfTcond,
                  input: olist[oall],
                  Tin: ArraySlice[DType],
                  Tout: ArraySlice[DType],
                  then_branch: NameAttrList,
                  else_branch: NameAttrList,
                  explicitT: type(oT)): StatelessIf[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StatelessIf(*#, #, #, #, #, #, #)", constructor.}

proc statelessIf*(scope: Scope,
                  cond: StatelessIfTcond,
                  input: olist[oall],
                  Tin: openArray[DType],
                  Tout: openArray[DType],
                  then_branch: NameAttrList,
                  else_branch: NameAttrList,
                  explicitT: type): auto =
  return iistatelessIf(scope,
                       cond,
                       input,
                       newArraySlice(Tin),
                       newArraySlice(Tout),
                       then_branch,
                       else_branch,
                       explicitT)

converter statelessIfToOutList*[oT: oall](op: StatelessIf[oT]): olist[oT] {.inline.} = return op.output


type StatelessWhile*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StatelessWhile/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iistatelessWhile[oT: oall](scope: Scope,
                     input: olist[oT],
                     T: ArraySlice[DType],
                     cond: NameAttrList,
                     body: NameAttrList): StatelessWhile[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StatelessWhile(*#, #, #, #, #)", constructor.}

proc statelessWhile*[oT: oall](scope: Scope,
                     input: olist[oT],
                     T: openArray[DType],
                     cond: NameAttrList,
                     body: NameAttrList): StatelessWhile[oT] =
  return iistatelessWhile(scope,
                          input,
                          newArraySlice(T),
                          cond,
                          body)

converter statelessWhileToOutList*[oT: oall](op: StatelessWhile[oT]): olist[oT] {.inline.} = return op.output


type StopGradient*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StopGradient/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistopGradient[oT: oall](scope: Scope,
                   input: oT,
                   T: DType): StopGradient[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"StopGradient(*#, #, #)", constructor.}

proc stopGradient*[oT: oall](scope: Scope,
                   input: oT): StopGradient[oT] =
  return iistopGradient(scope,
                        input,
                        oT.oTF)

converter stopGradientToOut*[oT: oall](op: StopGradient[oT]): oT {.inline.} = return op.output


type Switch*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Switch/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiswitch[oT: oall](scope: Scope,
             data: oT,
             pred: obool,
             T: DType): Switch[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/control/control.h", importcpp:"Switch(*#, #, #, #)", constructor.}

proc switch*[oT: oall](scope: Scope,
             data: oT,
             pred: obool): Switch[oT] =
  return iiswitch(scope,
                  data,
                  pred,
                  oT.oTF)

converter switchToOut*[oT: oall](op: Switch[oT]): oT {.inline.} = return op.output

