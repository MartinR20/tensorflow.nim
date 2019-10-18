#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/lookup/lookup.h"

LookupTableExport::LookupTableExport(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::DataType Tkeys, 
           tensorflow::DataType Tvalues) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableExport");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableExport")
                                   .Input(_table_handle)
                                   .Attr("Tkeys", Tkeys)
                                   .Attr("Tvalues", Tvalues)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LookupTableExportV2::LookupTableExportV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::DataType Tkeys, 
           tensorflow::DataType Tvalues) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableExportV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableExportV2")
                                   .Input(_table_handle)
                                   .Attr("Tkeys", Tkeys)
                                   .Attr("Tvalues", Tvalues)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LookupTableFind::LookupTableFind(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input default_value, 
           tensorflow::DataType Tout) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _default_value = ::tensorflow::ops::AsNodeOut(scope, default_value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableFind");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableFind")
                                   .Input(_table_handle)
                                   .Input(_keys)
                                   .Input(_default_value)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LookupTableFindV2::LookupTableFindV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input default_value, 
           tensorflow::DataType Tout) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _default_value = ::tensorflow::ops::AsNodeOut(scope, default_value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableFindV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableFindV2")
                                   .Input(_table_handle)
                                   .Input(_keys)
                                   .Input(_default_value)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LookupTableImport::LookupTableImport(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableImport");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableImport")
                                   .Input(_table_handle)
                                   .Input(_keys)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

LookupTableImportV2::LookupTableImportV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableImportV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableImportV2")
                                   .Input(_table_handle)
                                   .Input(_keys)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

LookupTableInsert::LookupTableInsert(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableInsert");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableInsert")
                                   .Input(_table_handle)
                                   .Input(_keys)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

LookupTableInsertV2::LookupTableInsertV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableInsertV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableInsertV2")
                                   .Input(_table_handle)
                                   .Input(_keys)
                                   .Input(_values)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

LookupTableRemoveV2::LookupTableRemoveV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      if (!scope.ok())
          return;
      auto _keys = ::tensorflow::ops::AsNodeOut(scope, keys);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableRemoveV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableRemoveV2")
                                   .Input(_table_handle)
                                   .Input(_keys)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

LookupTableSize::LookupTableSize(tensorflow::Scope& scope, 
           tensorflow::Input table_handle) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableSize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableSize")
                                   .Input(_table_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LookupTableSizeV2::LookupTableSizeV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle) {
      if (!scope.ok())
          return;
      auto _table_handle = ::tensorflow::ops::AsNodeOut(scope, table_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LookupTableSizeV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LookupTableSizeV2")
                                   .Input(_table_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

