#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/audio/audio.h"

DecodeWav::DecodeWav(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t desired_channels, 
           int64_t desired_samples) {
      if (!scope.ok())
          return;
      auto _contents = ::tensorflow::ops::AsNodeOut(scope, contents);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeWav");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeWav")
                                   .Input(_contents)
                                   .Attr("desired_channels", desired_channels)
                                   .Attr("desired_samples", desired_samples)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EncodeWav::EncodeWav(tensorflow::Scope& scope, 
           tensorflow::Input audio, 
           tensorflow::Input sample_rate) {
      if (!scope.ok())
          return;
      auto _audio = ::tensorflow::ops::AsNodeOut(scope, audio);
      if (!scope.ok())
          return;
      auto _sample_rate = ::tensorflow::ops::AsNodeOut(scope, sample_rate);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EncodeWav");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EncodeWav")
                                   .Input(_audio)
                                   .Input(_sample_rate)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

