#include "tensorflow/cc/framework/ops.h"
#include "tensorflow/cc/framework/scope.h"
#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/tensor_shape.h"
#include "tensorflow/core/framework/types.h"
#include "tensorflow/core/lib/gtl/array_slice.h"
#include "math.h"

#ifndef conversions 
#define conversions
template <typename T>
tensorflow::Tensor _to_tensor(std::initializer_list<T> _list, std::initializer_list<int> _dtype) {
    auto _ten = tensorflow::Tensor();
    _ten.FromProto(_list, _dtype);
    return _ten;
}
#endif
class DeserializeSparse{
  public:
    DeserializeSparse() {}
    DeserializeSparse(tensorflow::Scope& scope, 
           tensorflow::Input serialized_sparse, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FixedLengthRecordReader{
  public:
    FixedLengthRecordReader() {}
    FixedLengthRecordReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t header_bytes = 0, 
           int64_t record_bytes = 0, 
           int64_t footer_bytes = 0, 
           int64_t hop_bytes = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FixedLengthRecordReaderV2{
  public:
    FixedLengthRecordReaderV2() {}
    FixedLengthRecordReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string encoding, 
           int64_t header_bytes = 0, 
           int64_t record_bytes = 0, 
           int64_t footer_bytes = 0, 
           int64_t hop_bytes = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GcsConfigureBlockCache{
  public:
    GcsConfigureBlockCache() {}
    GcsConfigureBlockCache(tensorflow::Scope& scope, 
           tensorflow::Input max_cache_size, 
           tensorflow::Input block_size, 
           tensorflow::Input max_staleness);
    tensorflow::Operation operation;
};

class GcsConfigureCredentials{
  public:
    GcsConfigureCredentials() {}
    GcsConfigureCredentials(tensorflow::Scope& scope, 
           tensorflow::Input json);
    tensorflow::Operation operation;
};

class IdentityReader{
  public:
    IdentityReader() {}
    IdentityReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IdentityReaderV2{
  public:
    IdentityReaderV2() {}
    IdentityReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class LMDBReader{
  public:
    LMDBReader() {}
    LMDBReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MatchingFiles{
  public:
    MatchingFiles() {}
    MatchingFiles(tensorflow::Scope& scope, 
           tensorflow::Input pattern);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MergeV2Checkpoints{
  public:
    MergeV2Checkpoints() {}
    MergeV2Checkpoints(tensorflow::Scope& scope, 
           tensorflow::Input checkpoint_prefixes, 
           tensorflow::Input destination_prefix, 
           bool delete_old_dirs = true);
    tensorflow::Operation operation;
};

class ReadFile{
  public:
    ReadFile() {}
    ReadFile(tensorflow::Scope& scope, 
           tensorflow::Input filename);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderNumRecordsProduced{
  public:
    ReaderNumRecordsProduced() {}
    ReaderNumRecordsProduced(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderNumRecordsProducedV2{
  public:
    ReaderNumRecordsProducedV2() {}
    ReaderNumRecordsProducedV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderNumWorkUnitsCompleted{
  public:
    ReaderNumWorkUnitsCompleted() {}
    ReaderNumWorkUnitsCompleted(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderNumWorkUnitsCompletedV2{
  public:
    ReaderNumWorkUnitsCompletedV2() {}
    ReaderNumWorkUnitsCompletedV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderRead{
  public:
    ReaderRead() {}
    ReaderRead(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderReadUpTo{
  public:
    ReaderReadUpTo() {}
    ReaderReadUpTo(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle, 
           tensorflow::Input num_records);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderReadUpToV2{
  public:
    ReaderReadUpToV2() {}
    ReaderReadUpToV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle, 
           tensorflow::Input num_records);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderReadV2{
  public:
    ReaderReadV2() {}
    ReaderReadV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input queue_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ReaderReset{
  public:
    ReaderReset() {}
    ReaderReset(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
};

class ReaderResetV2{
  public:
    ReaderResetV2() {}
    ReaderResetV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
};

class ReaderRestoreState{
  public:
    ReaderRestoreState() {}
    ReaderRestoreState(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input state);
    tensorflow::Operation operation;
};

class ReaderSerializeState{
  public:
    ReaderSerializeState() {}
    ReaderSerializeState(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RecordInput{
  public:
    RecordInput() {}
    RecordInput(tensorflow::Scope& scope, 
           tensorflow::string file_pattern, 
           tensorflow::string compression_type, 
           int64_t file_random_seed = 301, 
           float file_shuffle_shift_ratio = 0.0, 
           int64_t file_buffer_size = 10000, 
           int64_t file_parallelism = 16, 
           int64_t batch_size = 32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Restore{
  public:
    Restore() {}
    Restore(tensorflow::Scope& scope, 
           tensorflow::Input file_pattern, 
           tensorflow::Input tensor_name, 
           tensorflow::DataType dt = tensorflow::DT_INVALID, 
           int64_t preferred_shard = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RestoreSlice{
  public:
    RestoreSlice() {}
    RestoreSlice(tensorflow::Scope& scope, 
           tensorflow::Input file_pattern, 
           tensorflow::Input tensor_name, 
           tensorflow::Input shape_and_slice, 
           tensorflow::DataType dt = tensorflow::DT_INVALID, 
           int64_t preferred_shard = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RestoreV2{
  public:
    RestoreV2() {}
    RestoreV2(tensorflow::Scope& scope, 
           tensorflow::Input prefix, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shape_and_slices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class Save{
  public:
    Save() {}
    Save(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input tensor_names, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T);
    tensorflow::Operation operation;
};

class SaveSlices{
  public:
    SaveSlices() {}
    SaveSlices(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shapes_and_slices, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T);
    tensorflow::Operation operation;
};

class SaveV2{
  public:
    SaveV2() {}
    SaveV2(tensorflow::Scope& scope, 
           tensorflow::Input prefix, 
           tensorflow::Input tensor_names, 
           tensorflow::Input shape_and_slices, 
           tensorflow::InputList tensors, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes);
    tensorflow::Operation operation;
};

class ShardedFilename{
  public:
    ShardedFilename() {}
    ShardedFilename(tensorflow::Scope& scope, 
           tensorflow::Input basename, 
           tensorflow::Input shard, 
           tensorflow::Input num_shards);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ShardedFilespec{
  public:
    ShardedFilespec() {}
    ShardedFilespec(tensorflow::Scope& scope, 
           tensorflow::Input basename, 
           tensorflow::Input num_shards);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TFRecordReader{
  public:
    TFRecordReader() {}
    TFRecordReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string compression_type);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TFRecordReaderV2{
  public:
    TFRecordReaderV2() {}
    TFRecordReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string compression_type);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TextLineReader{
  public:
    TextLineReader() {}
    TextLineReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t skip_header_lines = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TextLineReaderV2{
  public:
    TextLineReaderV2() {}
    TextLineReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t skip_header_lines = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class UnicodeDecode{
  public:
    UnicodeDecode() {}
    UnicodeDecode(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string errors = "replace", 
           int64_t replacement_char = 65533, 
           bool replace_control_characters = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WholeFileReader{
  public:
    WholeFileReader() {}
    WholeFileReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WholeFileReaderV2{
  public:
    WholeFileReaderV2() {}
    WholeFileReaderV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class WriteFile{
  public:
    WriteFile() {}
    WriteFile(tensorflow::Scope& scope, 
           tensorflow::Input filename, 
           tensorflow::Input contents);
    tensorflow::Operation operation;
};

