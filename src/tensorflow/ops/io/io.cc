#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/io/io.h"

DeserializeSparse::DeserializeSparse(tensorflow::Scope& scope, 
           tensorflow::Input serialized_sparse, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _serialized_sparse = ::tensorflow::ops::AsNodeOut(scope, serialized_sparse);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DeserializeSparse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DeserializeSparse")
                                   .Input(_serialized_sparse)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FixedLengthRecordReader::FixedLengthRecordReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t header_bytes, 
           int64_t record_bytes, 
           int64_t footer_bytes, 
           int64_t hop_bytes) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FixedLengthRecordReader");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FixedLengthRecordReader")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("header_bytes", header_bytes)
                                   .Attr("record_bytes", record_bytes)
                                   .Attr("footer_bytes", footer_bytes)
                                   .Attr("hop_bytes", hop_bytes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FixedLengthRecordReaderV2::FixedLengthRecordReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string encoding, 
           int64_t header_bytes, 
           int64_t record_bytes, 
           int64_t footer_bytes, 
           int64_t hop_bytes) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FixedLengthRecordReaderV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FixedLengthRecordReaderV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("encoding", encoding)
                                   .Attr("header_bytes", header_bytes)
                                   .Attr("record_bytes", record_bytes)
                                   .Attr("footer_bytes", footer_bytes)
                                   .Attr("hop_bytes", hop_bytes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GcsConfigureBlockCache::GcsConfigureBlockCache(tensorflow::Scope& scope, 
           tensorflow::Input max_cache_size, 
           tensorflow::Input block_size, 
           tensorflow::Input max_staleness) {
      if (!scope.ok())
          return;
      auto _max_cache_size = ::tensorflow::ops::AsNodeOut(scope, max_cache_size);
      if (!scope.ok())
          return;
      auto _block_size = ::tensorflow::ops::AsNodeOut(scope, block_size);
      if (!scope.ok())
          return;
      auto _max_staleness = ::tensorflow::ops::AsNodeOut(scope, max_staleness);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GcsConfigureBlockCache");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GcsConfigureBlockCache")
                                   .Input(_max_cache_size)
                                   .Input(_block_size)
                                   .Input(_max_staleness)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

GcsConfigureCredentials::GcsConfigureCredentials(tensorflow::Scope& scope, 
           tensorflow::Input json) {
      if (!scope.ok())
          return;
      auto _json = ::tensorflow::ops::AsNodeOut(scope, json);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GcsConfigureCredentials");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GcsConfigureCredentials")
                                   .Input(_json)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

IdentityReader::IdentityReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IdentityReader");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IdentityReader")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IdentityReaderV2::IdentityReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IdentityReaderV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IdentityReaderV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LMDBReader::LMDBReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LMDBReader");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LMDBReader")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatchingFiles::MatchingFiles(tensorflow::Scope& scope, 
           tensorflow::Input pattern) {
      if (!scope.ok())
          return;
      auto _pattern = ::tensorflow::ops::AsNodeOut(scope, pattern);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatchingFiles");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatchingFiles")
                                   .Input(_pattern)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MergeV2Checkpoints::MergeV2Checkpoints(tensorflow::Scope& scope, 
           tensorflow::Input checkpoint_prefixes, 
           tensorflow::Input destination_prefix, 
           bool delete_old_dirs) {
      if (!scope.ok())
          return;
      auto _checkpoint_prefixes = ::tensorflow::ops::AsNodeOut(scope, checkpoint_prefixes);
      if (!scope.ok())
          return;
      auto _destination_prefix = ::tensorflow::ops::AsNodeOut(scope, destination_prefix);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MergeV2Checkpoints");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MergeV2Checkpoints")
                                   .Input(_checkpoint_prefixes)
                                   .Input(_destination_prefix)
                                   .Attr("delete_old_dirs", delete_old_dirs)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ReadFile::ReadFile(tensorflow::Scope& scope, 
           tensorflow::Input filename) {
      if (!scope.ok())
          return;
      auto _filename = ::tensorflow::ops::AsNodeOut(scope, filename);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReadFile");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReadFile")
                                   .Input(_filename)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderNumRecordsProduced::ReaderNumRecordsProduced(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderNumRecordsProduced");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderNumRecordsProduced")
                                   .Input(_reader_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderNumRecordsProducedV2::ReaderNumRecordsProducedV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderNumRecordsProducedV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderNumRecordsProducedV2")
                                   .Input(_reader_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderNumWorkUnitsCompleted::ReaderNumWorkUnitsCompleted(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderNumWorkUnitsCompleted");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderNumWorkUnitsCompleted")
                                   .Input(_reader_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderNumWorkUnitsCompletedV2::ReaderNumWorkUnitsCompletedV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderNumWorkUnitsCompletedV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderNumWorkUnitsCompletedV2")
                                   .Input(_reader_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderRead::ReaderRead(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      if (!scope.ok())
          return;
      auto _queue_handle = ::tensorflow::ops::AsNodeOut(scope, queue_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderRead");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderRead")
                                   .Input(_reader_handle)
                                   .Input(_queue_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderReadUpTo::ReaderReadUpTo(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle, 
           tensorflow::Input num_records) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      if (!scope.ok())
          return;
      auto _queue_handle = ::tensorflow::ops::AsNodeOut(scope, queue_handle);
      if (!scope.ok())
          return;
      auto _num_records = ::tensorflow::ops::AsNodeOut(scope, num_records);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderReadUpTo");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderReadUpTo")
                                   .Input(_reader_handle)
                                   .Input(_queue_handle)
                                   .Input(_num_records)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderReadUpToV2::ReaderReadUpToV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle, 
           tensorflow::Input num_records) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      if (!scope.ok())
          return;
      auto _queue_handle = ::tensorflow::ops::AsNodeOut(scope, queue_handle);
      if (!scope.ok())
          return;
      auto _num_records = ::tensorflow::ops::AsNodeOut(scope, num_records);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderReadUpToV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderReadUpToV2")
                                   .Input(_reader_handle)
                                   .Input(_queue_handle)
                                   .Input(_num_records)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderReadV2::ReaderReadV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      if (!scope.ok())
          return;
      auto _queue_handle = ::tensorflow::ops::AsNodeOut(scope, queue_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderReadV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderReadV2")
                                   .Input(_reader_handle)
                                   .Input(_queue_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderReset::ReaderReset(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderReset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderReset")
                                   .Input(_reader_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ReaderResetV2::ReaderResetV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderResetV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderResetV2")
                                   .Input(_reader_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ReaderRestoreState::ReaderRestoreState(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input state) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      if (!scope.ok())
          return;
      auto _state = ::tensorflow::ops::AsNodeOut(scope, state);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderRestoreState");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderRestoreState")
                                   .Input(_reader_handle)
                                   .Input(_state)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ReaderSerializeState::ReaderSerializeState(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderSerializeState");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderSerializeState")
                                   .Input(_reader_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RecordInput::RecordInput(tensorflow::Scope& scope, 
           tensorflow::string file_pattern, 
           tensorflow::string compression_type, 
           int64_t file_random_seed, 
           float file_shuffle_shift_ratio, 
           int64_t file_buffer_size, 
           int64_t file_parallelism, 
           int64_t batch_size) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RecordInput");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RecordInput")
                                   .Attr("file_pattern", file_pattern)
                                   .Attr("compression_type", compression_type)
                                   .Attr("file_random_seed", file_random_seed)
                                   .Attr("file_shuffle_shift_ratio", file_shuffle_shift_ratio)
                                   .Attr("file_buffer_size", file_buffer_size)
                                   .Attr("file_parallelism", file_parallelism)
                                   .Attr("batch_size", batch_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Restore::Restore(tensorflow::Scope& scope, 
           tensorflow::Input file_pattern, 
           tensorflow::Input tensor_name, 
           tensorflow::DataType dt, 
           int64_t preferred_shard) {
      if (!scope.ok())
          return;
      auto _file_pattern = ::tensorflow::ops::AsNodeOut(scope, file_pattern);
      if (!scope.ok())
          return;
      auto _tensor_name = ::tensorflow::ops::AsNodeOut(scope, tensor_name);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Restore");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Restore")
                                   .Input(_file_pattern)
                                   .Input(_tensor_name)
                                   .Attr("dt", dt)
                                   .Attr("preferred_shard", preferred_shard)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RestoreSlice::RestoreSlice(tensorflow::Scope& scope, 
           tensorflow::Input file_pattern, 
           tensorflow::Input tensor_name, 
           tensorflow::Input shape_and_slice, 
           tensorflow::DataType dt, 
           int64_t preferred_shard) {
      if (!scope.ok())
          return;
      auto _file_pattern = ::tensorflow::ops::AsNodeOut(scope, file_pattern);
      if (!scope.ok())
          return;
      auto _tensor_name = ::tensorflow::ops::AsNodeOut(scope, tensor_name);
      if (!scope.ok())
          return;
      auto _shape_and_slice = ::tensorflow::ops::AsNodeOut(scope, shape_and_slice);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RestoreSlice");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RestoreSlice")
                                   .Input(_file_pattern)
                                   .Input(_tensor_name)
                                   .Input(_shape_and_slice)
                                   .Attr("dt", dt)
                                   .Attr("preferred_shard", preferred_shard)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RestoreV2::RestoreV2(tensorflow::Scope& scope, 
           tensorflow::Input prefix, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shape_and_slices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes) {
      if (!scope.ok())
          return;
      auto _prefix = ::tensorflow::ops::AsNodeOut(scope, prefix);
      if (!scope.ok())
          return;
      auto _tensor_names = ::tensorflow::ops::AsNodeOut(scope, tensor_names);
      if (!scope.ok())
          return;
      auto _shape_and_slices = ::tensorflow::ops::AsNodeOut(scope, shape_and_slices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RestoreV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RestoreV2")
                                   .Input(_prefix)
                                   .Input(_tensor_names)
                                   .Input(_shape_and_slices)
                                   .Attr("dtypes", dtypes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

Save::Save(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input tensor_names, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T) {
      if (!scope.ok())
          return;
      auto _filename = ::tensorflow::ops::AsNodeOut(scope, filename);
      if (!scope.ok())
          return;
      auto _tensor_names = ::tensorflow::ops::AsNodeOut(scope, tensor_names);
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOutList(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Save");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Save")
                                   .Input(_filename)
                                   .Input(_tensor_names)
                                   .Input(_data)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

SaveSlices::SaveSlices(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shapes_and_slices, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T) {
      if (!scope.ok())
          return;
      auto _filename = ::tensorflow::ops::AsNodeOut(scope, filename);
      if (!scope.ok())
          return;
      auto _tensor_names = ::tensorflow::ops::AsNodeOut(scope, tensor_names);
      if (!scope.ok())
          return;
      auto _shapes_and_slices = ::tensorflow::ops::AsNodeOut(scope, shapes_and_slices);
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOutList(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SaveSlices");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SaveSlices")
                                   .Input(_filename)
                                   .Input(_tensor_names)
                                   .Input(_shapes_and_slices)
                                   .Input(_data)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

SaveV2::SaveV2(tensorflow::Scope& scope, 
           tensorflow::Input prefix, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shape_and_slices, 
           tensorflow::InputList tensors, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes) {
      if (!scope.ok())
          return;
      auto _prefix = ::tensorflow::ops::AsNodeOut(scope, prefix);
      if (!scope.ok())
          return;
      auto _tensor_names = ::tensorflow::ops::AsNodeOut(scope, tensor_names);
      if (!scope.ok())
          return;
      auto _shape_and_slices = ::tensorflow::ops::AsNodeOut(scope, shape_and_slices);
      if (!scope.ok())
          return;
      auto _tensors = ::tensorflow::ops::AsNodeOutList(scope, tensors);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SaveV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SaveV2")
                                   .Input(_prefix)
                                   .Input(_tensor_names)
                                   .Input(_shape_and_slices)
                                   .Input(_tensors)
                                   .Attr("dtypes", dtypes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ShardedFilename::ShardedFilename(tensorflow::Scope& scope, 
           tensorflow::Input basename, 
           tensorflow::Input shard, 
           tensorflow::Input num_shards) {
      if (!scope.ok())
          return;
      auto _basename = ::tensorflow::ops::AsNodeOut(scope, basename);
      if (!scope.ok())
          return;
      auto _shard = ::tensorflow::ops::AsNodeOut(scope, shard);
      if (!scope.ok())
          return;
      auto _num_shards = ::tensorflow::ops::AsNodeOut(scope, num_shards);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ShardedFilename");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ShardedFilename")
                                   .Input(_basename)
                                   .Input(_shard)
                                   .Input(_num_shards)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ShardedFilespec::ShardedFilespec(tensorflow::Scope& scope, 
           tensorflow::Input basename, 
           tensorflow::Input num_shards) {
      if (!scope.ok())
          return;
      auto _basename = ::tensorflow::ops::AsNodeOut(scope, basename);
      if (!scope.ok())
          return;
      auto _num_shards = ::tensorflow::ops::AsNodeOut(scope, num_shards);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ShardedFilespec");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ShardedFilespec")
                                   .Input(_basename)
                                   .Input(_num_shards)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TFRecordReader::TFRecordReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string compression_type) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TFRecordReader");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TFRecordReader")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("compression_type", compression_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TFRecordReaderV2::TFRecordReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string compression_type) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TFRecordReaderV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TFRecordReaderV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("compression_type", compression_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TextLineReader::TextLineReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t skip_header_lines) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TextLineReader");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TextLineReader")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("skip_header_lines", skip_header_lines)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TextLineReaderV2::TextLineReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t skip_header_lines) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TextLineReaderV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TextLineReaderV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("skip_header_lines", skip_header_lines)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnicodeDecode::UnicodeDecode(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string errors, 
           int64_t replacement_char, 
           bool replace_control_characters) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnicodeDecode");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnicodeDecode")
                                   .Input(_input)
                                   .Attr("input_encoding", input_encoding)
                                   .Attr("errors", errors)
                                   .Attr("replacement_char", replacement_char)
                                   .Attr("replace_control_characters", replace_control_characters)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

WholeFileReader::WholeFileReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WholeFileReader");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WholeFileReader")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

WholeFileReaderV2::WholeFileReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WholeFileReaderV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WholeFileReaderV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

WriteFile::WriteFile(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input contents) {
      if (!scope.ok())
          return;
      auto _filename = ::tensorflow::ops::AsNodeOut(scope, filename);
      if (!scope.ok())
          return;
      auto _contents = ::tensorflow::ops::AsNodeOut(scope, contents);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WriteFile");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WriteFile")
                                   .Input(_filename)
                                   .Input(_contents)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

