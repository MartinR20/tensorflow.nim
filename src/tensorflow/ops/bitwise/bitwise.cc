#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/bitwise/bitwise.h"

BitwiseAnd::BitwiseAnd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BitwiseAnd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BitwiseAnd")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BitwiseOr::BitwiseOr(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BitwiseOr");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BitwiseOr")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BitwiseXor::BitwiseXor(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BitwiseXor");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BitwiseXor")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Invert::Invert(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Invert");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Invert")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LeftShift::LeftShift(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LeftShift");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LeftShift")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RightShift::RightShift(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RightShift");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RightShift")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

