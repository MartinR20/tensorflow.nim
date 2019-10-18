#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/io/rpc/rpc.h"

Rpc::Rpc(tensorflow::Scope& scope, 
           tensorflow::Input address, 
           tensorflow::Input method, 
           tensorflow::Input request, 
           tensorflow::string protocol, 
           bool fail_fast, 
           int64_t timeout_in_ms) {
      if (!scope.ok())
          return;
      auto _address = ::tensorflow::ops::AsNodeOut(scope, address);
      if (!scope.ok())
          return;
      auto _method = ::tensorflow::ops::AsNodeOut(scope, method);
      if (!scope.ok())
          return;
      auto _request = ::tensorflow::ops::AsNodeOut(scope, request);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Rpc");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Rpc")
                                   .Input(_address)
                                   .Input(_method)
                                   .Input(_request)
                                   .Attr("protocol", protocol)
                                   .Attr("fail_fast", fail_fast)
                                   .Attr("timeout_in_ms", timeout_in_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TryRpc::TryRpc(tensorflow::Scope& scope, 
           tensorflow::Input address, 
           tensorflow::Input method, 
           tensorflow::Input request, 
           tensorflow::string protocol, 
           bool fail_fast, 
           int64_t timeout_in_ms) {
      if (!scope.ok())
          return;
      auto _address = ::tensorflow::ops::AsNodeOut(scope, address);
      if (!scope.ok())
          return;
      auto _method = ::tensorflow::ops::AsNodeOut(scope, method);
      if (!scope.ok())
          return;
      auto _request = ::tensorflow::ops::AsNodeOut(scope, request);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TryRpc");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TryRpc")
                                   .Input(_address)
                                   .Input(_method)
                                   .Input(_request)
                                   .Attr("protocol", protocol)
                                   .Attr("fail_fast", fail_fast)
                                   .Attr("timeout_in_ms", timeout_in_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

