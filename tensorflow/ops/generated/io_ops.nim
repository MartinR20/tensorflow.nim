import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iFixedLengthRecordReader(root: Scope, record_bytes: int, attrs: FixedLengthRecordReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::FixedLengthRecordReader(*#, #, #)".}

proc iIdentityReader(root: Scope, attrs: IdentityReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::IdentityReader(*#, #)".}

proc iLMDBReader(root: Scope, attrs: LMDBReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::LMDBReader(*#, #)".}

proc iMatchingFiles(root: Scope, pattern: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::MatchingFiles(*#, #)".}

proc iMergeV2Checkpoints(root: Scope, checkpoint_prefixes: Out, destination_prefix: Out, attrs: MergeV2CheckpointsAttrs) {.header:std_ops, importcpp:"tensorflow::ops::MergeV2Checkpoints(*#, #, #, #)".}

proc iReadFile(root: Scope, filename: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReadFile(*#, #)".}

proc iReaderNumRecordsProduced(root: Scope, reader_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderNumRecordsProduced(*#, #)".}

proc iReaderNumWorkUnitsCompleted(root: Scope, reader_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderNumWorkUnitsCompleted(*#, #)".}

proc iReaderRead(root: Scope, reader_handle: Out, queue_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderRead(*#, #, #)".}

proc iReaderReadUpTo(root: Scope, reader_handle: Out, queue_handle: Out, num_records: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderReadUpTo(*#, #, #, #)".}

proc iReaderReset(root: Scope, reader_handle: Out) {.header:std_ops, importcpp:"tensorflow::ops::ReaderReset(*#, #)".}

proc iReaderRestoreState(root: Scope, reader_handle: Out, state: Out) {.header:std_ops, importcpp:"tensorflow::ops::ReaderRestoreState(*#, #, #)".}

proc iReaderSerializeState(root: Scope, reader_handle: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ReaderSerializeState(*#, #)".}

proc iRestore(root: Scope, file_pattern: Out, tensor_name: Out, dt: core.DType, attrs: RestoreAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::Restore(*#, #, #, #, #)".}

proc iRestoreSlice(root: Scope, file_pattern: Out, tensor_name: Out, shape_and_slice: Out, dt: core.DType, attrs: RestoreSliceAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::RestoreSlice(*#, #, #, #, #, #)".}

proc iRestoreV2(root: Scope, prefix: Out, tensor_names: Out, shape_and_slices: Out, dtypes: core.DType) {.header:std_ops, importcpp:"tensorflow::ops::RestoreV2(*#, #, #, #, #)".}

proc iSave(root: Scope, filename: Out, tensor_names: Out, data: InList) {.header:std_ops, importcpp:"tensorflow::ops::Save(*#, #, #, *#)".}

proc iSaveSlices(root: Scope, filename: Out, tensor_names: Out, shapes_and_slices: Out, data: InList) {.header:std_ops, importcpp:"tensorflow::ops::SaveSlices(*#, #, #, #, *#)".}

proc iSaveV2(root: Scope, prefix: Out, tensor_names: Out, shape_and_slices: Out, tensors: InList) {.header:std_ops, importcpp:"tensorflow::ops::SaveV2(*#, #, #, #, *#)".}

proc iShardedFilename(root: Scope, basename: Out, shard: Out, num_shards: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ShardedFilename(*#, #, #, #)".}

proc iShardedFilespec(root: Scope, basename: Out, num_shards: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ShardedFilespec(*#, #, #)".}

proc iTFRecordReader(root: Scope, attrs: TFRecordReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TFRecordReader(*#, #)".}

proc iTextLineReader(root: Scope, attrs: TextLineReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::TextLineReader(*#, #)".}

proc iWholeFileReader(root: Scope, attrs: WholeFileReaderAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::WholeFileReader(*#, #)".}

proc iWriteFile(root: Scope, filename: Out, contents: Out) {.header:std_ops, importcpp:"tensorflow::ops::WriteFile(*#, #, #)".}

proc FixedLengthRecordReader(root: Scope, record_bytes: int, attrs: FixedLengthRecordReaderAttrs): Out =
  iFixedLengthRecordReader(root, record_bytes, attrs)

proc FixedLengthRecordReader(root: Scope, record_bytes: int, container = none(string), encoding = none(string), footerBytes = none(int), headerBytes = none(int), hopBytes = none(int), sharedName = none(string)): Out =
  var attrs = FixedLengthRecordReaderAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if encoding.isSome:
    attrs = attrs.Encoding(newCPPString(encoding.get()))
  if footerBytes.isSome:
    attrs = attrs.FooterBytes(footerBytes.get())
  if headerBytes.isSome:
    attrs = attrs.HeaderBytes(headerBytes.get())
  if hopBytes.isSome:
    attrs = attrs.HopBytes(hopBytes.get())
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return FixedLengthRecordReader(root, record_bytes, attrs)

proc IdentityReader(root: Scope, attrs: IdentityReaderAttrs): Out =
  iIdentityReader(root, attrs)

proc IdentityReader(root: Scope, container = none(string), sharedName = none(string)): Out =
  var attrs = IdentityReaderAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return IdentityReader(root, attrs)

proc LMDBReader(root: Scope, attrs: LMDBReaderAttrs): Out =
  iLMDBReader(root, attrs)

proc LMDBReader(root: Scope, container = none(string), sharedName = none(string)): Out =
  var attrs = LMDBReaderAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return LMDBReader(root, attrs)

proc MatchingFiles(root: Scope, pattern: Out): Out =
  iMatchingFiles(root, pattern)

proc MergeV2Checkpoints(root: Scope, checkpoint_prefixes: Out, destination_prefix: Out, attrs: MergeV2CheckpointsAttrs) =
  iMergeV2Checkpoints(root, checkpoint_prefixes, destination_prefix, attrs)

proc MergeV2Checkpoints(root: Scope, checkpoint_prefixes: Out, destination_prefix: Out, deleteOldDirs = none(bool)) =
  var attrs = MergeV2CheckpointsAttrs()

  if deleteOldDirs.isSome:
    attrs = attrs.DeleteOldDirs(deleteOldDirs.get())

  MergeV2Checkpoints(root, checkpoint_prefixes, destination_prefix, attrs)

proc ReadFile(root: Scope, filename: Out): Out =
  iReadFile(root, filename)

proc ReaderNumRecordsProduced(root: Scope, reader_handle: Out): Out =
  iReaderNumRecordsProduced(root, reader_handle)

proc ReaderNumWorkUnitsCompleted(root: Scope, reader_handle: Out): Out =
  iReaderNumWorkUnitsCompleted(root, reader_handle)

proc ReaderRead(root: Scope, reader_handle: Out, queue_handle: Out): Out =
  iReaderRead(root, reader_handle, queue_handle)

proc ReaderReadUpTo(root: Scope, reader_handle: Out, queue_handle: Out, num_records: Out): Out =
  iReaderReadUpTo(root, reader_handle, queue_handle, num_records)

proc ReaderReset(root: Scope, reader_handle: Out) =
  iReaderReset(root, reader_handle)

proc ReaderRestoreState(root: Scope, reader_handle: Out, state: Out) =
  iReaderRestoreState(root, reader_handle, state)

proc ReaderSerializeState(root: Scope, reader_handle: Out): Out =
  iReaderSerializeState(root, reader_handle)

proc Restore(root: Scope, file_pattern: Out, tensor_name: Out, dt: core.DType, attrs: RestoreAttrs): Out =
  iRestore(root, file_pattern, tensor_name, dt, attrs)

proc Restore(root: Scope, file_pattern: Out, tensor_name: Out, dt: core.DType, preferredShard = none(int)): Out =
  var attrs = RestoreAttrs()

  if preferredShard.isSome:
    attrs = attrs.PreferredShard(preferredShard.get())

  return Restore(root, file_pattern, tensor_name, dt, attrs)

proc RestoreSlice(root: Scope, file_pattern: Out, tensor_name: Out, shape_and_slice: Out, dt: core.DType, attrs: RestoreSliceAttrs): Out =
  iRestoreSlice(root, file_pattern, tensor_name, shape_and_slice, dt, attrs)

proc RestoreSlice(root: Scope, file_pattern: Out, tensor_name: Out, shape_and_slice: Out, dt: core.DType, preferredShard = none(int)): Out =
  var attrs = RestoreSliceAttrs()

  if preferredShard.isSome:
    attrs = attrs.PreferredShard(preferredShard.get())

  return RestoreSlice(root, file_pattern, tensor_name, shape_and_slice, dt, attrs)

proc RestoreV2(root: Scope, prefix: Out, tensor_names: Out, shape_and_slices: Out, dtypes: core.DType) =
  iRestoreV2(root, prefix, tensor_names, shape_and_slices, dtypes)

proc Save(root: Scope, filename: Out, tensor_names: Out, data: InList) =
  iSave(root, filename, tensor_names, data)

proc Save(root: Scope, filename: Out, tensor_names: Out, data: OutList) {.header:std_ops, importcpp:"tensorflow::ops::Save(*#, #, #, #)".}

proc SaveSlices(root: Scope, filename: Out, tensor_names: Out, shapes_and_slices: Out, data: InList) =
  iSaveSlices(root, filename, tensor_names, shapes_and_slices, data)

proc SaveSlices(root: Scope, filename: Out, tensor_names: Out, shapes_and_slices: Out, data: OutList) {.header:std_ops, importcpp:"tensorflow::ops::SaveSlices(*#, #, #, #, #)".}

proc SaveV2(root: Scope, prefix: Out, tensor_names: Out, shape_and_slices: Out, tensors: InList) =
  iSaveV2(root, prefix, tensor_names, shape_and_slices, tensors)

proc SaveV2(root: Scope, prefix: Out, tensor_names: Out, shape_and_slices: Out, tensors: OutList) {.header:std_ops, importcpp:"tensorflow::ops::SaveV2(*#, #, #, #, #)".}

proc ShardedFilename(root: Scope, basename: Out, shard: Out, num_shards: Out): Out =
  iShardedFilename(root, basename, shard, num_shards)

proc ShardedFilespec(root: Scope, basename: Out, num_shards: Out): Out =
  iShardedFilespec(root, basename, num_shards)

proc TFRecordReader(root: Scope, attrs: TFRecordReaderAttrs): Out =
  iTFRecordReader(root, attrs)

proc TFRecordReader(root: Scope, compressionType = none(string), container = none(string), sharedName = none(string)): Out =
  var attrs = TFRecordReaderAttrs()

  if compressionType.isSome:
    attrs = attrs.CompressionType(newCPPString(compressionType.get()))
  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return TFRecordReader(root, attrs)

proc TextLineReader(root: Scope, attrs: TextLineReaderAttrs): Out =
  iTextLineReader(root, attrs)

proc TextLineReader(root: Scope, container = none(string), sharedName = none(string), skipHeaderLines = none(int)): Out =
  var attrs = TextLineReaderAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))
  if skipHeaderLines.isSome:
    attrs = attrs.SkipHeaderLines(skipHeaderLines.get())

  return TextLineReader(root, attrs)

proc WholeFileReader(root: Scope, attrs: WholeFileReaderAttrs): Out =
  iWholeFileReader(root, attrs)

proc WholeFileReader(root: Scope, container = none(string), sharedName = none(string)): Out =
  var attrs = WholeFileReaderAttrs()

  if container.isSome:
    attrs = attrs.Container(newCPPString(container.get()))
  if sharedName.isSome:
    attrs = attrs.SharedName(newCPPString(sharedName.get()))

  return WholeFileReader(root, attrs)

proc WriteFile(root: Scope, filename: Out, contents: Out) =
  iWriteFile(root, filename, contents)

export FixedLengthRecordReader,
       IdentityReader,
       LMDBReader,
       MatchingFiles,
       MergeV2Checkpoints,
       ReadFile,
       ReaderNumRecordsProduced,
       ReaderNumWorkUnitsCompleted,
       ReaderRead,
       ReaderReadUpTo,
       ReaderReset,
       ReaderRestoreState,
       ReaderSerializeState,
       Restore,
       RestoreSlice,
       RestoreV2,
       Save,
       SaveSlices,
       SaveV2,
       ShardedFilename,
       ShardedFilespec,
       TFRecordReader,
       TextLineReader,
       WholeFileReader,
       WriteFile