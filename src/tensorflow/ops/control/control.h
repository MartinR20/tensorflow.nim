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
class Abort{
  public:
    Abort() {}
    Abort(tensorflow::Scope& scope, 
           tensorflow::string error_msg, 
           bool exit_without_error = false);
    tensorflow::Operation operation;
};

#pragma once
class Assert{
  public:
    Assert() {}
    Assert(tensorflow::Scope& scope, 
           tensorflow::Input condition, 
           tensorflow::InputList data, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           int64_t summarize = 3);
    tensorflow::Operation operation;
};

#pragma once
class CollectiveBcastRecv{
  public:
    CollectiveBcastRecv() {}
    CollectiveBcastRecv(tensorflow::Scope& scope, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t group_size = 0, 
           int64_t group_key = 0, 
           int64_t instance_key = 0, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ConsumeMutexLock{
  public:
    ConsumeMutexLock() {}
    ConsumeMutexLock(tensorflow::Scope& scope, 
           tensorflow::Input mutex_lock);
    tensorflow::Operation operation;
};

#pragma once
class ControlTrigger{
  public:
    ControlTrigger() {}
    ControlTrigger(tensorflow::Scope& scope);
    tensorflow::Operation operation;
};

#pragma once
class Enter{
  public:
    Enter() {}
    Enter(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::string frame_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool is_constant = false, 
           int64_t parallel_iterations = 10);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Exit{
  public:
    Exit() {}
    Exit(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class FakeParam{
  public:
    FakeParam() {}
    FakeParam(tensorflow::Scope& scope, 
           tensorflow::DataType dtype = tensorflow::DT_INVALID, 
           tensorflow::PartialTensorShape shape = {});
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class For{
  public:
    For() {}
    For(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input limit, 
           tensorflow::Input delta, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList body);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class If{
  public:
    If() {}
    If(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class LoopCond{
  public:
    LoopCond() {}
    LoopCond(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Merge{
  public:
    Merge() {}
    Merge(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MutexLock{
  public:
    MutexLock() {}
    MutexLock(tensorflow::Scope& scope, 
           tensorflow::Input mutex);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class MutexV2{
  public:
    MutexV2() {}
    MutexV2(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class PartitionedCall{
  public:
    PartitionedCall() {}
    PartitionedCall(tensorflow::Scope& scope, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f, 
           tensorflow::string config, 
           tensorflow::string config_proto, 
           tensorflow::string executor_type);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class PreventGradient{
  public:
    PreventGradient() {}
    PreventGradient(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string message, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ReaderRestoreStateV2{
  public:
    ReaderRestoreStateV2() {}
    ReaderRestoreStateV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle, 
           tensorflow::Input state);
    tensorflow::Operation operation;
};

#pragma once
class RefEnter{
  public:
    RefEnter() {}
    RefEnter(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::string frame_name, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool is_constant = false, 
           int64_t parallel_iterations = 10);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RefExit{
  public:
    RefExit() {}
    RefExit(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RefSelect{
  public:
    RefSelect() {}
    RefSelect(tensorflow::Scope& scope, 
           tensorflow::Input index, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RefSwitch{
  public:
    RefSwitch() {}
    RefSwitch(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input pred, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RemoteCall{
  public:
    RemoteCall() {}
    RemoteCall(tensorflow::Scope& scope, 
           tensorflow::Input target, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class RemoteFusedGraphExecute{
  public:
    RemoteFusedGraphExecute() {}
    RemoteFusedGraphExecute(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tinputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Toutputs, 
           tensorflow::string serialized_remote_fused_graph_execute_info);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class StageClear{
  public:
    StageClear() {}
    StageClear(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> dtypes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = 0, 
           int64_t memory_limit = 0);
    tensorflow::Operation operation;
};

#pragma once
class StatefulPartitionedCall{
  public:
    StatefulPartitionedCall() {}
    StatefulPartitionedCall(tensorflow::Scope& scope, 
           tensorflow::InputList args, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f, 
           tensorflow::string config, 
           tensorflow::string config_proto, 
           tensorflow::string executor_type);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class StatelessIf{
  public:
    StatelessIf() {}
    StatelessIf(tensorflow::Scope& scope, 
           tensorflow::Input cond, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList then_branch, 
           tensorflow::NameAttrList else_branch);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class StatelessWhile{
  public:
    StatelessWhile() {}
    StatelessWhile(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::NameAttrList cond, 
           tensorflow::NameAttrList body);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class StopGradient{
  public:
    StopGradient() {}
    StopGradient(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Switch{
  public:
    Switch() {}
    Switch(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input pred, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

