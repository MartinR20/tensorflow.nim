import ../core

{.compile:"datastructure/datastructure.cc".}

type AddManySparseToTensorsMapT* = oall

type AddManySparseToTensorsMap* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"AddManySparseToTensorsMap/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiaddManySparseToTensorsMap(scope: Scope,
                                sparse_indices: oint64,
                                sparse_values: AddManySparseToTensorsMapT,
                                sparse_shape: oint64,
                                container: cstring,
                                shared_name: cstring): AddManySparseToTensorsMap {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"AddManySparseToTensorsMap(*#, #, #, #, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc addManySparseToTensorsMap*(scope: Scope,
                                sparse_indices: oint64,
                                sparse_values: AddManySparseToTensorsMapT,
                                sparse_shape: oint64,
                                container: cstring,
                                shared_name: cstring): AddManySparseToTensorsMap =
  return iiaddManySparseToTensorsMap(scope,
                                     sparse_indices,
                                     sparse_values,
                                     sparse_shape,
                                     container,
                                     shared_name)

converter addManySparseToTensorsMapToOut*(op: AddManySparseToTensorsMap): oint64 {.inline.} = return op.output

type AddSparseToTensorsMapT* = oall

type AddSparseToTensorsMap* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"AddSparseToTensorsMap/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiaddSparseToTensorsMap(scope: Scope,
                            sparse_indices: oint64,
                            sparse_values: AddSparseToTensorsMapT,
                            sparse_shape: oint64,
                            container: cstring,
                            shared_name: cstring): AddSparseToTensorsMap {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"AddSparseToTensorsMap(*#, #, #, #, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc addSparseToTensorsMap*(scope: Scope,
                            sparse_indices: oint64,
                            sparse_values: AddSparseToTensorsMapT,
                            sparse_shape: oint64,
                            container: cstring,
                            shared_name: cstring): AddSparseToTensorsMap =
  return iiaddSparseToTensorsMap(scope,
                                 sparse_indices,
                                 sparse_values,
                                 sparse_shape,
                                 container,
                                 shared_name)

converter addSparseToTensorsMapToOut*(op: AddSparseToTensorsMap): oint64 {.inline.} = return op.output

type CropAndResizeGradBoxesT* = ouint8 | ouint16 | oint8 | oint16 | oint32 | oint64 | ohalf | ofloat | odouble

type CropAndResizeGradBoxes* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"CropAndResizeGradBoxes/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iicropAndResizeGradBoxes(scope: Scope,
                             grads: ofloat,
                             image: CropAndResizeGradBoxesT,
                             boxes: ofloat,
                             box_ind: oint32,
                             nmethod: cstring): CropAndResizeGradBoxes {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"CropAndResizeGradBoxes(*#, #, #, #, #, tensorflow::string(#))", constructor.}

proc cropAndResizeGradBoxes*(scope: Scope,
                             grads: ofloat,
                             image: CropAndResizeGradBoxesT,
                             boxes: ofloat,
                             box_ind: oint32,
                             nmethod: cstring = "bilinear"): CropAndResizeGradBoxes =
  return iicropAndResizeGradBoxes(scope,
                                  grads,
                                  image,
                                  boxes,
                                  box_ind,
                                  nmethod)

converter cropAndResizeGradBoxesToOut*(op: CropAndResizeGradBoxes): ofloat {.inline.} = return op.output


type DataFormatVecPermute*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"DataFormatVecPermute/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidataFormatVecPermute[oT: oall](scope: Scope,
                           x: oT,
                           T: DType,
                           src_format: cstring,
                           dst_format: cstring): DataFormatVecPermute[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"DataFormatVecPermute(*#, #, #, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc dataFormatVecPermute*[oT: oall](scope: Scope,
                           x: oT,
                           src_format: cstring = "NHWC",
                           dst_format: cstring = "NCHW"): DataFormatVecPermute[oT] =
  return iidataFormatVecPermute(scope,
                                x,
                                oT.oTF,
                                src_format,
                                dst_format)

converter dataFormatVecPermuteToOut*[oT: oall](op: DataFormatVecPermute[oT]): oT {.inline.} = return op.output


type HashTable* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"HashTable/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iihashTable(scope: Scope,
                container: cstring,
                shared_name: cstring,
                use_node_name_sharing: bool,
                key_dtype: DType,
                value_dtype: DType): HashTable {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"HashTable(*#, tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc hashTable*(scope: Scope,
                container: cstring,
                shared_name: cstring,
                use_node_name_sharing: bool = false,
                key_dtype: type oall = oinvalid,
                value_dtype: type oall = oinvalid): HashTable =
  return iihashTable(scope,
                     container,
                     shared_name,
                     use_node_name_sharing,
                     key_dtype.oTF,
                     value_dtype.oTF)

converter hashTableToOut*(op: HashTable): ostring {.inline.} = return op.output


type HashTableV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"HashTableV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iihashTableV2(scope: Scope,
                  container: cstring,
                  shared_name: cstring,
                  use_node_name_sharing: bool,
                  key_dtype: DType,
                  value_dtype: DType): HashTableV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"HashTableV2(*#, tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc hashTableV2*(scope: Scope,
                  container: cstring,
                  shared_name: cstring,
                  use_node_name_sharing: bool = false,
                  key_dtype: type oall = oinvalid,
                  value_dtype: type oall = oinvalid): HashTableV2 =
  return iihashTableV2(scope,
                       container,
                       shared_name,
                       use_node_name_sharing,
                       key_dtype.oTF,
                       value_dtype.oTF)

converter hashTableV2ToOut*(op: HashTableV2): oresource {.inline.} = return op.output

type InitializeTableTval* = oall
type InitializeTableTkey* = oall

type InitializeTable*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"InitializeTable/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiinitializeTable(scope: Scope,
                      table_handle: ostring,
                      keys: InitializeTableTkey,
                      values: InitializeTableTval): InitializeTable {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"InitializeTable(*#, #, #, #)", constructor.}

proc initializeTable*(scope: Scope,
                      table_handle: ostring,
                      keys: InitializeTableTkey,
                      values: InitializeTableTval): InitializeTable =
  return iiinitializeTable(scope,
                           table_handle,
                           keys,
                           values)


type InitializeTableFromTextFile*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"InitializeTableFromTextFile/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiinitializeTableFromTextFile(scope: Scope,
                                  table_handle: ostring,
                                  filename: ostring,
                                  key_index: int64,
                                  value_index: int64,
                                  vocab_size: int64,
                                  delimiter: cstring): InitializeTableFromTextFile {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"InitializeTableFromTextFile(*#, #, #, #, #, #, tensorflow::string(#))", constructor.}

proc initializeTableFromTextFile*(scope: Scope,
                                  table_handle: ostring,
                                  filename: ostring,
                                  key_index: int64 = 0.int,
                                  value_index: int64 = 0.int,
                                  vocab_size: int64 = -1.int,
                                  delimiter: cstring = "	"): InitializeTableFromTextFile =
  return iiinitializeTableFromTextFile(scope,
                                       table_handle,
                                       filename,
                                       key_index,
                                       value_index,
                                       vocab_size,
                                       delimiter)


type InitializeTableFromTextFileV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"InitializeTableFromTextFileV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiinitializeTableFromTextFileV2(scope: Scope,
                                    table_handle: oresource,
                                    filename: ostring,
                                    key_index: int64,
                                    value_index: int64,
                                    vocab_size: int64,
                                    delimiter: cstring): InitializeTableFromTextFileV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"InitializeTableFromTextFileV2(*#, #, #, #, #, #, tensorflow::string(#))", constructor.}

proc initializeTableFromTextFileV2*(scope: Scope,
                                    table_handle: oresource,
                                    filename: ostring,
                                    key_index: int64 = 0.int,
                                    value_index: int64 = 0.int,
                                    vocab_size: int64 = -1.int,
                                    delimiter: cstring = "	"): InitializeTableFromTextFileV2 =
  return iiinitializeTableFromTextFileV2(scope,
                                         table_handle,
                                         filename,
                                         key_index,
                                         value_index,
                                         vocab_size,
                                         delimiter)

type InitializeTableV2Tval* = oall
type InitializeTableV2Tkey* = oall

type InitializeTableV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"InitializeTableV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiinitializeTableV2(scope: Scope,
                        table_handle: oresource,
                        keys: InitializeTableV2Tkey,
                        values: InitializeTableV2Tval): InitializeTableV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"InitializeTableV2(*#, #, #, #)", constructor.}

proc initializeTableV2*(scope: Scope,
                        table_handle: oresource,
                        keys: InitializeTableV2Tkey,
                        values: InitializeTableV2Tval): InitializeTableV2 =
  return iiinitializeTableV2(scope,
                             table_handle,
                             keys,
                             values)


type MapClear*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapClear/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iimapClear(scope: Scope,
               dtypes: ArraySlice[DType],
               container: cstring,
               shared_name: cstring,
               capacity: int64,
               memory_limit: int64): MapClear {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapClear(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc mapClear*(scope: Scope,
               dtypes: openArray[DType],
               container: cstring,
               shared_name: cstring,
               capacity: int64 = 0.int,
               memory_limit: int64 = 0.int): MapClear =
  return iimapClear(scope,
                    newArraySlice(dtypes),
                    container,
                    shared_name,
                    capacity,
                    memory_limit)


type MapIncompleteSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapIncompleteSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iimapIncompleteSize(scope: Scope,
                        dtypes: ArraySlice[DType],
                        container: cstring,
                        shared_name: cstring,
                        capacity: int64,
                        memory_limit: int64): MapIncompleteSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapIncompleteSize(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc mapIncompleteSize*(scope: Scope,
                        dtypes: openArray[DType],
                        container: cstring,
                        shared_name: cstring,
                        capacity: int64 = 0.int,
                        memory_limit: int64 = 0.int): MapIncompleteSize =
  return iimapIncompleteSize(scope,
                             newArraySlice(dtypes),
                             container,
                             shared_name,
                             capacity,
                             memory_limit)

converter mapIncompleteSizeToOut*(op: MapIncompleteSize): oint32 {.inline.} = return op.output


type MapPeek*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapPeek/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iimapPeek[oT: oall](scope: Scope,
              key: oint64,
              indices: oint32,
              dtypes: ArraySlice[DType],
              container: cstring,
              shared_name: cstring,
              capacity: int64,
              memory_limit: int64,
              explicitT: type(oT)): MapPeek[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapPeek(*#, #, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc mapPeek*(scope: Scope,
              key: oint64,
              indices: oint32,
              dtypes: openArray[DType],
              container: cstring,
              shared_name: cstring,
              capacity: int64 = 0.int,
              memory_limit: int64 = 0.int,
              explicitT: type): auto =
  return iimapPeek(scope,
                   key,
                   indices,
                   newArraySlice(dtypes),
                   container,
                   shared_name,
                   capacity,
                   memory_limit,
                   explicitT)

converter mapPeekToOutList*[oT: oall](op: MapPeek[oT]): olist[oT] {.inline.} = return op.output


type MapSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iimapSize(scope: Scope,
              dtypes: ArraySlice[DType],
              container: cstring,
              shared_name: cstring,
              capacity: int64,
              memory_limit: int64): MapSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapSize(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc mapSize*(scope: Scope,
              dtypes: openArray[DType],
              container: cstring,
              shared_name: cstring,
              capacity: int64 = 0.int,
              memory_limit: int64 = 0.int): MapSize =
  return iimapSize(scope,
                   newArraySlice(dtypes),
                   container,
                   shared_name,
                   capacity,
                   memory_limit)

converter mapSizeToOut*(op: MapSize): oint32 {.inline.} = return op.output


type MapStage*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapStage/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iimapStage(scope: Scope,
               key: oint64,
               indices: oint32,
               values: olist[oall],
               dtypes: ArraySlice[DType],
               fake_dtypes: ArraySlice[DType],
               container: cstring,
               shared_name: cstring,
               capacity: int64,
               memory_limit: int64): MapStage {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapStage(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc mapStage*(scope: Scope,
               key: oint64,
               indices: oint32,
               values: olist[oall],
               dtypes: openArray[DType],
               fake_dtypes: openArray[DType],
               container: cstring,
               shared_name: cstring,
               capacity: int64 = 0.int,
               memory_limit: int64 = 0.int): MapStage =
  return iimapStage(scope,
                    key,
                    indices,
                    values,
                    newArraySlice(dtypes),
                    newArraySlice(fake_dtypes),
                    container,
                    shared_name,
                    capacity,
                    memory_limit)


type MapUnstage*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapUnstage/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iimapUnstage[oT: oall](scope: Scope,
                 key: oint64,
                 indices: oint32,
                 dtypes: ArraySlice[DType],
                 container: cstring,
                 shared_name: cstring,
                 capacity: int64,
                 memory_limit: int64,
                 explicitT: type(oT)): MapUnstage[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapUnstage(*#, #, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc mapUnstage*(scope: Scope,
                 key: oint64,
                 indices: oint32,
                 dtypes: openArray[DType],
                 container: cstring,
                 shared_name: cstring,
                 capacity: int64 = 0.int,
                 memory_limit: int64 = 0.int,
                 explicitT: type): auto =
  return iimapUnstage(scope,
                      key,
                      indices,
                      newArraySlice(dtypes),
                      container,
                      shared_name,
                      capacity,
                      memory_limit,
                      explicitT)

converter mapUnstageToOutList*[oT: oall](op: MapUnstage[oT]): olist[oT] {.inline.} = return op.output


type MapUnstageNoKey* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapUnstageNoKey/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iimapUnstageNoKey(scope: Scope,
                      indices: oint32,
                      dtypes: ArraySlice[DType],
                      container: cstring,
                      shared_name: cstring,
                      capacity: int64,
                      memory_limit: int64): MapUnstageNoKey {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MapUnstageNoKey(*#, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc mapUnstageNoKey*(scope: Scope,
                      indices: oint32,
                      dtypes: openArray[DType],
                      container: cstring,
                      shared_name: cstring,
                      capacity: int64 = 0.int,
                      memory_limit: int64 = 0.int): MapUnstageNoKey =
  return iimapUnstageNoKey(scope,
                           indices,
                           newArraySlice(dtypes),
                           container,
                           shared_name,
                           capacity,
                           memory_limit)

converter mapUnstageNoKeyToOut*(op: MapUnstageNoKey): oint64 {.inline.} = return op.output

type MutableDenseHashTablekey_dtype* = oall

type MutableDenseHashTable* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableDenseHashTable/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iimutableDenseHashTable(scope: Scope,
                            empty_key: MutableDenseHashTablekey_dtype,
                            container: cstring,
                            shared_name: cstring,
                            use_node_name_sharing: bool,
                            max_load_factor: float32,
                            value_dtype: DType,
                            value_shape: TensorShape,
                            initial_num_buckets: int64): MutableDenseHashTable {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableDenseHashTable(*#, #, tensorflow::string(#), tensorflow::string(#), #, #, #, #, #)", constructor.}

proc mutableDenseHashTable*(scope: Scope,
                            empty_key: MutableDenseHashTablekey_dtype,
                            container: cstring,
                            shared_name: cstring,
                            use_node_name_sharing: bool = false,
                            max_load_factor: float32 = 0.800000011920929.float32,
                            value_dtype: type oall = oinvalid,
                            value_shape: TensorShape = [].shape,
                            initial_num_buckets: int64 = 131072.int): MutableDenseHashTable =
  return iimutableDenseHashTable(scope,
                                 empty_key,
                                 container,
                                 shared_name,
                                 use_node_name_sharing,
                                 max_load_factor,
                                 value_dtype.oTF,
                                 value_shape,
                                 initial_num_buckets)

converter mutableDenseHashTableToOut*(op: MutableDenseHashTable): ostring {.inline.} = return op.output

type MutableDenseHashTableV2key_dtype* = oall

type MutableDenseHashTableV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableDenseHashTableV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iimutableDenseHashTableV2(scope: Scope,
                              empty_key: MutableDenseHashTableV2key_dtype,
                              deleted_key: MutableDenseHashTableV2key_dtype,
                              container: cstring,
                              shared_name: cstring,
                              use_node_name_sharing: bool,
                              max_load_factor: float32,
                              value_dtype: DType,
                              value_shape: TensorShape,
                              initial_num_buckets: int64): MutableDenseHashTableV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableDenseHashTableV2(*#, #, #, tensorflow::string(#), tensorflow::string(#), #, #, #, #, #)", constructor.}

proc mutableDenseHashTableV2*(scope: Scope,
                              empty_key: MutableDenseHashTableV2key_dtype,
                              deleted_key: MutableDenseHashTableV2key_dtype,
                              container: cstring,
                              shared_name: cstring,
                              use_node_name_sharing: bool = false,
                              max_load_factor: float32 = 0.800000011920929.float32,
                              value_dtype: type oall = oinvalid,
                              value_shape: TensorShape = [].shape,
                              initial_num_buckets: int64 = 131072.int): MutableDenseHashTableV2 =
  return iimutableDenseHashTableV2(scope,
                                   empty_key,
                                   deleted_key,
                                   container,
                                   shared_name,
                                   use_node_name_sharing,
                                   max_load_factor,
                                   value_dtype.oTF,
                                   value_shape,
                                   initial_num_buckets)

converter mutableDenseHashTableV2ToOut*(op: MutableDenseHashTableV2): oresource {.inline.} = return op.output


type MutableHashTable* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableHashTable/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iimutableHashTable(scope: Scope,
                       container: cstring,
                       shared_name: cstring,
                       use_node_name_sharing: bool,
                       key_dtype: DType,
                       value_dtype: DType): MutableHashTable {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableHashTable(*#, tensorflow::string(#), tensorflow::string(#), #, #, #)", constructor.}

proc mutableHashTable*(scope: Scope,
                       container: cstring,
                       shared_name: cstring,
                       use_node_name_sharing: bool = false,
                       key_dtype: type oall = oinvalid,
                       value_dtype: type oall = oinvalid): MutableHashTable =
  return iimutableHashTable(scope,
                            container,
                            shared_name,
                            use_node_name_sharing,
                            key_dtype.oTF,
                            value_dtype.oTF)

converter mutableHashTableToOut*(op: MutableHashTable): ostring {.inline.} = return op.output


type MutableHashTableOfTensors* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableHashTableOfTensors/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iimutableHashTableOfTensors(scope: Scope,
                                container: cstring,
                                shared_name: cstring,
                                use_node_name_sharing: bool,
                                key_dtype: DType,
                                value_dtype: DType,
                                value_shape: TensorShape): MutableHashTableOfTensors {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableHashTableOfTensors(*#, tensorflow::string(#), tensorflow::string(#), #, #, #, #)", constructor.}

proc mutableHashTableOfTensors*(scope: Scope,
                                container: cstring,
                                shared_name: cstring,
                                use_node_name_sharing: bool = false,
                                key_dtype: type oall = oinvalid,
                                value_dtype: type oall = oinvalid,
                                value_shape: TensorShape = [].shape): MutableHashTableOfTensors =
  return iimutableHashTableOfTensors(scope,
                                     container,
                                     shared_name,
                                     use_node_name_sharing,
                                     key_dtype.oTF,
                                     value_dtype.oTF,
                                     value_shape)

converter mutableHashTableOfTensorsToOut*(op: MutableHashTableOfTensors): ostring {.inline.} = return op.output


type MutableHashTableOfTensorsV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableHashTableOfTensorsV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iimutableHashTableOfTensorsV2(scope: Scope,
                                  container: cstring,
                                  shared_name: cstring,
                                  use_node_name_sharing: bool,
                                  key_dtype: DType,
                                  value_dtype: DType,
                                  value_shape: TensorShape): MutableHashTableOfTensorsV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"MutableHashTableOfTensorsV2(*#, tensorflow::string(#), tensorflow::string(#), #, #, #, #)", constructor.}

proc mutableHashTableOfTensorsV2*(scope: Scope,
                                  container: cstring,
                                  shared_name: cstring,
                                  use_node_name_sharing: bool = false,
                                  key_dtype: type oall = oinvalid,
                                  value_dtype: type oall = oinvalid,
                                  value_shape: TensorShape = [].shape): MutableHashTableOfTensorsV2 =
  return iimutableHashTableOfTensorsV2(scope,
                                       container,
                                       shared_name,
                                       use_node_name_sharing,
                                       key_dtype.oTF,
                                       value_dtype.oTF,
                                       value_shape)

converter mutableHashTableOfTensorsV2ToOut*(op: MutableHashTableOfTensorsV2): oresource {.inline.} = return op.output


type OrderedMapClear*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapClear/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiorderedMapClear(scope: Scope,
                      dtypes: ArraySlice[DType],
                      container: cstring,
                      shared_name: cstring,
                      capacity: int64,
                      memory_limit: int64): OrderedMapClear {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapClear(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc orderedMapClear*(scope: Scope,
                      dtypes: openArray[DType],
                      container: cstring,
                      shared_name: cstring,
                      capacity: int64 = 0.int,
                      memory_limit: int64 = 0.int): OrderedMapClear =
  return iiorderedMapClear(scope,
                           newArraySlice(dtypes),
                           container,
                           shared_name,
                           capacity,
                           memory_limit)


type OrderedMapIncompleteSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapIncompleteSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iiorderedMapIncompleteSize(scope: Scope,
                               dtypes: ArraySlice[DType],
                               container: cstring,
                               shared_name: cstring,
                               capacity: int64,
                               memory_limit: int64): OrderedMapIncompleteSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapIncompleteSize(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc orderedMapIncompleteSize*(scope: Scope,
                               dtypes: openArray[DType],
                               container: cstring,
                               shared_name: cstring,
                               capacity: int64 = 0.int,
                               memory_limit: int64 = 0.int): OrderedMapIncompleteSize =
  return iiorderedMapIncompleteSize(scope,
                                    newArraySlice(dtypes),
                                    container,
                                    shared_name,
                                    capacity,
                                    memory_limit)

converter orderedMapIncompleteSizeToOut*(op: OrderedMapIncompleteSize): oint32 {.inline.} = return op.output


type OrderedMapPeek*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapPeek/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiorderedMapPeek[oT: oall](scope: Scope,
                     key: oint64,
                     indices: oint32,
                     dtypes: ArraySlice[DType],
                     container: cstring,
                     shared_name: cstring,
                     capacity: int64,
                     memory_limit: int64,
                     explicitT: type(oT)): OrderedMapPeek[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapPeek(*#, #, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc orderedMapPeek*(scope: Scope,
                     key: oint64,
                     indices: oint32,
                     dtypes: openArray[DType],
                     container: cstring,
                     shared_name: cstring,
                     capacity: int64 = 0.int,
                     memory_limit: int64 = 0.int,
                     explicitT: type): auto =
  return iiorderedMapPeek(scope,
                          key,
                          indices,
                          newArraySlice(dtypes),
                          container,
                          shared_name,
                          capacity,
                          memory_limit,
                          explicitT)

converter orderedMapPeekToOutList*[oT: oall](op: OrderedMapPeek[oT]): olist[oT] {.inline.} = return op.output


type OrderedMapSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapSize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iiorderedMapSize(scope: Scope,
                     dtypes: ArraySlice[DType],
                     container: cstring,
                     shared_name: cstring,
                     capacity: int64,
                     memory_limit: int64): OrderedMapSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapSize(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc orderedMapSize*(scope: Scope,
                     dtypes: openArray[DType],
                     container: cstring,
                     shared_name: cstring,
                     capacity: int64 = 0.int,
                     memory_limit: int64 = 0.int): OrderedMapSize =
  return iiorderedMapSize(scope,
                          newArraySlice(dtypes),
                          container,
                          shared_name,
                          capacity,
                          memory_limit)

converter orderedMapSizeToOut*(op: OrderedMapSize): oint32 {.inline.} = return op.output


type OrderedMapStage*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapStage/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiorderedMapStage(scope: Scope,
                      key: oint64,
                      indices: oint32,
                      values: olist[oall],
                      dtypes: ArraySlice[DType],
                      fake_dtypes: ArraySlice[DType],
                      container: cstring,
                      shared_name: cstring,
                      capacity: int64,
                      memory_limit: int64): OrderedMapStage {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapStage(*#, #, #, #, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc orderedMapStage*(scope: Scope,
                      key: oint64,
                      indices: oint32,
                      values: olist[oall],
                      dtypes: openArray[DType],
                      fake_dtypes: openArray[DType],
                      container: cstring,
                      shared_name: cstring,
                      capacity: int64 = 0.int,
                      memory_limit: int64 = 0.int): OrderedMapStage =
  return iiorderedMapStage(scope,
                           key,
                           indices,
                           values,
                           newArraySlice(dtypes),
                           newArraySlice(fake_dtypes),
                           container,
                           shared_name,
                           capacity,
                           memory_limit)


type OrderedMapUnstage*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapUnstage/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiorderedMapUnstage[oT: oall](scope: Scope,
                        key: oint64,
                        indices: oint32,
                        dtypes: ArraySlice[DType],
                        container: cstring,
                        shared_name: cstring,
                        capacity: int64,
                        memory_limit: int64,
                        explicitT: type(oT)): OrderedMapUnstage[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapUnstage(*#, #, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc orderedMapUnstage*(scope: Scope,
                        key: oint64,
                        indices: oint32,
                        dtypes: openArray[DType],
                        container: cstring,
                        shared_name: cstring,
                        capacity: int64 = 0.int,
                        memory_limit: int64 = 0.int,
                        explicitT: type): auto =
  return iiorderedMapUnstage(scope,
                             key,
                             indices,
                             newArraySlice(dtypes),
                             container,
                             shared_name,
                             capacity,
                             memory_limit,
                             explicitT)

converter orderedMapUnstageToOutList*[oT: oall](op: OrderedMapUnstage[oT]): olist[oT] {.inline.} = return op.output


type OrderedMapUnstageNoKey* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapUnstageNoKey/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiorderedMapUnstageNoKey(scope: Scope,
                             indices: oint32,
                             dtypes: ArraySlice[DType],
                             container: cstring,
                             shared_name: cstring,
                             capacity: int64,
                             memory_limit: int64): OrderedMapUnstageNoKey {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"OrderedMapUnstageNoKey(*#, #, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc orderedMapUnstageNoKey*(scope: Scope,
                             indices: oint32,
                             dtypes: openArray[DType],
                             container: cstring,
                             shared_name: cstring,
                             capacity: int64 = 0.int,
                             memory_limit: int64 = 0.int): OrderedMapUnstageNoKey =
  return iiorderedMapUnstageNoKey(scope,
                                  indices,
                                  newArraySlice(dtypes),
                                  container,
                                  shared_name,
                                  capacity,
                                  memory_limit)

converter orderedMapUnstageNoKeyToOut*(op: OrderedMapUnstageNoKey): oint64 {.inline.} = return op.output


type ParallelDynamicStitch*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"ParallelDynamicStitch/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiparallelDynamicStitch[oT: oall](scope: Scope,
                            indices: olist[oint32],
                            data: olist[oT],
                            T: DType): ParallelDynamicStitch[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"ParallelDynamicStitch(*#, #, #, #)", constructor.}

proc parallelDynamicStitch*[oT: oall](scope: Scope,
                            indices: olist[oint32],
                            data: olist[oT]): ParallelDynamicStitch[oT] =
  return iiparallelDynamicStitch(scope,
                                 indices,
                                 data,
                                 oT.oTF)

converter parallelDynamicStitchToOut*[oT: oall](op: ParallelDynamicStitch[oT]): oT {.inline.} = return op.output


type StackClose*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackClose/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iistackClose(scope: Scope,
                 handle: ostring): StackClose {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackClose(*#, #)", constructor.}

proc stackClose*(scope: Scope,
                 handle: ostring): StackClose =
  return iistackClose(scope,
                      handle)


type StackCloseV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackCloseV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iistackCloseV2(scope: Scope,
                   handle: oresource): StackCloseV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackCloseV2(*#, #)", constructor.}

proc stackCloseV2*(scope: Scope,
                   handle: oresource): StackCloseV2 =
  return iistackCloseV2(scope,
                        handle)


type StackPop*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackPop/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistackPop[oT: oall](scope: Scope,
               handle: ostring,
               elem_type: DType,
               explicitT: type(oT)): StackPop[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackPop(*#, #, #)", constructor.}

proc stackPop*(scope: Scope,
               handle: ostring,
               elem_type: type = oinvalid): auto =
  return iistackPop(scope,
                    handle,
                    elem_type.oTF,
                    elem_type)

converter stackPopToOut*[oT: oall](op: StackPop[oT]): oT {.inline.} = return op.output


type StackPopV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackPopV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistackPopV2[oT: oall](scope: Scope,
                 handle: oresource,
                 elem_type: DType,
                 explicitT: type(oT)): StackPopV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackPopV2(*#, #, #)", constructor.}

proc stackPopV2*(scope: Scope,
                 handle: oresource,
                 elem_type: type = oinvalid): auto =
  return iistackPopV2(scope,
                      handle,
                      elem_type.oTF,
                      elem_type)

converter stackPopV2ToOut*[oT: oall](op: StackPopV2[oT]): oT {.inline.} = return op.output


type StackPushV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackPushV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistackPushV2[oT: oall](scope: Scope,
                  handle: oresource,
                  elem: oT,
                  T: DType,
                  swap_memory: bool): StackPushV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"StackPushV2(*#, #, #, #, #)", constructor.}

proc stackPushV2*[oT: oall](scope: Scope,
                  handle: oresource,
                  elem: oT,
                  swap_memory: bool = false): StackPushV2[oT] =
  return iistackPushV2(scope,
                       handle,
                       elem,
                       oT.oTF,
                       swap_memory)

converter stackPushV2ToOut*[oT: oall](op: StackPushV2[oT]): oT {.inline.} = return op.output


type TakeManySparseFromTensorsMap* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TakeManySparseFromTensorsMap/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iitakeManySparseFromTensorsMap(scope: Scope,
                                   sparse_handles: oint64,
                                   container: cstring,
                                   shared_name: cstring,
                                   dtype: DType): TakeManySparseFromTensorsMap {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TakeManySparseFromTensorsMap(*#, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc takeManySparseFromTensorsMap*(scope: Scope,
                                   sparse_handles: oint64,
                                   container: cstring,
                                   shared_name: cstring,
                                   dtype: type oall = oinvalid): TakeManySparseFromTensorsMap =
  return iitakeManySparseFromTensorsMap(scope,
                                        sparse_handles,
                                        container,
                                        shared_name,
                                        dtype.oTF)

converter takeManySparseFromTensorsMapToOut*(op: TakeManySparseFromTensorsMap): oint64 {.inline.} = return op.output


type TensorArray* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArray/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitensorArray(scope: Scope,
                  size: oint32,
                  tensor_array_name: cstring,
                  dtype: DType,
                  dynamic_size: bool,
                  clear_after_read: bool,
                  element_shape: TensorShape): TensorArray {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArray(*#, #, tensorflow::string(#), #, #, #, #)", constructor.}

proc tensorArray*(scope: Scope,
                  size: oint32,
                  tensor_array_name: cstring,
                  dtype: type oall = oinvalid,
                  dynamic_size: bool = false,
                  clear_after_read: bool = true,
                  element_shape: TensorShape = [].shape): TensorArray =
  return iitensorArray(scope,
                       size,
                       tensor_array_name,
                       dtype.oTF,
                       dynamic_size,
                       clear_after_read,
                       element_shape)

converter tensorArrayToOut*(op: TensorArray): ostring {.inline.} = return op.output


type TensorArrayClose*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayClose/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iitensorArrayClose(scope: Scope,
                       handle: ostring): TensorArrayClose {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayClose(*#, #)", constructor.}

proc tensorArrayClose*(scope: Scope,
                       handle: ostring): TensorArrayClose =
  return iitensorArrayClose(scope,
                            handle)


type TensorArrayCloseV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayCloseV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iitensorArrayCloseV2(scope: Scope,
                         handle: ostring): TensorArrayCloseV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayCloseV2(*#, #)", constructor.}

proc tensorArrayCloseV2*(scope: Scope,
                         handle: ostring): TensorArrayCloseV2 =
  return iitensorArrayCloseV2(scope,
                              handle)


type TensorArrayCloseV3*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayCloseV3/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iitensorArrayCloseV3(scope: Scope,
                         handle: oresource): TensorArrayCloseV3 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayCloseV3(*#, #)", constructor.}

proc tensorArrayCloseV3*(scope: Scope,
                         handle: oresource): TensorArrayCloseV3 =
  return iitensorArrayCloseV3(scope,
                              handle)


type TensorArrayConcat*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayConcat/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayConcat[oT: oall](scope: Scope,
                        handle: ostring,
                        flow_in: ofloat,
                        dtype: DType,
                        element_shape_except0: TensorShape,
                        explicitT: type(oT)): TensorArrayConcat[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayConcat(*#, #, #, #, #)", constructor.}

proc tensorArrayConcat*(scope: Scope,
                        handle: ostring,
                        flow_in: ofloat,
                        dtype: type = oinvalid,
                        element_shape_except0: TensorShape = [].shape): auto =
  return iitensorArrayConcat(scope,
                             handle,
                             flow_in,
                             dtype.oTF,
                             element_shape_except0,
                             dtype)

converter tensorArrayConcatToOut*[oT: oall](op: TensorArrayConcat[oT]): oT {.inline.} = return op.output


type TensorArrayConcatV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayConcatV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayConcatV2[oT: oall](scope: Scope,
                          handle: ostring,
                          flow_in: ofloat,
                          dtype: DType,
                          element_shape_except0: TensorShape,
                          explicitT: type(oT)): TensorArrayConcatV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayConcatV2(*#, #, #, #, #)", constructor.}

proc tensorArrayConcatV2*(scope: Scope,
                          handle: ostring,
                          flow_in: ofloat,
                          dtype: type = oinvalid,
                          element_shape_except0: TensorShape = [].shape): auto =
  return iitensorArrayConcatV2(scope,
                               handle,
                               flow_in,
                               dtype.oTF,
                               element_shape_except0,
                               dtype)

converter tensorArrayConcatV2ToOut*[oT: oall](op: TensorArrayConcatV2[oT]): oT {.inline.} = return op.output


type TensorArrayConcatV3*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayConcatV3/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayConcatV3[oT: oall](scope: Scope,
                          handle: oresource,
                          flow_in: ofloat,
                          dtype: DType,
                          element_shape_except0: TensorShape,
                          explicitT: type(oT)): TensorArrayConcatV3[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayConcatV3(*#, #, #, #, #)", constructor.}

proc tensorArrayConcatV3*(scope: Scope,
                          handle: oresource,
                          flow_in: ofloat,
                          dtype: type = oinvalid,
                          element_shape_except0: TensorShape = [].shape): auto =
  return iitensorArrayConcatV3(scope,
                               handle,
                               flow_in,
                               dtype.oTF,
                               element_shape_except0,
                               dtype)

converter tensorArrayConcatV3ToOut*[oT: oall](op: TensorArrayConcatV3[oT]): oT {.inline.} = return op.output


type TensorArrayGather*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGather/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayGather[oT: oall](scope: Scope,
                        handle: ostring,
                        indices: oint32,
                        flow_in: ofloat,
                        dtype: DType,
                        element_shape: TensorShape,
                        explicitT: type(oT)): TensorArrayGather[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGather(*#, #, #, #, #, #)", constructor.}

proc tensorArrayGather*(scope: Scope,
                        handle: ostring,
                        indices: oint32,
                        flow_in: ofloat,
                        dtype: type = oinvalid,
                        element_shape: TensorShape = [].shape): auto =
  return iitensorArrayGather(scope,
                             handle,
                             indices,
                             flow_in,
                             dtype.oTF,
                             element_shape,
                             dtype)

converter tensorArrayGatherToOut*[oT: oall](op: TensorArrayGather[oT]): oT {.inline.} = return op.output


type TensorArrayGatherV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGatherV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayGatherV2[oT: oall](scope: Scope,
                          handle: ostring,
                          indices: oint32,
                          flow_in: ofloat,
                          dtype: DType,
                          element_shape: TensorShape,
                          explicitT: type(oT)): TensorArrayGatherV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGatherV2(*#, #, #, #, #, #)", constructor.}

proc tensorArrayGatherV2*(scope: Scope,
                          handle: ostring,
                          indices: oint32,
                          flow_in: ofloat,
                          dtype: type = oinvalid,
                          element_shape: TensorShape = [].shape): auto =
  return iitensorArrayGatherV2(scope,
                               handle,
                               indices,
                               flow_in,
                               dtype.oTF,
                               element_shape,
                               dtype)

converter tensorArrayGatherV2ToOut*[oT: oall](op: TensorArrayGatherV2[oT]): oT {.inline.} = return op.output


type TensorArrayGatherV3*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGatherV3/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayGatherV3[oT: oall](scope: Scope,
                          handle: oresource,
                          indices: oint32,
                          flow_in: ofloat,
                          dtype: DType,
                          element_shape: TensorShape,
                          explicitT: type(oT)): TensorArrayGatherV3[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGatherV3(*#, #, #, #, #, #)", constructor.}

proc tensorArrayGatherV3*(scope: Scope,
                          handle: oresource,
                          indices: oint32,
                          flow_in: ofloat,
                          dtype: type = oinvalid,
                          element_shape: TensorShape = [].shape): auto =
  return iitensorArrayGatherV3(scope,
                               handle,
                               indices,
                               flow_in,
                               dtype.oTF,
                               element_shape,
                               dtype)

converter tensorArrayGatherV3ToOut*[oT: oall](op: TensorArrayGatherV3[oT]): oT {.inline.} = return op.output


type TensorArrayGrad* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGrad/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitensorArrayGrad(scope: Scope,
                      handle: ostring,
                      flow_in: ofloat,
                      source: cstring): TensorArrayGrad {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGrad(*#, #, #, tensorflow::string(#))", constructor.}

proc tensorArrayGrad*(scope: Scope,
                      handle: ostring,
                      flow_in: ofloat,
                      source: cstring): TensorArrayGrad =
  return iitensorArrayGrad(scope,
                           handle,
                           flow_in,
                           source)

converter tensorArrayGradToOut*(op: TensorArrayGrad): ostring {.inline.} = return op.output


type TensorArrayGradV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGradV2/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitensorArrayGradV2(scope: Scope,
                        handle: ostring,
                        flow_in: ofloat,
                        source: cstring): TensorArrayGradV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGradV2(*#, #, #, tensorflow::string(#))", constructor.}

proc tensorArrayGradV2*(scope: Scope,
                        handle: ostring,
                        flow_in: ofloat,
                        source: cstring): TensorArrayGradV2 =
  return iitensorArrayGradV2(scope,
                             handle,
                             flow_in,
                             source)

converter tensorArrayGradV2ToOut*(op: TensorArrayGradV2): ostring {.inline.} = return op.output


type TensorArrayGradV3* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGradV3/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iitensorArrayGradV3(scope: Scope,
                        handle: oresource,
                        flow_in: ofloat,
                        source: cstring): TensorArrayGradV3 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGradV3(*#, #, #, tensorflow::string(#))", constructor.}

proc tensorArrayGradV3*(scope: Scope,
                        handle: oresource,
                        flow_in: ofloat,
                        source: cstring): TensorArrayGradV3 =
  return iitensorArrayGradV3(scope,
                             handle,
                             flow_in,
                             source)

converter tensorArrayGradV3ToOut*(op: TensorArrayGradV3): oresource {.inline.} = return op.output


type TensorArrayGradWithShape* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGradWithShape/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iitensorArrayGradWithShape(scope: Scope,
                               handle: oresource,
                               flow_in: ofloat,
                               shape_to_prepend: oint32,
                               source: cstring): TensorArrayGradWithShape {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayGradWithShape(*#, #, #, #, tensorflow::string(#))", constructor.}

proc tensorArrayGradWithShape*(scope: Scope,
                               handle: oresource,
                               flow_in: ofloat,
                               shape_to_prepend: oint32,
                               source: cstring): TensorArrayGradWithShape =
  return iitensorArrayGradWithShape(scope,
                                    handle,
                                    flow_in,
                                    shape_to_prepend,
                                    source)

converter tensorArrayGradWithShapeToOut*(op: TensorArrayGradWithShape): oresource {.inline.} = return op.output


type TensorArrayPack*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayPack/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayPack[oT: oall](scope: Scope,
                      handle: ostring,
                      flow_in: ofloat,
                      dtype: DType,
                      element_shape: TensorShape,
                      explicitT: type(oT)): TensorArrayPack[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayPack(*#, #, #, #, #)", constructor.}

proc tensorArrayPack*(scope: Scope,
                      handle: ostring,
                      flow_in: ofloat,
                      dtype: type = oinvalid,
                      element_shape: TensorShape = [].shape): auto =
  return iitensorArrayPack(scope,
                           handle,
                           flow_in,
                           dtype.oTF,
                           element_shape,
                           dtype)

converter tensorArrayPackToOut*[oT: oall](op: TensorArrayPack[oT]): oT {.inline.} = return op.output


type TensorArrayRead*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayRead/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayRead[oT: oall](scope: Scope,
                      handle: ostring,
                      index: oint32,
                      flow_in: ofloat,
                      dtype: DType,
                      explicitT: type(oT)): TensorArrayRead[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayRead(*#, #, #, #, #)", constructor.}

proc tensorArrayRead*(scope: Scope,
                      handle: ostring,
                      index: oint32,
                      flow_in: ofloat,
                      dtype: type = oinvalid): auto =
  return iitensorArrayRead(scope,
                           handle,
                           index,
                           flow_in,
                           dtype.oTF,
                           dtype)

converter tensorArrayReadToOut*[oT: oall](op: TensorArrayRead[oT]): oT {.inline.} = return op.output


type TensorArrayReadV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayReadV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayReadV2[oT: oall](scope: Scope,
                        handle: ostring,
                        index: oint32,
                        flow_in: ofloat,
                        dtype: DType,
                        explicitT: type(oT)): TensorArrayReadV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayReadV2(*#, #, #, #, #)", constructor.}

proc tensorArrayReadV2*(scope: Scope,
                        handle: ostring,
                        index: oint32,
                        flow_in: ofloat,
                        dtype: type = oinvalid): auto =
  return iitensorArrayReadV2(scope,
                             handle,
                             index,
                             flow_in,
                             dtype.oTF,
                             dtype)

converter tensorArrayReadV2ToOut*[oT: oall](op: TensorArrayReadV2[oT]): oT {.inline.} = return op.output


type TensorArrayReadV3*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayReadV3/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorArrayReadV3[oT: oall](scope: Scope,
                        handle: oresource,
                        index: oint32,
                        flow_in: ofloat,
                        dtype: DType,
                        explicitT: type(oT)): TensorArrayReadV3[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayReadV3(*#, #, #, #, #)", constructor.}

proc tensorArrayReadV3*(scope: Scope,
                        handle: oresource,
                        index: oint32,
                        flow_in: ofloat,
                        dtype: type = oinvalid): auto =
  return iitensorArrayReadV3(scope,
                             handle,
                             index,
                             flow_in,
                             dtype.oTF,
                             dtype)

converter tensorArrayReadV3ToOut*[oT: oall](op: TensorArrayReadV3[oT]): oT {.inline.} = return op.output

type TensorArrayScatterT* = oall

type TensorArrayScatter* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayScatter/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArrayScatter(scope: Scope,
                         handle: ostring,
                         indices: oint32,
                         value: TensorArrayScatterT,
                         flow_in: ofloat): TensorArrayScatter {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayScatter(*#, #, #, #, #)", constructor.}

proc tensorArrayScatter*(scope: Scope,
                         handle: ostring,
                         indices: oint32,
                         value: TensorArrayScatterT,
                         flow_in: ofloat): TensorArrayScatter =
  return iitensorArrayScatter(scope,
                              handle,
                              indices,
                              value,
                              flow_in)

converter tensorArrayScatterToOut*(op: TensorArrayScatter): ofloat {.inline.} = return op.output

type TensorArrayScatterV2T* = oall

type TensorArrayScatterV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayScatterV2/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArrayScatterV2(scope: Scope,
                           handle: ostring,
                           indices: oint32,
                           value: TensorArrayScatterV2T,
                           flow_in: ofloat): TensorArrayScatterV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayScatterV2(*#, #, #, #, #)", constructor.}

proc tensorArrayScatterV2*(scope: Scope,
                           handle: ostring,
                           indices: oint32,
                           value: TensorArrayScatterV2T,
                           flow_in: ofloat): TensorArrayScatterV2 =
  return iitensorArrayScatterV2(scope,
                                handle,
                                indices,
                                value,
                                flow_in)

converter tensorArrayScatterV2ToOut*(op: TensorArrayScatterV2): ofloat {.inline.} = return op.output

type TensorArrayScatterV3T* = oall

type TensorArrayScatterV3* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayScatterV3/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArrayScatterV3(scope: Scope,
                           handle: oresource,
                           indices: oint32,
                           value: TensorArrayScatterV3T,
                           flow_in: ofloat): TensorArrayScatterV3 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayScatterV3(*#, #, #, #, #)", constructor.}

proc tensorArrayScatterV3*(scope: Scope,
                           handle: oresource,
                           indices: oint32,
                           value: TensorArrayScatterV3T,
                           flow_in: ofloat): TensorArrayScatterV3 =
  return iitensorArrayScatterV3(scope,
                                handle,
                                indices,
                                value,
                                flow_in)

converter tensorArrayScatterV3ToOut*(op: TensorArrayScatterV3): ofloat {.inline.} = return op.output


type TensorArraySize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySize/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iitensorArraySize(scope: Scope,
                      handle: ostring,
                      flow_in: ofloat): TensorArraySize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySize(*#, #, #)", constructor.}

proc tensorArraySize*(scope: Scope,
                      handle: ostring,
                      flow_in: ofloat): TensorArraySize =
  return iitensorArraySize(scope,
                           handle,
                           flow_in)

converter tensorArraySizeToOut*(op: TensorArraySize): oint32 {.inline.} = return op.output


type TensorArraySizeV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySizeV2/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iitensorArraySizeV2(scope: Scope,
                        handle: ostring,
                        flow_in: ofloat): TensorArraySizeV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySizeV2(*#, #, #)", constructor.}

proc tensorArraySizeV2*(scope: Scope,
                        handle: ostring,
                        flow_in: ofloat): TensorArraySizeV2 =
  return iitensorArraySizeV2(scope,
                             handle,
                             flow_in)

converter tensorArraySizeV2ToOut*(op: TensorArraySizeV2): oint32 {.inline.} = return op.output


type TensorArraySizeV3* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySizeV3/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iitensorArraySizeV3(scope: Scope,
                        handle: oresource,
                        flow_in: ofloat): TensorArraySizeV3 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySizeV3(*#, #, #)", constructor.}

proc tensorArraySizeV3*(scope: Scope,
                        handle: oresource,
                        flow_in: ofloat): TensorArraySizeV3 =
  return iitensorArraySizeV3(scope,
                             handle,
                             flow_in)

converter tensorArraySizeV3ToOut*(op: TensorArraySizeV3): oint32 {.inline.} = return op.output

type TensorArraySplitT* = oall

type TensorArraySplit* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySplit/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArraySplit(scope: Scope,
                       handle: ostring,
                       value: TensorArraySplitT,
                       lengths: oint64,
                       flow_in: ofloat): TensorArraySplit {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySplit(*#, #, #, #, #)", constructor.}

proc tensorArraySplit*(scope: Scope,
                       handle: ostring,
                       value: TensorArraySplitT,
                       lengths: oint64,
                       flow_in: ofloat): TensorArraySplit =
  return iitensorArraySplit(scope,
                            handle,
                            value,
                            lengths,
                            flow_in)

converter tensorArraySplitToOut*(op: TensorArraySplit): ofloat {.inline.} = return op.output

type TensorArraySplitV2T* = oall

type TensorArraySplitV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySplitV2/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArraySplitV2(scope: Scope,
                         handle: ostring,
                         value: TensorArraySplitV2T,
                         lengths: oint64,
                         flow_in: ofloat): TensorArraySplitV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySplitV2(*#, #, #, #, #)", constructor.}

proc tensorArraySplitV2*(scope: Scope,
                         handle: ostring,
                         value: TensorArraySplitV2T,
                         lengths: oint64,
                         flow_in: ofloat): TensorArraySplitV2 =
  return iitensorArraySplitV2(scope,
                              handle,
                              value,
                              lengths,
                              flow_in)

converter tensorArraySplitV2ToOut*(op: TensorArraySplitV2): ofloat {.inline.} = return op.output

type TensorArraySplitV3T* = oall

type TensorArraySplitV3* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySplitV3/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArraySplitV3(scope: Scope,
                         handle: oresource,
                         value: TensorArraySplitV3T,
                         lengths: oint64,
                         flow_in: ofloat): TensorArraySplitV3 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArraySplitV3(*#, #, #, #, #)", constructor.}

proc tensorArraySplitV3*(scope: Scope,
                         handle: oresource,
                         value: TensorArraySplitV3T,
                         lengths: oint64,
                         flow_in: ofloat): TensorArraySplitV3 =
  return iitensorArraySplitV3(scope,
                              handle,
                              value,
                              lengths,
                              flow_in)

converter tensorArraySplitV3ToOut*(op: TensorArraySplitV3): ofloat {.inline.} = return op.output

type TensorArrayUnpackT* = oall

type TensorArrayUnpack* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayUnpack/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArrayUnpack(scope: Scope,
                        handle: ostring,
                        value: TensorArrayUnpackT,
                        flow_in: ofloat): TensorArrayUnpack {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayUnpack(*#, #, #, #)", constructor.}

proc tensorArrayUnpack*(scope: Scope,
                        handle: ostring,
                        value: TensorArrayUnpackT,
                        flow_in: ofloat): TensorArrayUnpack =
  return iitensorArrayUnpack(scope,
                             handle,
                             value,
                             flow_in)

converter tensorArrayUnpackToOut*(op: TensorArrayUnpack): ofloat {.inline.} = return op.output


type TensorArrayV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayV2/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitensorArrayV2(scope: Scope,
                    size: oint32,
                    tensor_array_name: cstring,
                    dtype: DType,
                    element_shape: TensorShape,
                    dynamic_size: bool,
                    clear_after_read: bool): TensorArrayV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayV2(*#, #, tensorflow::string(#), #, #, #, #)", constructor.}

proc tensorArrayV2*(scope: Scope,
                    size: oint32,
                    tensor_array_name: cstring,
                    dtype: type oall = oinvalid,
                    element_shape: TensorShape = [].shape,
                    dynamic_size: bool = false,
                    clear_after_read: bool = true): TensorArrayV2 =
  return iitensorArrayV2(scope,
                         size,
                         tensor_array_name,
                         dtype.oTF,
                         element_shape,
                         dynamic_size,
                         clear_after_read)

converter tensorArrayV2ToOut*(op: TensorArrayV2): ostring {.inline.} = return op.output


type TensorArrayV3* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayV3/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iitensorArrayV3(scope: Scope,
                    size: oint32,
                    tensor_array_name: cstring,
                    dtype: DType,
                    element_shape: TensorShape,
                    dynamic_size: bool,
                    clear_after_read: bool,
                    identical_element_shapes: bool): TensorArrayV3 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayV3(*#, #, tensorflow::string(#), #, #, #, #, #)", constructor.}

proc tensorArrayV3*(scope: Scope,
                    size: oint32,
                    tensor_array_name: cstring,
                    dtype: type oall = oinvalid,
                    element_shape: TensorShape = [].shape,
                    dynamic_size: bool = false,
                    clear_after_read: bool = true,
                    identical_element_shapes: bool = false): TensorArrayV3 =
  return iitensorArrayV3(scope,
                         size,
                         tensor_array_name,
                         dtype.oTF,
                         element_shape,
                         dynamic_size,
                         clear_after_read,
                         identical_element_shapes)

converter tensorArrayV3ToOut*(op: TensorArrayV3): oresource {.inline.} = return op.output

type TensorArrayWriteT* = oall

type TensorArrayWrite* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayWrite/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArrayWrite(scope: Scope,
                       handle: ostring,
                       index: oint32,
                       value: TensorArrayWriteT,
                       flow_in: ofloat): TensorArrayWrite {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayWrite(*#, #, #, #, #)", constructor.}

proc tensorArrayWrite*(scope: Scope,
                       handle: ostring,
                       index: oint32,
                       value: TensorArrayWriteT,
                       flow_in: ofloat): TensorArrayWrite =
  return iitensorArrayWrite(scope,
                            handle,
                            index,
                            value,
                            flow_in)

converter tensorArrayWriteToOut*(op: TensorArrayWrite): ofloat {.inline.} = return op.output

type TensorArrayWriteV2T* = oall

type TensorArrayWriteV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayWriteV2/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArrayWriteV2(scope: Scope,
                         handle: ostring,
                         index: oint32,
                         value: TensorArrayWriteV2T,
                         flow_in: ofloat): TensorArrayWriteV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayWriteV2(*#, #, #, #, #)", constructor.}

proc tensorArrayWriteV2*(scope: Scope,
                         handle: ostring,
                         index: oint32,
                         value: TensorArrayWriteV2T,
                         flow_in: ofloat): TensorArrayWriteV2 =
  return iitensorArrayWriteV2(scope,
                              handle,
                              index,
                              value,
                              flow_in)

converter tensorArrayWriteV2ToOut*(op: TensorArrayWriteV2): ofloat {.inline.} = return op.output

type TensorArrayWriteV3T* = oall

type TensorArrayWriteV3* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayWriteV3/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iitensorArrayWriteV3(scope: Scope,
                         handle: oresource,
                         index: oint32,
                         value: TensorArrayWriteV3T,
                         flow_in: ofloat): TensorArrayWriteV3 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/datastructure/datastructure.h", importcpp:"TensorArrayWriteV3(*#, #, #, #, #)", constructor.}

proc tensorArrayWriteV3*(scope: Scope,
                         handle: oresource,
                         index: oint32,
                         value: TensorArrayWriteV3T,
                         flow_in: ofloat): TensorArrayWriteV3 =
  return iitensorArrayWriteV3(scope,
                              handle,
                              index,
                              value,
                              flow_in)

converter tensorArrayWriteV3ToOut*(op: TensorArrayWriteV3): ofloat {.inline.} = return op.output

