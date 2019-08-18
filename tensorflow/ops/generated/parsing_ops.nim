import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iDecodeCSV(root: Scope, records: Out, record_defaults: InList, attrs: DecodeCSVAttrs): OutList {.header:std_ops, importcpp:"tensorflow::ops::DecodeCSV(*#, #, *#, #).output".}

proc iDecodeCompressed(root: Scope, bytes: Out, attrs: DecodeCompressedAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeCompressed(*#, #, #)".}

proc iDecodeJSONExample(root: Scope, json_examples: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeJSONExample(*#, #)".}

proc iDecodeRaw(root: Scope, bytes: Out, out_type: core.DType, attrs: DecodeRawAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeRaw(*#, #, #, #)".}

proc iParseExample(root: Scope, serialized: Out, names: Out, sparse_keys: InList, dense_keys: InList, dense_defaults: InList, sparse_types: ArraySlice[core.DType], dense_shapes: ArraySlice[TensorShape]): Operation {.header:std_ops, importcpp:"tensorflow::ops::ParseExample(*#, #, #, *#, *#, *#, #, #).operation".}

proc iParseSequenceExample(root: Scope, serialized: Out, debug_name: Out, context_dense_defaults: InList, feature_list_dense_missing_assumed_empty: ArraySlice[cppstring], context_sparse_keys: ArraySlice[cppstring], context_dense_keys: ArraySlice[cppstring], feature_list_sparse_keys: ArraySlice[cppstring], feature_list_dense_keys: ArraySlice[cppstring], attrs: ParseSequenceExampleAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::ParseSequenceExample(*#, #, #, *#, #, #, #, #, #, #).operation".}

proc iParseSingleExample(root: Scope, serialized: Out, dense_defaults: InList, num_sparse: int, sparse_keys: ArraySlice[cppstring], dense_keys: ArraySlice[cppstring], sparse_types: ArraySlice[core.DType], dense_shapes: ArraySlice[TensorShape]): Operation {.header:std_ops, importcpp:"tensorflow::ops::ParseSingleExample(*#, #, *#, #, #, #, #, #).operation".}

proc iParseSingleSequenceExample(root: Scope, serialized: Out, feature_list_dense_missing_assumed_empty: Out, context_sparse_keys: InList, context_dense_keys: InList, feature_list_sparse_keys: InList, feature_list_dense_keys: InList, context_dense_defaults: InList, debug_name: Out, attrs: ParseSingleSequenceExampleAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::ParseSingleSequenceExample(*#, #, #, *#, *#, *#, *#, *#, #, #).operation".}

proc iParseTensor(root: Scope, serialized: Out, out_type: core.DType): Out {.header:std_ops, importcpp:"tensorflow::ops::ParseTensor(*#, #, #)".}

proc iSerializeTensor(root: Scope, tensor: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SerializeTensor(*#, #)".}

proc iStringToNumber(root: Scope, string_tensor: Out, attrs: StringToNumberAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::StringToNumber(*#, #, #)".}

proc DecodeCSV(root: Scope, records: Out, record_defaults: InList, attrs: DecodeCSVAttrs): OutList =
  iDecodeCSV(root, records, record_defaults, attrs)

proc DecodeCSV(root: Scope, records: Out, record_defaults: OutList, attrs: DecodeCSVAttrs): OutList {.header:std_ops, importcpp:"tensorflow::ops::DecodeCSV(*#, #, #, #).output".}

proc DecodeCSV(root: Scope, records: Out, record_defaults: InList, fieldDelim = none(string), naValue = none(string), selectCols = none(ArraySlice[cint]), useQuoteDelim = none(bool)): OutList =
  var attrs = DecodeCSVAttrs()

  if fieldDelim.isSome:
    attrs = attrs.FieldDelim(newCPPString(fieldDelim.get()))
  if naValue.isSome:
    attrs = attrs.NaValue(newCPPString(naValue.get()))
  if selectCols.isSome:
    attrs = attrs.SelectCols(selectCols.get())
  if useQuoteDelim.isSome:
    attrs = attrs.UseQuoteDelim(useQuoteDelim.get())

  return DecodeCSV(root, records, record_defaults, attrs)

proc DecodeCSV(root: Scope, records: Out, record_defaults: OutList, fieldDelim = none(string), naValue = none(string), selectCols = none(ArraySlice[cint]), useQuoteDelim = none(bool)): OutList =
  var attrs = DecodeCSVAttrs()

  if fieldDelim.isSome:
    attrs = attrs.FieldDelim(newCPPString(fieldDelim.get()))
  if naValue.isSome:
    attrs = attrs.NaValue(newCPPString(naValue.get()))
  if selectCols.isSome:
    attrs = attrs.SelectCols(selectCols.get())
  if useQuoteDelim.isSome:
    attrs = attrs.UseQuoteDelim(useQuoteDelim.get())

  return DecodeCSV(root, records, record_defaults, attrs)

proc DecodeCompressed(root: Scope, bytes: Out, attrs: DecodeCompressedAttrs): Out =
  iDecodeCompressed(root, bytes, attrs)

proc DecodeCompressed(root: Scope, bytes: Out, compressionType = none(string)): Out =
  var attrs = DecodeCompressedAttrs()

  if compressionType.isSome:
    attrs = attrs.CompressionType(newCPPString(compressionType.get()))

  return DecodeCompressed(root, bytes, attrs)

proc DecodeJSONExample(root: Scope, json_examples: Out): Out =
  iDecodeJSONExample(root, json_examples)

proc DecodeRaw(root: Scope, bytes: Out, out_type: core.DType, attrs: DecodeRawAttrs): Out =
  iDecodeRaw(root, bytes, out_type, attrs)

proc DecodeRaw(root: Scope, bytes: Out, out_type: core.DType, littleEndian = none(bool)): Out =
  var attrs = DecodeRawAttrs()

  if littleEndian.isSome:
    attrs = attrs.LittleEndian(littleEndian.get())

  return DecodeRaw(root, bytes, out_type, attrs)

proc ParseExample(root: Scope, serialized: Out, names: Out, sparse_keys: InList, dense_keys: InList, dense_defaults: InList, sparse_types: ArraySlice[core.DType], dense_shapes: ArraySlice[TensorShape]): Operation =
  iParseExample(root, serialized, names, sparse_keys, dense_keys, dense_defaults, sparse_types, dense_shapes)

proc ParseExample(root: Scope, serialized: Out, names: Out, sparse_keys: OutList, dense_keys: OutList, dense_defaults: OutList, sparse_types: ArraySlice[core.DType], dense_shapes: ArraySlice[TensorShape]): Operation {.header:std_ops, importcpp:"tensorflow::ops::ParseExample(*#, #, #, #, *, *# #, #).operation".}

proc ParseSequenceExample(root: Scope, serialized: Out, debug_name: Out, context_dense_defaults: InList, feature_list_dense_missing_assumed_empty: ArraySlice[cppstring], context_sparse_keys: ArraySlice[cppstring], context_dense_keys: ArraySlice[cppstring], feature_list_sparse_keys: ArraySlice[cppstring], feature_list_dense_keys: ArraySlice[cppstring], attrs: ParseSequenceExampleAttrs): Operation =
  iParseSequenceExample(root, serialized, debug_name, context_dense_defaults, feature_list_dense_missing_assumed_empty, context_sparse_keys, context_dense_keys, feature_list_sparse_keys, feature_list_dense_keys, attrs)

proc ParseSequenceExample(root: Scope, serialized: Out, debug_name: Out, context_dense_defaults: OutList, feature_list_dense_missing_assumed_empty: ArraySlice[cppstring], context_sparse_keys: ArraySlice[cppstring], context_dense_keys: ArraySlice[cppstring], feature_list_sparse_keys: ArraySlice[cppstring], feature_list_dense_keys: ArraySlice[cppstring], attrs: ParseSequenceExampleAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::ParseSequenceExample(*#, #, #, #, #, #, #, #, #, #).operation".}

proc ParseSequenceExample(root: Scope, serialized: Out, debug_name: Out, context_dense_defaults: InList, feature_list_dense_missing_assumed_empty: ArraySlice[string], context_sparse_keys: ArraySlice[string], context_dense_keys: ArraySlice[string], feature_list_sparse_keys: ArraySlice[string], feature_list_dense_keys: ArraySlice[string], attrs: ParseSequenceExampleAttrs): Operation =
  let cppSlice4 = newArraySlice[cppstring](feature_list_dense_missing_assumed_empty)
  let cppSlice5 = newArraySlice[cppstring](context_sparse_keys)
  let cppSlice6 = newArraySlice[cppstring](context_dense_keys)
  let cppSlice7 = newArraySlice[cppstring](feature_list_sparse_keys)
  let cppSlice8 = newArraySlice[cppstring](feature_list_dense_keys)
  return ParseSequenceExample(root, serialized, debug_name, context_dense_defaults, cppSlice4, cppSlice5, cppSlice6, cppSlice7, cppSlice8, attrs)

proc ParseSequenceExample(root: Scope, serialized: Out, debug_name: Out, context_dense_defaults: InList, feature_list_dense_missing_assumed_empty: ArraySlice[cppstring], context_sparse_keys: ArraySlice[cppstring], context_dense_keys: ArraySlice[cppstring], feature_list_sparse_keys: ArraySlice[cppstring], feature_list_dense_keys: ArraySlice[cppstring], contextDenseShapes = none(ArraySlice[TensorShape]), contextSparseTypes = none(ArraySlice[core.DType]), featureListDenseShapes = none(ArraySlice[TensorShape]), featureListDenseTypes = none(ArraySlice[core.DType]), featureListSparseTypes = none(ArraySlice[core.DType]), ncontextDense = none(int), ncontextSparse = none(int), nfeatureListDense = none(int), nfeatureListSparse = none(int)): Operation =
  var attrs = ParseSequenceExampleAttrs()

  if contextDenseShapes.isSome:
    attrs = attrs.ContextDenseShapes(contextDenseShapes.get())
  if contextSparseTypes.isSome:
    attrs = attrs.ContextSparseTypes(contextSparseTypes.get())
  if featureListDenseShapes.isSome:
    attrs = attrs.FeatureListDenseShapes(featureListDenseShapes.get())
  if featureListDenseTypes.isSome:
    attrs = attrs.FeatureListDenseTypes(featureListDenseTypes.get())
  if featureListSparseTypes.isSome:
    attrs = attrs.FeatureListSparseTypes(featureListSparseTypes.get())
  if ncontextDense.isSome:
    attrs = attrs.NcontextDense(ncontextDense.get())
  if ncontextSparse.isSome:
    attrs = attrs.NcontextSparse(ncontextSparse.get())
  if nfeatureListDense.isSome:
    attrs = attrs.NfeatureListDense(nfeatureListDense.get())
  if nfeatureListSparse.isSome:
    attrs = attrs.NfeatureListSparse(nfeatureListSparse.get())

  return ParseSequenceExample(root, serialized, debug_name, context_dense_defaults, feature_list_dense_missing_assumed_empty, context_sparse_keys, context_dense_keys, feature_list_sparse_keys, feature_list_dense_keys, attrs)

proc ParseSequenceExample(root: Scope, serialized: Out, debug_name: Out, context_dense_defaults: OutList, feature_list_dense_missing_assumed_empty: ArraySlice[cppstring], context_sparse_keys: ArraySlice[cppstring], context_dense_keys: ArraySlice[cppstring], feature_list_sparse_keys: ArraySlice[cppstring], feature_list_dense_keys: ArraySlice[cppstring], contextDenseShapes = none(ArraySlice[TensorShape]), contextSparseTypes = none(ArraySlice[core.DType]), featureListDenseShapes = none(ArraySlice[TensorShape]), featureListDenseTypes = none(ArraySlice[core.DType]), featureListSparseTypes = none(ArraySlice[core.DType]), ncontextDense = none(int), ncontextSparse = none(int), nfeatureListDense = none(int), nfeatureListSparse = none(int)): Operation =
  var attrs = ParseSequenceExampleAttrs()

  if contextDenseShapes.isSome:
    attrs = attrs.ContextDenseShapes(contextDenseShapes.get())
  if contextSparseTypes.isSome:
    attrs = attrs.ContextSparseTypes(contextSparseTypes.get())
  if featureListDenseShapes.isSome:
    attrs = attrs.FeatureListDenseShapes(featureListDenseShapes.get())
  if featureListDenseTypes.isSome:
    attrs = attrs.FeatureListDenseTypes(featureListDenseTypes.get())
  if featureListSparseTypes.isSome:
    attrs = attrs.FeatureListSparseTypes(featureListSparseTypes.get())
  if ncontextDense.isSome:
    attrs = attrs.NcontextDense(ncontextDense.get())
  if ncontextSparse.isSome:
    attrs = attrs.NcontextSparse(ncontextSparse.get())
  if nfeatureListDense.isSome:
    attrs = attrs.NfeatureListDense(nfeatureListDense.get())
  if nfeatureListSparse.isSome:
    attrs = attrs.NfeatureListSparse(nfeatureListSparse.get())

  return ParseSequenceExample(root, serialized, debug_name, context_dense_defaults, feature_list_dense_missing_assumed_empty, context_sparse_keys, context_dense_keys, feature_list_sparse_keys, feature_list_dense_keys, attrs)

proc ParseSingleExample(root: Scope, serialized: Out, dense_defaults: InList, num_sparse: int, sparse_keys: ArraySlice[cppstring], dense_keys: ArraySlice[cppstring], sparse_types: ArraySlice[core.DType], dense_shapes: ArraySlice[TensorShape]): Operation =
  iParseSingleExample(root, serialized, dense_defaults, num_sparse, sparse_keys, dense_keys, sparse_types, dense_shapes)

proc ParseSingleExample(root: Scope, serialized: Out, dense_defaults: OutList, num_sparse: int, sparse_keys: ArraySlice[cppstring], dense_keys: ArraySlice[cppstring], sparse_types: ArraySlice[core.DType], dense_shapes: ArraySlice[TensorShape]): Operation {.header:std_ops, importcpp:"tensorflow::ops::ParseSingleExample(*#, #, #, #, #, #, #, #).operation".}

proc ParseSingleExample(root: Scope, serialized: Out, dense_defaults: InList, num_sparse: int, sparse_keys: ArraySlice[string], dense_keys: ArraySlice[string], sparse_types: ArraySlice[core.DType], dense_shapes: ArraySlice[TensorShape]): Operation =
  let cppSlice4 = newArraySlice[cppstring](sparse_keys)
  let cppSlice5 = newArraySlice[cppstring](dense_keys)
  return ParseSingleExample(root, serialized, dense_defaults, num_sparse, cppSlice4, cppSlice5, sparse_types, dense_shapes)

proc ParseSingleSequenceExample(root: Scope, serialized: Out, feature_list_dense_missing_assumed_empty: Out, context_sparse_keys: InList, context_dense_keys: InList, feature_list_sparse_keys: InList, feature_list_dense_keys: InList, context_dense_defaults: InList, debug_name: Out, attrs: ParseSingleSequenceExampleAttrs): Operation =
  iParseSingleSequenceExample(root, serialized, feature_list_dense_missing_assumed_empty, context_sparse_keys, context_dense_keys, feature_list_sparse_keys, feature_list_dense_keys, context_dense_defaults, debug_name, attrs)

proc ParseSingleSequenceExample(root: Scope, serialized: Out, feature_list_dense_missing_assumed_empty: Out, context_sparse_keys: OutList, context_dense_keys: OutList, feature_list_sparse_keys: OutList, feature_list_dense_keys: OutList, context_dense_defaults: OutList, debug_name: Out, attrs: ParseSingleSequenceExampleAttrs): Operation {.header:std_ops, importcpp:"tensorflow::ops::ParseSingleSequenceExample(*#, #, #, #, *, *# *#,*#, , #).operation".}

proc ParseSingleSequenceExample(root: Scope, serialized: Out, feature_list_dense_missing_assumed_empty: Out, context_sparse_keys: InList, context_dense_keys: InList, feature_list_sparse_keys: InList, feature_list_dense_keys: InList, context_dense_defaults: InList, debug_name: Out, contextDenseShapes = none(ArraySlice[TensorShape]), contextSparseTypes = none(ArraySlice[core.DType]), featureListDenseShapes = none(ArraySlice[TensorShape]), featureListDenseTypes = none(ArraySlice[core.DType]), featureListSparseTypes = none(ArraySlice[core.DType])): Operation =
  var attrs = ParseSingleSequenceExampleAttrs()

  if contextDenseShapes.isSome:
    attrs = attrs.ContextDenseShapes(contextDenseShapes.get())
  if contextSparseTypes.isSome:
    attrs = attrs.ContextSparseTypes(contextSparseTypes.get())
  if featureListDenseShapes.isSome:
    attrs = attrs.FeatureListDenseShapes(featureListDenseShapes.get())
  if featureListDenseTypes.isSome:
    attrs = attrs.FeatureListDenseTypes(featureListDenseTypes.get())
  if featureListSparseTypes.isSome:
    attrs = attrs.FeatureListSparseTypes(featureListSparseTypes.get())

  return ParseSingleSequenceExample(root, serialized, feature_list_dense_missing_assumed_empty, context_sparse_keys, context_dense_keys, feature_list_sparse_keys, feature_list_dense_keys, context_dense_defaults, debug_name, attrs)

proc ParseSingleSequenceExample(root: Scope, serialized: Out, feature_list_dense_missing_assumed_empty: Out, context_sparse_keys: OutList, context_dense_keys: OutList, feature_list_sparse_keys: OutList, feature_list_dense_keys: OutList, context_dense_defaults: OutList, debug_name: Out, contextDenseShapes = none(ArraySlice[TensorShape]), contextSparseTypes = none(ArraySlice[core.DType]), featureListDenseShapes = none(ArraySlice[TensorShape]), featureListDenseTypes = none(ArraySlice[core.DType]), featureListSparseTypes = none(ArraySlice[core.DType])): Operation =
  var attrs = ParseSingleSequenceExampleAttrs()

  if contextDenseShapes.isSome:
    attrs = attrs.ContextDenseShapes(contextDenseShapes.get())
  if contextSparseTypes.isSome:
    attrs = attrs.ContextSparseTypes(contextSparseTypes.get())
  if featureListDenseShapes.isSome:
    attrs = attrs.FeatureListDenseShapes(featureListDenseShapes.get())
  if featureListDenseTypes.isSome:
    attrs = attrs.FeatureListDenseTypes(featureListDenseTypes.get())
  if featureListSparseTypes.isSome:
    attrs = attrs.FeatureListSparseTypes(featureListSparseTypes.get())

  return ParseSingleSequenceExample(root, serialized, feature_list_dense_missing_assumed_empty, context_sparse_keys, context_dense_keys, feature_list_sparse_keys, feature_list_dense_keys, context_dense_defaults, debug_name, attrs)

proc ParseTensor(root: Scope, serialized: Out, out_type: core.DType): Out =
  iParseTensor(root, serialized, out_type)

proc SerializeTensor(root: Scope, tensor: Out): Out =
  iSerializeTensor(root, tensor)

proc StringToNumber(root: Scope, string_tensor: Out, attrs: StringToNumberAttrs): Out =
  iStringToNumber(root, string_tensor, attrs)

proc StringToNumber(root: Scope, string_tensor: Out, outType = none(core.DType)): Out =
  var attrs = StringToNumberAttrs()

  if outType.isSome:
    attrs = attrs.OutType(outType.get())

  return StringToNumber(root, string_tensor, attrs)

export DecodeCSV,
       DecodeCompressed,
       DecodeJSONExample,
       DecodeRaw,
       ParseExample,
       ParseSequenceExample,
       ParseSingleExample,
       ParseSingleSequenceExample,
       ParseTensor,
       SerializeTensor,
       StringToNumber