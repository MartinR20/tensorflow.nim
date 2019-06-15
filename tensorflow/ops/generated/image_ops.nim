import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iAdjustContrast(root: Scope, images: Out, contrast_factor: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AdjustContrast(*#, #, #)".}

proc iAdjustHue(root: Scope, images: Out, delta: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AdjustHue(*#, #, #)".}

proc iAdjustSaturation(root: Scope, images: Out, scale: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AdjustSaturation(*#, #, #)".}

proc iCropAndResize(root: Scope, image: Out, boxes: Out, box_ind: Out, crop_size: Out, attrs: CropAndResizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResize(*#, #, #, #, #, #)".}

proc iCropAndResizeGradBoxes(root: Scope, grads: Out, image: Out, boxes: Out, box_ind: Out, attrs: CropAndResizeGradBoxesAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResizeGradBoxes(*#, #, #, #, #, #)".}

proc iCropAndResizeGradImage(root: Scope, grads: Out, boxes: Out, box_ind: Out, image_size: Out, T: core.DType, attrs: CropAndResizeGradImageAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResizeGradImage(*#, #, #, #, #, #, #)".}

proc iDecodeAndCropJpeg(root: Scope, contents: Out, crop_window: Out, attrs: DecodeAndCropJpegAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeAndCropJpeg(*#, #, #, #)".}

proc iDecodeBmp(root: Scope, contents: Out, attrs: DecodeBmpAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeBmp(*#, #, #)".}

proc iDecodeGif(root: Scope, contents: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeGif(*#, #)".}

proc iDecodeJpeg(root: Scope, contents: Out, attrs: DecodeJpegAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeJpeg(*#, #, #)".}

proc iDecodePng(root: Scope, contents: Out, attrs: DecodePngAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodePng(*#, #, #)".}

proc iDrawBoundingBoxes(root: Scope, images: Out, boxes: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DrawBoundingBoxes(*#, #, #)".}

proc iEncodeJpeg(root: Scope, image: Out, attrs: EncodeJpegAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodeJpeg(*#, #, #)".}

proc iEncodePng(root: Scope, image: Out, attrs: EncodePngAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodePng(*#, #, #)".}

proc iExtractGlimpse(root: Scope, input: Out, size: Out, offsets: Out, attrs: ExtractGlimpseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractGlimpse(*#, #, #, #, #)".}

proc iExtractJpegShape(root: Scope, contents: Out, attrs: ExtractJpegShapeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractJpegShape(*#, #, #)".}

proc iHSVToRGB(root: Scope, images: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::HSVToRGB(*#, #)".}

proc iQuantizedResizeBilinear(root: Scope, images: Out, size: Out, min: Out, max: Out, attrs: QuantizedResizeBilinearAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedResizeBilinear(*#, #, #, #, #, #)".}

proc iRGBToHSV(root: Scope, images: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RGBToHSV(*#, #)".}

proc iResizeArea(root: Scope, images: Out, size: Out, attrs: ResizeAreaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeArea(*#, #, #, #)".}

proc iResizeBicubic(root: Scope, images: Out, size: Out, attrs: ResizeBicubicAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeBicubic(*#, #, #, #)".}

proc iResizeBilinear(root: Scope, images: Out, size: Out, attrs: ResizeBilinearAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeBilinear(*#, #, #, #)".}

proc iResizeNearestNeighbor(root: Scope, images: Out, size: Out, attrs: ResizeNearestNeighborAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeNearestNeighbor(*#, #, #, #)".}

proc iSampleDistortedBoundingBox(root: Scope, image_size: Out, bounding_boxes: Out, attrs: SampleDistortedBoundingBoxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBox(*#, #, #, #)".}

proc iSampleDistortedBoundingBoxV2(root: Scope, image_size: Out, bounding_boxes: Out, min_object_covered: Out, attrs: SampleDistortedBoundingBoxV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBoxV2(*#, #, #, #, #)".}

proc AdjustContrast(root: Scope, images: Out, contrast_factor: Out): Out =
  iAdjustContrast(root, images, contrast_factor)

proc AdjustHue(root: Scope, images: Out, delta: Out): Out =
  iAdjustHue(root, images, delta)

proc AdjustSaturation(root: Scope, images: Out, scale: Out): Out =
  iAdjustSaturation(root, images, scale)

proc CropAndResize(root: Scope, image: Out, boxes: Out, box_ind: Out, crop_size: Out, attrs: CropAndResizeAttrs): Out =
  iCropAndResize(root, image, boxes, box_ind, crop_size, attrs)

proc CropAndResize(root: Scope, image: Out, boxes: Out, box_ind: Out, crop_size: Out, extrapolationValue = none(float), mmethod = none(string)): Out =
  var attrs = CropAndResizeAttrs()

  if extrapolationValue.isSome:
    attrs = attrs.ExtrapolationValue(extrapolationValue.get())
  if mmethod.isSome:
    attrs = attrs.Method(newCPPString(mmethod.get()))

  return CropAndResize(root, image, boxes, box_ind, crop_size, attrs)

proc CropAndResizeGradBoxes(root: Scope, grads: Out, image: Out, boxes: Out, box_ind: Out, attrs: CropAndResizeGradBoxesAttrs): Out =
  iCropAndResizeGradBoxes(root, grads, image, boxes, box_ind, attrs)

proc CropAndResizeGradBoxes(root: Scope, grads: Out, image: Out, boxes: Out, box_ind: Out, mmethod = none(string)): Out =
  var attrs = CropAndResizeGradBoxesAttrs()

  if mmethod.isSome:
    attrs = attrs.Method(newCPPString(mmethod.get()))

  return CropAndResizeGradBoxes(root, grads, image, boxes, box_ind, attrs)

proc CropAndResizeGradImage(root: Scope, grads: Out, boxes: Out, box_ind: Out, image_size: Out, T: core.DType, attrs: CropAndResizeGradImageAttrs): Out =
  iCropAndResizeGradImage(root, grads, boxes, box_ind, image_size, T, attrs)

proc CropAndResizeGradImage(root: Scope, grads: Out, boxes: Out, box_ind: Out, image_size: Out, T: core.DType, mmethod = none(string)): Out =
  var attrs = CropAndResizeGradImageAttrs()

  if mmethod.isSome:
    attrs = attrs.Method(newCPPString(mmethod.get()))

  return CropAndResizeGradImage(root, grads, boxes, box_ind, image_size, T, attrs)

proc DecodeAndCropJpeg(root: Scope, contents: Out, crop_window: Out, attrs: DecodeAndCropJpegAttrs): Out =
  iDecodeAndCropJpeg(root, contents, crop_window, attrs)

proc DecodeAndCropJpeg(root: Scope, contents: Out, crop_window: Out, acceptableFraction = none(float), channels = none(int), dctMethod = none(string), fancyUpscaling = none(bool), ratio = none(int), tryRecoverTruncated = none(bool)): Out =
  var attrs = DecodeAndCropJpegAttrs()

  if acceptableFraction.isSome:
    attrs = attrs.AcceptableFraction(acceptableFraction.get())
  if channels.isSome:
    attrs = attrs.Channels(channels.get())
  if dctMethod.isSome:
    attrs = attrs.DctMethod(newCPPString(dctMethod.get()))
  if fancyUpscaling.isSome:
    attrs = attrs.FancyUpscaling(fancyUpscaling.get())
  if ratio.isSome:
    attrs = attrs.Ratio(ratio.get())
  if tryRecoverTruncated.isSome:
    attrs = attrs.TryRecoverTruncated(tryRecoverTruncated.get())

  return DecodeAndCropJpeg(root, contents, crop_window, attrs)

proc DecodeBmp(root: Scope, contents: Out, attrs: DecodeBmpAttrs): Out =
  iDecodeBmp(root, contents, attrs)

proc DecodeBmp(root: Scope, contents: Out, channels = none(int)): Out =
  var attrs = DecodeBmpAttrs()

  if channels.isSome:
    attrs = attrs.Channels(channels.get())

  return DecodeBmp(root, contents, attrs)

proc DecodeGif(root: Scope, contents: Out): Out =
  iDecodeGif(root, contents)

proc DecodeJpeg(root: Scope, contents: Out, attrs: DecodeJpegAttrs): Out =
  iDecodeJpeg(root, contents, attrs)

proc DecodeJpeg(root: Scope, contents: Out, acceptableFraction = none(float), channels = none(int), dctMethod = none(string), fancyUpscaling = none(bool), ratio = none(int), tryRecoverTruncated = none(bool)): Out =
  var attrs = DecodeJpegAttrs()

  if acceptableFraction.isSome:
    attrs = attrs.AcceptableFraction(acceptableFraction.get())
  if channels.isSome:
    attrs = attrs.Channels(channels.get())
  if dctMethod.isSome:
    attrs = attrs.DctMethod(newCPPString(dctMethod.get()))
  if fancyUpscaling.isSome:
    attrs = attrs.FancyUpscaling(fancyUpscaling.get())
  if ratio.isSome:
    attrs = attrs.Ratio(ratio.get())
  if tryRecoverTruncated.isSome:
    attrs = attrs.TryRecoverTruncated(tryRecoverTruncated.get())

  return DecodeJpeg(root, contents, attrs)

proc DecodePng(root: Scope, contents: Out, attrs: DecodePngAttrs): Out =
  iDecodePng(root, contents, attrs)

proc DecodePng(root: Scope, contents: Out, channels = none(int), dtype = none(core.DType)): Out =
  var attrs = DecodePngAttrs()

  if channels.isSome:
    attrs = attrs.Channels(channels.get())
  if dtype.isSome:
    attrs = attrs.Dtype(dtype.get())

  return DecodePng(root, contents, attrs)

proc DrawBoundingBoxes(root: Scope, images: Out, boxes: Out): Out =
  iDrawBoundingBoxes(root, images, boxes)

proc EncodeJpeg(root: Scope, image: Out, attrs: EncodeJpegAttrs): Out =
  iEncodeJpeg(root, image, attrs)

proc EncodeJpeg(root: Scope, image: Out, chromaDownsampling = none(bool), densityUnit = none(string), format = none(string), optimizeSize = none(bool), progressive = none(bool), quality = none(int), xDensity = none(int), xmpMetadata = none(string), yDensity = none(int)): Out =
  var attrs = EncodeJpegAttrs()

  if chromaDownsampling.isSome:
    attrs = attrs.ChromaDownsampling(chromaDownsampling.get())
  if densityUnit.isSome:
    attrs = attrs.DensityUnit(newCPPString(densityUnit.get()))
  if format.isSome:
    attrs = attrs.Format(newCPPString(format.get()))
  if optimizeSize.isSome:
    attrs = attrs.OptimizeSize(optimizeSize.get())
  if progressive.isSome:
    attrs = attrs.Progressive(progressive.get())
  if quality.isSome:
    attrs = attrs.Quality(quality.get())
  if xDensity.isSome:
    attrs = attrs.XDensity(xDensity.get())
  if xmpMetadata.isSome:
    attrs = attrs.XmpMetadata(newCPPString(xmpMetadata.get()))
  if yDensity.isSome:
    attrs = attrs.YDensity(yDensity.get())

  return EncodeJpeg(root, image, attrs)

proc EncodePng(root: Scope, image: Out, attrs: EncodePngAttrs): Out =
  iEncodePng(root, image, attrs)

proc EncodePng(root: Scope, image: Out, compression = none(int)): Out =
  var attrs = EncodePngAttrs()

  if compression.isSome:
    attrs = attrs.Compression(compression.get())

  return EncodePng(root, image, attrs)

proc ExtractGlimpse(root: Scope, input: Out, size: Out, offsets: Out, attrs: ExtractGlimpseAttrs): Out =
  iExtractGlimpse(root, input, size, offsets, attrs)

proc ExtractGlimpse(root: Scope, input: Out, size: Out, offsets: Out, centered = none(bool), normalized = none(bool), uniformNoise = none(bool)): Out =
  var attrs = ExtractGlimpseAttrs()

  if centered.isSome:
    attrs = attrs.Centered(centered.get())
  if normalized.isSome:
    attrs = attrs.Normalized(normalized.get())
  if uniformNoise.isSome:
    attrs = attrs.UniformNoise(uniformNoise.get())

  return ExtractGlimpse(root, input, size, offsets, attrs)

proc ExtractJpegShape(root: Scope, contents: Out, attrs: ExtractJpegShapeAttrs): Out =
  iExtractJpegShape(root, contents, attrs)

proc ExtractJpegShape(root: Scope, contents: Out, outputType = none(core.DType)): Out =
  var attrs = ExtractJpegShapeAttrs()

  if outputType.isSome:
    attrs = attrs.OutputType(outputType.get())

  return ExtractJpegShape(root, contents, attrs)

proc HSVToRGB(root: Scope, images: Out): Out =
  iHSVToRGB(root, images)

proc QuantizedResizeBilinear(root: Scope, images: Out, size: Out, min: Out, max: Out, attrs: QuantizedResizeBilinearAttrs): Out =
  iQuantizedResizeBilinear(root, images, size, min, max, attrs)

proc QuantizedResizeBilinear(root: Scope, images: Out, size: Out, min: Out, max: Out, alignCorners = none(bool)): Out =
  var attrs = QuantizedResizeBilinearAttrs()

  if alignCorners.isSome:
    attrs = attrs.AlignCorners(alignCorners.get())

  return QuantizedResizeBilinear(root, images, size, min, max, attrs)

proc RGBToHSV(root: Scope, images: Out): Out =
  iRGBToHSV(root, images)

proc ResizeArea(root: Scope, images: Out, size: Out, attrs: ResizeAreaAttrs): Out =
  iResizeArea(root, images, size, attrs)

proc ResizeArea(root: Scope, images: Out, size: Out, alignCorners = none(bool)): Out =
  var attrs = ResizeAreaAttrs()

  if alignCorners.isSome:
    attrs = attrs.AlignCorners(alignCorners.get())

  return ResizeArea(root, images, size, attrs)

proc ResizeBicubic(root: Scope, images: Out, size: Out, attrs: ResizeBicubicAttrs): Out =
  iResizeBicubic(root, images, size, attrs)

proc ResizeBicubic(root: Scope, images: Out, size: Out, alignCorners = none(bool)): Out =
  var attrs = ResizeBicubicAttrs()

  if alignCorners.isSome:
    attrs = attrs.AlignCorners(alignCorners.get())

  return ResizeBicubic(root, images, size, attrs)

proc ResizeBilinear(root: Scope, images: Out, size: Out, attrs: ResizeBilinearAttrs): Out =
  iResizeBilinear(root, images, size, attrs)

proc ResizeBilinear(root: Scope, images: Out, size: Out, alignCorners = none(bool)): Out =
  var attrs = ResizeBilinearAttrs()

  if alignCorners.isSome:
    attrs = attrs.AlignCorners(alignCorners.get())

  return ResizeBilinear(root, images, size, attrs)

proc ResizeNearestNeighbor(root: Scope, images: Out, size: Out, attrs: ResizeNearestNeighborAttrs): Out =
  iResizeNearestNeighbor(root, images, size, attrs)

proc ResizeNearestNeighbor(root: Scope, images: Out, size: Out, alignCorners = none(bool)): Out =
  var attrs = ResizeNearestNeighborAttrs()

  if alignCorners.isSome:
    attrs = attrs.AlignCorners(alignCorners.get())

  return ResizeNearestNeighbor(root, images, size, attrs)

proc SampleDistortedBoundingBox(root: Scope, image_size: Out, bounding_boxes: Out, attrs: SampleDistortedBoundingBoxAttrs): Out =
  iSampleDistortedBoundingBox(root, image_size, bounding_boxes, attrs)

proc SampleDistortedBoundingBox(root: Scope, image_size: Out, bounding_boxes: Out, areaRange = none(ArraySlice[float]), aspectRatioRange = none(ArraySlice[float]), maxAttempts = none(int), minObjectCovered = none(float), seed = none(int), seed2 = none(int), useImageIfNoBoundingBoxes = none(bool)): Out =
  var attrs = SampleDistortedBoundingBoxAttrs()

  if areaRange.isSome:
    attrs = attrs.AreaRange(areaRange.get())
  if aspectRatioRange.isSome:
    attrs = attrs.AspectRatioRange(aspectRatioRange.get())
  if maxAttempts.isSome:
    attrs = attrs.MaxAttempts(maxAttempts.get())
  if minObjectCovered.isSome:
    attrs = attrs.MinObjectCovered(minObjectCovered.get())
  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())
  if useImageIfNoBoundingBoxes.isSome:
    attrs = attrs.UseImageIfNoBoundingBoxes(useImageIfNoBoundingBoxes.get())

  return SampleDistortedBoundingBox(root, image_size, bounding_boxes, attrs)

proc SampleDistortedBoundingBoxV2(root: Scope, image_size: Out, bounding_boxes: Out, min_object_covered: Out, attrs: SampleDistortedBoundingBoxV2Attrs): Out =
  iSampleDistortedBoundingBoxV2(root, image_size, bounding_boxes, min_object_covered, attrs)

proc SampleDistortedBoundingBoxV2(root: Scope, image_size: Out, bounding_boxes: Out, min_object_covered: Out, areaRange = none(ArraySlice[float]), aspectRatioRange = none(ArraySlice[float]), maxAttempts = none(int), seed = none(int), seed2 = none(int), useImageIfNoBoundingBoxes = none(bool)): Out =
  var attrs = SampleDistortedBoundingBoxV2Attrs()

  if areaRange.isSome:
    attrs = attrs.AreaRange(areaRange.get())
  if aspectRatioRange.isSome:
    attrs = attrs.AspectRatioRange(aspectRatioRange.get())
  if maxAttempts.isSome:
    attrs = attrs.MaxAttempts(maxAttempts.get())
  if seed.isSome:
    attrs = attrs.Seed(seed.get())
  if seed2.isSome:
    attrs = attrs.Seed2(seed2.get())
  if useImageIfNoBoundingBoxes.isSome:
    attrs = attrs.UseImageIfNoBoundingBoxes(useImageIfNoBoundingBoxes.get())

  return SampleDistortedBoundingBoxV2(root, image_size, bounding_boxes, min_object_covered, attrs)

export AdjustContrast,
       AdjustHue,
       AdjustSaturation,
       CropAndResize,
       CropAndResizeGradBoxes,
       CropAndResizeGradImage,
       DecodeAndCropJpeg,
       DecodeBmp,
       DecodeGif,
       DecodeJpeg,
       DecodePng,
       DrawBoundingBoxes,
       EncodeJpeg,
       EncodePng,
       ExtractGlimpse,
       ExtractJpegShape,
       HSVToRGB,
       QuantizedResizeBilinear,
       RGBToHSV,
       ResizeArea,
       ResizeBicubic,
       ResizeBilinear,
       ResizeNearestNeighbor,
       SampleDistortedBoundingBox,
       SampleDistortedBoundingBoxV2