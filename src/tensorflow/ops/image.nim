import ../core

{.compile:"image/image.cc".}

type AdjustContrastT* = ouint8 | oint8 | oint16 | oint32 | oint64 | ofloat | odouble

type AdjustContrast* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"AdjustContrast/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiadjustContrast(scope: Scope,
                     images: AdjustContrastT,
                     contrast_factor: ofloat,
                     min_value: ofloat,
                     max_value: ofloat): AdjustContrast {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"AdjustContrast(*#, #, #, #, #)", constructor.}

proc adjustContrast*(scope: Scope,
                     images: AdjustContrastT,
                     contrast_factor: ofloat,
                     min_value: ofloat,
                     max_value: ofloat): AdjustContrast =
  return iiadjustContrast(scope,
                          images,
                          contrast_factor,
                          min_value,
                          max_value)

converter adjustContrastToOut*(op: AdjustContrast): ofloat {.inline.} = return op.output


type AdjustContrastv2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"AdjustContrastv2/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiadjustContrastv2(scope: Scope,
                       images: ofloat,
                       contrast_factor: ofloat): AdjustContrastv2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"AdjustContrastv2(*#, #, #)", constructor.}

proc adjustContrastv2*(scope: Scope,
                       images: ofloat,
                       contrast_factor: ofloat): AdjustContrastv2 =
  return iiadjustContrastv2(scope,
                            images,
                            contrast_factor)

converter adjustContrastv2ToOut*(op: AdjustContrastv2): ofloat {.inline.} = return op.output


type AdjustHue* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"AdjustHue/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiadjustHue(scope: Scope,
                images: ofloat,
                delta: ofloat): AdjustHue {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"AdjustHue(*#, #, #)", constructor.}

proc adjustHue*(scope: Scope,
                images: ofloat,
                delta: ofloat): AdjustHue =
  return iiadjustHue(scope,
                     images,
                     delta)

converter adjustHueToOut*(op: AdjustHue): ofloat {.inline.} = return op.output


type AdjustSaturation* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"AdjustSaturation/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiadjustSaturation(scope: Scope,
                       images: ofloat,
                       scale: ofloat): AdjustSaturation {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"AdjustSaturation(*#, #, #)", constructor.}

proc adjustSaturation*(scope: Scope,
                       images: ofloat,
                       scale: ofloat): AdjustSaturation =
  return iiadjustSaturation(scope,
                            images,
                            scale)

converter adjustSaturationToOut*(op: AdjustSaturation): ofloat {.inline.} = return op.output

type CropAndResizeT* = ouint8 | ouint16 | oint8 | oint16 | oint32 | oint64 | ohalf | ofloat | odouble

type CropAndResize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"CropAndResize/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iicropAndResize(scope: Scope,
                    image: CropAndResizeT,
                    boxes: ofloat,
                    box_ind: oint32,
                    crop_size: oint32,
                    extrapolation_value: float32,
                    nmethod: cstring): CropAndResize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"CropAndResize(*#, #, #, #, #, #, tensorflow::string(#))", constructor.}

proc cropAndResize*(scope: Scope,
                    image: CropAndResizeT,
                    boxes: ofloat,
                    box_ind: oint32,
                    crop_size: oint32,
                    extrapolation_value: float32 = 0.0.float32,
                    nmethod: cstring = "bilinear"): CropAndResize =
  return iicropAndResize(scope,
                         image,
                         boxes,
                         box_ind,
                         crop_size,
                         extrapolation_value,
                         nmethod)

converter cropAndResizeToOut*(op: CropAndResize): ofloat {.inline.} = return op.output


type CropAndResizeGradImage*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"CropAndResizeGradImage/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicropAndResizeGradImage[oT: oall](scope: Scope,
                             grads: ofloat,
                             boxes: ofloat,
                             box_ind: oint32,
                             image_size: oint32,
                             T: DType,
                             nmethod: cstring,
                             explicitT: type(oT)): CropAndResizeGradImage[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"CropAndResizeGradImage(*#, #, #, #, #, #, tensorflow::string(#))", constructor.}

proc cropAndResizeGradImage*(scope: Scope,
                             grads: ofloat,
                             boxes: ofloat,
                             box_ind: oint32,
                             image_size: oint32,
                             T: type = oinvalid,
                             nmethod: cstring = "bilinear"): auto =
  return iicropAndResizeGradImage(scope,
                                  grads,
                                  boxes,
                                  box_ind,
                                  image_size,
                                  T.oTF,
                                  nmethod,
                                  T)

converter cropAndResizeGradImageToOut*[oT: oall](op: CropAndResizeGradImage[oT]): oT {.inline.} = return op.output


type DecodeAndCropJpeg* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeAndCropJpeg/*'0*/".} = object
  operation*: Operation[ouint8]
  output*: ouint8

proc iidecodeAndCropJpeg(scope: Scope,
                        contents: ostring,
                        crop_window: oint32,
                        dct_method: cstring,
                        channels: int64,
                        ratio: int64,
                        fancy_upscaling: bool,
                        try_recover_truncated: bool,
                        acceptable_fraction: float32): DecodeAndCropJpeg {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeAndCropJpeg(*#, #, #, tensorflow::string(#), #, #, #, #, #)", constructor.}

proc decodeAndCropJpeg*(scope: Scope,
                        contents: ostring,
                        crop_window: oint32,
                        dct_method: cstring,
                        channels: int64 = 0.int,
                        ratio: int64 = 1.int,
                        fancy_upscaling: bool = true,
                        try_recover_truncated: bool = false,
                        acceptable_fraction: float32 = 1.0.float32): DecodeAndCropJpeg =
  return iidecodeAndCropJpeg(scope,
                             contents,
                             crop_window,
                             dct_method,
                             channels,
                             ratio,
                             fancy_upscaling,
                             try_recover_truncated,
                             acceptable_fraction)

converter decodeAndCropJpegToOut*(op: DecodeAndCropJpeg): ouint8 {.inline.} = return op.output


type DecodeBmp* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeBmp/*'0*/".} = object
  operation*: Operation[ouint8]
  output*: ouint8

proc iidecodeBmp(scope: Scope,
                contents: ostring,
                channels: int64): DecodeBmp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeBmp(*#, #, #)", constructor.}

proc decodeBmp*(scope: Scope,
                contents: ostring,
                channels: int64 = 0.int): DecodeBmp =
  return iidecodeBmp(scope,
                     contents,
                     channels)

converter decodeBmpToOut*(op: DecodeBmp): ouint8 {.inline.} = return op.output


type DecodeCSV*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeCSV/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iidecodeCSV[oT: oall](scope: Scope,
                records: ostring,
                record_defaults: olist[oT],
                OUT_TYPE: ArraySlice[DType],
                na_value: cstring,
                select_cols: ArraySlice[int],
                field_delim: cstring,
                use_quote_delim: bool): DecodeCSV[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeCSV(*#, #, #, #, tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc decodeCSV*[oT: oall](scope: Scope,
                records: ostring,
                record_defaults: olist[oT],
                OUT_TYPE: openArray[DType],
                na_value: cstring,
                select_cols: openArray[int],
                field_delim: cstring = ",",
                use_quote_delim: bool = true): DecodeCSV[oT] =
  return iidecodeCSV(scope,
                     records,
                     record_defaults,
                     newArraySlice(OUT_TYPE),
                     na_value,
                     newArraySlice(select_cols),
                     field_delim,
                     use_quote_delim)

converter decodeCSVToOutList*[oT: oall](op: DecodeCSV[oT]): olist[oT] {.inline.} = return op.output


type DecodeGif* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeGif/*'0*/".} = object
  operation*: Operation[ouint8]
  output*: ouint8

proc iidecodeGif(scope: Scope,
                contents: ostring): DecodeGif {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeGif(*#, #)", constructor.}

proc decodeGif*(scope: Scope,
                contents: ostring): DecodeGif =
  return iidecodeGif(scope,
                     contents)

converter decodeGifToOut*(op: DecodeGif): ouint8 {.inline.} = return op.output


type DecodeJpeg* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeJpeg/*'0*/".} = object
  operation*: Operation[ouint8]
  output*: ouint8

proc iidecodeJpeg(scope: Scope,
                 contents: ostring,
                 dct_method: cstring,
                 channels: int64,
                 ratio: int64,
                 fancy_upscaling: bool,
                 try_recover_truncated: bool,
                 acceptable_fraction: float32): DecodeJpeg {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeJpeg(*#, #, tensorflow::string(#), #, #, #, #, #)", constructor.}

proc decodeJpeg*(scope: Scope,
                 contents: ostring,
                 dct_method: cstring,
                 channels: int64 = 0.int,
                 ratio: int64 = 1.int,
                 fancy_upscaling: bool = true,
                 try_recover_truncated: bool = false,
                 acceptable_fraction: float32 = 1.0.float32): DecodeJpeg =
  return iidecodeJpeg(scope,
                      contents,
                      dct_method,
                      channels,
                      ratio,
                      fancy_upscaling,
                      try_recover_truncated,
                      acceptable_fraction)

converter decodeJpegToOut*(op: DecodeJpeg): ouint8 {.inline.} = return op.output


type DecodePng*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodePng/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidecodePng[oT: oall](scope: Scope,
                contents: ostring,
                channels: int64,
                dtype: DType,
                explicitT: type(oT)): DecodePng[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodePng(*#, #, #, #)", constructor.}

proc decodePng*(scope: Scope,
                contents: ostring,
                channels: int64 = 0.int,
                dtype: type = ouint8): auto =
  return iidecodePng(scope,
                     contents,
                     channels,
                     dtype.oTF,
                     dtype)

converter decodePngToOut*[oT: oall](op: DecodePng[oT]): oT {.inline.} = return op.output


type DecodeRaw*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeRaw/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidecodeRaw[oT: oall](scope: Scope,
                bytes: ostring,
                out_type: DType,
                little_endian: bool,
                explicitT: type(oT)): DecodeRaw[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DecodeRaw(*#, #, #, #)", constructor.}

proc decodeRaw*(scope: Scope,
                bytes: ostring,
                out_type: type = oinvalid,
                little_endian: bool = true): auto =
  return iidecodeRaw(scope,
                     bytes,
                     out_type.oTF,
                     little_endian,
                     out_type)

converter decodeRawToOut*[oT: oall](op: DecodeRaw[oT]): oT {.inline.} = return op.output


type DrawBoundingBoxes*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DrawBoundingBoxes/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidrawBoundingBoxes[oT: oall](scope: Scope,
                        images: oT,
                        boxes: ofloat,
                        T: DType): DrawBoundingBoxes[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"DrawBoundingBoxes(*#, #, #, #)", constructor.}

proc drawBoundingBoxes*[oT: oall](scope: Scope,
                        images: oT,
                        boxes: ofloat): DrawBoundingBoxes[oT] =
  return iidrawBoundingBoxes(scope,
                             images,
                             boxes,
                             oT.oTF)

converter drawBoundingBoxesToOut*[oT: oall](op: DrawBoundingBoxes[oT]): oT {.inline.} = return op.output


type EncodeJpeg* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"EncodeJpeg/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiencodeJpeg(scope: Scope,
                 image: ouint8,
                 format: cstring,
                 xmp_metadata: cstring,
                 quality: int64,
                 progressive: bool,
                 optimize_size: bool,
                 chroma_downsampling: bool,
                 density_unit: cstring,
                 x_density: int64,
                 y_density: int64): EncodeJpeg {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"EncodeJpeg(*#, #, tensorflow::string(#), tensorflow::string(#), #, #, #, #, tensorflow::string(#), #, #)", constructor.}

proc encodeJpeg*(scope: Scope,
                 image: ouint8,
                 format: cstring,
                 xmp_metadata: cstring,
                 quality: int64 = 95.int,
                 progressive: bool = false,
                 optimize_size: bool = false,
                 chroma_downsampling: bool = true,
                 density_unit: cstring = "in",
                 x_density: int64 = 300.int,
                 y_density: int64 = 300.int): EncodeJpeg =
  return iiencodeJpeg(scope,
                      image,
                      format,
                      xmp_metadata,
                      quality,
                      progressive,
                      optimize_size,
                      chroma_downsampling,
                      density_unit,
                      x_density,
                      y_density)

converter encodeJpegToOut*(op: EncodeJpeg): ostring {.inline.} = return op.output

type EncodePngT* = ouint8 | ouint16

type EncodePng* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"EncodePng/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiencodePng(scope: Scope,
                image: EncodePngT,
                compression: int64): EncodePng {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"EncodePng(*#, #, #)", constructor.}

proc encodePng*(scope: Scope,
                image: EncodePngT,
                compression: int64 = -1.int): EncodePng =
  return iiencodePng(scope,
                     image,
                     compression)

converter encodePngToOut*(op: EncodePng): ostring {.inline.} = return op.output


type ExtractGlimpse* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ExtractGlimpse/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiextractGlimpse(scope: Scope,
                     input: ofloat,
                     size: oint32,
                     offsets: ofloat,
                     centered: bool,
                     normalized: bool,
                     uniform_noise: bool): ExtractGlimpse {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ExtractGlimpse(*#, #, #, #, #, #, #)", constructor.}

proc extractGlimpse*(scope: Scope,
                     input: ofloat,
                     size: oint32,
                     offsets: ofloat,
                     centered: bool = true,
                     normalized: bool = true,
                     uniform_noise: bool = true): ExtractGlimpse =
  return iiextractGlimpse(scope,
                          input,
                          size,
                          offsets,
                          centered,
                          normalized,
                          uniform_noise)

converter extractGlimpseToOut*(op: ExtractGlimpse): ofloat {.inline.} = return op.output


type ExtractImagePatches*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ExtractImagePatches/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiextractImagePatches[oT: oall](scope: Scope,
                          images: oT,
                          ksizes: ArraySlice[int],
                          strides: ArraySlice[int],
                          rates: ArraySlice[int],
                          padding: cstring,
                          T: DType): ExtractImagePatches[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ExtractImagePatches(*#, #, #, #, #, tensorflow::string(#), #)", constructor.}

proc extractImagePatches*[oT: oall](scope: Scope,
                          images: oT,
                          ksizes: openArray[int],
                          strides: openArray[int],
                          rates: openArray[int],
                          padding: cstring): ExtractImagePatches[oT] =
  return iiextractImagePatches(scope,
                               images,
                               newArraySlice(ksizes),
                               newArraySlice(strides),
                               newArraySlice(rates),
                               padding,
                               oT.oTF)

converter extractImagePatchesToOut*[oT: oall](op: ExtractImagePatches[oT]): oT {.inline.} = return op.output


type ExtractJpegShape*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ExtractJpegShape/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiextractJpegShape[oT: oall](scope: Scope,
                       contents: ostring,
                       output_type: DType,
                       explicitT: type(oT)): ExtractJpegShape[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ExtractJpegShape(*#, #, #)", constructor.}

proc extractJpegShape*(scope: Scope,
                       contents: ostring,
                       output_type: type = oint32): auto =
  return iiextractJpegShape(scope,
                            contents,
                            output_type.oTF,
                            output_type)

converter extractJpegShapeToOut*[oT: oall](op: ExtractJpegShape[oT]): oT {.inline.} = return op.output


type HSVToRGB*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"HSVToRGB/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iihSVToRGB[oT: oall](scope: Scope,
               images: oT,
               T: DType): HSVToRGB[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"HSVToRGB(*#, #, #)", constructor.}

proc hSVToRGB*[oT: oall](scope: Scope,
               images: oT): HSVToRGB[oT] =
  return iihSVToRGB(scope,
                    images,
                    oT.oTF)

converter hSVToRGBToOut*[oT: oall](op: HSVToRGB[oT]): oT {.inline.} = return op.output


type NonMaxSuppression* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"NonMaxSuppression/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iinonMaxSuppression(scope: Scope,
                        boxes: ofloat,
                        scores: ofloat,
                        max_output_size: oint32,
                        iou_threshold: float32): NonMaxSuppression {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"NonMaxSuppression(*#, #, #, #, #)", constructor.}

proc nonMaxSuppression*(scope: Scope,
                        boxes: ofloat,
                        scores: ofloat,
                        max_output_size: oint32,
                        iou_threshold: float32 = 0.5.float32): NonMaxSuppression =
  return iinonMaxSuppression(scope,
                             boxes,
                             scores,
                             max_output_size,
                             iou_threshold)

converter nonMaxSuppressionToOut*(op: NonMaxSuppression): oint32 {.inline.} = return op.output

type NonMaxSuppressionV2T* = ohalf | ofloat

type NonMaxSuppressionV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"NonMaxSuppressionV2/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iinonMaxSuppressionV2(scope: Scope,
                          boxes: NonMaxSuppressionV2T,
                          scores: NonMaxSuppressionV2T,
                          max_output_size: oint32,
                          iou_threshold: ofloat): NonMaxSuppressionV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"NonMaxSuppressionV2(*#, #, #, #, #)", constructor.}

proc nonMaxSuppressionV2*(scope: Scope,
                          boxes: NonMaxSuppressionV2T,
                          scores: NonMaxSuppressionV2T,
                          max_output_size: oint32,
                          iou_threshold: ofloat): NonMaxSuppressionV2 =
  return iinonMaxSuppressionV2(scope,
                               boxes,
                               scores,
                               max_output_size,
                               iou_threshold)

converter nonMaxSuppressionV2ToOut*(op: NonMaxSuppressionV2): oint32 {.inline.} = return op.output


type QuantizedResizeBilinear*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"QuantizedResizeBilinear/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedResizeBilinear[oT: oall](scope: Scope,
                              images: oT,
                              size: oint32,
                              min: ofloat,
                              max: ofloat,
                              T: DType,
                              align_corners: bool): QuantizedResizeBilinear[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"QuantizedResizeBilinear(*#, #, #, #, #, #, #)", constructor.}

proc quantizedResizeBilinear*[oT: oall](scope: Scope,
                              images: oT,
                              size: oint32,
                              min: ofloat,
                              max: ofloat,
                              align_corners: bool = false): QuantizedResizeBilinear[oT] =
  return iiquantizedResizeBilinear(scope,
                                   images,
                                   size,
                                   min,
                                   max,
                                   oT.oTF,
                                   align_corners)

converter quantizedResizeBilinearToOut*[oT: oall](op: QuantizedResizeBilinear[oT]): oT {.inline.} = return op.output


type RGBToHSV*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"RGBToHSV/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirGBToHSV[oT: oall](scope: Scope,
               images: oT,
               T: DType): RGBToHSV[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"RGBToHSV(*#, #, #)", constructor.}

proc rGBToHSV*[oT: oall](scope: Scope,
               images: oT): RGBToHSV[oT] =
  return iirGBToHSV(scope,
                    images,
                    oT.oTF)

converter rGBToHSVToOut*[oT: oall](op: RGBToHSV[oT]): oT {.inline.} = return op.output


type RandomCrop*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"RandomCrop/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirandomCrop[oT: oall](scope: Scope,
                 image: oT,
                 size: oint64,
                 T: DType,
                 seed: int64,
                 seed2: int64): RandomCrop[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"RandomCrop(*#, #, #, #, #, #)", constructor.}

proc randomCrop*[oT: oall](scope: Scope,
                 image: oT,
                 size: oint64,
                 seed: int64 = 0.int,
                 seed2: int64 = 0.int): RandomCrop[oT] =
  return iirandomCrop(scope,
                      image,
                      size,
                      oT.oTF,
                      seed,
                      seed2)

converter randomCropToOut*[oT: oall](op: RandomCrop[oT]): oT {.inline.} = return op.output

type ResizeAreaT* = oint8 | ouint8 | oint16 | ouint16 | oint32 | oint64 | ohalf | ofloat | odouble

type ResizeArea* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeArea/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiresizeArea(scope: Scope,
                 images: ResizeAreaT,
                 size: oint32,
                 align_corners: bool): ResizeArea {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeArea(*#, #, #, #)", constructor.}

proc resizeArea*(scope: Scope,
                 images: ResizeAreaT,
                 size: oint32,
                 align_corners: bool = false): ResizeArea =
  return iiresizeArea(scope,
                      images,
                      size,
                      align_corners)

converter resizeAreaToOut*(op: ResizeArea): ofloat {.inline.} = return op.output

type ResizeBicubicT* = oint8 | ouint8 | oint16 | ouint16 | oint32 | oint64 | ohalf | ofloat | odouble

type ResizeBicubic* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeBicubic/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiresizeBicubic(scope: Scope,
                    images: ResizeBicubicT,
                    size: oint32,
                    align_corners: bool): ResizeBicubic {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeBicubic(*#, #, #, #)", constructor.}

proc resizeBicubic*(scope: Scope,
                    images: ResizeBicubicT,
                    size: oint32,
                    align_corners: bool = false): ResizeBicubic =
  return iiresizeBicubic(scope,
                         images,
                         size,
                         align_corners)

converter resizeBicubicToOut*(op: ResizeBicubic): ofloat {.inline.} = return op.output


type ResizeBicubicGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeBicubicGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiresizeBicubicGrad[oT: oall](scope: Scope,
                        grads: ofloat,
                        original_image: oT,
                        T: DType,
                        align_corners: bool): ResizeBicubicGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeBicubicGrad(*#, #, #, #, #)", constructor.}

proc resizeBicubicGrad*[oT: oall](scope: Scope,
                        grads: ofloat,
                        original_image: oT,
                        align_corners: bool = false): ResizeBicubicGrad[oT] =
  return iiresizeBicubicGrad(scope,
                             grads,
                             original_image,
                             oT.oTF,
                             align_corners)

converter resizeBicubicGradToOut*[oT: oall](op: ResizeBicubicGrad[oT]): oT {.inline.} = return op.output

type ResizeBilinearT* = oint8 | ouint8 | oint16 | ouint16 | oint32 | oint64 | obfloat16 | ohalf | ofloat | odouble

type ResizeBilinear* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeBilinear/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiresizeBilinear(scope: Scope,
                     images: ResizeBilinearT,
                     size: oint32,
                     align_corners: bool): ResizeBilinear {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeBilinear(*#, #, #, #)", constructor.}

proc resizeBilinear*(scope: Scope,
                     images: ResizeBilinearT,
                     size: oint32,
                     align_corners: bool = false): ResizeBilinear =
  return iiresizeBilinear(scope,
                          images,
                          size,
                          align_corners)

converter resizeBilinearToOut*(op: ResizeBilinear): ofloat {.inline.} = return op.output


type ResizeBilinearGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeBilinearGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiresizeBilinearGrad[oT: oall](scope: Scope,
                         grads: ofloat,
                         original_image: oT,
                         T: DType,
                         align_corners: bool): ResizeBilinearGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeBilinearGrad(*#, #, #, #, #)", constructor.}

proc resizeBilinearGrad*[oT: oall](scope: Scope,
                         grads: ofloat,
                         original_image: oT,
                         align_corners: bool = false): ResizeBilinearGrad[oT] =
  return iiresizeBilinearGrad(scope,
                              grads,
                              original_image,
                              oT.oTF,
                              align_corners)

converter resizeBilinearGradToOut*[oT: oall](op: ResizeBilinearGrad[oT]): oT {.inline.} = return op.output


type ResizeNearestNeighbor*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeNearestNeighbor/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiresizeNearestNeighbor[oT: oall](scope: Scope,
                            images: oT,
                            size: oint32,
                            T: DType,
                            align_corners: bool): ResizeNearestNeighbor[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeNearestNeighbor(*#, #, #, #, #)", constructor.}

proc resizeNearestNeighbor*[oT: oall](scope: Scope,
                            images: oT,
                            size: oint32,
                            align_corners: bool = false): ResizeNearestNeighbor[oT] =
  return iiresizeNearestNeighbor(scope,
                                 images,
                                 size,
                                 oT.oTF,
                                 align_corners)

converter resizeNearestNeighborToOut*[oT: oall](op: ResizeNearestNeighbor[oT]): oT {.inline.} = return op.output


type ResizeNearestNeighborGrad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeNearestNeighborGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiresizeNearestNeighborGrad[oT: oall](scope: Scope,
                                grads: oT,
                                size: oint32,
                                T: DType,
                                align_corners: bool): ResizeNearestNeighborGrad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"ResizeNearestNeighborGrad(*#, #, #, #, #)", constructor.}

proc resizeNearestNeighborGrad*[oT: oall](scope: Scope,
                                grads: oT,
                                size: oint32,
                                align_corners: bool = false): ResizeNearestNeighborGrad[oT] =
  return iiresizeNearestNeighborGrad(scope,
                                     grads,
                                     size,
                                     oT.oTF,
                                     align_corners)

converter resizeNearestNeighborGradToOut*[oT: oall](op: ResizeNearestNeighborGrad[oT]): oT {.inline.} = return op.output


type SampleDistortedBoundingBox*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"SampleDistortedBoundingBox/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisampleDistortedBoundingBox[oT: oall](scope: Scope,
                                 image_size: oT,
                                 bounding_boxes: ofloat,
                                 T: DType,
                                 seed: int64,
                                 seed2: int64,
                                 min_object_covered: float32,
                                 aspect_ratio_range: ArraySlice[float32],
                                 area_range: ArraySlice[float32],
                                 max_attempts: int64,
                                 use_image_if_no_bounding_boxes: bool): SampleDistortedBoundingBox[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"SampleDistortedBoundingBox(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sampleDistortedBoundingBox*[oT: oall](scope: Scope,
                                 image_size: oT,
                                 bounding_boxes: ofloat,
                                 seed: int64 = 0.int,
                                 seed2: int64 = 0.int,
                                 min_object_covered: float32 = 0.1000000014901161.float32,
                                 aspect_ratio_range: openArray[float32] = [0.75.float32, 1.330000042915344.float32],
                                 area_range: openArray[float32] = [0.05000000074505806.float32, 1.0.float32],
                                 max_attempts: int64 = 100.int,
                                 use_image_if_no_bounding_boxes: bool = false): SampleDistortedBoundingBox[oT] =
  return iisampleDistortedBoundingBox(scope,
                                      image_size,
                                      bounding_boxes,
                                      oT.oTF,
                                      seed,
                                      seed2,
                                      min_object_covered,
                                      newArraySlice(aspect_ratio_range),
                                      newArraySlice(area_range),
                                      max_attempts,
                                      use_image_if_no_bounding_boxes)

converter sampleDistortedBoundingBoxToOut*[oT: oall](op: SampleDistortedBoundingBox[oT]): oT {.inline.} = return op.output


type SampleDistortedBoundingBoxV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"SampleDistortedBoundingBoxV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisampleDistortedBoundingBoxV2[oT: oall](scope: Scope,
                                   image_size: oT,
                                   bounding_boxes: ofloat,
                                   min_object_covered: ofloat,
                                   T: DType,
                                   seed: int64,
                                   seed2: int64,
                                   aspect_ratio_range: ArraySlice[float32],
                                   area_range: ArraySlice[float32],
                                   max_attempts: int64,
                                   use_image_if_no_bounding_boxes: bool): SampleDistortedBoundingBoxV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/image/image.h", importcpp:"SampleDistortedBoundingBoxV2(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc sampleDistortedBoundingBoxV2*[oT: oall](scope: Scope,
                                   image_size: oT,
                                   bounding_boxes: ofloat,
                                   min_object_covered: ofloat,
                                   seed: int64 = 0.int,
                                   seed2: int64 = 0.int,
                                   aspect_ratio_range: openArray[float32] = [0.75.float32, 1.330000042915344.float32],
                                   area_range: openArray[float32] = [0.05000000074505806.float32, 1.0.float32],
                                   max_attempts: int64 = 100.int,
                                   use_image_if_no_bounding_boxes: bool = false): SampleDistortedBoundingBoxV2[oT] =
  return iisampleDistortedBoundingBoxV2(scope,
                                        image_size,
                                        bounding_boxes,
                                        min_object_covered,
                                        oT.oTF,
                                        seed,
                                        seed2,
                                        newArraySlice(aspect_ratio_range),
                                        newArraySlice(area_range),
                                        max_attempts,
                                        use_image_if_no_bounding_boxes)

converter sampleDistortedBoundingBoxV2ToOut*[oT: oall](op: SampleDistortedBoundingBoxV2[oT]): oT {.inline.} = return op.output

