#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/control/control.h"

Abort::Abort(tensorflow::Scope& scope, 
           tensorflow::string error_msg, 
           bool exit_without_error) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Abort");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Abort")
                                   .Attr("error_msg", error_msg)
                                   .Attr("exit_without_error", exit_without_error)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

Assert::Assert(tensorflow::Scope& scope, 
           tensorflow::Input condition, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           int64_t summarize) {
      if (!scope.ok())
          return;
      auto _condition = ::tensorflow::ops::AsNodeOut(scope, condition);
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOutList(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Assert");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Assert")
                                   .Input(_condition)
                                   .Input(_data)
                                   .Attr("T", T)
                                   .Attr("summarize", summarize)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

CollectiveBcastRecv::CollectiveBcastRecv(tensorflow::Scope& scope, 
           tensorflow::DataType T, 
           int64_t group_size, 
           int64_t group_key, 
           int64_t instance_key, 
           tensorflow::PartialTensorShape shape) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CollectiveBcastRecv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CollectiveBcastRecv")
                                   .Attr("T", T)
                                   .Attr("group_size", group_size)
                                   .Attr("group_key", group_key)
                                   .Attr("instance_key", instance_key)
                                   .Attr("shape", shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ConsumeMutexLock::ConsumeMutexLock(tensorflow::Scope& scope, 
           tensorflow::Input mutex_lock) {
      if (!scope.ok())
          return;
      auto _mutex_lock = ::tensorflow::ops::AsNodeOut(scope, mutex_lock);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ConsumeMutexLock");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ConsumeMutexLock")
                                   .Input(_mutex_lock)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ControlTrigger::ControlTrigger(tensorflow::Scope& scope) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ControlTrigger");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ControlTrigger")
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

Enter::Enter(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::string frame_name, 
           tensorflow::DataType T, 
           bool is_constant, 
           int64_t parallel_iterations) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Enter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Enter")
                                   .Input(_data)
                                   .Attr("frame_name", frame_name)
                                   .Attr("T", T)
                                   .Attr("is_constant", is_constant)
                                   .Attr("parallel_iterations", parallel_iterations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Exit::Exit(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Exit");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Exit")
                                   .Input(_data)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FakeParam::FakeParam(tensorflow::Scope& scope, 
           tensorflow::DataType dtype, 
           tensorflow::PartialTensorShape shape) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FakeParam");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FakeParam")
                                   .Attr("dtype", dtype)
                                   .Attr("shape", shape)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

For::For(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input limit, 
           tensorflow::Input delta, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList body) {
      if (!scope.ok())
          return;
      auto _start = ::tensorflow::ops::AsNodeOut(scope, start);
      if (!scope.ok())
          return;
      auto _limit = ::tensorflow::ops::AsNodeOut(scope, limit);
      if (!scope.ok())
          return;
      auto _delta = ::tensorflow::ops::AsNodeOut(scope, delta);
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("For");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "For")
                                   .Input(_start)
                                   .Input(_limit)
                                   .Input(_delta)
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("body", body)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

If::If(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _cond = ::tensorflow::ops::AsNodeOut(scope, cond);
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("If");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "If")
                                   .Input(_cond)
                                   .Input(_input)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
                                   .Attr("then_branch", then_branch)
                                   .Attr("else_branch", else_branch)
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

LoopCond::LoopCond(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LoopCond");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LoopCond")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Merge::Merge(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Merge");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Merge")
                                   .Input(_inputs)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MutexLock::MutexLock(tensorflow::Scope& scope, 
           tensorflow::Input mutex) {
      if (!scope.ok())
          return;
      auto _mutex = ::tensorflow::ops::AsNodeOut(scope, mutex);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MutexLock");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MutexLock")
                                   .Input(_mutex)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MutexV2::MutexV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MutexV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MutexV2")
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

PartitionedCall::PartitionedCall(tensorflow::Scope& scope, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f, 
           tensorflow::string config, 
           tensorflow::string config_proto, 
           tensorflow::string executor_type) {
      if (!scope.ok())
          return;
      auto _args = ::tensorflow::ops::AsNodeOutList(scope, args);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PartitionedCall");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PartitionedCall")
                                   .Input(_args)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
                                   .Attr("f", f)
                                   .Attr("config", config)
                                   .Attr("config_proto", config_proto)
                                   .Attr("executor_type", executor_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

PreventGradient::PreventGradient(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string message, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PreventGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PreventGradient")
                                   .Input(_input)
                                   .Attr("message", message)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderRestoreStateV2::ReaderRestoreStateV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input state) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      if (!scope.ok())
          return;
      auto _state = ::tensorflow::ops::AsNodeOut(scope, state);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderRestoreStateV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderRestoreStateV2")
                                   .Input(_reader_handle)
                                   .Input(_state)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

RefEnter::RefEnter(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::string frame_name, 
           tensorflow::DataType T, 
           bool is_constant, 
           int64_t parallel_iterations) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RefEnter");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RefEnter")
                                   .Input(_data)
                                   .Attr("frame_name", frame_name)
                                   .Attr("T", T)
                                   .Attr("is_constant", is_constant)
                                   .Attr("parallel_iterations", parallel_iterations)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RefExit::RefExit(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RefExit");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RefExit")
                                   .Input(_data)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RefSelect::RefSelect(tensorflow::Scope& scope, 
           tensorflow::Input index, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _index = ::tensorflow::ops::AsNodeOut(scope, index);
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RefSelect");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RefSelect")
                                   .Input(_index)
                                   .Input(_inputs)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RefSwitch::RefSwitch(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input pred, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _pred = ::tensorflow::ops::AsNodeOut(scope, pred);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RefSwitch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RefSwitch")
                                   .Input(_data)
                                   .Input(_pred)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RemoteCall::RemoteCall(tensorflow::Scope& scope, 
           tensorflow::Input target, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f) {
      if (!scope.ok())
          return;
      auto _target = ::tensorflow::ops::AsNodeOut(scope, target);
      if (!scope.ok())
          return;
      auto _args = ::tensorflow::ops::AsNodeOutList(scope, args);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RemoteCall");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RemoteCall")
                                   .Input(_target)
                                   .Input(_args)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
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

RemoteFusedGraphExecute::RemoteFusedGraphExecute(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutputs, 
           tensorflow::string serialized_remote_fused_graph_execute_info) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RemoteFusedGraphExecute");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RemoteFusedGraphExecute")
                                   .Input(_inputs)
                                   .Attr("Tinputs", Tinputs)
                                   .Attr("Toutputs", Toutputs)
                                   .Attr("serialized_remote_fused_graph_execute_info", serialized_remote_fused_graph_execute_info)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

StageClear::StageClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t memory_limit) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StageClear");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StageClear")
                                   .Attr("dtypes", dtypes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("memory_limit", memory_limit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

StatefulPartitionedCall::StatefulPartitionedCall(tensorflow::Scope& scope, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f, 
           tensorflow::string config, 
           tensorflow::string config_proto, 
           tensorflow::string executor_type) {
      if (!scope.ok())
          return;
      auto _args = ::tensorflow::ops::AsNodeOutList(scope, args);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StatefulPartitionedCall");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StatefulPartitionedCall")
                                   .Input(_args)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
                                   .Attr("f", f)
                                   .Attr("config", config)
                                   .Attr("config_proto", config_proto)
                                   .Attr("executor_type", executor_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

StatelessIf::StatelessIf(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch) {
      if (!scope.ok())
          return;
      auto _cond = ::tensorflow::ops::AsNodeOut(scope, cond);
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StatelessIf");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StatelessIf")
                                   .Input(_cond)
                                   .Input(_input)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
                                   .Attr("then_branch", then_branch)
                                   .Attr("else_branch", else_branch)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

StatelessWhile::StatelessWhile(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StatelessWhile");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StatelessWhile")
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("cond", cond)
                                   .Attr("body", body)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

StopGradient::StopGradient(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StopGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StopGradient")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Switch::Switch(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input pred, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _pred = ::tensorflow::ops::AsNodeOut(scope, pred);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Switch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Switch")
                                   .Input(_data)
                                   .Input(_pred)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

