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
class BigQueryReader{
  public:
    BigQueryReader() {}
    BigQueryReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string project_id, 
           tensorflow::string dataset_id, 
           tensorflow::string table_id, 
           tensorflow::gtl::ArraySlice<tensorflow::string> columns, 
           tensorflow::string test_end_point, 
           int64_t timestamp_millis = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

class GenerateBigQueryReaderPartitions{
  public:
    GenerateBigQueryReaderPartitions() {}
    GenerateBigQueryReaderPartitions(tensorflow::Scope& scope, 
           tensorflow::string project_id, 
           tensorflow::string dataset_id, 
           tensorflow::string table_id, 
           tensorflow::gtl::ArraySlice<tensorflow::string> columns, 
           tensorflow::string test_end_point, 
           int64_t timestamp_millis = 0, 
           int64_t num_partitions = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

