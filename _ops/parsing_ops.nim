import ../core/core.nim
import ../utils/utils.nim

proc DecodeCSV(root: Scope, records: Out, record_defaults: InList): OutList {.header:std_ops, importcpp:"tensorflow::ops::DecodeCSV(*@)".}

proc DecodeCSV(root: Scope, records: Out, record_defaults: InList, attrs: DecodeCSVAttrs): OutList {.header:std_ops, importcpp:"tensorflow::ops::DecodeCSV(*@)".}

proc DecodeCompressed(root: Scope, bytes: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeCompressed(*@)".}

proc DecodeCompressed(root: Scope, bytes: Out, attrs: DecodeCompressedAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeCompressed(*@)".}

proc DecodeJSONExample(root: Scope, json_examples: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeJSONExample(*@)".}

proc DecodeRaw(root: Scope, bytes: Out, out_type: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeRaw(*@)".}

proc DecodeRaw(root: Scope, bytes: Out, out_type: DType, attrs: DecodeRawAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeRaw(*@)".}

proc ParseExample(root: Scope, serialized: Out, names: Out, sparse_keys: InList, dense_keys: InList, dense_defaults: InList, sparse_types: DType, dense_shapes: ArraySlice[PartialTensorShape]): Out {.header:std_ops, importcpp:"tensorflow::ops::ParseExample(*@)".}

proc ParseSequenceExample(root: Scope, serialized: Out, debug_name: Out, context_dense_defaults: InList, feature_list_dense_missing_assumed_empty: ArraySlice[cppstring], context_sparse_keys: ArraySlice[cppstring], context_dense_keys: ArraySlice[cppstring], feature_list_sparse_keys: ArraySlice[cppstring], feature_list_dense_keys: ArraySlice[cppstring]): Out {.header:std_ops, importcpp:"tensorflow::ops::ParseSequenceExample(*@)".}

proc ParseSequenceExample(root: Scope, serialized: Out, debug_name: Out, context_dense_defaults: InList, feature_list_dense_missing_assumed_empty: ArraySlice[cppstring], context_sparse_keys: ArraySlice[cppstring], context_dense_keys: ArraySlice[cppstring], feature_list_sparse_keys: ArraySlice[cppstring], feature_list_dense_keys: ArraySlice[cppstring], attrs: ParseSequenceExampleAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ParseSequenceExample(*@)".}

proc ParseSingleExample(root: Scope, serialized: Out, dense_defaults: InList, num_sparse: int, sparse_keys: ArraySlice[cppstring], dense_keys: ArraySlice[cppstring], sparse_types: DType, dense_shapes: ArraySlice[PartialTensorShape]): Out {.header:std_ops, importcpp:"tensorflow::ops::ParseSingleExample(*@)".}

proc ParseSingleSequenceExample(root: Scope, serialized: Out, feature_list_dense_missing_assumed_empty: Out, context_sparse_keys: InList, context_dense_keys: InList, feature_list_sparse_keys: InList, feature_list_dense_keys: InList, context_dense_defaults: InList, debug_name: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ParseSingleSequenceExample(*@)".}

proc ParseSingleSequenceExample(root: Scope, serialized: Out, feature_list_dense_missing_assumed_empty: Out, context_sparse_keys: InList, context_dense_keys: InList, feature_list_sparse_keys: InList, feature_list_dense_keys: InList, context_dense_defaults: InList, debug_name: Out, attrs: ParseSingleSequenceExampleAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ParseSingleSequenceExample(*@)".}

proc ParseTensor(root: Scope, serialized: Out, out_type: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::ParseTensor(*@)".}

proc SerializeTensor(root: Scope, tensor: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SerializeTensor(*@)".}

proc StringToNumber(root: Scope, string_tensor: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToNumber(*@)".}

proc StringToNumber(root: Scope, string_tensor: Out, attrs: StringToNumberAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToNumber(*@)".}

