#include "tensorflow/cc/ops/const_op.h"
#include "iter.h"

AnonymousIterator::AnonymousIterator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AnonymousIterator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AnonymousIterator")
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DeserializeIterator::DeserializeIterator(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle, 
           tensorflow::Input serialized) {
      if (!scope.ok())
          return;
      auto _resource_handle = ::tensorflow::ops::AsNodeOut(scope, resource_handle);
      if (!scope.ok())
          return;
      auto _serialized = ::tensorflow::ops::AsNodeOut(scope, serialized);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DeserializeIterator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DeserializeIterator")
                                   .Input(_resource_handle)
                                   .Input(_serialized)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ExperimentalIteratorGetDevice::ExperimentalIteratorGetDevice(tensorflow::Scope& scope, 
           tensorflow::Input resource) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExperimentalIteratorGetDevice");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExperimentalIteratorGetDevice")
                                   .Input(_resource)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Iterator::Iterator(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Iterator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Iterator")
                                   .Attr("shared_name", shared_name)
                                   .Attr("container", container)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IteratorFromStringHandle::IteratorFromStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _string_handle = ::tensorflow::ops::AsNodeOut(scope, string_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IteratorFromStringHandle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IteratorFromStringHandle")
                                   .Input(_string_handle)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IteratorFromStringHandleV2::IteratorFromStringHandleV2(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _string_handle = ::tensorflow::ops::AsNodeOut(scope, string_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IteratorFromStringHandleV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IteratorFromStringHandleV2")
                                   .Input(_string_handle)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IteratorGetNext::IteratorGetNext(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _iterator = ::tensorflow::ops::AsNodeOut(scope, iterator);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IteratorGetNext");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IteratorGetNext")
                                   .Input(_iterator)
                                   .Attr("output_types", output_types)
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

IteratorGetNextAsOptional::IteratorGetNextAsOptional(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _iterator = ::tensorflow::ops::AsNodeOut(scope, iterator);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IteratorGetNextAsOptional");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IteratorGetNextAsOptional")
                                   .Input(_iterator)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IteratorGetNextSync::IteratorGetNextSync(tensorflow::Scope& scope, 
           tensorflow::Input iterator, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _iterator = ::tensorflow::ops::AsNodeOut(scope, iterator);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IteratorGetNextSync");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IteratorGetNextSync")
                                   .Input(_iterator)
                                   .Attr("output_types", output_types)
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

IteratorToStringHandle::IteratorToStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle) {
      if (!scope.ok())
          return;
      auto _resource_handle = ::tensorflow::ops::AsNodeOut(scope, resource_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IteratorToStringHandle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IteratorToStringHandle")
                                   .Input(_resource_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IteratorV2::IteratorV2(tensorflow::Scope& scope, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IteratorV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IteratorV2")
                                   .Attr("shared_name", shared_name)
                                   .Attr("container", container)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MakeIterator::MakeIterator(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input iterator) {
      if (!scope.ok())
          return;
      auto _dataset = ::tensorflow::ops::AsNodeOut(scope, dataset);
      if (!scope.ok())
          return;
      auto _iterator = ::tensorflow::ops::AsNodeOut(scope, iterator);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MakeIterator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MakeIterator")
                                   .Input(_dataset)
                                   .Input(_iterator)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

MultiDeviceIterator::MultiDeviceIterator(tensorflow::Scope& scope, 
           tensorflow::gtl::ArraySlice<tensorflow::string> devices, 
           tensorflow::string shared_name, 
           tensorflow::string container, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MultiDeviceIterator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MultiDeviceIterator")
                                   .Attr("devices", devices)
                                   .Attr("shared_name", shared_name)
                                   .Attr("container", container)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MultiDeviceIteratorFromStringHandle::MultiDeviceIteratorFromStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input string_handle, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _string_handle = ::tensorflow::ops::AsNodeOut(scope, string_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MultiDeviceIteratorFromStringHandle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MultiDeviceIteratorFromStringHandle")
                                   .Input(_string_handle)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MultiDeviceIteratorGetNextFromShard::MultiDeviceIteratorGetNextFromShard(tensorflow::Scope& scope, 
           tensorflow::Input multi_device_iterator, 
           tensorflow::Input shard_num, 
           tensorflow::Input incarnation_id, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes) {
      if (!scope.ok())
          return;
      auto _multi_device_iterator = ::tensorflow::ops::AsNodeOut(scope, multi_device_iterator);
      if (!scope.ok())
          return;
      auto _shard_num = ::tensorflow::ops::AsNodeOut(scope, shard_num);
      if (!scope.ok())
          return;
      auto _incarnation_id = ::tensorflow::ops::AsNodeOut(scope, incarnation_id);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MultiDeviceIteratorGetNextFromShard");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MultiDeviceIteratorGetNextFromShard")
                                   .Input(_multi_device_iterator)
                                   .Input(_shard_num)
                                   .Input(_incarnation_id)
                                   .Attr("output_types", output_types)
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

MultiDeviceIteratorInit::MultiDeviceIteratorInit(tensorflow::Scope& scope, 
           tensorflow::Input dataset, 
           tensorflow::Input multi_device_iterator, 
           tensorflow::Input max_buffer_size) {
      if (!scope.ok())
          return;
      auto _dataset = ::tensorflow::ops::AsNodeOut(scope, dataset);
      if (!scope.ok())
          return;
      auto _multi_device_iterator = ::tensorflow::ops::AsNodeOut(scope, multi_device_iterator);
      if (!scope.ok())
          return;
      auto _max_buffer_size = ::tensorflow::ops::AsNodeOut(scope, max_buffer_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MultiDeviceIteratorInit");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MultiDeviceIteratorInit")
                                   .Input(_dataset)
                                   .Input(_multi_device_iterator)
                                   .Input(_max_buffer_size)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MultiDeviceIteratorToStringHandle::MultiDeviceIteratorToStringHandle(tensorflow::Scope& scope, 
           tensorflow::Input multi_device_iterator) {
      if (!scope.ok())
          return;
      auto _multi_device_iterator = ::tensorflow::ops::AsNodeOut(scope, multi_device_iterator);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MultiDeviceIteratorToStringHandle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MultiDeviceIteratorToStringHandle")
                                   .Input(_multi_device_iterator)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NextIteration::NextIteration(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NextIteration");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NextIteration")
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

OneShotIterator::OneShotIterator(tensorflow::Scope& scope, 
           tensorflow::NameAttrList dataset_factory, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> output_types, 
           tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape> output_shapes, 
           tensorflow::string container, 
           tensorflow::string shared_name) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("OneShotIterator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "OneShotIterator")
                                   .Attr("dataset_factory", dataset_factory)
                                   .Attr("output_types", output_types)
                                   .Attr("output_shapes", output_shapes)
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

RefNextIteration::RefNextIteration(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RefNextIteration");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RefNextIteration")
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

SerializeIterator::SerializeIterator(tensorflow::Scope& scope, 
           tensorflow::Input resource_handle) {
      if (!scope.ok())
          return;
      auto _resource_handle = ::tensorflow::ops::AsNodeOut(scope, resource_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SerializeIterator");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SerializeIterator")
                                   .Input(_resource_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

