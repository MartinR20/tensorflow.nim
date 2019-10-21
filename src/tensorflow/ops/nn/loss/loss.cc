#include "tensorflow/cc/ops/const_op.h"
#include "loss.h"

CTCLoss::CTCLoss(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input labels_indices, 
           tensorflow::Input labels_values, 
           tensorflow::Input sequence_length, 
           bool preprocess_collapse_repeated, 
           bool ctc_merge_repeated, 
           bool ignore_longer_outputs_than_inputs) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      if (!scope.ok())
          return;
      auto _labels_indices = ::tensorflow::ops::AsNodeOut(scope, labels_indices);
      if (!scope.ok())
          return;
      auto _labels_values = ::tensorflow::ops::AsNodeOut(scope, labels_values);
      if (!scope.ok())
          return;
      auto _sequence_length = ::tensorflow::ops::AsNodeOut(scope, sequence_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CTCLoss");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CTCLoss")
                                   .Input(_inputs)
                                   .Input(_labels_indices)
                                   .Input(_labels_values)
                                   .Input(_sequence_length)
                                   .Attr("preprocess_collapse_repeated", preprocess_collapse_repeated)
                                   .Attr("ctc_merge_repeated", ctc_merge_repeated)
                                   .Attr("ignore_longer_outputs_than_inputs", ignore_longer_outputs_than_inputs)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

L2Loss::L2Loss(tensorflow::Scope& scope, 
           tensorflow::Input t, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _t = ::tensorflow::ops::AsNodeOut(scope, t);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("L2Loss");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "L2Loss")
                                   .Input(_t)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

