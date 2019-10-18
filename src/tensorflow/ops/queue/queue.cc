#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/queue/queue.h"

FIFOQueue::FIFOQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FIFOQueue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FIFOQueue")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FIFOQueueV2::FIFOQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FIFOQueueV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FIFOQueueV2")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FakeQueue::FakeQueue(tensorflow::Scope& scope, 
           tensorflow::Input resource) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FakeQueue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FakeQueue")
                                   .Input(_resource)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PaddingFIFOQueue::PaddingFIFOQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PaddingFIFOQueue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PaddingFIFOQueue")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PaddingFIFOQueueV2::PaddingFIFOQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PaddingFIFOQueueV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PaddingFIFOQueueV2")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PriorityQueue::PriorityQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PriorityQueue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PriorityQueue")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PriorityQueueV2::PriorityQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PriorityQueueV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PriorityQueueV2")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QueueClose::QueueClose(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueClose");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueClose")
                                   .Input(_handle)
                                   .Attr("cancel_pending_enqueues", cancel_pending_enqueues)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

QueueCloseV2::QueueCloseV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           bool cancel_pending_enqueues) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueCloseV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueCloseV2")
                                   .Input(_handle)
                                   .Attr("cancel_pending_enqueues", cancel_pending_enqueues)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

QueueDequeue::QueueDequeue(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueDequeue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueDequeue")
                                   .Input(_handle)
                                   .Attr("component_types", component_types)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

QueueDequeueMany::QueueDequeueMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _n = ::tensorflow::ops::AsNodeOut(scope, n);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueDequeueMany");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueDequeueMany")
                                   .Input(_handle)
                                   .Input(_n)
                                   .Attr("component_types", component_types)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

QueueDequeueManyV2::QueueDequeueManyV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _n = ::tensorflow::ops::AsNodeOut(scope, n);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueDequeueManyV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueDequeueManyV2")
                                   .Input(_handle)
                                   .Input(_n)
                                   .Attr("component_types", component_types)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

QueueDequeueUpTo::QueueDequeueUpTo(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _n = ::tensorflow::ops::AsNodeOut(scope, n);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueDequeueUpTo");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueDequeueUpTo")
                                   .Input(_handle)
                                   .Input(_n)
                                   .Attr("component_types", component_types)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

QueueDequeueUpToV2::QueueDequeueUpToV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::Input n, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _n = ::tensorflow::ops::AsNodeOut(scope, n);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueDequeueUpToV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueDequeueUpToV2")
                                   .Input(_handle)
                                   .Input(_n)
                                   .Attr("component_types", component_types)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

QueueDequeueV2::QueueDequeueV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueDequeueV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueDequeueV2")
                                   .Input(_handle)
                                   .Attr("component_types", component_types)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

QueueEnqueue::QueueEnqueue(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _components = ::tensorflow::ops::AsNodeOutList(scope, components);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueEnqueue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueEnqueue")
                                   .Input(_handle)
                                   .Input(_components)
                                   .Attr("Tcomponents", Tcomponents)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

QueueEnqueueMany::QueueEnqueueMany(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _components = ::tensorflow::ops::AsNodeOutList(scope, components);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueEnqueueMany");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueEnqueueMany")
                                   .Input(_handle)
                                   .Input(_components)
                                   .Attr("Tcomponents", Tcomponents)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

QueueEnqueueManyV2::QueueEnqueueManyV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _components = ::tensorflow::ops::AsNodeOutList(scope, components);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueEnqueueManyV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueEnqueueManyV2")
                                   .Input(_handle)
                                   .Input(_components)
                                   .Attr("Tcomponents", Tcomponents)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

QueueEnqueueV2::QueueEnqueueV2(tensorflow::Scope& scope, 
           tensorflow::Input handle, 
           tensorflow::InputList components, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tcomponents, 
           int64_t timeout_ms) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      if (!scope.ok())
          return;
      auto _components = ::tensorflow::ops::AsNodeOutList(scope, components);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueEnqueueV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueEnqueueV2")
                                   .Input(_handle)
                                   .Input(_components)
                                   .Attr("Tcomponents", Tcomponents)
                                   .Attr("timeout_ms", timeout_ms)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

QueueIsClosed::QueueIsClosed(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueIsClosed");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueIsClosed")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QueueIsClosedV2::QueueIsClosedV2(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueIsClosedV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueIsClosedV2")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QueueSize::QueueSize(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueSize")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QueueSizeV2::QueueSizeV2(tensorflow::Scope& scope, 
           tensorflow::Input handle) {
      if (!scope.ok())
          return;
      auto _handle = ::tensorflow::ops::AsNodeOut(scope, handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QueueSizeV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QueueSizeV2")
                                   .Input(_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomShuffleQueue::RandomShuffleQueue(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t min_after_dequeue, 
           int64_t seed, 
           int64_t seed2) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomShuffleQueue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomShuffleQueue")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("min_after_dequeue", min_after_dequeue)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomShuffleQueueV2::RandomShuffleQueueV2(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> component_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           int64_t capacity, 
           int64_t min_after_dequeue, 
           int64_t seed, 
           int64_t seed2) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomShuffleQueueV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomShuffleQueueV2")
                                   .Attr("component_types", component_types)
                                   .Attr("shapes", shapes)
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("capacity", capacity)
                                   .Attr("min_after_dequeue", min_after_dequeue)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

