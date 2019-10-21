import ../core

{.compile:"string/string.cc".}

type AsStringT* = oint8 | oint16 | oint32 | oint64 | ocomplex64 | ocomplex128 | ofloat | odouble | obool

type AsString* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"AsString/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiasString(scope: Scope,
               input: AsStringT,
               fill: cstring,
               width: int64,
               precision: int64,
               scientific: bool,
               shortest: bool): AsString {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"AsString(*#, #, tensorflow::string(#), #, #, #, #)", constructor.}

proc asString*(scope: Scope,
               input: AsStringT,
               fill: cstring,
               width: int64 = -1.int,
               precision: int64 = -1.int,
               scientific: bool = false,
               shortest: bool = false): AsString =
  return iiasString(scope,
                    input,
                    fill,
                    width,
                    precision,
                    scientific,
                    shortest)

converter asStringToOut*(op: AsString): ostring {.inline.} = return op.output


type DecodeBase64* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"DecodeBase64/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iidecodeBase64(scope: Scope,
                   input: ostring): DecodeBase64 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"DecodeBase64(*#, #)", constructor.}

proc decodeBase64*(scope: Scope,
                   input: ostring): DecodeBase64 =
  return iidecodeBase64(scope,
                        input)

converter decodeBase64ToOut*(op: DecodeBase64): ostring {.inline.} = return op.output


type DecodeCompressed* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"DecodeCompressed/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iidecodeCompressed(scope: Scope,
                       bytes: ostring,
                       compression_type: cstring): DecodeCompressed {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"DecodeCompressed(*#, #, tensorflow::string(#))", constructor.}

proc decodeCompressed*(scope: Scope,
                       bytes: ostring,
                       compression_type: cstring): DecodeCompressed =
  return iidecodeCompressed(scope,
                            bytes,
                            compression_type)

converter decodeCompressedToOut*(op: DecodeCompressed): ostring {.inline.} = return op.output


type EncodeBase64* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"EncodeBase64/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiencodeBase64(scope: Scope,
                   input: ostring,
                   pad: bool): EncodeBase64 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"EncodeBase64(*#, #, #)", constructor.}

proc encodeBase64*(scope: Scope,
                   input: ostring,
                   pad: bool = false): EncodeBase64 =
  return iiencodeBase64(scope,
                        input,
                        pad)

converter encodeBase64ToOut*(op: EncodeBase64): ostring {.inline.} = return op.output


type ParseTensor*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"ParseTensor/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiparseTensor[oT: oall](scope: Scope,
                  serialized: ostring,
                  out_type: DType,
                  explicitT: type(oT)): ParseTensor[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"ParseTensor(*#, #, #)", constructor.}

proc parseTensor*(scope: Scope,
                  serialized: ostring,
                  out_type: type = oinvalid): auto =
  return iiparseTensor(scope,
                       serialized,
                       out_type.oTF,
                       out_type)

converter parseTensorToOut*[oT: oall](op: ParseTensor[oT]): oT {.inline.} = return op.output


type ReaderSerializeStateV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"ReaderSerializeStateV2/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iireaderSerializeStateV2(scope: Scope,
                             reader_handle: oresource): ReaderSerializeStateV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"ReaderSerializeStateV2(*#, #)", constructor.}

proc readerSerializeStateV2*(scope: Scope,
                             reader_handle: oresource): ReaderSerializeStateV2 =
  return iireaderSerializeStateV2(scope,
                                  reader_handle)

converter readerSerializeStateV2ToOut*(op: ReaderSerializeStateV2): ostring {.inline.} = return op.output


type ReduceJoin* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"ReduceJoin/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iireduceJoin(scope: Scope,
                 inputs: ostring,
                 reduction_indices: oint32,
                 separator: cstring,
                 keep_dims: bool): ReduceJoin {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"ReduceJoin(*#, #, #, tensorflow::string(#), #)", constructor.}

proc reduceJoin*(scope: Scope,
                 inputs: ostring,
                 reduction_indices: oint32,
                 separator: cstring,
                 keep_dims: bool = false): ReduceJoin =
  return iireduceJoin(scope,
                      inputs,
                      reduction_indices,
                      separator,
                      keep_dims)

converter reduceJoinToOut*(op: ReduceJoin): ostring {.inline.} = return op.output


type RegexFullMatch* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"RegexFullMatch/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiregexFullMatch(scope: Scope,
                     input: ostring,
                     pattern: ostring): RegexFullMatch {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"RegexFullMatch(*#, #, #)", constructor.}

proc regexFullMatch*(scope: Scope,
                     input: ostring,
                     pattern: ostring): RegexFullMatch =
  return iiregexFullMatch(scope,
                          input,
                          pattern)

converter regexFullMatchToOut*(op: RegexFullMatch): obool {.inline.} = return op.output


type RegexReplace* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"RegexReplace/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiregexReplace(scope: Scope,
                   input: ostring,
                   pattern: ostring,
                   rewrite: ostring,
                   replace_global: bool): RegexReplace {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"RegexReplace(*#, #, #, #, #)", constructor.}

proc regexReplace*(scope: Scope,
                   input: ostring,
                   pattern: ostring,
                   rewrite: ostring,
                   replace_global: bool = true): RegexReplace =
  return iiregexReplace(scope,
                        input,
                        pattern,
                        rewrite,
                        replace_global)

converter regexReplaceToOut*(op: RegexReplace): ostring {.inline.} = return op.output

type SerializeTensorT* = oall

type SerializeTensor* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"SerializeTensor/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiserializeTensor(scope: Scope,
                      tensor: SerializeTensorT): SerializeTensor {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"SerializeTensor(*#, #)", constructor.}

proc serializeTensor*(scope: Scope,
                      tensor: SerializeTensorT): SerializeTensor =
  return iiserializeTensor(scope,
                           tensor)

converter serializeTensorToOut*(op: SerializeTensor): ostring {.inline.} = return op.output


type StaticRegexFullMatch* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StaticRegexFullMatch/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iistaticRegexFullMatch(scope: Scope,
                           input: ostring,
                           pattern: cstring): StaticRegexFullMatch {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StaticRegexFullMatch(*#, #, tensorflow::string(#))", constructor.}

proc staticRegexFullMatch*(scope: Scope,
                           input: ostring,
                           pattern: cstring): StaticRegexFullMatch =
  return iistaticRegexFullMatch(scope,
                                input,
                                pattern)

converter staticRegexFullMatchToOut*(op: StaticRegexFullMatch): obool {.inline.} = return op.output


type StaticRegexReplace* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StaticRegexReplace/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iistaticRegexReplace(scope: Scope,
                         input: ostring,
                         pattern: cstring,
                         rewrite: cstring,
                         replace_global: bool): StaticRegexReplace {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StaticRegexReplace(*#, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc staticRegexReplace*(scope: Scope,
                         input: ostring,
                         pattern: cstring,
                         rewrite: cstring,
                         replace_global: bool = true): StaticRegexReplace =
  return iistaticRegexReplace(scope,
                              input,
                              pattern,
                              rewrite,
                              replace_global)

converter staticRegexReplaceToOut*(op: StaticRegexReplace): ostring {.inline.} = return op.output


type StringFormat* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringFormat/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iistringFormat(scope: Scope,
                   inputs: olist[oall],
                   T: ArraySlice[DType],
                   ntemplate: cstring,
                   placeholder: cstring,
                   summarize: int64): StringFormat {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringFormat(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc stringFormat*(scope: Scope,
                   inputs: olist[oall],
                   T: openArray[DType],
                   ntemplate: cstring = "%s",
                   placeholder: cstring = "%s",
                   summarize: int64 = 3.int): StringFormat =
  return iistringFormat(scope,
                        inputs,
                        newArraySlice(T),
                        ntemplate,
                        placeholder,
                        summarize)

converter stringFormatToOut*(op: StringFormat): ostring {.inline.} = return op.output


type StringJoin* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringJoin/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iistringJoin(scope: Scope,
                 inputs: olist[ostring],
                 separator: cstring): StringJoin {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringJoin(*#, #, tensorflow::string(#))", constructor.}

proc stringJoin*(scope: Scope,
                 inputs: olist[ostring],
                 separator: cstring): StringJoin =
  return iistringJoin(scope,
                      inputs,
                      separator)

converter stringJoinToOut*(op: StringJoin): ostring {.inline.} = return op.output


type StringLength* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringLength/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iistringLength(scope: Scope,
                   input: ostring,
                   unit: cstring): StringLength {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringLength(*#, #, tensorflow::string(#))", constructor.}

proc stringLength*(scope: Scope,
                   input: ostring,
                   unit: cstring = "BYTE"): StringLength =
  return iistringLength(scope,
                        input,
                        unit)

converter stringLengthToOut*(op: StringLength): oint32 {.inline.} = return op.output


type StringSplit* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringSplit/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iistringSplit(scope: Scope,
                  input: ostring,
                  delimiter: ostring,
                  skip_empty: bool): StringSplit {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringSplit(*#, #, #, #)", constructor.}

proc stringSplit*(scope: Scope,
                  input: ostring,
                  delimiter: ostring,
                  skip_empty: bool = true): StringSplit =
  return iistringSplit(scope,
                       input,
                       delimiter,
                       skip_empty)

converter stringSplitToOut*(op: StringSplit): oint64 {.inline.} = return op.output


type StringSplitV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringSplitV2/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iistringSplitV2(scope: Scope,
                    input: ostring,
                    sep: ostring,
                    maxsplit: int64): StringSplitV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringSplitV2(*#, #, #, #)", constructor.}

proc stringSplitV2*(scope: Scope,
                    input: ostring,
                    sep: ostring,
                    maxsplit: int64 = -1.int): StringSplitV2 =
  return iistringSplitV2(scope,
                         input,
                         sep,
                         maxsplit)

converter stringSplitV2ToOut*(op: StringSplitV2): oint64 {.inline.} = return op.output


type StringStrip* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringStrip/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iistringStrip(scope: Scope,
                  input: ostring): StringStrip {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringStrip(*#, #)", constructor.}

proc stringStrip*(scope: Scope,
                  input: ostring): StringStrip =
  return iistringStrip(scope,
                       input)

converter stringStripToOut*(op: StringStrip): ostring {.inline.} = return op.output


type StringToHashBucket* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringToHashBucket/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iistringToHashBucket(scope: Scope,
                         string_tensor: ostring,
                         num_buckets: int64): StringToHashBucket {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringToHashBucket(*#, #, #)", constructor.}

proc stringToHashBucket*(scope: Scope,
                         string_tensor: ostring,
                         num_buckets: int64 = 0.int): StringToHashBucket =
  return iistringToHashBucket(scope,
                              string_tensor,
                              num_buckets)

converter stringToHashBucketToOut*(op: StringToHashBucket): oint64 {.inline.} = return op.output


type StringToHashBucketFast* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringToHashBucketFast/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iistringToHashBucketFast(scope: Scope,
                             input: ostring,
                             num_buckets: int64): StringToHashBucketFast {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringToHashBucketFast(*#, #, #)", constructor.}

proc stringToHashBucketFast*(scope: Scope,
                             input: ostring,
                             num_buckets: int64 = 0.int): StringToHashBucketFast =
  return iistringToHashBucketFast(scope,
                                  input,
                                  num_buckets)

converter stringToHashBucketFastToOut*(op: StringToHashBucketFast): oint64 {.inline.} = return op.output


type StringToHashBucketStrong* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringToHashBucketStrong/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iistringToHashBucketStrong(scope: Scope,
                               input: ostring,
                               key: ArraySlice[int],
                               num_buckets: int64): StringToHashBucketStrong {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringToHashBucketStrong(*#, #, #, #)", constructor.}

proc stringToHashBucketStrong*(scope: Scope,
                               input: ostring,
                               key: openArray[int],
                               num_buckets: int64 = 0.int): StringToHashBucketStrong =
  return iistringToHashBucketStrong(scope,
                                    input,
                                    newArraySlice(key),
                                    num_buckets)

converter stringToHashBucketStrongToOut*(op: StringToHashBucketStrong): oint64 {.inline.} = return op.output


type StringToNumber*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringToNumber/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistringToNumber[oT: oall](scope: Scope,
                     string_tensor: ostring,
                     out_type: DType,
                     explicitT: type(oT)): StringToNumber[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"StringToNumber(*#, #, #)", constructor.}

proc stringToNumber*(scope: Scope,
                     string_tensor: ostring,
                     out_type: type = ofloat): auto =
  return iistringToNumber(scope,
                          string_tensor,
                          out_type.oTF,
                          out_type)

converter stringToNumberToOut*[oT: oall](op: StringToNumber[oT]): oT {.inline.} = return op.output

type SubstrT* = oint32 | oint64

type Substr* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"Substr/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iisubstr(scope: Scope,
             input: ostring,
             pos: SubstrT,
             len: SubstrT,
             unit: cstring): Substr {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"Substr(*#, #, #, #, tensorflow::string(#))", constructor.}

proc substr*(scope: Scope,
             input: ostring,
             pos: SubstrT,
             len: SubstrT,
             unit: cstring = "BYTE"): Substr =
  return iisubstr(scope,
                  input,
                  pos,
                  len,
                  unit)

converter substrToOut*(op: Substr): ostring {.inline.} = return op.output


type UnicodeDecodeWithOffsets* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"UnicodeDecodeWithOffsets/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiunicodeDecodeWithOffsets(scope: Scope,
                               input: ostring,
                               input_encoding: cstring,
                               errors: cstring,
                               replacement_char: int64,
                               replace_control_characters: bool): UnicodeDecodeWithOffsets {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"UnicodeDecodeWithOffsets(*#, #, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc unicodeDecodeWithOffsets*(scope: Scope,
                               input: ostring,
                               input_encoding: cstring,
                               errors: cstring = "replace",
                               replacement_char: int64 = 65533.int,
                               replace_control_characters: bool = false): UnicodeDecodeWithOffsets =
  return iiunicodeDecodeWithOffsets(scope,
                                    input,
                                    input_encoding,
                                    errors,
                                    replacement_char,
                                    replace_control_characters)

converter unicodeDecodeWithOffsetsToOut*(op: UnicodeDecodeWithOffsets): oint64 {.inline.} = return op.output


type UnicodeEncode* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"UnicodeEncode/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiunicodeEncode(scope: Scope,
                    input_values: oint32,
                    input_splits: oint64,
                    output_encoding: cstring,
                    errors: cstring,
                    replacement_char: int64): UnicodeEncode {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"UnicodeEncode(*#, #, #, tensorflow::string(#), tensorflow::string(#), #)", constructor.}

proc unicodeEncode*(scope: Scope,
                    input_values: oint32,
                    input_splits: oint64,
                    output_encoding: cstring,
                    errors: cstring = "replace",
                    replacement_char: int64 = 65533.int): UnicodeEncode =
  return iiunicodeEncode(scope,
                         input_values,
                         input_splits,
                         output_encoding,
                         errors,
                         replacement_char)

converter unicodeEncodeToOut*(op: UnicodeEncode): ostring {.inline.} = return op.output


type UnicodeScript* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"UnicodeScript/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iiunicodeScript(scope: Scope,
                    input: oint32): UnicodeScript {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"UnicodeScript(*#, #)", constructor.}

proc unicodeScript*(scope: Scope,
                    input: oint32): UnicodeScript =
  return iiunicodeScript(scope,
                         input)

converter unicodeScriptToOut*(op: UnicodeScript): oint32 {.inline.} = return op.output


type UnicodeTranscode* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"UnicodeTranscode/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiunicodeTranscode(scope: Scope,
                       input: ostring,
                       input_encoding: cstring,
                       output_encoding: cstring,
                       errors: cstring,
                       replacement_char: int64,
                       replace_control_characters: bool): UnicodeTranscode {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/string/string.h", importcpp:"UnicodeTranscode(*#, #, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc unicodeTranscode*(scope: Scope,
                       input: ostring,
                       input_encoding: cstring,
                       output_encoding: cstring,
                       errors: cstring = "replace",
                       replacement_char: int64 = 65533.int,
                       replace_control_characters: bool = false): UnicodeTranscode =
  return iiunicodeTranscode(scope,
                            input,
                            input_encoding,
                            output_encoding,
                            errors,
                            replacement_char,
                            replace_control_characters)

converter unicodeTranscodeToOut*(op: UnicodeTranscode): ostring {.inline.} = return op.output

