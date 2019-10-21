#include "tensorflow/cc/ops/const_op.h"
#include "py.h"

EagerPyFunc::EagerPyFunc(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EagerPyFunc");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EagerPyFunc")
                                   .Input(_input)
                                   .Attr("token", token)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

PyFunc::PyFunc(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PyFunc");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PyFunc")
                                   .Input(_input)
                                   .Attr("token", token)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

PyFuncStateless::PyFuncStateless(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PyFuncStateless");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PyFuncStateless")
                                   .Input(_input)
                                   .Attr("token", token)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

