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
class LookupTableExport{
  public:
    LookupTableExport() {}
    LookupTableExport(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::DataType Tkeys = tensorflow::DT_INVALID, 
           tensorflow::DataType Tvalues = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LookupTableExportV2{
  public:
    LookupTableExportV2() {}
    LookupTableExportV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::DataType Tkeys = tensorflow::DT_INVALID, 
           tensorflow::DataType Tvalues = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LookupTableFind{
  public:
    LookupTableFind() {}
    LookupTableFind(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input default_value, 
           tensorflow::DataType Tout = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LookupTableFindV2{
  public:
    LookupTableFindV2() {}
    LookupTableFindV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input default_value, 
           tensorflow::DataType Tout = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LookupTableImport{
  public:
    LookupTableImport() {}
    LookupTableImport(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

#pragma once
class LookupTableImportV2{
  public:
    LookupTableImportV2() {}
    LookupTableImportV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

#pragma once
class LookupTableInsert{
  public:
    LookupTableInsert() {}
    LookupTableInsert(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

#pragma once
class LookupTableInsertV2{
  public:
    LookupTableInsertV2() {}
    LookupTableInsertV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys, 
           tensorflow::Input values);
    tensorflow::Operation operation;
};

#pragma once
class LookupTableRemoveV2{
  public:
    LookupTableRemoveV2() {}
    LookupTableRemoveV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle, 
           tensorflow::Input keys);
    tensorflow::Operation operation;
};

#pragma once
class LookupTableSize{
  public:
    LookupTableSize() {}
    LookupTableSize(tensorflow::Scope& scope, 
           tensorflow::Input table_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class LookupTableSizeV2{
  public:
    LookupTableSizeV2() {}
    LookupTableSizeV2(tensorflow::Scope& scope, 
           tensorflow::Input table_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

