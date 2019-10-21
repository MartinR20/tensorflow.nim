#include "tensorflow/cc/ops/const_op.h"
#include "datastructure.h"

AddManySparseToTensorsMap::AddManySparseToTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      if (!scope.ok())
          return;
      auto _sparse_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_indices);
      if (!scope.ok())
          return;
      auto _sparse_values = ::tensorflow::ops::AsNodeOut(scope, sparse_values);
      if (!scope.ok())
          return;
      auto _sparse_shape = ::tensorflow::ops::AsNodeOut(scope, sparse_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AddManySparseToTensorsMap");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AddManySparseToTensorsMap")
                                   .Input(_sparse_indices)
                                   .Input(_sparse_values)
                                   .Input(_sparse_shape)
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

AddSparseToTensorsMap::AddSparseToTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_indices, 
           tensorflow::Input sparse_values, 
           tensorflow::Input sparse_shape, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      if (!scope.ok())
          return;
      auto _sparse_indices = ::tensorflow::ops::AsNodeOut(scope, sparse_indices);
      if (!scope.ok())
          return;
      auto _sparse_values = ::tensorflow::ops::AsNodeOut(scope, sparse_values);
      if (!scope.ok())
          return;
      auto _sparse_shape = ::tensorflow::ops::AsNodeOut(scope, sparse_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AddSparseToTensorsMap");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AddSparseToTensorsMap")
                                   .Input(_sparse_indices)
                                   .Input(_sparse_values)
                                   .Input(_sparse_shape)
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

CropAndResizeGradBoxes::CropAndResizeGradBoxes(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input image, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::string method) {
      if (!scope.ok())
          return;
      auto _grads = ::tensorflow::ops::AsNodeOut(scope, grads);
      if (!scope.ok())
          return;
      auto _image = ::tensorflow::ops::AsNodeOut(scope, image);
      if (!scope.ok())
          return;
      auto _boxes = ::tensorflow::ops::AsNodeOut(scope, boxes);
      if (!scope.ok())
          return;
      auto _box_ind = ::tensorflow::ops::AsNodeOut(scope, box_ind);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CropAndResizeGradBoxes");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CropAndResizeGradBoxes")
                                   .Input(_grads)
                                   .Input(_image)
                                   .Input(_boxes)
                                   .Input(_box_ind)
                                   .Attr("method", method)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DataFormatVecPermute::DataFormatVecPermute(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T, 
           tensorflow::string src_format, 
           tensorflow::string dst_format) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DataFormatVecPermute");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DataFormatVecPermute")
                                   .Input(_x)
                                   .Attr("T", T)
                                   .Attr("src_format", src_format)
                                   .Attr("dst_format", dst_format)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

HashTable::HashTable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing, 
           tensorflow::DataType key_dtype, 
           tensorflow::DataType value_dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("HashTable");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "HashTable")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("use_node_name_sharing", use_node_name_sharing)
                                   .Attr("key_dtype", key_dtype)
                                   .Attr("value_dtype", value_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

HashTableV2::HashTableV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing, 
           tensorflow::DataType key_dtype, 
           tensorflow::DataType value_dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("HashTableV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "HashTableV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("use_node_name_sharing", use_node_name_sharing)
                                   .Attr("key_dtype", key_dtype)
                                   .Attr("value_dtype", value_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InitializeTable::InitializeTable(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InitializeTable");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InitializeTable")
                                   .Input(_table_handle)
                                   .Input(_keys)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

InitializeTableFromTextFile::InitializeTableFromTextFile(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input filename, 
           int64_t key_index, 
           int64_t value_index, 
           int64_t vocab_size, 
           tensorflow::string delimiter) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _filename = ::tensorflow::ops::AsNodeOut(scope, filename);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InitializeTableFromTextFile");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InitializeTableFromTextFile")
                                   .Input(_table_handle)
                                   .Input(_filename)
                                   .Attr("key_index", key_index)
                                   .Attr("value_index", value_index)
                                   .Attr("vocab_size", vocab_size)
                                   .Attr("delimiter", delimiter)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

InitializeTableFromTextFileV2::InitializeTableFromTextFileV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input filename, 
           int64_t key_index, 
           int64_t value_index, 
           int64_t vocab_size, 
           tensorflow::string delimiter) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _filename = ::tensorflow::ops::AsNodeOut(scope, filename);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InitializeTableFromTextFileV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InitializeTableFromTextFileV2")
                                   .Input(_table_handle)
                                   .Input(_filename)
                                   .Attr("key_index", key_index)
                                   .Attr("value_index", value_index)
                                   .Attr("vocab_size", vocab_size)
                                   .Attr("delimiter", delimiter)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

InitializeTableV2::InitializeTableV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InitializeTableV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InitializeTableV2")
                                   .Input(_table_handle)
                                   .Input(_keys)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

MapClear::MapClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapClear");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapClear")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

MapIncompleteSize::MapIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapIncompleteSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapIncompleteSize")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MapPeek::MapPeek(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _key = ::tensorflow::ops::AsNodeOut(scope, key);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapPeek");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapPeek")
                                   .Input(_key)
                                   .Input(_indices)
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

MapSize::MapSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapSize")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MapStage::MapStage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> fake_dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _key = ::tensorflow::ops::AsNodeOut(scope, key);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapStage");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapStage")
                                   .Input(_key)
                                   .Input(_indices)
                                   .Input(_values)
                                   .Attr("dtypes", dtypes)
                                   .Attr("fake_dtypes", fake_dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

MapUnstage::MapUnstage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _key = ::tensorflow::ops::AsNodeOut(scope, key);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapUnstage");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapUnstage")
                                   .Input(_key)
                                   .Input(_indices)
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

MapUnstageNoKey::MapUnstageNoKey(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapUnstageNoKey");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapUnstageNoKey")
                                   .Input(_indices)
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MutableDenseHashTable::MutableDenseHashTable(tensorflow::Scope& scope, 
           tensorflow::Input empty_key, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing, 
           float max_load_factor, 
           tensorflow::DataType value_dtype, 
           tensorflow::PartialTensorShape value_shape, 
           int64_t initial_num_buckets) {
      if (!scope.ok())
          return;
      auto _empty_key = ::tensorflow::ops::AsNodeOut(scope, empty_key);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MutableDenseHashTable");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MutableDenseHashTable")
                                   .Input(_empty_key)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("use_node_name_sharing", use_node_name_sharing)
                                   .Attr("max_load_factor", max_load_factor)
                                   .Attr("value_dtype", value_dtype)
                                   .Attr("value_shape", value_shape)
                                   .Attr("initial_num_buckets", initial_num_buckets)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MutableDenseHashTableV2::MutableDenseHashTableV2(tensorflow::Scope& scope, 
           tensorflow::Input empty_key, 
           tensorflow::Input deleted_key, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing, 
           float max_load_factor, 
           tensorflow::DataType value_dtype, 
           tensorflow::PartialTensorShape value_shape, 
           int64_t initial_num_buckets) {
      if (!scope.ok())
          return;
      auto _empty_key = ::tensorflow::ops::AsNodeOut(scope, empty_key);
      if (!scope.ok())
          return;
      auto _deleted_key = ::tensorflow::ops::AsNodeOut(scope, deleted_key);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MutableDenseHashTableV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MutableDenseHashTableV2")
                                   .Input(_empty_key)
                                   .Input(_deleted_key)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("use_node_name_sharing", use_node_name_sharing)
                                   .Attr("max_load_factor", max_load_factor)
                                   .Attr("value_dtype", value_dtype)
                                   .Attr("value_shape", value_shape)
                                   .Attr("initial_num_buckets", initial_num_buckets)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MutableHashTable::MutableHashTable(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing, 
           tensorflow::DataType key_dtype, 
           tensorflow::DataType value_dtype) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MutableHashTable");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MutableHashTable")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("use_node_name_sharing", use_node_name_sharing)
                                   .Attr("key_dtype", key_dtype)
                                   .Attr("value_dtype", value_dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MutableHashTableOfTensors::MutableHashTableOfTensors(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing, 
           tensorflow::DataType key_dtype, 
           tensorflow::DataType value_dtype, 
           tensorflow::PartialTensorShape value_shape) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MutableHashTableOfTensors");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MutableHashTableOfTensors")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("use_node_name_sharing", use_node_name_sharing)
                                   .Attr("key_dtype", key_dtype)
                                   .Attr("value_dtype", value_dtype)
                                   .Attr("value_shape", value_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MutableHashTableOfTensorsV2::MutableHashTableOfTensorsV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           bool use_node_name_sharing, 
           tensorflow::DataType key_dtype, 
           tensorflow::DataType value_dtype, 
           tensorflow::PartialTensorShape value_shape) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MutableHashTableOfTensorsV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MutableHashTableOfTensorsV2")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("use_node_name_sharing", use_node_name_sharing)
                                   .Attr("key_dtype", key_dtype)
                                   .Attr("value_dtype", value_dtype)
                                   .Attr("value_shape", value_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

OrderedMapClear::OrderedMapClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OrderedMapClear");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OrderedMapClear")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

OrderedMapIncompleteSize::OrderedMapIncompleteSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OrderedMapIncompleteSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OrderedMapIncompleteSize")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

OrderedMapPeek::OrderedMapPeek(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _key = ::tensorflow::ops::AsNodeOut(scope, key);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OrderedMapPeek");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OrderedMapPeek")
                                   .Input(_key)
                                   .Input(_indices)
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

OrderedMapSize::OrderedMapSize(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OrderedMapSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OrderedMapSize")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

OrderedMapStage::OrderedMapStage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::InputList values, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> fake_dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _key = ::tensorflow::ops::AsNodeOut(scope, key);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOutList(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OrderedMapStage");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OrderedMapStage")
                                   .Input(_key)
                                   .Input(_indices)
                                   .Input(_values)
                                   .Attr("dtypes", dtypes)
                                   .Attr("fake_dtypes", fake_dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

OrderedMapUnstage::OrderedMapUnstage(tensorflow::Scope& scope, 
           tensorflow::Input key, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _key = ::tensorflow::ops::AsNodeOut(scope, key);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OrderedMapUnstage");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OrderedMapUnstage")
                                   .Input(_key)
                                   .Input(_indices)
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

OrderedMapUnstageNoKey::OrderedMapUnstageNoKey(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OrderedMapUnstageNoKey");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OrderedMapUnstageNoKey")
                                   .Input(_indices)
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ParallelDynamicStitch::ParallelDynamicStitch(tensorflow::Scope& scope, 
           tensorflow::InputList indices, 
           tensorflow::InputList data, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOutList(scope, indices);
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOutList(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParallelDynamicStitch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParallelDynamicStitch")
                                   .Input(_indices)
                                   .Input(_data)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StackClose::StackClose(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StackClose");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StackClose")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

StackCloseV2::StackCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StackCloseV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StackCloseV2")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

StackPop::StackPop(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType elem_type) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StackPop");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StackPop")
                                   .Input(_handle)
                                   .Attr("elem_type", elem_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StackPopV2::StackPopV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::DataType elem_type) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StackPopV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StackPopV2")
                                   .Input(_handle)
                                   .Attr("elem_type", elem_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StackPushV2::StackPushV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input elem, 
           tensorflow::DataType T, 
           bool swap_memory) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _elem = ::tensorflow::ops::AsNodeOut(scope, elem);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StackPushV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StackPushV2")
                                   .Input(_handle)
                                   .Input(_elem)
                                   .Attr("T", T)
                                   .Attr("swap_memory", swap_memory)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TakeManySparseFromTensorsMap::TakeManySparseFromTensorsMap(tensorflow::Scope& scope, 
           tensorflow::Input sparse_handles, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _sparse_handles = ::tensorflow::ops::AsNodeOut(scope, sparse_handles);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TakeManySparseFromTensorsMap");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TakeManySparseFromTensorsMap")
                                   .Input(_sparse_handles)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArray::TensorArray(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype, 
           bool dynamic_size, 
           bool clear_after_read, 
           tensorflow::PartialTensorShape element_shape) {
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArray");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArray")
                                   .Input(_size)
                                   .Attr("tensor_array_name", tensor_array_name)
                                   .Attr("dtype", dtype)
                                   .Attr("dynamic_size", dynamic_size)
                                   .Attr("clear_after_read", clear_after_read)
                                   .Attr("element_shape", element_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayClose::TensorArrayClose(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayClose");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayClose")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

TensorArrayCloseV2::TensorArrayCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayCloseV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayCloseV2")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

TensorArrayCloseV3::TensorArrayCloseV3(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayCloseV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayCloseV3")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

TensorArrayConcat::TensorArrayConcat(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape_except0) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayConcat");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayConcat")
                                   .Input(_handle)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape_except0", element_shape_except0)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayConcatV2::TensorArrayConcatV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape_except0) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayConcatV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayConcatV2")
                                   .Input(_handle)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape_except0", element_shape_except0)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayConcatV3::TensorArrayConcatV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape_except0) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayConcatV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayConcatV3")
                                   .Input(_handle)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape_except0", element_shape_except0)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayGather::TensorArrayGather(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayGather");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayGather")
                                   .Input(_handle)
                                   .Input(_indices)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape", element_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayGatherV2::TensorArrayGatherV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayGatherV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayGatherV2")
                                   .Input(_handle)
                                   .Input(_indices)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape", element_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayGatherV3::TensorArrayGatherV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayGatherV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayGatherV3")
                                   .Input(_handle)
                                   .Input(_indices)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape", element_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayGrad::TensorArrayGrad(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayGrad")
                                   .Input(_handle)
                                   .Input(_flow_in)
                                   .Attr("source", source)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayGradV2::TensorArrayGradV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayGradV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayGradV2")
                                   .Input(_handle)
                                   .Input(_flow_in)
                                   .Attr("source", source)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayGradV3::TensorArrayGradV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::string source) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayGradV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayGradV3")
                                   .Input(_handle)
                                   .Input(_flow_in)
                                   .Attr("source", source)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayGradWithShape::TensorArrayGradWithShape(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::Input shape_to_prepend, 
           tensorflow::string source) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      if (!scope.ok())
          return;
      auto _shape_to_prepend = ::tensorflow::ops::AsNodeOut(scope, shape_to_prepend);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayGradWithShape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayGradWithShape")
                                   .Input(_handle)
                                   .Input(_flow_in)
                                   .Input(_shape_to_prepend)
                                   .Attr("source", source)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayPack::TensorArrayPack(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayPack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayPack")
                                   .Input(_handle)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape", element_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayRead::TensorArrayRead(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayRead");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayRead")
                                   .Input(_handle)
                                   .Input(_index)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayReadV2::TensorArrayReadV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayReadV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayReadV2")
                                   .Input(_handle)
                                   .Input(_index)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayReadV3::TensorArrayReadV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input flow_in, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayReadV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayReadV3")
                                   .Input(_handle)
                                   .Input(_index)
                                   .Input(_flow_in)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayScatter::TensorArrayScatter(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayScatter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayScatter")
                                   .Input(_handle)
                                   .Input(_indices)
                                   .Input(_value)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayScatterV2::TensorArrayScatterV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayScatterV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayScatterV2")
                                   .Input(_handle)
                                   .Input(_indices)
                                   .Input(_value)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayScatterV3::TensorArrayScatterV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input indices, 
           tensorflow::Input value, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayScatterV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayScatterV3")
                                   .Input(_handle)
                                   .Input(_indices)
                                   .Input(_value)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArraySize::TensorArraySize(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArraySize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArraySize")
                                   .Input(_handle)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArraySizeV2::TensorArraySizeV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArraySizeV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArraySizeV2")
                                   .Input(_handle)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArraySizeV3::TensorArraySizeV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArraySizeV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArraySizeV3")
                                   .Input(_handle)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArraySplit::TensorArraySplit(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _lengths = ::tensorflow::ops::AsNodeOut(scope, lengths);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArraySplit");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArraySplit")
                                   .Input(_handle)
                                   .Input(_value)
                                   .Input(_lengths)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArraySplitV2::TensorArraySplitV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _lengths = ::tensorflow::ops::AsNodeOut(scope, lengths);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArraySplitV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArraySplitV2")
                                   .Input(_handle)
                                   .Input(_value)
                                   .Input(_lengths)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArraySplitV3::TensorArraySplitV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input lengths, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _lengths = ::tensorflow::ops::AsNodeOut(scope, lengths);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArraySplitV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArraySplitV3")
                                   .Input(_handle)
                                   .Input(_value)
                                   .Input(_lengths)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayUnpack::TensorArrayUnpack(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input value, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayUnpack");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayUnpack")
                                   .Input(_handle)
                                   .Input(_value)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayV2::TensorArrayV2(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape, 
           bool dynamic_size, 
           bool clear_after_read) {
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayV2")
                                   .Input(_size)
                                   .Attr("tensor_array_name", tensor_array_name)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape", element_shape)
                                   .Attr("dynamic_size", dynamic_size)
                                   .Attr("clear_after_read", clear_after_read)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayV3::TensorArrayV3(tensorflow::Scope& scope, 
           tensorflow::Input size, 
           tensorflow::string tensor_array_name, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape element_shape, 
           bool dynamic_size, 
           bool clear_after_read, 
           bool identical_element_shapes) {
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayV3")
                                   .Input(_size)
                                   .Attr("tensor_array_name", tensor_array_name)
                                   .Attr("dtype", dtype)
                                   .Attr("element_shape", element_shape)
                                   .Attr("dynamic_size", dynamic_size)
                                   .Attr("clear_after_read", clear_after_read)
                                   .Attr("identical_element_shapes", identical_element_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayWrite::TensorArrayWrite(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayWrite");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayWrite")
                                   .Input(_handle)
                                   .Input(_index)
                                   .Input(_value)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayWriteV2::TensorArrayWriteV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayWriteV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayWriteV2")
                                   .Input(_handle)
                                   .Input(_index)
                                   .Input(_value)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorArrayWriteV3::TensorArrayWriteV3(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input index, 
           tensorflow::Input value, 
           tensorflow::Input flow_in) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      if (!scope.ok())
          return;
      auto _flow_in = ::tensorflow::ops::AsNodeOut(scope, flow_in);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorArrayWriteV3");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorArrayWriteV3")
                                   .Input(_handle)
                                   .Input(_index)
                                   .Input(_value)
                                   .Input(_flow_in)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

