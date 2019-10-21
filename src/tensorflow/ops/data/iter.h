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
class AnonymousIterator{
  public:
    AnonymousIterator() {}
    AnonymousIterator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class DeserializeIterator{
  public:
    DeserializeIterator() {}
    DeserializeIterator(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle, 
           tensorflow::Input serialized);
    tensorflow::Operation operation;
};

class ExperimentalIteratorGetDevice{
  public:
    ExperimentalIteratorGetDevice() {}
    ExperimentalIteratorGetDevice(tensorflow::Scope& scope, 
           tensorflow::Input resource);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class Iterator{
  public:
    Iterator() {}
    Iterator(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorFromStringHandle{
  public:
    IteratorFromStringHandle() {}
    IteratorFromStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorFromStringHandleV2{
  public:
    IteratorFromStringHandleV2() {}
    IteratorFromStringHandleV2(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorGetNext{
  public:
    IteratorGetNext() {}
    IteratorGetNext(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class IteratorGetNextAsOptional{
  public:
    IteratorGetNextAsOptional() {}
    IteratorGetNextAsOptional(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorGetNextSync{
  public:
    IteratorGetNextSync() {}
    IteratorGetNextSync(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class IteratorToStringHandle{
  public:
    IteratorToStringHandle() {}
    IteratorToStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class IteratorV2{
  public:
    IteratorV2() {}
    IteratorV2(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MakeIterator{
  public:
    MakeIterator() {}
    MakeIterator(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input iterator);
    tensorflow::Operation operation;
};

class MultiDeviceIterator{
  public:
    MultiDeviceIterator() {}
    MultiDeviceIterator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::string> devices, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MultiDeviceIteratorFromStringHandle{
  public:
    MultiDeviceIteratorFromStringHandle() {}
    MultiDeviceIteratorFromStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MultiDeviceIteratorGetNextFromShard{
  public:
    MultiDeviceIteratorGetNextFromShard() {}
    MultiDeviceIteratorGetNextFromShard(tensorflow::Scope& scope, 
           tensorflow::Input multi_device_iterator, 
           tensorflow::Input shard_num, 
           tensorflow::Input incarnation_id, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class MultiDeviceIteratorInit{
  public:
    MultiDeviceIteratorInit() {}
    MultiDeviceIteratorInit(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input multi_device_iterator, 
           tensorflow::Input max_buffer_size);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class MultiDeviceIteratorToStringHandle{
  public:
    MultiDeviceIteratorToStringHandle() {}
    MultiDeviceIteratorToStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input multi_device_iterator);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class NextIteration{
  public:
    NextIteration() {}
    NextIteration(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class OneShotIterator{
  public:
    OneShotIterator() {}
    OneShotIterator(tensorflow::Scope& scope, 
           tensorflow::NameAttrList dataset_factory, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RefNextIteration{
  public:
    RefNextIteration() {}
    RefNextIteration(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class SerializeIterator{
  public:
    SerializeIterator() {}
    SerializeIterator(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

