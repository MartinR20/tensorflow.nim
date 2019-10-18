#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/string/string.h"

AsString::AsString(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string fill, 
           int64_t width, 
           int64_t precision, 
           bool scientific, 
           bool shortest) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AsString");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AsString")
                                   .Input(_input)
                                   .Attr("fill", fill)
                                   .Attr("width", width)
                                   .Attr("precision", precision)
                                   .Attr("scientific", scientific)
                                   .Attr("shortest", shortest)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeBase64::DecodeBase64(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeBase64");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeBase64")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeCompressed::DecodeCompressed(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::string compression_type) {
      if (!scope.ok())
          return;
      auto _bytes = ::tensorflow::ops::AsNodeOut(scope, bytes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeCompressed");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeCompressed")
                                   .Input(_bytes)
                                   .Attr("compression_type", compression_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EncodeBase64::EncodeBase64(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool pad) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EncodeBase64");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EncodeBase64")
                                   .Input(_input)
                                   .Attr("pad", pad)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ParseTensor::ParseTensor(tensorflow::Scope& scope, 
           tensorflow::Input serialized, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _serialized = ::tensorflow::ops::AsNodeOut(scope, serialized);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ParseTensor");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ParseTensor")
                                   .Input(_serialized)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReaderSerializeStateV2::ReaderSerializeStateV2(tensorflow::Scope& scope, 
           tensorflow::Input reader_handle) {
      if (!scope.ok())
          return;
      auto _reader_handle = ::tensorflow::ops::AsNodeOut(scope, reader_handle);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReaderSerializeStateV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReaderSerializeStateV2")
                                   .Input(_reader_handle)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReduceJoin::ReduceJoin(tensorflow::Scope& scope, 
           tensorflow::Input inputs, 
           tensorflow::Input reduction_indices, 
           tensorflow::string separator, 
           bool keep_dims) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOut(scope, inputs);
      if (!scope.ok())
          return;
      auto _reduction_indices = ::tensorflow::ops::AsNodeOut(scope, reduction_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReduceJoin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReduceJoin")
                                   .Input(_inputs)
                                   .Input(_reduction_indices)
                                   .Attr("separator", separator)
                                   .Attr("keep_dims", keep_dims)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RegexFullMatch::RegexFullMatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pattern) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _pattern = ::tensorflow::ops::AsNodeOut(scope, pattern);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RegexFullMatch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RegexFullMatch")
                                   .Input(_input)
                                   .Input(_pattern)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RegexReplace::RegexReplace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pattern, 
           tensorflow::Input rewrite, 
           bool replace_global) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _pattern = ::tensorflow::ops::AsNodeOut(scope, pattern);
      if (!scope.ok())
          return;
      auto _rewrite = ::tensorflow::ops::AsNodeOut(scope, rewrite);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RegexReplace");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RegexReplace")
                                   .Input(_input)
                                   .Input(_pattern)
                                   .Input(_rewrite)
                                   .Attr("replace_global", replace_global)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SerializeTensor::SerializeTensor(tensorflow::Scope& scope, 
           tensorflow::Input tensor) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SerializeTensor");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SerializeTensor")
                                   .Input(_tensor)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StaticRegexFullMatch::StaticRegexFullMatch(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string pattern) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StaticRegexFullMatch");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StaticRegexFullMatch")
                                   .Input(_input)
                                   .Attr("pattern", pattern)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StaticRegexReplace::StaticRegexReplace(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string pattern, 
           tensorflow::string rewrite, 
           bool replace_global) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StaticRegexReplace");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StaticRegexReplace")
                                   .Input(_input)
                                   .Attr("pattern", pattern)
                                   .Attr("rewrite", rewrite)
                                   .Attr("replace_global", replace_global)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringFormat::StringFormat(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> T, 
           tensorflow::string ctemplate, 
           tensorflow::string placeholder, 
           int64_t summarize) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringFormat");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringFormat")
                                   .Input(_inputs)
                                   .Attr("T", T)
                                   .Attr("template", ctemplate)
                                   .Attr("placeholder", placeholder)
                                   .Attr("summarize", summarize)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringJoin::StringJoin(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::string separator) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringJoin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringJoin")
                                   .Input(_inputs)
                                   .Attr("separator", separator)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringLength::StringLength(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string unit) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringLength");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringLength")
                                   .Input(_input)
                                   .Attr("unit", unit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringSplit::StringSplit(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input delimiter, 
           bool skip_empty) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _delimiter = ::tensorflow::ops::AsNodeOut(scope, delimiter);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringSplit");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringSplit")
                                   .Input(_input)
                                   .Input(_delimiter)
                                   .Attr("skip_empty", skip_empty)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringSplitV2::StringSplitV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input sep, 
           int64_t maxsplit) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _sep = ::tensorflow::ops::AsNodeOut(scope, sep);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringSplitV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringSplitV2")
                                   .Input(_input)
                                   .Input(_sep)
                                   .Attr("maxsplit", maxsplit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringStrip::StringStrip(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringStrip");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringStrip")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringToHashBucket::StringToHashBucket(tensorflow::Scope& scope, 
           tensorflow::Input string_tensor, 
           int64_t num_buckets) {
      if (!scope.ok())
          return;
      auto _string_tensor = ::tensorflow::ops::AsNodeOut(scope, string_tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringToHashBucket");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringToHashBucket")
                                   .Input(_string_tensor)
                                   .Attr("num_buckets", num_buckets)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringToHashBucketFast::StringToHashBucketFast(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t num_buckets) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringToHashBucketFast");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringToHashBucketFast")
                                   .Input(_input)
                                   .Attr("num_buckets", num_buckets)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringToHashBucketStrong::StringToHashBucketStrong(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::gtl::ArraySlice<int64_t> key, 
           int64_t num_buckets) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringToHashBucketStrong");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringToHashBucketStrong")
                                   .Input(_input)
                                   .Attr("key", key)
                                   .Attr("num_buckets", num_buckets)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

StringToNumber::StringToNumber(tensorflow::Scope& scope, 
           tensorflow::Input string_tensor, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _string_tensor = ::tensorflow::ops::AsNodeOut(scope, string_tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("StringToNumber");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "StringToNumber")
                                   .Input(_string_tensor)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Substr::Substr(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input pos, 
           tensorflow::Input len, 
           tensorflow::string unit) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _pos = ::tensorflow::ops::AsNodeOut(scope, pos);
      if (!scope.ok())
          return;
      auto _len = ::tensorflow::ops::AsNodeOut(scope, len);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Substr");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Substr")
                                   .Input(_input)
                                   .Input(_pos)
                                   .Input(_len)
                                   .Attr("unit", unit)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnicodeDecodeWithOffsets::UnicodeDecodeWithOffsets(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string errors, 
           int64_t replacement_char, 
           bool replace_control_characters) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnicodeDecodeWithOffsets");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnicodeDecodeWithOffsets")
                                   .Input(_input)
                                   .Attr("input_encoding", input_encoding)
                                   .Attr("errors", errors)
                                   .Attr("replacement_char", replacement_char)
                                   .Attr("replace_control_characters", replace_control_characters)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnicodeEncode::UnicodeEncode(tensorflow::Scope& scope, 
           tensorflow::Input input_values, 
           tensorflow::Input input_splits, 
           tensorflow::string output_encoding, 
           tensorflow::string errors, 
           int64_t replacement_char) {
      if (!scope.ok())
          return;
      auto _input_values = ::tensorflow::ops::AsNodeOut(scope, input_values);
      if (!scope.ok())
          return;
      auto _input_splits = ::tensorflow::ops::AsNodeOut(scope, input_splits);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnicodeEncode");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnicodeEncode")
                                   .Input(_input_values)
                                   .Input(_input_splits)
                                   .Attr("output_encoding", output_encoding)
                                   .Attr("errors", errors)
                                   .Attr("replacement_char", replacement_char)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnicodeScript::UnicodeScript(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnicodeScript");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnicodeScript")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnicodeTranscode::UnicodeTranscode(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::string input_encoding, 
           tensorflow::string output_encoding, 
           tensorflow::string errors, 
           int64_t replacement_char, 
           bool replace_control_characters) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnicodeTranscode");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnicodeTranscode")
                                   .Input(_input)
                                   .Attr("input_encoding", input_encoding)
                                   .Attr("output_encoding", output_encoding)
                                   .Attr("errors", errors)
                                   .Attr("replacement_char", replacement_char)
                                   .Attr("replace_control_characters", replace_control_characters)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

