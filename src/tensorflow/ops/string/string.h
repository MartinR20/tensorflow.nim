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
class AsString{
  public:
    AsString() {}
    AsString(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string fill, 
           int64_t width = -1, 
           int64_t precision = -1, 
           bool scientific = false, 
           bool shortest = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodeBase64{
  public:
    DecodeBase64() {}
    DecodeBase64(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodeCompressed{
  public:
    DecodeCompressed() {}
    DecodeCompressed(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::string compression_type);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class EncodeBase64{
  public:
    EncodeBase64() {}
    EncodeBase64(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool pad = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ParseTensor{
  public:
    ParseTensor() {}
    ParseTensor(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ReaderSerializeStateV2{
  public:
    ReaderSerializeStateV2() {}
    ReaderSerializeStateV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ReduceJoin{
  public:
    ReduceJoin() {}
    ReduceJoin(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input reduction_indices, 
           tensorflow::string separator, 
           bool keep_dims = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RegexFullMatch{
  public:
    RegexFullMatch() {}
    RegexFullMatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pattern);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RegexReplace{
  public:
    RegexReplace() {}
    RegexReplace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pattern, 
           tensorflow::Input rewrite, 
           bool replace_global = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SerializeTensor{
  public:
    SerializeTensor() {}
    SerializeTensor(tensorflow::Scope& scope, 
           tensorflow::Input tensor);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StaticRegexFullMatch{
  public:
    StaticRegexFullMatch() {}
    StaticRegexFullMatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string pattern);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StaticRegexReplace{
  public:
    StaticRegexReplace() {}
    StaticRegexReplace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string pattern, 
           tensorflow::string rewrite, 
           bool replace_global = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringFormat{
  public:
    StringFormat() {}
    StringFormat(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::string ctemplate = "%s", 
           tensorflow::string placeholder = "%s", 
           int64_t summarize = 3);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringJoin{
  public:
    StringJoin() {}
    StringJoin(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::string separator);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringLength{
  public:
    StringLength() {}
    StringLength(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string unit = "BYTE");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringSplit{
  public:
    StringSplit() {}
    StringSplit(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input delimiter, 
           bool skip_empty = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringSplitV2{
  public:
    StringSplitV2() {}
    StringSplitV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input sep, 
           int64_t maxsplit = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringStrip{
  public:
    StringStrip() {}
    StringStrip(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringToHashBucket{
  public:
    StringToHashBucket() {}
    StringToHashBucket(tensorflow::Scope& scope, 
           tensorflow::Input string_tensor, 
           int64_t num_buckets = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringToHashBucketFast{
  public:
    StringToHashBucketFast() {}
    StringToHashBucketFast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t num_buckets = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringToHashBucketStrong{
  public:
    StringToHashBucketStrong() {}
    StringToHashBucketStrong(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> key, 
           int64_t num_buckets = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class StringToNumber{
  public:
    StringToNumber() {}
    StringToNumber(tensorflow::Scope& scope, 
           tensorflow::Input string_tensor, 
           tensorflow::DataType out_type = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class Substr{
  public:
    Substr() {}
    Substr(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pos, 
           tensorflow::Input len, 
           tensorflow::string unit = "BYTE");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnicodeDecodeWithOffsets{
  public:
    UnicodeDecodeWithOffsets() {}
    UnicodeDecodeWithOffsets(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string errors = "replace", 
           int64_t replacement_char = 65533, 
           bool replace_control_characters = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnicodeEncode{
  public:
    UnicodeEncode() {}
    UnicodeEncode(tensorflow::Scope& scope, 
           tensorflow::Input input_values, 
           tensorflow::Input input_splits, 
           tensorflow::string output_encoding, 
           tensorflow::string errors = "replace", 
           int64_t replacement_char = 65533);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnicodeScript{
  public:
    UnicodeScript() {}
    UnicodeScript(tensorflow::Scope& scope, 
           tensorflow::Input input);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class UnicodeTranscode{
  public:
    UnicodeTranscode() {}
    UnicodeTranscode(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string output_encoding, 
           tensorflow::string errors = "replace", 
           int64_t replacement_char = 65533, 
           bool replace_control_characters = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

