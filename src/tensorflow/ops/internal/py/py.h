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
class EagerPyFunc{
  public:
    EagerPyFunc() {}
    EagerPyFunc(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class PyFunc{
  public:
    PyFunc() {}
    PyFunc(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

class PyFuncStateless{
  public:
    PyFuncStateless() {}
    PyFuncStateless(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::string token, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

