#pragma once
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
class BatchDataset{
  public:
    BatchDataset() {}
    BatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchDatasetV2{
  public:
    BatchDatasetV2() {}
    BatchDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BatchFunction{
  public:
    BatchFunction() {}
    BatchFunction(tensorflow::Scope& scope, 
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
           int64_t num_batch_threads = 0, 
           int64_t max_batch_size = 0, 
           int64_t batch_timeout_micros = 0, 
           int64_t max_enqueued_batches = 10);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class CacheDataset{
  public:
    CacheDataset() {}
    CacheDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input filename, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ConcatenateDataset{
  public:
    ConcatenateDataset() {}
    ConcatenateDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input another_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DatasetToGraph{
  public:
    DatasetToGraph() {}
    DatasetToGraph(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DatasetToSingleElement{
  public:
    DatasetToSingleElement() {}
    DatasetToSingleElement(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class ExperimentalAssertNextDataset{
  public:
    ExperimentalAssertNextDataset() {}
    ExperimentalAssertNextDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input transformations, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalBytesProducedStatsDataset{
  public:
    ExperimentalBytesProducedStatsDataset() {}
    ExperimentalBytesProducedStatsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input tag, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalCSVDataset{
  public:
    ExperimentalCSVDataset() {}
    ExperimentalCSVDataset(tensorflow::Scope& scope, 
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
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalDatasetCardinality{
  public:
    ExperimentalDatasetCardinality() {}
    ExperimentalDatasetCardinality(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalDatasetToTFRecord{
  public:
    ExperimentalDatasetToTFRecord() {}
    ExperimentalDatasetToTFRecord(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input filename, 
           tensorflow::Input compression_type);
    tensorflow::Operation operation;
};

#pragma once
class ExperimentalDenseToSparseBatchDataset{
  public:
    ExperimentalDenseToSparseBatchDataset() {}
    ExperimentalDenseToSparseBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::Input row_shape, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalDirectedInterleaveDataset{
  public:
    ExperimentalDirectedInterleaveDataset() {}
    ExperimentalDirectedInterleaveDataset(tensorflow::Scope& scope, 
           tensorflow::Input selector_input_dataset, 
           tensorflow::InputList data_input_datasets, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalGroupByReducerDataset{
  public:
    ExperimentalGroupByReducerDataset() {}
    ExperimentalGroupByReducerDataset(tensorflow::Scope& scope, 
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
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalGroupByWindowDataset{
  public:
    ExperimentalGroupByWindowDataset() {}
    ExperimentalGroupByWindowDataset(tensorflow::Scope& scope, 
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
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalIdentityIndexedDataset{
  public:
    ExperimentalIdentityIndexedDataset() {}
    ExperimentalIdentityIndexedDataset(tensorflow::Scope& scope, 
           tensorflow::Input size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalIgnoreErrorsDataset{
  public:
    ExperimentalIgnoreErrorsDataset() {}
    ExperimentalIgnoreErrorsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalIndexedDatasetGet{
  public:
    ExperimentalIndexedDatasetGet() {}
    ExperimentalIndexedDatasetGet(tensorflow::Scope& scope, 
           tensorflow::Input materialized, 
           tensorflow::Input index, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class ExperimentalIndexedDatasetMaterialize{
  public:
    ExperimentalIndexedDatasetMaterialize() {}
    ExperimentalIndexedDatasetMaterialize(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input materialized);
    tensorflow::Operation operation;
};

#pragma once
class ExperimentalLMDBDataset{
  public:
    ExperimentalLMDBDataset() {}
    ExperimentalLMDBDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalLatencyStatsDataset{
  public:
    ExperimentalLatencyStatsDataset() {}
    ExperimentalLatencyStatsDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input tag, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalMapAndBatchDataset{
  public:
    ExperimentalMapAndBatchDataset() {}
    ExperimentalMapAndBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input batch_size, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::Input drop_remainder, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalMapDataset{
  public:
    ExperimentalMapDataset() {}
    ExperimentalMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism = true, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalMatchingFilesDataset{
  public:
    ExperimentalMatchingFilesDataset() {}
    ExperimentalMatchingFilesDataset(tensorflow::Scope& scope, 
           tensorflow::Input patterns);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalMaterializedIndexDatasetHandle{
  public:
    ExperimentalMaterializedIndexDatasetHandle() {}
    ExperimentalMaterializedIndexDatasetHandle(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalMaxIntraOpParallelismDataset{
  public:
    ExperimentalMaxIntraOpParallelismDataset() {}
    ExperimentalMaxIntraOpParallelismDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input max_intra_op_parallelism, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalNonSerializableDataset{
  public:
    ExperimentalNonSerializableDataset() {}
    ExperimentalNonSerializableDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalNumaMapAndBatchDataset{
  public:
    ExperimentalNumaMapAndBatchDataset() {}
    ExperimentalNumaMapAndBatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input batch_size, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::Input drop_remainder, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalParallelInterleaveDataset{
  public:
    ExperimentalParallelInterleaveDataset() {}
    ExperimentalParallelInterleaveDataset(tensorflow::Scope& scope, 
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
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalPrivateThreadPoolDataset{
  public:
    ExperimentalPrivateThreadPoolDataset() {}
    ExperimentalPrivateThreadPoolDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input num_threads, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalRandomDataset{
  public:
    ExperimentalRandomDataset() {}
    ExperimentalRandomDataset(tensorflow::Scope& scope, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalScanDataset{
  public:
    ExperimentalScanDataset() {}
    ExperimentalScanDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList initial_state, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tstate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalSetStatsAggregatorDataset{
  public:
    ExperimentalSetStatsAggregatorDataset() {}
    ExperimentalSetStatsAggregatorDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input stats_aggregator, 
           tensorflow::Input tag, 
           tensorflow::Input counter_prefix, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalSleepDataset{
  public:
    ExperimentalSleepDataset() {}
    ExperimentalSleepDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input sleep_microseconds, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalSlidingWindowDataset{
  public:
    ExperimentalSlidingWindowDataset() {}
    ExperimentalSlidingWindowDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input window_size, 
           tensorflow::Input window_shift, 
           tensorflow::Input window_stride, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalSqlDataset{
  public:
    ExperimentalSqlDataset() {}
    ExperimentalSqlDataset(tensorflow::Scope& scope, 
           tensorflow::Input driver_name, 
           tensorflow::Input data_source_name, 
           tensorflow::Input query, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalThreadPoolDataset{
  public:
    ExperimentalThreadPoolDataset() {}
    ExperimentalThreadPoolDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input thread_pool, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalUnbatchDataset{
  public:
    ExperimentalUnbatchDataset() {}
    ExperimentalUnbatchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalUniqueDataset{
  public:
    ExperimentalUniqueDataset() {}
    ExperimentalUniqueDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FilterByLastComponentDataset{
  public:
    FilterByLastComponentDataset() {}
    FilterByLastComponentDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FilterDataset{
  public:
    FilterDataset() {}
    FilterDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList predicate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FixedLengthRecordDataset{
  public:
    FixedLengthRecordDataset() {}
    FixedLengthRecordDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input header_bytes, 
           tensorflow::Input record_bytes, 
           tensorflow::Input footer_bytes, 
           tensorflow::Input buffer_size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FixedLengthRecordDatasetV2{
  public:
    FixedLengthRecordDatasetV2() {}
    FixedLengthRecordDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input header_bytes, 
           tensorflow::Input record_bytes, 
           tensorflow::Input footer_bytes, 
           tensorflow::Input buffer_size, 
           tensorflow::Input compression_type);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FlatMapDataset{
  public:
    FlatMapDataset() {}
    FlatMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class GeneratorDataset{
  public:
    GeneratorDataset() {}
    GeneratorDataset(tensorflow::Scope& scope, 
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
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class InterleaveDataset{
  public:
    InterleaveDataset() {}
    InterleaveDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input cycle_length, 
           tensorflow::Input block_length, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MapDataset{
  public:
    MapDataset() {}
    MapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism = true, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MapDefun{
  public:
    MapDefun() {}
    MapDefun(tensorflow::Scope& scope, 
           tensorflow::InputList arguments, 
           tensorflow::InputList captured_inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcaptured, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           tensorflow::NameAttrList f);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class ModelDataset{
  public:
    ModelDataset() {}
    ModelDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class OptimizeDataset{
  public:
    OptimizeDataset() {}
    OptimizeDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input optimizations, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class PaddedBatchDatasetV2{
  public:
    PaddedBatchDatasetV2() {}
    PaddedBatchDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input batch_size, 
           tensorflow::InputList padded_shapes, 
           tensorflow::InputList padding_values, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ParallelInterleaveDatasetV2{
  public:
    ParallelInterleaveDatasetV2() {}
    ParallelInterleaveDatasetV2(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input cycle_length, 
           tensorflow::Input block_length, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool sloppy = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ParallelMapDataset{
  public:
    ParallelMapDataset() {}
    ParallelMapDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList other_arguments, 
           tensorflow::Input num_parallel_calls, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism = true, 
           bool sloppy = false, 
           bool preserve_cardinality = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class PrefetchDataset{
  public:
    PrefetchDataset() {}
    PrefetchDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RangeDataset{
  public:
    RangeDataset() {}
    RangeDataset(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input stop, 
           tensorflow::Input step, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ReduceDataset{
  public:
    ReduceDataset() {}
    ReduceDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::InputList initial_state, 
           tensorflow::InputList other_arguments, 
           tensorflow::NameAttrList f, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tstate, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Targuments, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool use_inter_op_parallelism = true);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class RepeatDataset{
  public:
    RepeatDataset() {}
    RepeatDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ShuffleAndRepeatDataset{
  public:
    ShuffleAndRepeatDataset() {}
    ShuffleAndRepeatDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ShuffleDataset{
  public:
    ShuffleDataset() {}
    ShuffleDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input buffer_size, 
           tensorflow::Input seed, 
           tensorflow::Input seed2, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           bool reshuffle_each_iteration = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SkipDataset{
  public:
    SkipDataset() {}
    SkipDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SparseTensorSliceDataset{
  public:
    SparseTensorSliceDataset() {}
    SparseTensorSliceDataset(tensorflow::Scope& scope, 
           tensorflow::Input indices, 
           tensorflow::Input values, 
           tensorflow::Input dense_shape);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TFRecordDataset{
  public:
    TFRecordDataset() {}
    TFRecordDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input compression_type, 
           tensorflow::Input buffer_size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TakeDataset{
  public:
    TakeDataset() {}
    TakeDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input count, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorDataset{
  public:
    TensorDataset() {}
    TensorDataset(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorSliceDataset{
  public:
    TensorSliceDataset() {}
    TensorSliceDataset(tensorflow::Scope& scope, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutput_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TextLineDataset{
  public:
    TextLineDataset() {}
    TextLineDataset(tensorflow::Scope& scope, 
           tensorflow::Input filenames, 
           tensorflow::Input compression_type, 
           tensorflow::Input buffer_size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnwrapDatasetVariant{
  public:
    UnwrapDatasetVariant() {}
    UnwrapDatasetVariant(tensorflow::Scope& scope, 
           tensorflow::Input input_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class WindowDataset{
  public:
    WindowDataset() {}
    WindowDataset(tensorflow::Scope& scope, 
           tensorflow::Input input_dataset, 
           tensorflow::Input size, 
           tensorflow::Input shift, 
           tensorflow::Input stride, 
           tensorflow::Input drop_remainder, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class WrapDatasetVariant{
  public:
    WrapDatasetVariant() {}
    WrapDatasetVariant(tensorflow::Scope& scope, 
           tensorflow::Input input_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ZipDataset{
  public:
    ZipDataset() {}
    ZipDataset(tensorflow::Scope& scope, 
           tensorflow::InputList input_datasets, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

