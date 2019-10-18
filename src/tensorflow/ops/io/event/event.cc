#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/io/event/event.h"

AudioSpectrogram::AudioSpectrogram(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t window_size, 
           int64_t stride, 
           bool magnitude_squared) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AudioSpectrogram");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AudioSpectrogram")
                                   .Input(_input)
                                   .Attr("window_size", window_size)
                                   .Attr("stride", stride)
                                   .Attr("magnitude_squared", magnitude_squared)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AudioSummary::AudioSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           float sample_rate, 
           int64_t max_outputs) {
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AudioSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AudioSummary")
                                   .Input(_tag)
                                   .Input(_tensor)
                                   .Attr("sample_rate", sample_rate)
                                   .Attr("max_outputs", max_outputs)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AudioSummaryV2::AudioSummaryV2(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input sample_rate, 
           int64_t max_outputs) {
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _sample_rate = ::tensorflow::ops::AsNodeOut(scope, sample_rate);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AudioSummaryV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AudioSummaryV2")
                                   .Input(_tag)
                                   .Input(_tensor)
                                   .Input(_sample_rate)
                                   .Attr("max_outputs", max_outputs)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BoostedTreesMakeStatsSummary::BoostedTreesMakeStatsSummary(tensorflow::Scope& scope, 
           tensorflow::Input node_ids, 
           tensorflow::Input gradients, 
           tensorflow::Input hessians, 
           tensorflow::Input bucketized_features_list, 
           int64_t max_splits, 
           int64_t num_buckets, 
           int64_t num_features) {
      if (!scope.ok())
          return;
      auto _node_ids = ::tensorflow::ops::AsNodeOut(scope, node_ids);
      if (!scope.ok())
          return;
      auto _gradients = ::tensorflow::ops::AsNodeOut(scope, gradients);
      if (!scope.ok())
          return;
      auto _hessians = ::tensorflow::ops::AsNodeOut(scope, hessians);
      if (!scope.ok())
          return;
      auto _bucketized_features_list = ::tensorflow::ops::AsNodeOut(scope, bucketized_features_list);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BoostedTreesMakeStatsSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BoostedTreesMakeStatsSummary")
                                   .Input(_node_ids)
                                   .Input(_gradients)
                                   .Input(_hessians)
                                   .Input(_bucketized_features_list)
                                   .Attr("max_splits", max_splits)
                                   .Attr("num_buckets", num_buckets)
                                   .Attr("num_features", num_features)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CloseSummaryWriter::CloseSummaryWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CloseSummaryWriter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CloseSummaryWriter")
                                   .Input(_writer)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

CreateSummaryDbWriter::CreateSummaryDbWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input db_uri, 
           tensorflow::Input experiment_name, 
           tensorflow::Input run_name, 
           tensorflow::Input user_name) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _db_uri = ::tensorflow::ops::AsNodeOut(scope, db_uri);
      if (!scope.ok())
          return;
      auto _experiment_name = ::tensorflow::ops::AsNodeOut(scope, experiment_name);
      if (!scope.ok())
          return;
      auto _run_name = ::tensorflow::ops::AsNodeOut(scope, run_name);
      if (!scope.ok())
          return;
      auto _user_name = ::tensorflow::ops::AsNodeOut(scope, user_name);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CreateSummaryDbWriter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CreateSummaryDbWriter")
                                   .Input(_writer)
                                   .Input(_db_uri)
                                   .Input(_experiment_name)
                                   .Input(_run_name)
                                   .Input(_user_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

CreateSummaryFileWriter::CreateSummaryFileWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input logdir, 
           tensorflow::Input max_queue, 
           tensorflow::Input flush_millis, 
           tensorflow::Input filename_suffix) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _logdir = ::tensorflow::ops::AsNodeOut(scope, logdir);
      if (!scope.ok())
          return;
      auto _max_queue = ::tensorflow::ops::AsNodeOut(scope, max_queue);
      if (!scope.ok())
          return;
      auto _flush_millis = ::tensorflow::ops::AsNodeOut(scope, flush_millis);
      if (!scope.ok())
          return;
      auto _filename_suffix = ::tensorflow::ops::AsNodeOut(scope, filename_suffix);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CreateSummaryFileWriter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CreateSummaryFileWriter")
                                   .Input(_writer)
                                   .Input(_logdir)
                                   .Input(_max_queue)
                                   .Input(_flush_millis)
                                   .Input(_filename_suffix)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ExperimentalStatsAggregatorHandle::ExperimentalStatsAggregatorHandle(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalStatsAggregatorHandle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalStatsAggregatorHandle")
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

ExperimentalStatsAggregatorSummary::ExperimentalStatsAggregatorSummary(tensorflow::Scope& scope, 
           tensorflow::Input iterator) {
      if (!scope.ok())
          return;
      auto _iterator = ::tensorflow::ops::AsNodeOut(scope, iterator);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalStatsAggregatorSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalStatsAggregatorSummary")
                                   .Input(_iterator)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FlushSummaryWriter::FlushSummaryWriter(tensorflow::Scope& scope, 
           tensorflow::Input writer) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FlushSummaryWriter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FlushSummaryWriter")
                                   .Input(_writer)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

HistogramSummary::HistogramSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("HistogramSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "HistogramSummary")
                                   .Input(_tag)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ImageSummary::ImageSummary(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           int64_t max_images, 
           tensorflow::Tensor bad_color) {
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ImageSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ImageSummary")
                                   .Input(_tag)
                                   .Input(_tensor)
                                   .Attr("max_images", max_images)
                                   .Attr("bad_color", bad_color)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ImportEvent::ImportEvent(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input event) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _event = ::tensorflow::ops::AsNodeOut(scope, event);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ImportEvent");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ImportEvent")
                                   .Input(_writer)
                                   .Input(_event)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

MergeSummary::MergeSummary(tensorflow::Scope& scope, 
           tensorflow::InputList inputs) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MergeSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MergeSummary")
                                   .Input(_inputs)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScalarSummary::ScalarSummary(tensorflow::Scope& scope, 
           tensorflow::Input tags, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _tags = ::tensorflow::ops::AsNodeOut(scope, tags);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScalarSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScalarSummary")
                                   .Input(_tags)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SummaryWriter::SummaryWriter(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SummaryWriter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SummaryWriter")
                                   .Attr("shared_name", shared_name)
                                   .Attr("container", container)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorSummary::TensorSummary(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string description, 
           tensorflow::gtl::ArraySlice<tensorflow::string> labels, 
           tensorflow::string display_name) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorSummary")
                                   .Input(_tensor)
                                   .Attr("description", description)
                                   .Attr("labels", labels)
                                   .Attr("display_name", display_name)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorSummaryV2::TensorSummaryV2(tensorflow::Scope& scope, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input serialized_summary_metadata) {
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _serialized_summary_metadata = ::tensorflow::ops::AsNodeOut(scope, serialized_summary_metadata);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorSummaryV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorSummaryV2")
                                   .Input(_tag)
                                   .Input(_tensor)
                                   .Input(_serialized_summary_metadata)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

WriteAudioSummary::WriteAudioSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input sample_rate, 
           int64_t max_outputs) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _step = ::tensorflow::ops::AsNodeOut(scope, step);
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _sample_rate = ::tensorflow::ops::AsNodeOut(scope, sample_rate);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WriteAudioSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WriteAudioSummary")
                                   .Input(_writer)
                                   .Input(_step)
                                   .Input(_tag)
                                   .Input(_tensor)
                                   .Input(_sample_rate)
                                   .Attr("max_outputs", max_outputs)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

WriteGraphSummary::WriteGraphSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tensor) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _step = ::tensorflow::ops::AsNodeOut(scope, step);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WriteGraphSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WriteGraphSummary")
                                   .Input(_writer)
                                   .Input(_step)
                                   .Input(_tensor)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

WriteHistogramSummary::WriteHistogramSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _step = ::tensorflow::ops::AsNodeOut(scope, step);
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WriteHistogramSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WriteHistogramSummary")
                                   .Input(_writer)
                                   .Input(_step)
                                   .Input(_tag)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

WriteImageSummary::WriteImageSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input tensor, 
           tensorflow::Input bad_color, 
           int64_t max_images) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _step = ::tensorflow::ops::AsNodeOut(scope, step);
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _bad_color = ::tensorflow::ops::AsNodeOut(scope, bad_color);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WriteImageSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WriteImageSummary")
                                   .Input(_writer)
                                   .Input(_step)
                                   .Input(_tag)
                                   .Input(_tensor)
                                   .Input(_bad_color)
                                   .Attr("max_images", max_images)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

WriteScalarSummary::WriteScalarSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tag, 
           tensorflow::Input value) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _step = ::tensorflow::ops::AsNodeOut(scope, step);
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WriteScalarSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WriteScalarSummary")
                                   .Input(_writer)
                                   .Input(_step)
                                   .Input(_tag)
                                   .Input(_value)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

WriteSummary::WriteSummary(tensorflow::Scope& scope, 
           tensorflow::Input writer, 
           tensorflow::Input step, 
           tensorflow::Input tensor, 
           tensorflow::Input tag, 
           tensorflow::Input summary_metadata) {
      if (!scope.ok())
          return;
      auto _writer = ::tensorflow::ops::AsNodeOut(scope, writer);
      if (!scope.ok())
          return;
      auto _step = ::tensorflow::ops::AsNodeOut(scope, step);
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _tag = ::tensorflow::ops::AsNodeOut(scope, tag);
      if (!scope.ok())
          return;
      auto _summary_metadata = ::tensorflow::ops::AsNodeOut(scope, summary_metadata);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("WriteSummary");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "WriteSummary")
                                   .Input(_writer)
                                   .Input(_step)
                                   .Input(_tensor)
                                   .Input(_tag)
                                   .Input(_summary_metadata)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

