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
class AudioSpectrogram{
  public:
    AudioSpectrogram() {}
    AudioSpectrogram(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t window_size = 0, 
           int64_t stride = 0, 
           bool magnitude_squared = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class AudioSummary{
  public:
    AudioSummary() {}
    AudioSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           float sample_rate = 0.0, 
           int64_t max_outputs = 3);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class AudioSummaryV2{
  public:
    AudioSummaryV2() {}
    AudioSummaryV2(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input sample_rate, 
           int64_t max_outputs = 3);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class BoostedTreesMakeStatsSummary{
  public:
    BoostedTreesMakeStatsSummary() {}
    BoostedTreesMakeStatsSummary(tensorflow::Scope& scope, 
           tensorflow::Input node_ids, 
           tensorflow::Input gradients, 
           tensorflow::Input hessians, 
           tensorflow::Input bucketized_features_list, 
           int64_t max_splits = 0, 
           int64_t num_buckets = 0, 
           int64_t num_features = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class CloseSummaryWriter{
  public:
    CloseSummaryWriter() {}
    CloseSummaryWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer);
    tensorflow::Operation operation;
};

#pragma once
class CreateSummaryDbWriter{
  public:
    CreateSummaryDbWriter() {}
    CreateSummaryDbWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input db_uri, 
           tensorflow::Input experiment_name, 
           tensorflow::Input run_name, 
           tensorflow::Input user_name);
    tensorflow::Operation operation;
};

#pragma once
class CreateSummaryFileWriter{
  public:
    CreateSummaryFileWriter() {}
    CreateSummaryFileWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input logdir, 
           tensorflow::Input max_queue, 
           tensorflow::Input flush_millis, 
           tensorflow::Input filename_suffix);
    tensorflow::Operation operation;
};

#pragma once
class ExperimentalStatsAggregatorHandle{
  public:
    ExperimentalStatsAggregatorHandle() {}
    ExperimentalStatsAggregatorHandle(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExperimentalStatsAggregatorSummary{
  public:
    ExperimentalStatsAggregatorSummary() {}
    ExperimentalStatsAggregatorSummary(tensorflow::Scope& scope, 
           tensorflow::Input iterator);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FlushSummaryWriter{
  public:
    FlushSummaryWriter() {}
    FlushSummaryWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer);
    tensorflow::Operation operation;
};

#pragma once
class HistogramSummary{
  public:
    HistogramSummary() {}
    HistogramSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input values);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ImageSummary{
  public:
    ImageSummary() {}
    ImageSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           int64_t max_images = 3, 
           tensorflow::Tensor bad_color = _to_tensor({255, 0, 0, 255}, {tensorflow::DT_UINT8}));
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ImportEvent{
  public:
    ImportEvent() {}
    ImportEvent(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input event);
    tensorflow::Operation operation;
};

#pragma once
class MergeSummary{
  public:
    MergeSummary() {}
    MergeSummary(tensorflow::Scope& scope, 
           tensorflow::InputList inputs);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ScalarSummary{
  public:
    ScalarSummary() {}
    ScalarSummary(tensorflow::Scope& scope, 
           tensorflow::Input tags, 
           tensorflow::Input values);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SummaryWriter{
  public:
    SummaryWriter() {}
    SummaryWriter(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorSummary{
  public:
    TensorSummary() {}
    TensorSummary(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string description, 
           tensorflow::gtl::ArraySlice<tensorflow::string> labels, 
           tensorflow::string display_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class TensorSummaryV2{
  public:
    TensorSummaryV2() {}
    TensorSummaryV2(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input serialized_summary_metadata);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class WriteAudioSummary{
  public:
    WriteAudioSummary() {}
    WriteAudioSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input sample_rate, 
           int64_t max_outputs = 3);
    tensorflow::Operation operation;
};

#pragma once
class WriteGraphSummary{
  public:
    WriteGraphSummary() {}
    WriteGraphSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tensor);
    tensorflow::Operation operation;
};

#pragma once
class WriteHistogramSummary{
  public:
    WriteHistogramSummary() {}
    WriteHistogramSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

#pragma once
class WriteImageSummary{
  public:
    WriteImageSummary() {}
    WriteImageSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input bad_color, 
           int64_t max_images = 3);
    tensorflow::Operation operation;
};

#pragma once
class WriteScalarSummary{
  public:
    WriteScalarSummary() {}
    WriteScalarSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input value);
    tensorflow::Operation operation;
};

#pragma once
class WriteSummary{
  public:
    WriteSummary() {}
    WriteSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tensor, 
           tensorflow::Input tag, 
           tensorflow::Input summary_metadata);
    tensorflow::Operation operation;
};

