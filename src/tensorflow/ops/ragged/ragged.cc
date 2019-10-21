#include "tensorflow/cc/ops/const_op.h"
#include "ragged.h"

RaggedRange::RaggedRange(tensorflow::Scope& scope, 
           tensorflow::Input starts, 
           tensorflow::Input limits, 
           tensorflow::Input deltas) {
      if (!scope.ok())
          return;
      auto _starts = ::tensorflow::ops::AsNodeOut(scope, starts);
      if (!scope.ok())
          return;
      auto _limits = ::tensorflow::ops::AsNodeOut(scope, limits);
      if (!scope.ok())
          return;
      auto _deltas = ::tensorflow::ops::AsNodeOut(scope, deltas);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RaggedRange");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RaggedRange")
                                   .Input(_starts)
                                   .Input(_limits)
                                   .Input(_deltas)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RaggedTensorToSparse::RaggedTensorToSparse(tensorflow::Scope& scope, 
           tensorflow::Input rt_nested_splits, 
           tensorflow::Input rt_dense_values, 
           int64_t RAGGED_RANK) {
      if (!scope.ok())
          return;
      auto _rt_nested_splits = ::tensorflow::ops::AsNodeOut(scope, rt_nested_splits);
      if (!scope.ok())
          return;
      auto _rt_dense_values = ::tensorflow::ops::AsNodeOut(scope, rt_dense_values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RaggedTensorToSparse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RaggedTensorToSparse")
                                   .Input(_rt_nested_splits)
                                   .Input(_rt_dense_values)
                                   .Attr("RAGGED_RANK", RAGGED_RANK)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

