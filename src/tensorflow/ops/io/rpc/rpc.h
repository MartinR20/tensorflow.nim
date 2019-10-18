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
class Rpc{
  public:
    Rpc() {}
    Rpc(tensorflow::Scope& scope, 
           tensorflow::Input address, 
           tensorflow::Input method, 
           tensorflow::Input request, 
           tensorflow::string protocol, 
           bool fail_fast = true, 
           int64_t timeout_in_ms = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class TryRpc{
  public:
    TryRpc() {}
    TryRpc(tensorflow::Scope& scope, 
           tensorflow::Input address, 
           tensorflow::Input method, 
           tensorflow::Input request, 
           tensorflow::string protocol, 
           bool fail_fast = true, 
           int64_t timeout_in_ms = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

