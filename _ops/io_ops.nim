import ../core/core.nim
import ../utils/utils.nim

proc FixedLengthRecordReader(root: Scope, record_bytes: int): Out {.header:std_ops, importcpp:"tensorflow::ops::FixedLengthRecordReader(*@)".}

proc FixedLengthRecordReader(root: Scope, record_bytes: int, attrs: FixedLengthRecordReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FixedLengthRecordReader(*@)".}

proc IdentityReader() =
proc IdentityReader(root: Scope, attrs: IdentityReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::IdentityReader(*@)".}

proc LMDBReader() =
proc LMDBReader(root: Scope, attrs: LMDBReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::LMDBReader(*@)".}

proc MatchingFiles(root: Scope, pattern: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatchingFiles(*@)".}

proc MergeV2Checkpoints(root: Scope, checkpoint_prefixes: Out, destination_prefix: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MergeV2Checkpoints(*@)".}

proc MergeV2Checkpoints(root: Scope, checkpoint_prefixes: Out, destination_prefix: Out, attrs: MergeV2CheckpointsAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::MergeV2Checkpoints(*@)".}

proc ReadFile(root: Scope, filename: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReadFile(*@)".}

proc ReaderNumRecordsProduced(root: Scope, reader_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderNumRecordsProduced(*@)".}

proc ReaderNumWorkUnitsCompleted(root: Scope, reader_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderNumWorkUnitsCompleted(*@)".}

proc ReaderRead(root: Scope, reader_handle: Out, queue_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderRead(*@)".}

proc ReaderReadUpTo(root: Scope, reader_handle: Out, queue_handle: Out, num_records: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderReadUpTo(*@)".}

proc ReaderReset(root: Scope, reader_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderReset(*@)".}

proc ReaderRestoreState(root: Scope, reader_handle: Out, state: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderRestoreState(*@)".}

proc ReaderSerializeState(root: Scope, reader_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderSerializeState(*@)".}

proc Restore(root: Scope, file_pattern: Out, tensor_name: Out, dt: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::Restore(*@)".}

proc Restore(root: Scope, file_pattern: Out, tensor_name: Out, dt: DType, attrs: RestoreAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Restore(*@)".}

proc RestoreSlice(root: Scope, file_pattern: Out, tensor_name: Out, shape_and_slice: Out, dt: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::RestoreSlice(*@)".}

proc RestoreSlice(root: Scope, file_pattern: Out, tensor_name: Out, shape_and_slice: Out, dt: DType, attrs: RestoreSliceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RestoreSlice(*@)".}

proc RestoreV2(root: Scope, prefix: Out, tensor_names: Out, shape_and_slices: Out, dtypes: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::RestoreV2(*@)".}

proc Save(root: Scope, filename: Out, tensor_names: Out, data: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::Save(*@)".}

proc SaveSlices(root: Scope, filename: Out, tensor_names: Out, shapes_and_slices: Out, data: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::SaveSlices(*@)".}

proc SaveV2(root: Scope, prefix: Out, tensor_names: Out, shape_and_slices: Out, tensors: InList): Out {.header:std_ops, importcpp:"tensorflow::ops::SaveV2(*@)".}

proc ShardedFilename(root: Scope, basename: Out, shard: Out, num_shards: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ShardedFilename(*@)".}

proc ShardedFilespec(root: Scope, basename: Out, num_shards: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ShardedFilespec(*@)".}

proc TFRecordReader() =
proc TFRecordReader(root: Scope, attrs: TFRecordReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TFRecordReader(*@)".}

proc TextLineReader() =
proc TextLineReader(root: Scope, attrs: TextLineReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TextLineReader(*@)".}

proc WholeFileReader() =
proc WholeFileReader(root: Scope, attrs: WholeFileReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::WholeFileReader(*@)".}

proc WriteFile(root: Scope, filename: Out, contents: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::WriteFile(*@)".}

