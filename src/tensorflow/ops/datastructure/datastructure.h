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
class AddManySparseToTensorsMap{
  public:
    AddManySparseToTensorsMap() {}
    AddManySparseToTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class AddSparseToTensorsMap{
  public:
    AddSparseToTensorsMap() {}
    AddSparseToTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class CropAndResizeGradBoxes{
  public:
    CropAndResizeGradBoxes() {}
    CropAndResizeGradBoxes(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input image, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::string method = "bilinear");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DataFormatVecPermute{
  public:
    DataFormatVecPermute() {}
    DataFormatVecPermute(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T = tensorflow::DT_INT32, 
           tensorflow::string src_format = "NHWC", 
           tensorflow::string dst_format = "NCHW");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class HashTable{
  public:
    HashTable() {}
    HashTable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class HashTableV2{
  public:
    HashTableV2() {}
    HashTableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class InitializeTable{
  public:
    InitializeTable() {}
    InitializeTable(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

class InitializeTableFromTextFile{
  public:
    InitializeTableFromTextFile() {}
    InitializeTableFromTextFile(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input filename, 
           int64_t key_index = 0, 
           int64_t value_index = 0, 
           int64_t vocab_size = -1, 
           tensorflow::string delimiter = "	");
    tensorflow::Operation operation;
};

class InitializeTableFromTextFileV2{
  public:
    InitializeTableFromTextFileV2() {}
    InitializeTableFromTextFileV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input filename, 
           int64_t key_index = 0, 
           int64_t value_index = 0, 
           int64_t vocab_size = -1, 
           tensorflow::string delimiter = "	");
    tensorflow::Operation operation;
};

class InitializeTableV2{
  public:
    InitializeTableV2() {}
    InitializeTableV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

class MapClear{
  public:
    MapClear() {}
    MapClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class MapIncompleteSize{
  public:
    MapIncompleteSize() {}
    MapIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapPeek{
  public:
    MapPeek() {}
    MapPeek(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class MapSize{
  public:
    MapSize() {}
    MapSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MapStage{
  public:
    MapStage() {}
    MapStage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> fake_dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class MapUnstage{
  public:
    MapUnstage() {}
    MapUnstage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class MapUnstageNoKey{
  public:
    MapUnstageNoKey() {}
    MapUnstageNoKey(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableDenseHashTable{
  public:
    MutableDenseHashTable() {}
    MutableDenseHashTable(tensorflow::Scope& scope, 
           tensorflow::Input empty_key, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           float max_load_factor = 0.800000011920929, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape value_shape = {}, 
           int64_t initial_num_buckets = 131072);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableDenseHashTableV2{
  public:
    MutableDenseHashTableV2() {}
    MutableDenseHashTableV2(tensorflow::Scope& scope, 
           tensorflow::Input empty_key, 
           tensorflow::Input deleted_key, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           float max_load_factor = 0.800000011920929, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape value_shape = {}, 
           int64_t initial_num_buckets = 131072);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableHashTable{
  public:
    MutableHashTable() {}
    MutableHashTable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableHashTableOfTensors{
  public:
    MutableHashTableOfTensors() {}
    MutableHashTableOfTensors(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape value_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MutableHashTableOfTensorsV2{
  public:
    MutableHashTableOfTensorsV2() {}
    MutableHashTableOfTensorsV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing = false, 
           tensorflow::DataType key_dtype = tensorflow::DT_INVALID, 
           tensorflow::DataType value_dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape value_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OrderedMapClear{
  public:
    OrderedMapClear() {}
    OrderedMapClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class OrderedMapIncompleteSize{
  public:
    OrderedMapIncompleteSize() {}
    OrderedMapIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OrderedMapPeek{
  public:
    OrderedMapPeek() {}
    OrderedMapPeek(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class OrderedMapSize{
  public:
    OrderedMapSize() {}
    OrderedMapSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OrderedMapStage{
  public:
    OrderedMapStage() {}
    OrderedMapStage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> fake_dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

class OrderedMapUnstage{
  public:
    OrderedMapUnstage() {}
    OrderedMapUnstage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class OrderedMapUnstageNoKey{
  public:
    OrderedMapUnstageNoKey() {}
    OrderedMapUnstageNoKey(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class ParallelDynamicStitch{
  public:
    ParallelDynamicStitch() {}
    ParallelDynamicStitch(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackClose{
  public:
    StackClose() {}
    StackClose(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class StackCloseV2{
  public:
    StackCloseV2() {}
    StackCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class StackPop{
  public:
    StackPop() {}
    StackPop(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType elem_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackPopV2{
  public:
    StackPopV2() {}
    StackPopV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType elem_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class StackPushV2{
  public:
    StackPushV2() {}
    StackPushV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input elem, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool swap_memory = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TakeManySparseFromTensorsMap{
  public:
    TakeManySparseFromTensorsMap() {}
    TakeManySparseFromTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_handles, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArray{
  public:
    TensorArray() {}
    TensorArray(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           bool dynamic_size = false, 
           bool clear_after_read = true, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayClose{
  public:
    TensorArrayClose() {}
    TensorArrayClose(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class TensorArrayCloseV2{
  public:
    TensorArrayCloseV2() {}
    TensorArrayCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class TensorArrayCloseV3{
  public:
    TensorArrayCloseV3() {}
    TensorArrayCloseV3(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
};

class TensorArrayConcat{
  public:
    TensorArrayConcat() {}
    TensorArrayConcat(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape_except0 = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayConcatV2{
  public:
    TensorArrayConcatV2() {}
    TensorArrayConcatV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape_except0 = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayConcatV3{
  public:
    TensorArrayConcatV3() {}
    TensorArrayConcatV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape_except0 = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGather{
  public:
    TensorArrayGather() {}
    TensorArrayGather(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGatherV2{
  public:
    TensorArrayGatherV2() {}
    TensorArrayGatherV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGatherV3{
  public:
    TensorArrayGatherV3() {}
    TensorArrayGatherV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGrad{
  public:
    TensorArrayGrad() {}
    TensorArrayGrad(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGradV2{
  public:
    TensorArrayGradV2() {}
    TensorArrayGradV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGradV3{
  public:
    TensorArrayGradV3() {}
    TensorArrayGradV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayGradWithShape{
  public:
    TensorArrayGradWithShape() {}
    TensorArrayGradWithShape(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::Input shape_to_prepend, 
           tensorflow::string source);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayPack{
  public:
    TensorArrayPack() {}
    TensorArrayPack(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayRead{
  public:
    TensorArrayRead() {}
    TensorArrayRead(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayReadV2{
  public:
    TensorArrayReadV2() {}
    TensorArrayReadV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayReadV3{
  public:
    TensorArrayReadV3() {}
    TensorArrayReadV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayScatter{
  public:
    TensorArrayScatter() {}
    TensorArrayScatter(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayScatterV2{
  public:
    TensorArrayScatterV2() {}
    TensorArrayScatterV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayScatterV3{
  public:
    TensorArrayScatterV3() {}
    TensorArrayScatterV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySize{
  public:
    TensorArraySize() {}
    TensorArraySize(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySizeV2{
  public:
    TensorArraySizeV2() {}
    TensorArraySizeV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySizeV3{
  public:
    TensorArraySizeV3() {}
    TensorArraySizeV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySplit{
  public:
    TensorArraySplit() {}
    TensorArraySplit(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySplitV2{
  public:
    TensorArraySplitV2() {}
    TensorArraySplitV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArraySplitV3{
  public:
    TensorArraySplitV3() {}
    TensorArraySplitV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayUnpack{
  public:
    TensorArrayUnpack() {}
    TensorArrayUnpack(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayV2{
  public:
    TensorArrayV2() {}
    TensorArrayV2(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {}, 
           bool dynamic_size = false, 
           bool clear_after_read = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayV3{
  public:
    TensorArrayV3() {}
    TensorArrayV3(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape element_shape = {}, 
           bool dynamic_size = false, 
           bool clear_after_read = true, 
           bool identical_element_shapes = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayWrite{
  public:
    TensorArrayWrite() {}
    TensorArrayWrite(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayWriteV2{
  public:
    TensorArrayWriteV2() {}
    TensorArrayWriteV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TensorArrayWriteV3{
  public:
    TensorArrayWriteV3() {}
    TensorArrayWriteV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

