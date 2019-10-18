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
class FIFOQueue{
  public:
    FIFOQueue() {}
    FIFOQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FIFOQueueV2{
  public:
    FIFOQueueV2() {}
    FIFOQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class FakeQueue{
  public:
    FakeQueue() {}
    FakeQueue(tensorflow::Scope& scope, 
           tensorflow::Input resource);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PaddingFIFOQueue{
  public:
    PaddingFIFOQueue() {}
    PaddingFIFOQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PaddingFIFOQueueV2{
  public:
    PaddingFIFOQueueV2() {}
    PaddingFIFOQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PriorityQueue{
  public:
    PriorityQueue() {}
    PriorityQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class PriorityQueueV2{
  public:
    PriorityQueueV2() {}
    PriorityQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueClose{
  public:
    QueueClose() {}
    QueueClose(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues = false);
    tensorflow::Operation operation;
};

class QueueCloseV2{
  public:
    QueueCloseV2() {}
    QueueCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues = false);
    tensorflow::Operation operation;
};

class QueueDequeue{
  public:
    QueueDequeue() {}
    QueueDequeue(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class QueueDequeueMany{
  public:
    QueueDequeueMany() {}
    QueueDequeueMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class QueueDequeueManyV2{
  public:
    QueueDequeueManyV2() {}
    QueueDequeueManyV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class QueueDequeueUpTo{
  public:
    QueueDequeueUpTo() {}
    QueueDequeueUpTo(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class QueueDequeueUpToV2{
  public:
    QueueDequeueUpToV2() {}
    QueueDequeueUpToV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class QueueDequeueV2{
  public:
    QueueDequeueV2() {}
    QueueDequeueV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class QueueEnqueue{
  public:
    QueueEnqueue() {}
    QueueEnqueue(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
};

class QueueEnqueueMany{
  public:
    QueueEnqueueMany() {}
    QueueEnqueueMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
};

class QueueEnqueueManyV2{
  public:
    QueueEnqueueManyV2() {}
    QueueEnqueueManyV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
};

class QueueEnqueueV2{
  public:
    QueueEnqueueV2() {}
    QueueEnqueueV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms = -1);
    tensorflow::Operation operation;
};

class QueueIsClosed{
  public:
    QueueIsClosed() {}
    QueueIsClosed(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueIsClosedV2{
  public:
    QueueIsClosedV2() {}
    QueueIsClosedV2(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueSize{
  public:
    QueueSize() {}
    QueueSize(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class QueueSizeV2{
  public:
    QueueSizeV2() {}
    QueueSizeV2(tensorflow::Scope& scope, 
           tensorflow::Input handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomShuffleQueue{
  public:
    RandomShuffleQueue() {}
    RandomShuffleQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1, 
           int64_t min_after_dequeue = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class RandomShuffleQueueV2{
  public:
    RandomShuffleQueueV2() {}
    RandomShuffleQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity = -1, 
           int64_t min_after_dequeue = 0, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

