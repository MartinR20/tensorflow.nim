import ../core/core.nim
import ../utils/utils.nim

proc AdjustContrast(root: Scope, images: Out, contrast_factor: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AdjustContrast(*@)".}

proc AdjustHue(root: Scope, images: Out, delta: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AdjustHue(*@)".}

proc AdjustSaturation(root: Scope, images: Out, scale: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::AdjustSaturation(*@)".}

proc CropAndResize(root: Scope, image: Out, boxes: Out, box_ind: Out, crop_size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResize(*@)".}

proc CropAndResize(root: Scope, image: Out, boxes: Out, box_ind: Out, crop_size: Out, attrs: CropAndResizeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResize(*@)".}

proc CropAndResizeGradBoxes(root: Scope, grads: Out, image: Out, boxes: Out, box_ind: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResizeGradBoxes(*@)".}

proc CropAndResizeGradBoxes(root: Scope, grads: Out, image: Out, boxes: Out, box_ind: Out, attrs: CropAndResizeGradBoxesAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResizeGradBoxes(*@)".}

proc CropAndResizeGradImage(root: Scope, grads: Out, boxes: Out, box_ind: Out, image_size: Out, T: DType): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResizeGradImage(*@)".}

proc CropAndResizeGradImage(root: Scope, grads: Out, boxes: Out, box_ind: Out, image_size: Out, T: DType, attrs: CropAndResizeGradImageAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::CropAndResizeGradImage(*@)".}

proc DecodeAndCropJpeg(root: Scope, contents: Out, crop_window: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeAndCropJpeg(*@)".}

proc DecodeAndCropJpeg(root: Scope, contents: Out, crop_window: Out, attrs: DecodeAndCropJpegAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeAndCropJpeg(*@)".}

proc DecodeBmp(root: Scope, contents: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeBmp(*@)".}

proc DecodeBmp(root: Scope, contents: Out, attrs: DecodeBmpAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeBmp(*@)".}

proc DecodeGif(root: Scope, contents: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeGif(*@)".}

proc DecodeJpeg(root: Scope, contents: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeJpeg(*@)".}

proc DecodeJpeg(root: Scope, contents: Out, attrs: DecodeJpegAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodeJpeg(*@)".}

proc DecodePng(root: Scope, contents: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodePng(*@)".}

proc DecodePng(root: Scope, contents: Out, attrs: DecodePngAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::DecodePng(*@)".}

proc DrawBoundingBoxes(root: Scope, images: Out, boxes: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::DrawBoundingBoxes(*@)".}

proc EncodeJpeg(root: Scope, image: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodeJpeg(*@)".}

proc EncodeJpeg(root: Scope, image: Out, attrs: EncodeJpegAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodeJpeg(*@)".}

proc EncodePng(root: Scope, image: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodePng(*@)".}

proc EncodePng(root: Scope, image: Out, attrs: EncodePngAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::EncodePng(*@)".}

proc ExtractGlimpse(root: Scope, input: Out, size: Out, offsets: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractGlimpse(*@)".}

proc ExtractGlimpse(root: Scope, input: Out, size: Out, offsets: Out, attrs: ExtractGlimpseAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractGlimpse(*@)".}

proc ExtractJpegShape(root: Scope, contents: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractJpegShape(*@)".}

proc ExtractJpegShape(root: Scope, contents: Out, attrs: ExtractJpegShapeAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ExtractJpegShape(*@)".}

proc HSVToRGB(root: Scope, images: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::HSVToRGB(*@)".}

proc QuantizedResizeBilinear(root: Scope, images: Out, size: Out, min: Out, max: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedResizeBilinear(*@)".}

proc QuantizedResizeBilinear(root: Scope, images: Out, size: Out, min: Out, max: Out, attrs: QuantizedResizeBilinearAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::QuantizedResizeBilinear(*@)".}

proc RGBToHSV(root: Scope, images: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::RGBToHSV(*@)".}

proc ResizeArea(root: Scope, images: Out, size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeArea(*@)".}

proc ResizeArea(root: Scope, images: Out, size: Out, attrs: ResizeAreaAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeArea(*@)".}

proc ResizeBicubic(root: Scope, images: Out, size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeBicubic(*@)".}

proc ResizeBicubic(root: Scope, images: Out, size: Out, attrs: ResizeBicubicAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeBicubic(*@)".}

proc ResizeBilinear(root: Scope, images: Out, size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeBilinear(*@)".}

proc ResizeBilinear(root: Scope, images: Out, size: Out, attrs: ResizeBilinearAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeBilinear(*@)".}

proc ResizeNearestNeighbor(root: Scope, images: Out, size: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeNearestNeighbor(*@)".}

proc ResizeNearestNeighbor(root: Scope, images: Out, size: Out, attrs: ResizeNearestNeighborAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::ResizeNearestNeighbor(*@)".}

proc SampleDistortedBoundingBox(root: Scope, image_size: Out, bounding_boxes: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBox(*@)".}

proc SampleDistortedBoundingBox(root: Scope, image_size: Out, bounding_boxes: Out, attrs: SampleDistortedBoundingBoxAttrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBox(*@)".}

proc SampleDistortedBoundingBoxV2(root: Scope, image_size: Out, bounding_boxes: Out, min_object_covered: Out): Out {.header:std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBoxV2(*@)".}

proc SampleDistortedBoundingBoxV2(root: Scope, image_size: Out, bounding_boxes: Out, min_object_covered: Out, attrs: SampleDistortedBoundingBoxV2Attrs): Out {.header:std_ops, importcpp:"tensorflow::ops::SampleDistortedBoundingBoxV2(*@)".}

