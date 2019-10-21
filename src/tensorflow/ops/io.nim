import ../core

{.compile:"io/io.cc".}

type DeserializeSparseTserialized* = ostring | ovariant

type DeserializeSparse* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"DeserializeSparse/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iideserializeSparse(scope: Scope,
                        serialized_sparse: DeserializeSparseTserialized,
                        dtype: DType): DeserializeSparse {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"DeserializeSparse(*#, #, #)", constructor.}

proc deserializeSparse*(scope: Scope,
                        serialized_sparse: DeserializeSparseTserialized,
                        dtype: type oall = oinvalid): DeserializeSparse =
  return iideserializeSparse(scope,
                             serialized_sparse,
                             dtype.oTF)

converter deserializeSparseToOut*(op: DeserializeSparse): oint64 {.inline.} = return op.output


type FixedLengthRecordReader* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"FixedLengthRecordReader/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iifixedLengthRecordReader(scope: Scope,
                              container: cstring,
                              shared_name: cstring,
                              header_bytes: int64,
                              record_bytes: int64,
                              footer_bytes: int64,
                              hop_bytes: int64): FixedLengthRecordReader {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"FixedLengthRecordReader(*#, tensorflow::string(#), tensorflow::string(#), #, #, #, #)", constructor.}

proc fixedLengthRecordReader*(scope: Scope,
                              container: cstring,
                              shared_name: cstring,
                              header_bytes: int64 = 0.int,
                              record_bytes: int64 = 0.int,
                              footer_bytes: int64 = 0.int,
                              hop_bytes: int64 = 0.int): FixedLengthRecordReader =
  return iifixedLengthRecordReader(scope,
                                   container,
                                   shared_name,
                                   header_bytes,
                                   record_bytes,
                                   footer_bytes,
                                   hop_bytes)

converter fixedLengthRecordReaderToOut*(op: FixedLengthRecordReader): ostring {.inline.} = return op.output


type FixedLengthRecordReaderV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"FixedLengthRecordReaderV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iifixedLengthRecordReaderV2(scope: Scope,
                                container: cstring,
                                shared_name: cstring,
                                encoding: cstring,
                                header_bytes: int64,
                                record_bytes: int64,
                                footer_bytes: int64,
                                hop_bytes: int64): FixedLengthRecordReaderV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"FixedLengthRecordReaderV2(*#, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #, #, #)", constructor.}

proc fixedLengthRecordReaderV2*(scope: Scope,
                                container: cstring,
                                shared_name: cstring,
                                encoding: cstring,
                                header_bytes: int64 = 0.int,
                                record_bytes: int64 = 0.int,
                                footer_bytes: int64 = 0.int,
                                hop_bytes: int64 = 0.int): FixedLengthRecordReaderV2 =
  return iifixedLengthRecordReaderV2(scope,
                                     container,
                                     shared_name,
                                     encoding,
                                     header_bytes,
                                     record_bytes,
                                     footer_bytes,
                                     hop_bytes)

converter fixedLengthRecordReaderV2ToOut*(op: FixedLengthRecordReaderV2): oresource {.inline.} = return op.output


type GcsConfigureBlockCache*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"GcsConfigureBlockCache/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iigcsConfigureBlockCache(scope: Scope,
                             max_cache_size: ouint64,
                             block_size: ouint64,
                             max_staleness: ouint64): GcsConfigureBlockCache {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"GcsConfigureBlockCache(*#, #, #, #)", constructor.}

proc gcsConfigureBlockCache*(scope: Scope,
                             max_cache_size: ouint64,
                             block_size: ouint64,
                             max_staleness: ouint64): GcsConfigureBlockCache =
  return iigcsConfigureBlockCache(scope,
                                  max_cache_size,
                                  block_size,
                                  max_staleness)

    # If the values are the same as already configured values, this op is a no-op. If
    # they are different, the current contents of the block cache is dropped, and a
    # new block cache is created fresh.


type GcsConfigureCredentials*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"GcsConfigureCredentials/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iigcsConfigureCredentials(scope: Scope,
                              json: ostring): GcsConfigureCredentials {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"GcsConfigureCredentials(*#, #)", constructor.}

proc gcsConfigureCredentials*(scope: Scope,
                              json: ostring): GcsConfigureCredentials =
  return iigcsConfigureCredentials(scope,
                                   json)

    # The json input can be of the format:
    # 
    # 1. Refresh Token:
    # {
    #   "client_id": "<redacted>",
    #   "client_secret": "<redacted>",
    #   "refresh_token: "<redacted>",
    #   "type": "authorized_user",
    # }
    # 
    # 2. Service Account:
    # {
    #   "type": "service_account",
    #   "project_id": "<redacted>",
    #   "private_key_id": "<redacted>",
    #   "private_key": "------BEGIN PRIVATE KEY-----\n<REDACTED>\n-----END PRIVATE KEY------\n",
    #   "client_email": "<REDACTED>@<REDACTED>.iam.gserviceaccount.com",
    #   "client_id": "<REDACTED>",
    #   # Some additional fields elided
    # }
    # 
    # Note the credentials established through this method are shared across all
    # sessions run on this runtime.
    # 
    # Note be sure to feed the inputs to this op to ensure the credentials are not
    # stored in a constant op within the graph that might accidentally be checkpointed
    # or in other ways be persisted or exfiltrated.


type IdentityReader* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"IdentityReader/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiidentityReader(scope: Scope,
                     container: cstring,
                     shared_name: cstring): IdentityReader {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"IdentityReader(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc identityReader*(scope: Scope,
                     container: cstring,
                     shared_name: cstring): IdentityReader =
  return iiidentityReader(scope,
                          container,
                          shared_name)

converter identityReaderToOut*(op: IdentityReader): ostring {.inline.} = return op.output


type IdentityReaderV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"IdentityReaderV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiidentityReaderV2(scope: Scope,
                       container: cstring,
                       shared_name: cstring): IdentityReaderV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"IdentityReaderV2(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc identityReaderV2*(scope: Scope,
                       container: cstring,
                       shared_name: cstring): IdentityReaderV2 =
  return iiidentityReaderV2(scope,
                            container,
                            shared_name)

converter identityReaderV2ToOut*(op: IdentityReaderV2): oresource {.inline.} = return op.output


type LMDBReader* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"LMDBReader/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iilMDBReader(scope: Scope,
                 container: cstring,
                 shared_name: cstring): LMDBReader {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"LMDBReader(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc lMDBReader*(scope: Scope,
                 container: cstring,
                 shared_name: cstring): LMDBReader =
  return iilMDBReader(scope,
                      container,
                      shared_name)

converter lMDBReaderToOut*(op: LMDBReader): ostring {.inline.} = return op.output


type MatchingFiles* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"MatchingFiles/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iimatchingFiles(scope: Scope,
                    pattern: ostring): MatchingFiles {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"MatchingFiles(*#, #)", constructor.}

proc matchingFiles*(scope: Scope,
                    pattern: ostring): MatchingFiles =
  return iimatchingFiles(scope,
                         pattern)

converter matchingFilesToOut*(op: MatchingFiles): ostring {.inline.} = return op.output


type MergeV2Checkpoints*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"MergeV2Checkpoints/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iimergeV2Checkpoints(scope: Scope,
                         checkpoint_prefixes: ostring,
                         destination_prefix: ostring,
                         delete_old_dirs: bool): MergeV2Checkpoints {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"MergeV2Checkpoints(*#, #, #, #)", constructor.}

proc mergeV2Checkpoints*(scope: Scope,
                         checkpoint_prefixes: ostring,
                         destination_prefix: ostring,
                         delete_old_dirs: bool = true): MergeV2Checkpoints =
  return iimergeV2Checkpoints(scope,
                              checkpoint_prefixes,
                              destination_prefix,
                              delete_old_dirs)


type ReadFile* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReadFile/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iireadFile(scope: Scope,
               filename: ostring): ReadFile {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReadFile(*#, #)", constructor.}

proc readFile*(scope: Scope,
               filename: ostring): ReadFile =
  return iireadFile(scope,
                    filename)

converter readFileToOut*(op: ReadFile): ostring {.inline.} = return op.output


type ReaderNumRecordsProduced* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderNumRecordsProduced/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iireaderNumRecordsProduced(scope: Scope,
                               reader_handle: ostring): ReaderNumRecordsProduced {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderNumRecordsProduced(*#, #)", constructor.}

proc readerNumRecordsProduced*(scope: Scope,
                               reader_handle: ostring): ReaderNumRecordsProduced =
  return iireaderNumRecordsProduced(scope,
                                    reader_handle)

converter readerNumRecordsProducedToOut*(op: ReaderNumRecordsProduced): oint64 {.inline.} = return op.output


type ReaderNumRecordsProducedV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderNumRecordsProducedV2/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iireaderNumRecordsProducedV2(scope: Scope,
                                 reader_handle: oresource): ReaderNumRecordsProducedV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderNumRecordsProducedV2(*#, #)", constructor.}

proc readerNumRecordsProducedV2*(scope: Scope,
                                 reader_handle: oresource): ReaderNumRecordsProducedV2 =
  return iireaderNumRecordsProducedV2(scope,
                                      reader_handle)

converter readerNumRecordsProducedV2ToOut*(op: ReaderNumRecordsProducedV2): oint64 {.inline.} = return op.output


type ReaderNumWorkUnitsCompleted* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderNumWorkUnitsCompleted/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iireaderNumWorkUnitsCompleted(scope: Scope,
                                  reader_handle: ostring): ReaderNumWorkUnitsCompleted {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderNumWorkUnitsCompleted(*#, #)", constructor.}

proc readerNumWorkUnitsCompleted*(scope: Scope,
                                  reader_handle: ostring): ReaderNumWorkUnitsCompleted =
  return iireaderNumWorkUnitsCompleted(scope,
                                       reader_handle)

converter readerNumWorkUnitsCompletedToOut*(op: ReaderNumWorkUnitsCompleted): oint64 {.inline.} = return op.output


type ReaderNumWorkUnitsCompletedV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderNumWorkUnitsCompletedV2/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iireaderNumWorkUnitsCompletedV2(scope: Scope,
                                    reader_handle: oresource): ReaderNumWorkUnitsCompletedV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderNumWorkUnitsCompletedV2(*#, #)", constructor.}

proc readerNumWorkUnitsCompletedV2*(scope: Scope,
                                    reader_handle: oresource): ReaderNumWorkUnitsCompletedV2 =
  return iireaderNumWorkUnitsCompletedV2(scope,
                                         reader_handle)

converter readerNumWorkUnitsCompletedV2ToOut*(op: ReaderNumWorkUnitsCompletedV2): oint64 {.inline.} = return op.output


type ReaderRead* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderRead/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iireaderRead(scope: Scope,
                 reader_handle: ostring,
                 queue_handle: ostring): ReaderRead {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderRead(*#, #, #)", constructor.}

proc readerRead*(scope: Scope,
                 reader_handle: ostring,
                 queue_handle: ostring): ReaderRead =
  return iireaderRead(scope,
                      reader_handle,
                      queue_handle)

converter readerReadToOut*(op: ReaderRead): ostring {.inline.} = return op.output


type ReaderReadUpTo* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderReadUpTo/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iireaderReadUpTo(scope: Scope,
                     reader_handle: ostring,
                     queue_handle: ostring,
                     num_records: oint64): ReaderReadUpTo {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderReadUpTo(*#, #, #, #)", constructor.}

proc readerReadUpTo*(scope: Scope,
                     reader_handle: ostring,
                     queue_handle: ostring,
                     num_records: oint64): ReaderReadUpTo =
  return iireaderReadUpTo(scope,
                          reader_handle,
                          queue_handle,
                          num_records)

converter readerReadUpToToOut*(op: ReaderReadUpTo): ostring {.inline.} = return op.output


type ReaderReadUpToV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderReadUpToV2/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iireaderReadUpToV2(scope: Scope,
                       reader_handle: oresource,
                       queue_handle: oresource,
                       num_records: oint64): ReaderReadUpToV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderReadUpToV2(*#, #, #, #)", constructor.}

proc readerReadUpToV2*(scope: Scope,
                       reader_handle: oresource,
                       queue_handle: oresource,
                       num_records: oint64): ReaderReadUpToV2 =
  return iireaderReadUpToV2(scope,
                            reader_handle,
                            queue_handle,
                            num_records)

converter readerReadUpToV2ToOut*(op: ReaderReadUpToV2): ostring {.inline.} = return op.output


type ReaderReadV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderReadV2/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iireaderReadV2(scope: Scope,
                   reader_handle: oresource,
                   queue_handle: oresource): ReaderReadV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderReadV2(*#, #, #)", constructor.}

proc readerReadV2*(scope: Scope,
                   reader_handle: oresource,
                   queue_handle: oresource): ReaderReadV2 =
  return iireaderReadV2(scope,
                        reader_handle,
                        queue_handle)

converter readerReadV2ToOut*(op: ReaderReadV2): ostring {.inline.} = return op.output


type ReaderReset*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderReset/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iireaderReset(scope: Scope,
                  reader_handle: ostring): ReaderReset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderReset(*#, #)", constructor.}

proc readerReset*(scope: Scope,
                  reader_handle: ostring): ReaderReset =
  return iireaderReset(scope,
                       reader_handle)


type ReaderResetV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderResetV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iireaderResetV2(scope: Scope,
                    reader_handle: oresource): ReaderResetV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderResetV2(*#, #)", constructor.}

proc readerResetV2*(scope: Scope,
                    reader_handle: oresource): ReaderResetV2 =
  return iireaderResetV2(scope,
                         reader_handle)


type ReaderRestoreState*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderRestoreState/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iireaderRestoreState(scope: Scope,
                         reader_handle: ostring,
                         state: ostring): ReaderRestoreState {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderRestoreState(*#, #, #)", constructor.}

proc readerRestoreState*(scope: Scope,
                         reader_handle: ostring,
                         state: ostring): ReaderRestoreState =
  return iireaderRestoreState(scope,
                              reader_handle,
                              state)


type ReaderSerializeState* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderSerializeState/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iireaderSerializeState(scope: Scope,
                           reader_handle: ostring): ReaderSerializeState {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ReaderSerializeState(*#, #)", constructor.}

proc readerSerializeState*(scope: Scope,
                           reader_handle: ostring): ReaderSerializeState =
  return iireaderSerializeState(scope,
                                reader_handle)

converter readerSerializeStateToOut*(op: ReaderSerializeState): ostring {.inline.} = return op.output


type RecordInput* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"RecordInput/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iirecordInput(scope: Scope,
                  file_pattern: cstring,
                  compression_type: cstring,
                  file_random_seed: int64,
                  file_shuffle_shift_ratio: float32,
                  file_buffer_size: int64,
                  file_parallelism: int64,
                  batch_size: int64): RecordInput {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"RecordInput(*#, tensorflow::string(#), tensorflow::string(#), #, #, #, #, #)", constructor.}

proc recordInput*(scope: Scope,
                  file_pattern: cstring,
                  compression_type: cstring,
                  file_random_seed: int64 = 301.int,
                  file_shuffle_shift_ratio: float32 = 0.0.float32,
                  file_buffer_size: int64 = 10000.int,
                  file_parallelism: int64 = 16.int,
                  batch_size: int64 = 32.int): RecordInput =
  return iirecordInput(scope,
                       file_pattern,
                       compression_type,
                       file_random_seed,
                       file_shuffle_shift_ratio,
                       file_buffer_size,
                       file_parallelism,
                       batch_size)

converter recordInputToOut*(op: RecordInput): ostring {.inline.} = return op.output


type Restore*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"Restore/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirestore[oT: oall](scope: Scope,
              file_pattern: ostring,
              tensor_name: ostring,
              dt: DType,
              preferred_shard: int64,
              explicitT: type(oT)): Restore[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"Restore(*#, #, #, #, #)", constructor.}

proc restore*(scope: Scope,
              file_pattern: ostring,
              tensor_name: ostring,
              dt: type = oinvalid,
              preferred_shard: int64 = -1.int): auto =
  return iirestore(scope,
                   file_pattern,
                   tensor_name,
                   dt.oTF,
                   preferred_shard,
                   dt)

converter restoreToOut*[oT: oall](op: Restore[oT]): oT {.inline.} = return op.output


type RestoreSlice*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"RestoreSlice/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirestoreSlice[oT: oall](scope: Scope,
                   file_pattern: ostring,
                   tensor_name: ostring,
                   shape_and_slice: ostring,
                   dt: DType,
                   preferred_shard: int64,
                   explicitT: type(oT)): RestoreSlice[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"RestoreSlice(*#, #, #, #, #, #)", constructor.}

proc restoreSlice*(scope: Scope,
                   file_pattern: ostring,
                   tensor_name: ostring,
                   shape_and_slice: ostring,
                   dt: type = oinvalid,
                   preferred_shard: int64 = -1.int): auto =
  return iirestoreSlice(scope,
                        file_pattern,
                        tensor_name,
                        shape_and_slice,
                        dt.oTF,
                        preferred_shard,
                        dt)

converter restoreSliceToOut*[oT: oall](op: RestoreSlice[oT]): oT {.inline.} = return op.output


type RestoreV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"RestoreV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iirestoreV2[oT: oall](scope: Scope,
                prefix: ostring,
                tensor_names: ostring,
                shape_and_slices: ostring,
                dtypes: ArraySlice[DType],
                explicitT: type(oT)): RestoreV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"RestoreV2(*#, #, #, #, #)", constructor.}

proc restoreV2*(scope: Scope,
                prefix: ostring,
                tensor_names: ostring,
                shape_and_slices: ostring,
                dtypes: openArray[DType],
                explicitT: type): auto =
  return iirestoreV2(scope,
                     prefix,
                     tensor_names,
                     shape_and_slices,
                     newArraySlice(dtypes),
                     explicitT)

converter restoreV2ToOutList*[oT: oall](op: RestoreV2[oT]): olist[oT] {.inline.} = return op.output


type Save*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"Save/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iisave(scope: Scope,
           filename: ostring,
           tensor_names: ostring,
           data: olist[oall],
           T: ArraySlice[DType]): Save {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"Save(*#, #, #, #, #)", constructor.}

proc save*(scope: Scope,
           filename: ostring,
           tensor_names: ostring,
           data: olist[oall],
           T: openArray[DType]): Save =
  return iisave(scope,
                filename,
                tensor_names,
                data,
                newArraySlice(T))


type SaveSlices*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"SaveSlices/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iisaveSlices(scope: Scope,
                 filename: ostring,
                 tensor_names: ostring,
                 shapes_and_slices: ostring,
                 data: olist[oall],
                 T: ArraySlice[DType]): SaveSlices {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"SaveSlices(*#, #, #, #, #, #)", constructor.}

proc saveSlices*(scope: Scope,
                 filename: ostring,
                 tensor_names: ostring,
                 shapes_and_slices: ostring,
                 data: olist[oall],
                 T: openArray[DType]): SaveSlices =
  return iisaveSlices(scope,
                      filename,
                      tensor_names,
                      shapes_and_slices,
                      data,
                      newArraySlice(T))


type SaveV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"SaveV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iisaveV2(scope: Scope,
             prefix: ostring,
             tensor_names: ostring,
             shape_and_slices: ostring,
             tensors: olist[oall],
             dtypes: ArraySlice[DType]): SaveV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"SaveV2(*#, #, #, #, #, #)", constructor.}

proc saveV2*(scope: Scope,
             prefix: ostring,
             tensor_names: ostring,
             shape_and_slices: ostring,
             tensors: olist[oall],
             dtypes: openArray[DType]): SaveV2 =
  return iisaveV2(scope,
                  prefix,
                  tensor_names,
                  shape_and_slices,
                  tensors,
                  newArraySlice(dtypes))


type ShardedFilename* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ShardedFilename/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iishardedFilename(scope: Scope,
                      basename: ostring,
                      shard: oint32,
                      num_shards: oint32): ShardedFilename {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ShardedFilename(*#, #, #, #)", constructor.}

proc shardedFilename*(scope: Scope,
                      basename: ostring,
                      shard: oint32,
                      num_shards: oint32): ShardedFilename =
  return iishardedFilename(scope,
                           basename,
                           shard,
                           num_shards)

converter shardedFilenameToOut*(op: ShardedFilename): ostring {.inline.} = return op.output


type ShardedFilespec* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ShardedFilespec/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iishardedFilespec(scope: Scope,
                      basename: ostring,
                      num_shards: oint32): ShardedFilespec {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"ShardedFilespec(*#, #, #)", constructor.}

proc shardedFilespec*(scope: Scope,
                      basename: ostring,
                      num_shards: oint32): ShardedFilespec =
  return iishardedFilespec(scope,
                           basename,
                           num_shards)

converter shardedFilespecToOut*(op: ShardedFilespec): ostring {.inline.} = return op.output


type TFRecordReader* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"TFRecordReader/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitFRecordReader(scope: Scope,
                     container: cstring,
                     shared_name: cstring,
                     compression_type: cstring): TFRecordReader {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"TFRecordReader(*#, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#))", constructor.}

proc tFRecordReader*(scope: Scope,
                     container: cstring,
                     shared_name: cstring,
                     compression_type: cstring): TFRecordReader =
  return iitFRecordReader(scope,
                          container,
                          shared_name,
                          compression_type)

converter tFRecordReaderToOut*(op: TFRecordReader): ostring {.inline.} = return op.output


type TFRecordReaderV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"TFRecordReaderV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iitFRecordReaderV2(scope: Scope,
                       container: cstring,
                       shared_name: cstring,
                       compression_type: cstring): TFRecordReaderV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"TFRecordReaderV2(*#, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#))", constructor.}

proc tFRecordReaderV2*(scope: Scope,
                       container: cstring,
                       shared_name: cstring,
                       compression_type: cstring): TFRecordReaderV2 =
  return iitFRecordReaderV2(scope,
                            container,
                            shared_name,
                            compression_type)

converter tFRecordReaderV2ToOut*(op: TFRecordReaderV2): oresource {.inline.} = return op.output


type TextLineReader* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"TextLineReader/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitextLineReader(scope: Scope,
                     container: cstring,
                     shared_name: cstring,
                     skip_header_lines: int64): TextLineReader {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"TextLineReader(*#, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc textLineReader*(scope: Scope,
                     container: cstring,
                     shared_name: cstring,
                     skip_header_lines: int64 = 0.int): TextLineReader =
  return iitextLineReader(scope,
                          container,
                          shared_name,
                          skip_header_lines)

converter textLineReaderToOut*(op: TextLineReader): ostring {.inline.} = return op.output


type TextLineReaderV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"TextLineReaderV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iitextLineReaderV2(scope: Scope,
                       container: cstring,
                       shared_name: cstring,
                       skip_header_lines: int64): TextLineReaderV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"TextLineReaderV2(*#, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc textLineReaderV2*(scope: Scope,
                       container: cstring,
                       shared_name: cstring,
                       skip_header_lines: int64 = 0.int): TextLineReaderV2 =
  return iitextLineReaderV2(scope,
                            container,
                            shared_name,
                            skip_header_lines)

converter textLineReaderV2ToOut*(op: TextLineReaderV2): oresource {.inline.} = return op.output


type UnicodeDecode* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"UnicodeDecode/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiunicodeDecode(scope: Scope,
                    input: ostring,
                    input_encoding: cstring,
                    errors: cstring,
                    replacement_char: int64,
                    replace_control_characters: bool): UnicodeDecode {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"UnicodeDecode(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc unicodeDecode*(scope: Scope,
                    input: ostring,
                    input_encoding: cstring,
                    errors: cstring = "replace",
                    replacement_char: int64 = 65533.int,
                    replace_control_characters: bool = false): UnicodeDecode =
  return iiunicodeDecode(scope,
                         input,
                         input_encoding,
                         errors,
                         replacement_char,
                         replace_control_characters)

converter unicodeDecodeToOut*(op: UnicodeDecode): oint64 {.inline.} = return op.output


type WholeFileReader* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"WholeFileReader/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiwholeFileReader(scope: Scope,
                      container: cstring,
                      shared_name: cstring): WholeFileReader {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"WholeFileReader(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc wholeFileReader*(scope: Scope,
                      container: cstring,
                      shared_name: cstring): WholeFileReader =
  return iiwholeFileReader(scope,
                           container,
                           shared_name)

converter wholeFileReaderToOut*(op: WholeFileReader): ostring {.inline.} = return op.output


type WholeFileReaderV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"WholeFileReaderV2/*'0*/".} = object
  operation*: Operation[oresource]
  output*: oresource

proc iiwholeFileReaderV2(scope: Scope,
                        container: cstring,
                        shared_name: cstring): WholeFileReaderV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"WholeFileReaderV2(*#, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc wholeFileReaderV2*(scope: Scope,
                        container: cstring,
                        shared_name: cstring): WholeFileReaderV2 =
  return iiwholeFileReaderV2(scope,
                             container,
                             shared_name)

converter wholeFileReaderV2ToOut*(op: WholeFileReaderV2): oresource {.inline.} = return op.output


type WriteFile*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"WriteFile/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiwriteFile(scope: Scope,
                filename: ostring,
                contents: ostring): WriteFile {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/io/io.h", importcpp:"WriteFile(*#, #, #)", constructor.}

proc writeFile*(scope: Scope,
                filename: ostring,
                contents: ostring): WriteFile =
  return iiwriteFile(scope,
                     filename,
                     contents)

