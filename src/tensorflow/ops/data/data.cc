#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/data/data.h"

BatchDataset::BatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _batch_size = ::tensorflow::ops::AsNodeOut(scope, batch_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchDataset")
                                   .Input(_input_dataset)
                                   .Input(_batch_size)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchDatasetV2::BatchDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _batch_size = ::tensorflow::ops::AsNodeOut(scope, batch_size);
      if (!scope.ok())
          return;
      auto _drop_remainder = ::tensorflow::ops::AsNodeOut(scope, drop_remainder);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchDatasetV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchDatasetV2")
                                   .Input(_input_dataset)
                                   .Input(_batch_size)
                                   .Input(_drop_remainder)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchFunction::BatchFunction(tensorflow::Scope& scope, 
           tensorflow::InputList in_tensors, 
           tensorflow::InputList captured_tensors, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<int64_t> allowed_batch_sizes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string batching_queue, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcaptured, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           int64_t num_batch_threads, 
           int64_t max_batch_size, 
           int64_t batch_timeout_micros, 
           int64_t max_enqueued_batches) {
      if (!scope.ok())
          return;
      auto _in_tensors = ::tensorflow::ops::AsNodeOutList(scope, in_tensors);
      if (!scope.ok())
          return;
      auto _captured_tensors = ::tensorflow::ops::AsNodeOutList(scope, captured_tensors);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchFunction");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchFunction")
                                   .Input(_in_tensors)
                                   .Input(_captured_tensors)
                                   .Attr("f", f)
                                   .Attr("allowed_batch_sizes", allowed_batch_sizes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("batching_queue", batching_queue)
                                   .Attr("Tin", Tin)
                                   .Attr("Tcaptured", Tcaptured)
                                   .Attr("Tout", Tout)
                                   .Attr("num_batch_threads", num_batch_threads)
                                   .Attr("max_batch_size", max_batch_size)
                                   .Attr("batch_timeout_micros", batch_timeout_micros)
                                   .Attr("max_enqueued_batches", max_enqueued_batches)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

CacheDataset::CacheDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input filename, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _filename = ::tensorflow::ops::AsNodeOut(scope, filename);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CacheDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CacheDataset")
                                   .Input(_input_dataset)
                                   .Input(_filename)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ConcatenateDataset::ConcatenateDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input another_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _another_dataset = ::tensorflow::ops::AsNodeOut(scope, another_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ConcatenateDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ConcatenateDataset")
                                   .Input(_input_dataset)
                                   .Input(_another_dataset)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DatasetToGraph::DatasetToGraph(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DatasetToGraph");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DatasetToGraph")
                                   .Input(_input_dataset)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DatasetToSingleElement::DatasetToSingleElement(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _dataset = ::tensorflow::ops::AsNodeOut(scope, dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DatasetToSingleElement");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DatasetToSingleElement")
                                   .Input(_dataset)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

ExperimentalAssertNextDataset::ExperimentalAssertNextDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input transformations, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _transformations = ::tensorflow::ops::AsNodeOut(scope, transformations);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalAssertNextDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalAssertNextDataset")
                                   .Input(_input_dataset)
                                   .Input(_transformations)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalBytesProducedStatsDataset::ExperimentalBytesProducedStatsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input tag, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalBytesProducedStatsDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalBytesProducedStatsDataset")
                                   .Input(_input_dataset)
                                   .Input(_tag)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalCSVDataset::ExperimentalCSVDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input compression_type, 
           tensorflow::Input buffer_size, 
           tensorflow::Input header, 
           tensorflow::Input field_delim, 
           tensorflow::Input use_quote_delim, 
           tensorflow::Input na_value, 
           tensorflow::Input select_cols, 
           tensorflow::InputList record_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _filenames = ::tensorflow::ops::AsNodeOut(scope, filenames);
      if (!scope.ok())
          return;
      auto _compression_type = ::tensorflow::ops::AsNodeOut(scope, compression_type);
      if (!scope.ok())
          return;
      auto _buffer_size = ::tensorflow::ops::AsNodeOut(scope, buffer_size);
      if (!scope.ok())
          return;
      auto _header = ::tensorflow::ops::AsNodeOut(scope, header);
      if (!scope.ok())
          return;
      auto _field_delim = ::tensorflow::ops::AsNodeOut(scope, field_delim);
      if (!scope.ok())
          return;
      auto _use_quote_delim = ::tensorflow::ops::AsNodeOut(scope, use_quote_delim);
      if (!scope.ok())
          return;
      auto _na_value = ::tensorflow::ops::AsNodeOut(scope, na_value);
      if (!scope.ok())
          return;
      auto _select_cols = ::tensorflow::ops::AsNodeOut(scope, select_cols);
      if (!scope.ok())
          return;
      auto _record_defaults = ::tensorflow::ops::AsNodeOutList(scope, record_defaults);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalCSVDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalCSVDataset")
                                   .Input(_filenames)
                                   .Input(_compression_type)
                                   .Input(_buffer_size)
                                   .Input(_header)
                                   .Input(_field_delim)
                                   .Input(_use_quote_delim)
                                   .Input(_na_value)
                                   .Input(_select_cols)
                                   .Input(_record_defaults)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalDatasetCardinality::ExperimentalDatasetCardinality(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalDatasetCardinality");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalDatasetCardinality")
                                   .Input(_input_dataset)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalDatasetToTFRecord::ExperimentalDatasetToTFRecord(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input filename, 
           tensorflow::Input compression_type) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _filename = ::tensorflow::ops::AsNodeOut(scope, filename);
      if (!scope.ok())
          return;
      auto _compression_type = ::tensorflow::ops::AsNodeOut(scope, compression_type);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalDatasetToTFRecord");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalDatasetToTFRecord")
                                   .Input(_input_dataset)
                                   .Input(_filename)
                                   .Input(_compression_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ExperimentalDenseToSparseBatchDataset::ExperimentalDenseToSparseBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::Input row_shape, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _batch_size = ::tensorflow::ops::AsNodeOut(scope, batch_size);
      if (!scope.ok())
          return;
      auto _row_shape = ::tensorflow::ops::AsNodeOut(scope, row_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalDenseToSparseBatchDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalDenseToSparseBatchDataset")
                                   .Input(_input_dataset)
                                   .Input(_batch_size)
                                   .Input(_row_shape)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalDirectedInterleaveDataset::ExperimentalDirectedInterleaveDataset(tensorflow::Scope& scope, 
           tensorflow::Input selector_input_dataset, 
           tensorflow::InputList data_input_datasets, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _selector_input_dataset = ::tensorflow::ops::AsNodeOut(scope, selector_input_dataset);
      if (!scope.ok())
          return;
      auto _data_input_datasets = ::tensorflow::ops::AsNodeOutList(scope, data_input_datasets);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalDirectedInterleaveDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalDirectedInterleaveDataset")
                                   .Input(_selector_input_dataset)
                                   .Input(_data_input_datasets)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalGroupByReducerDataset::ExperimentalGroupByReducerDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList key_func_other_arguments, 
           tensorflow::InputList init_func_other_arguments, 
           tensorflow::InputList reduce_func_other_arguments, 
           tensorflow::InputList finalize_func_other_arguments, 
           tensorflow::NameAttrList key_func, 
           tensorflow::NameAttrList init_func, 
           tensorflow::NameAttrList reduce_func, 
           tensorflow::NameAttrList finalize_func, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tkey_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinit_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Treduce_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tfinalize_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _key_func_other_arguments = ::tensorflow::ops::AsNodeOutList(scope, key_func_other_arguments);
      if (!scope.ok())
          return;
      auto _init_func_other_arguments = ::tensorflow::ops::AsNodeOutList(scope, init_func_other_arguments);
      if (!scope.ok())
          return;
      auto _reduce_func_other_arguments = ::tensorflow::ops::AsNodeOutList(scope, reduce_func_other_arguments);
      if (!scope.ok())
          return;
      auto _finalize_func_other_arguments = ::tensorflow::ops::AsNodeOutList(scope, finalize_func_other_arguments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalGroupByReducerDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalGroupByReducerDataset")
                                   .Input(_input_dataset)
                                   .Input(_key_func_other_arguments)
                                   .Input(_init_func_other_arguments)
                                   .Input(_reduce_func_other_arguments)
                                   .Input(_finalize_func_other_arguments)
                                   .Attr("key_func", key_func)
                                   .Attr("init_func", init_func)
                                   .Attr("reduce_func", reduce_func)
                                   .Attr("finalize_func", finalize_func)
                                   .Attr("Tkey_func_other_arguments", Tkey_func_other_arguments)
                                   .Attr("Tinit_func_other_arguments", Tinit_func_other_arguments)
                                   .Attr("Treduce_func_other_arguments", Treduce_func_other_arguments)
                                   .Attr("Tfinalize_func_other_arguments", Tfinalize_func_other_arguments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalGroupByWindowDataset::ExperimentalGroupByWindowDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList key_func_other_arguments, 
           tensorflow::InputList reduce_func_other_arguments, 
           tensorflow::InputList window_size_func_other_arguments, 
           tensorflow::NameAttrList key_func, 
           tensorflow::NameAttrList reduce_func, 
           tensorflow::NameAttrList window_size_func, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tkey_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Treduce_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Twindow_size_func_other_arguments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _key_func_other_arguments = ::tensorflow::ops::AsNodeOutList(scope, key_func_other_arguments);
      if (!scope.ok())
          return;
      auto _reduce_func_other_arguments = ::tensorflow::ops::AsNodeOutList(scope, reduce_func_other_arguments);
      if (!scope.ok())
          return;
      auto _window_size_func_other_arguments = ::tensorflow::ops::AsNodeOutList(scope, window_size_func_other_arguments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalGroupByWindowDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalGroupByWindowDataset")
                                   .Input(_input_dataset)
                                   .Input(_key_func_other_arguments)
                                   .Input(_reduce_func_other_arguments)
                                   .Input(_window_size_func_other_arguments)
                                   .Attr("key_func", key_func)
                                   .Attr("reduce_func", reduce_func)
                                   .Attr("window_size_func", window_size_func)
                                   .Attr("Tkey_func_other_arguments", Tkey_func_other_arguments)
                                   .Attr("Treduce_func_other_arguments", Treduce_func_other_arguments)
                                   .Attr("Twindow_size_func_other_arguments", Twindow_size_func_other_arguments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalIdentityIndexedDataset::ExperimentalIdentityIndexedDataset(tensorflow::Scope& scope, 
           tensorflow::Input size) {
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalIdentityIndexedDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalIdentityIndexedDataset")
                                   .Input(_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalIgnoreErrorsDataset::ExperimentalIgnoreErrorsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalIgnoreErrorsDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalIgnoreErrorsDataset")
                                   .Input(_input_dataset)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalIndexedDatasetGet::ExperimentalIndexedDatasetGet(tensorflow::Scope& scope, 
           tensorflow::Input materialized, 
           tensorflow::Input index, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _materialized = ::tensorflow::ops::AsNodeOut(scope, materialized);
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalIndexedDatasetGet");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalIndexedDatasetGet")
                                   .Input(_materialized)
                                   .Input(_index)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

ExperimentalIndexedDatasetMaterialize::ExperimentalIndexedDatasetMaterialize(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input materialized) {
      if (!scope.ok())
          return;
      auto _dataset = ::tensorflow::ops::AsNodeOut(scope, dataset);
      if (!scope.ok())
          return;
      auto _materialized = ::tensorflow::ops::AsNodeOut(scope, materialized);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalIndexedDatasetMaterialize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalIndexedDatasetMaterialize")
                                   .Input(_dataset)
                                   .Input(_materialized)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ExperimentalLMDBDataset::ExperimentalLMDBDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _filenames = ::tensorflow::ops::AsNodeOut(scope, filenames);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalLMDBDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalLMDBDataset")
                                   .Input(_filenames)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalLatencyStatsDataset::ExperimentalLatencyStatsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input tag, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalLatencyStatsDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalLatencyStatsDataset")
                                   .Input(_input_dataset)
                                   .Input(_tag)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalMapAndBatchDataset::ExperimentalMapAndBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input batch_size, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::Input drop_remainder, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      if (!scope.ok())
          return;
      auto _batch_size = ::tensorflow::ops::AsNodeOut(scope, batch_size);
      if (!scope.ok())
          return;
      auto _num_parallel_calls = ::tensorflow::ops::AsNodeOut(scope, num_parallel_calls);
      if (!scope.ok())
          return;
      auto _drop_remainder = ::tensorflow::ops::AsNodeOut(scope, drop_remainder);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalMapAndBatchDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalMapAndBatchDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Input(_batch_size)
                                   .Input(_num_parallel_calls)
                                   .Input(_drop_remainder)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("preserve_cardinality", preserve_cardinality)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalMapDataset::ExperimentalMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism, 
           bool preserve_cardinality) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalMapDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalMapDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("use_inter_op_parallelism", use_inter_op_parallelism)
                                   .Attr("preserve_cardinality", preserve_cardinality)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalMatchingFilesDataset::ExperimentalMatchingFilesDataset(tensorflow::Scope& scope, 
           tensorflow::Input patterns) {
      if (!scope.ok())
          return;
      auto _patterns = ::tensorflow::ops::AsNodeOut(scope, patterns);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalMatchingFilesDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalMatchingFilesDataset")
                                   .Input(_patterns)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalMaterializedIndexDatasetHandle::ExperimentalMaterializedIndexDatasetHandle(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalMaterializedIndexDatasetHandle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalMaterializedIndexDatasetHandle")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalMaxIntraOpParallelismDataset::ExperimentalMaxIntraOpParallelismDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input max_intra_op_parallelism, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _max_intra_op_parallelism = ::tensorflow::ops::AsNodeOut(scope, max_intra_op_parallelism);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalMaxIntraOpParallelismDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalMaxIntraOpParallelismDataset")
                                   .Input(_input_dataset)
                                   .Input(_max_intra_op_parallelism)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalNonSerializableDataset::ExperimentalNonSerializableDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalNonSerializableDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalNonSerializableDataset")
                                   .Input(_input_dataset)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalNumaMapAndBatchDataset::ExperimentalNumaMapAndBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input batch_size, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::Input drop_remainder, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      if (!scope.ok())
          return;
      auto _batch_size = ::tensorflow::ops::AsNodeOut(scope, batch_size);
      if (!scope.ok())
          return;
      auto _num_parallel_calls = ::tensorflow::ops::AsNodeOut(scope, num_parallel_calls);
      if (!scope.ok())
          return;
      auto _drop_remainder = ::tensorflow::ops::AsNodeOut(scope, drop_remainder);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalNumaMapAndBatchDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalNumaMapAndBatchDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Input(_batch_size)
                                   .Input(_num_parallel_calls)
                                   .Input(_drop_remainder)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("preserve_cardinality", preserve_cardinality)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalParallelInterleaveDataset::ExperimentalParallelInterleaveDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input cycle_length, 
           tensorflow::Input block_length, 
           tensorflow::Input sloppy, 
           tensorflow::Input buffer_output_elements, 
           tensorflow::Input prefetch_input_elements, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      if (!scope.ok())
          return;
      auto _cycle_length = ::tensorflow::ops::AsNodeOut(scope, cycle_length);
      if (!scope.ok())
          return;
      auto _block_length = ::tensorflow::ops::AsNodeOut(scope, block_length);
      if (!scope.ok())
          return;
      auto _sloppy = ::tensorflow::ops::AsNodeOut(scope, sloppy);
      if (!scope.ok())
          return;
      auto _buffer_output_elements = ::tensorflow::ops::AsNodeOut(scope, buffer_output_elements);
      if (!scope.ok())
          return;
      auto _prefetch_input_elements = ::tensorflow::ops::AsNodeOut(scope, prefetch_input_elements);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalParallelInterleaveDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalParallelInterleaveDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Input(_cycle_length)
                                   .Input(_block_length)
                                   .Input(_sloppy)
                                   .Input(_buffer_output_elements)
                                   .Input(_prefetch_input_elements)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalPrivateThreadPoolDataset::ExperimentalPrivateThreadPoolDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input num_threads, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _num_threads = ::tensorflow::ops::AsNodeOut(scope, num_threads);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalPrivateThreadPoolDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalPrivateThreadPoolDataset")
                                   .Input(_input_dataset)
                                   .Input(_num_threads)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalRandomDataset::ExperimentalRandomDataset(tensorflow::Scope& scope, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _seed = ::tensorflow::ops::AsNodeOut(scope, seed);
      if (!scope.ok())
          return;
      auto _seed2 = ::tensorflow::ops::AsNodeOut(scope, seed2);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalRandomDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalRandomDataset")
                                   .Input(_seed)
                                   .Input(_seed2)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalScanDataset::ExperimentalScanDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList initial_state, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tstate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _initial_state = ::tensorflow::ops::AsNodeOutList(scope, initial_state);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalScanDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalScanDataset")
                                   .Input(_input_dataset)
                                   .Input(_initial_state)
                                   .Input(_other_arguments)
                                   .Attr("f", f)
                                   .Attr("Tstate", Tstate)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("preserve_cardinality", preserve_cardinality)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalSetStatsAggregatorDataset::ExperimentalSetStatsAggregatorDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input stats_aggregator, 
           tensorflow::Input tag, 
           tensorflow::Input counter_prefix, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _stats_aggregator = ::tensorflow::ops::AsNodeOut(scope, stats_aggregator);
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _counter_prefix = ::tensorflow::ops::AsNodeOut(scope, counter_prefix);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalSetStatsAggregatorDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalSetStatsAggregatorDataset")
                                   .Input(_input_dataset)
                                   .Input(_stats_aggregator)
                                   .Input(_tag)
                                   .Input(_counter_prefix)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalSleepDataset::ExperimentalSleepDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input sleep_microseconds, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _sleep_microseconds = ::tensorflow::ops::AsNodeOut(scope, sleep_microseconds);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalSleepDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalSleepDataset")
                                   .Input(_input_dataset)
                                   .Input(_sleep_microseconds)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalSlidingWindowDataset::ExperimentalSlidingWindowDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input window_size, 
           tensorflow::Input window_shift, 
           tensorflow::Input window_stride, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _window_size = ::tensorflow::ops::AsNodeOut(scope, window_size);
      if (!scope.ok())
          return;
      auto _window_shift = ::tensorflow::ops::AsNodeOut(scope, window_shift);
      if (!scope.ok())
          return;
      auto _window_stride = ::tensorflow::ops::AsNodeOut(scope, window_stride);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalSlidingWindowDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalSlidingWindowDataset")
                                   .Input(_input_dataset)
                                   .Input(_window_size)
                                   .Input(_window_shift)
                                   .Input(_window_stride)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalSqlDataset::ExperimentalSqlDataset(tensorflow::Scope& scope, 
           tensorflow::Input driver_name, 
           tensorflow::Input data_source_name, 
           tensorflow::Input query, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _driver_name = ::tensorflow::ops::AsNodeOut(scope, driver_name);
      if (!scope.ok())
          return;
      auto _data_source_name = ::tensorflow::ops::AsNodeOut(scope, data_source_name);
      if (!scope.ok())
          return;
      auto _query = ::tensorflow::ops::AsNodeOut(scope, query);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalSqlDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalSqlDataset")
                                   .Input(_driver_name)
                                   .Input(_data_source_name)
                                   .Input(_query)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalThreadPoolDataset::ExperimentalThreadPoolDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input thread_pool, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _thread_pool = ::tensorflow::ops::AsNodeOut(scope, thread_pool);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalThreadPoolDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalThreadPoolDataset")
                                   .Input(_input_dataset)
                                   .Input(_thread_pool)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalUnbatchDataset::ExperimentalUnbatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalUnbatchDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalUnbatchDataset")
                                   .Input(_input_dataset)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExperimentalUniqueDataset::ExperimentalUniqueDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalUniqueDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalUniqueDataset")
                                   .Input(_input_dataset)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FilterByLastComponentDataset::FilterByLastComponentDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FilterByLastComponentDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FilterByLastComponentDataset")
                                   .Input(_input_dataset)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FilterDataset::FilterDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList predicate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FilterDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FilterDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Attr("predicate", predicate)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FixedLengthRecordDataset::FixedLengthRecordDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input header_bytes, 
           tensorflow::Input record_bytes, 
           tensorflow::Input footer_bytes, 
           tensorflow::Input buffer_size) {
      if (!scope.ok())
          return;
      auto _filenames = ::tensorflow::ops::AsNodeOut(scope, filenames);
      if (!scope.ok())
          return;
      auto _header_bytes = ::tensorflow::ops::AsNodeOut(scope, header_bytes);
      if (!scope.ok())
          return;
      auto _record_bytes = ::tensorflow::ops::AsNodeOut(scope, record_bytes);
      if (!scope.ok())
          return;
      auto _footer_bytes = ::tensorflow::ops::AsNodeOut(scope, footer_bytes);
      if (!scope.ok())
          return;
      auto _buffer_size = ::tensorflow::ops::AsNodeOut(scope, buffer_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FixedLengthRecordDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FixedLengthRecordDataset")
                                   .Input(_filenames)
                                   .Input(_header_bytes)
                                   .Input(_record_bytes)
                                   .Input(_footer_bytes)
                                   .Input(_buffer_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FixedLengthRecordDatasetV2::FixedLengthRecordDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input header_bytes, 
           tensorflow::Input record_bytes, 
           tensorflow::Input footer_bytes, 
           tensorflow::Input buffer_size, 
           tensorflow::Input compression_type) {
      if (!scope.ok())
          return;
      auto _filenames = ::tensorflow::ops::AsNodeOut(scope, filenames);
      if (!scope.ok())
          return;
      auto _header_bytes = ::tensorflow::ops::AsNodeOut(scope, header_bytes);
      if (!scope.ok())
          return;
      auto _record_bytes = ::tensorflow::ops::AsNodeOut(scope, record_bytes);
      if (!scope.ok())
          return;
      auto _footer_bytes = ::tensorflow::ops::AsNodeOut(scope, footer_bytes);
      if (!scope.ok())
          return;
      auto _buffer_size = ::tensorflow::ops::AsNodeOut(scope, buffer_size);
      if (!scope.ok())
          return;
      auto _compression_type = ::tensorflow::ops::AsNodeOut(scope, compression_type);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FixedLengthRecordDatasetV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FixedLengthRecordDatasetV2")
                                   .Input(_filenames)
                                   .Input(_header_bytes)
                                   .Input(_record_bytes)
                                   .Input(_footer_bytes)
                                   .Input(_buffer_size)
                                   .Input(_compression_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FlatMapDataset::FlatMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FlatMapDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FlatMapDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GeneratorDataset::GeneratorDataset(tensorflow::Scope& scope, 
           tensorflow::InputList init_func_other_args, 
           tensorflow::InputList next_func_other_args, 
           tensorflow::InputList finalize_func_other_args, 
           tensorflow::NameAttrList init_func, 
           tensorflow::NameAttrList next_func, 
           tensorflow::NameAttrList finalize_func, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinit_func_args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tnext_func_args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tfinalize_func_args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _init_func_other_args = ::tensorflow::ops::AsNodeOutList(scope, init_func_other_args);
      if (!scope.ok())
          return;
      auto _next_func_other_args = ::tensorflow::ops::AsNodeOutList(scope, next_func_other_args);
      if (!scope.ok())
          return;
      auto _finalize_func_other_args = ::tensorflow::ops::AsNodeOutList(scope, finalize_func_other_args);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GeneratorDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GeneratorDataset")
                                   .Input(_init_func_other_args)
                                   .Input(_next_func_other_args)
                                   .Input(_finalize_func_other_args)
                                   .Attr("init_func", init_func)
                                   .Attr("next_func", next_func)
                                   .Attr("finalize_func", finalize_func)
                                   .Attr("Tinit_func_args", Tinit_func_args)
                                   .Attr("Tnext_func_args", Tnext_func_args)
                                   .Attr("Tfinalize_func_args", Tfinalize_func_args)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InterleaveDataset::InterleaveDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input cycle_length, 
           tensorflow::Input block_length, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      if (!scope.ok())
          return;
      auto _cycle_length = ::tensorflow::ops::AsNodeOut(scope, cycle_length);
      if (!scope.ok())
          return;
      auto _block_length = ::tensorflow::ops::AsNodeOut(scope, block_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InterleaveDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InterleaveDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Input(_cycle_length)
                                   .Input(_block_length)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MapDataset::MapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism, 
           bool preserve_cardinality) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("use_inter_op_parallelism", use_inter_op_parallelism)
                                   .Attr("preserve_cardinality", preserve_cardinality)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MapDefun::MapDefun(tensorflow::Scope& scope, 
           tensorflow::InputList arguments, 
           tensorflow::InputList captured_inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcaptured, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           tensorflow::NameAttrList f) {
      if (!scope.ok())
          return;
      auto _arguments = ::tensorflow::ops::AsNodeOutList(scope, arguments);
      if (!scope.ok())
          return;
      auto _captured_inputs = ::tensorflow::ops::AsNodeOutList(scope, captured_inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MapDefun");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MapDefun")
                                   .Input(_arguments)
                                   .Input(_captured_inputs)
                                   .Attr("Targuments", Targuments)
                                   .Attr("Tcaptured", Tcaptured)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("f", f)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

ModelDataset::ModelDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ModelDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ModelDataset")
                                   .Input(_input_dataset)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

OptimizeDataset::OptimizeDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input optimizations, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _optimizations = ::tensorflow::ops::AsNodeOut(scope, optimizations);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OptimizeDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OptimizeDataset")
                                   .Input(_input_dataset)
                                   .Input(_optimizations)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PaddedBatchDatasetV2::PaddedBatchDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::InputList padded_shapes, 
           tensorflow::InputList padding_values, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _batch_size = ::tensorflow::ops::AsNodeOut(scope, batch_size);
      if (!scope.ok())
          return;
      auto _padded_shapes = ::tensorflow::ops::AsNodeOutList(scope, padded_shapes);
      if (!scope.ok())
          return;
      auto _padding_values = ::tensorflow::ops::AsNodeOutList(scope, padding_values);
      if (!scope.ok())
          return;
      auto _drop_remainder = ::tensorflow::ops::AsNodeOut(scope, drop_remainder);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PaddedBatchDatasetV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PaddedBatchDatasetV2")
                                   .Input(_input_dataset)
                                   .Input(_batch_size)
                                   .Input(_padded_shapes)
                                   .Input(_padding_values)
                                   .Input(_drop_remainder)
                                   .Attr("Toutput_types", Toutput_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ParallelInterleaveDatasetV2::ParallelInterleaveDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input cycle_length, 
           tensorflow::Input block_length, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool sloppy) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      if (!scope.ok())
          return;
      auto _cycle_length = ::tensorflow::ops::AsNodeOut(scope, cycle_length);
      if (!scope.ok())
          return;
      auto _block_length = ::tensorflow::ops::AsNodeOut(scope, block_length);
      if (!scope.ok())
          return;
      auto _num_parallel_calls = ::tensorflow::ops::AsNodeOut(scope, num_parallel_calls);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParallelInterleaveDatasetV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParallelInterleaveDatasetV2")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Input(_cycle_length)
                                   .Input(_block_length)
                                   .Input(_num_parallel_calls)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("sloppy", sloppy)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ParallelMapDataset::ParallelMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism, 
           bool sloppy, 
           bool preserve_cardinality) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      if (!scope.ok())
          return;
      auto _num_parallel_calls = ::tensorflow::ops::AsNodeOut(scope, num_parallel_calls);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParallelMapDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParallelMapDataset")
                                   .Input(_input_dataset)
                                   .Input(_other_arguments)
                                   .Input(_num_parallel_calls)
                                   .Attr("f", f)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("use_inter_op_parallelism", use_inter_op_parallelism)
                                   .Attr("sloppy", sloppy)
                                   .Attr("preserve_cardinality", preserve_cardinality)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PrefetchDataset::PrefetchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _buffer_size = ::tensorflow::ops::AsNodeOut(scope, buffer_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PrefetchDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PrefetchDataset")
                                   .Input(_input_dataset)
                                   .Input(_buffer_size)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RangeDataset::RangeDataset(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input stop, 
           tensorflow::Input step, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _start = ::tensorflow::ops::AsNodeOut(scope, start);
      if (!scope.ok())
          return;
      auto _stop = ::tensorflow::ops::AsNodeOut(scope, stop);
      if (!scope.ok())
          return;
      auto _step = ::tensorflow::ops::AsNodeOut(scope, step);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RangeDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RangeDataset")
                                   .Input(_start)
                                   .Input(_stop)
                                   .Input(_step)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReduceDataset::ReduceDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList initial_state, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tstate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _initial_state = ::tensorflow::ops::AsNodeOutList(scope, initial_state);
      if (!scope.ok())
          return;
      auto _other_arguments = ::tensorflow::ops::AsNodeOutList(scope, other_arguments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReduceDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReduceDataset")
                                   .Input(_input_dataset)
                                   .Input(_initial_state)
                                   .Input(_other_arguments)
                                   .Attr("f", f)
                                   .Attr("Tstate", Tstate)
                                   .Attr("Targuments", Targuments)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("use_inter_op_parallelism", use_inter_op_parallelism)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

RepeatDataset::RepeatDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _count = ::tensorflow::ops::AsNodeOut(scope, count);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RepeatDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RepeatDataset")
                                   .Input(_input_dataset)
                                   .Input(_count)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ShuffleAndRepeatDataset::ShuffleAndRepeatDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _buffer_size = ::tensorflow::ops::AsNodeOut(scope, buffer_size);
      if (!scope.ok())
          return;
      auto _seed = ::tensorflow::ops::AsNodeOut(scope, seed);
      if (!scope.ok())
          return;
      auto _seed2 = ::tensorflow::ops::AsNodeOut(scope, seed2);
      if (!scope.ok())
          return;
      auto _count = ::tensorflow::ops::AsNodeOut(scope, count);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ShuffleAndRepeatDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ShuffleAndRepeatDataset")
                                   .Input(_input_dataset)
                                   .Input(_buffer_size)
                                   .Input(_seed)
                                   .Input(_seed2)
                                   .Input(_count)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ShuffleDataset::ShuffleDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool reshuffle_each_iteration) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _buffer_size = ::tensorflow::ops::AsNodeOut(scope, buffer_size);
      if (!scope.ok())
          return;
      auto _seed = ::tensorflow::ops::AsNodeOut(scope, seed);
      if (!scope.ok())
          return;
      auto _seed2 = ::tensorflow::ops::AsNodeOut(scope, seed2);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ShuffleDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ShuffleDataset")
                                   .Input(_input_dataset)
                                   .Input(_buffer_size)
                                   .Input(_seed)
                                   .Input(_seed2)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
                                   .Attr("reshuffle_each_iteration", reshuffle_each_iteration)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SkipDataset::SkipDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _count = ::tensorflow::ops::AsNodeOut(scope, count);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SkipDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SkipDataset")
                                   .Input(_input_dataset)
                                   .Input(_count)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseTensorSliceDataset::SparseTensorSliceDataset(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input dense_shape) {
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      if (!scope.ok())
          return;
      auto _dense_shape = ::tensorflow::ops::AsNodeOut(scope, dense_shape);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseTensorSliceDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseTensorSliceDataset")
                                   .Input(_indices)
                                   .Input(_values)
                                   .Input(_dense_shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TFRecordDataset::TFRecordDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input compression_type, 
           tensorflow::Input buffer_size) {
      if (!scope.ok())
          return;
      auto _filenames = ::tensorflow::ops::AsNodeOut(scope, filenames);
      if (!scope.ok())
          return;
      auto _compression_type = ::tensorflow::ops::AsNodeOut(scope, compression_type);
      if (!scope.ok())
          return;
      auto _buffer_size = ::tensorflow::ops::AsNodeOut(scope, buffer_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TFRecordDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TFRecordDataset")
                                   .Input(_filenames)
                                   .Input(_compression_type)
                                   .Input(_buffer_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TakeDataset::TakeDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _count = ::tensorflow::ops::AsNodeOut(scope, count);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TakeDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TakeDataset")
                                   .Input(_input_dataset)
                                   .Input(_count)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorDataset::TensorDataset(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _components = ::tensorflow::ops::AsNodeOutList(scope, components);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorDataset")
                                   .Input(_components)
                                   .Attr("Toutput_types", Toutput_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorSliceDataset::TensorSliceDataset(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _components = ::tensorflow::ops::AsNodeOutList(scope, components);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorSliceDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorSliceDataset")
                                   .Input(_components)
                                   .Attr("Toutput_types", Toutput_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TextLineDataset::TextLineDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input compression_type, 
           tensorflow::Input buffer_size) {
      if (!scope.ok())
          return;
      auto _filenames = ::tensorflow::ops::AsNodeOut(scope, filenames);
      if (!scope.ok())
          return;
      auto _compression_type = ::tensorflow::ops::AsNodeOut(scope, compression_type);
      if (!scope.ok())
          return;
      auto _buffer_size = ::tensorflow::ops::AsNodeOut(scope, buffer_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TextLineDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TextLineDataset")
                                   .Input(_filenames)
                                   .Input(_compression_type)
                                   .Input(_buffer_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnwrapDatasetVariant::UnwrapDatasetVariant(tensorflow::Scope& scope, 
           tensorflow::Input input_handle) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnwrapDatasetVariant");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnwrapDatasetVariant")
                                   .Input(_input_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

WindowDataset::WindowDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input size, 
           tensorflow::Input shift, 
           tensorflow::Input stride, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_dataset = ::tensorflow::ops::AsNodeOut(scope, input_dataset);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      if (!scope.ok())
          return;
      auto _shift = ::tensorflow::ops::AsNodeOut(scope, shift);
      if (!scope.ok())
          return;
      auto _stride = ::tensorflow::ops::AsNodeOut(scope, stride);
      if (!scope.ok())
          return;
      auto _drop_remainder = ::tensorflow::ops::AsNodeOut(scope, drop_remainder);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WindowDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WindowDataset")
                                   .Input(_input_dataset)
                                   .Input(_size)
                                   .Input(_shift)
                                   .Input(_stride)
                                   .Input(_drop_remainder)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

WrapDatasetVariant::WrapDatasetVariant(tensorflow::Scope& scope, 
           tensorflow::Input input_handle) {
      if (!scope.ok())
          return;
      auto _input_handle = ::tensorflow::ops::AsNodeOut(scope, input_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WrapDatasetVariant");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WrapDatasetVariant")
                                   .Input(_input_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ZipDataset::ZipDataset(tensorflow::Scope& scope, 
           tensorflow::InputList input_datasets, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _input_datasets = ::tensorflow::ops::AsNodeOutList(scope, input_datasets);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ZipDataset");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ZipDataset")
                                   .Input(_input_datasets)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

