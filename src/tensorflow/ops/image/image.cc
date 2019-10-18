#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/image/image.h"

AdjustContrast::AdjustContrast(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input contrast_factor, 
           tensorflow::Input min_value, 
           tensorflow::Input max_value) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _contrast_factor = ::tensorflow::ops::AsNodeOut(scope, contrast_factor);
      if (!scope.ok())
          return;
      auto _min_value = ::tensorflow::ops::AsNodeOut(scope, min_value);
      if (!scope.ok())
          return;
      auto _max_value = ::tensorflow::ops::AsNodeOut(scope, max_value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AdjustContrast");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AdjustContrast")
                                   .Input(_images)
                                   .Input(_contrast_factor)
                                   .Input(_min_value)
                                   .Input(_max_value)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AdjustContrastv2::AdjustContrastv2(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input contrast_factor) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _contrast_factor = ::tensorflow::ops::AsNodeOut(scope, contrast_factor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AdjustContrastv2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AdjustContrastv2")
                                   .Input(_images)
                                   .Input(_contrast_factor)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AdjustHue::AdjustHue(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input delta) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _delta = ::tensorflow::ops::AsNodeOut(scope, delta);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AdjustHue");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AdjustHue")
                                   .Input(_images)
                                   .Input(_delta)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AdjustSaturation::AdjustSaturation(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input scale) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _scale = ::tensorflow::ops::AsNodeOut(scope, scale);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AdjustSaturation");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AdjustSaturation")
                                   .Input(_images)
                                   .Input(_scale)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CropAndResize::CropAndResize(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::Input crop_size, 
           float extrapolation_value, 
           tensorflow::string method) {
      if (!scope.ok())
          return;
      auto _image = ::tensorflow::ops::AsNodeOut(scope, image);
      if (!scope.ok())
          return;
      auto _boxes = ::tensorflow::ops::AsNodeOut(scope, boxes);
      if (!scope.ok())
          return;
      auto _box_ind = ::tensorflow::ops::AsNodeOut(scope, box_ind);
      if (!scope.ok())
          return;
      auto _crop_size = ::tensorflow::ops::AsNodeOut(scope, crop_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CropAndResize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CropAndResize")
                                   .Input(_image)
                                   .Input(_boxes)
                                   .Input(_box_ind)
                                   .Input(_crop_size)
                                   .Attr("extrapolation_value", extrapolation_value)
                                   .Attr("method", method)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CropAndResizeGradImage::CropAndResizeGradImage(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::Input image_size, 
           tensorflow::DataType T, 
           tensorflow::string method) {
      if (!scope.ok())
          return;
      auto _grads = ::tensorflow::ops::AsNodeOut(scope, grads);
      if (!scope.ok())
          return;
      auto _boxes = ::tensorflow::ops::AsNodeOut(scope, boxes);
      if (!scope.ok())
          return;
      auto _box_ind = ::tensorflow::ops::AsNodeOut(scope, box_ind);
      if (!scope.ok())
          return;
      auto _image_size = ::tensorflow::ops::AsNodeOut(scope, image_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CropAndResizeGradImage");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CropAndResizeGradImage")
                                   .Input(_grads)
                                   .Input(_boxes)
                                   .Input(_box_ind)
                                   .Input(_image_size)
                                   .Attr("T", T)
                                   .Attr("method", method)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeAndCropJpeg::DecodeAndCropJpeg(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::Input crop_window, 
           tensorflow::string dct_method, 
           int64_t channels, 
           int64_t ratio, 
           bool fancy_upscaling, 
           bool try_recover_truncated, 
           float acceptable_fraction) {
      if (!scope.ok())
          return;
      auto _contents = ::tensorflow::ops::AsNodeOut(scope, contents);
      if (!scope.ok())
          return;
      auto _crop_window = ::tensorflow::ops::AsNodeOut(scope, crop_window);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeAndCropJpeg");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeAndCropJpeg")
                                   .Input(_contents)
                                   .Input(_crop_window)
                                   .Attr("dct_method", dct_method)
                                   .Attr("channels", channels)
                                   .Attr("ratio", ratio)
                                   .Attr("fancy_upscaling", fancy_upscaling)
                                   .Attr("try_recover_truncated", try_recover_truncated)
                                   .Attr("acceptable_fraction", acceptable_fraction)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeBmp::DecodeBmp(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t channels) {
      if (!scope.ok())
          return;
      auto _contents = ::tensorflow::ops::AsNodeOut(scope, contents);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeBmp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeBmp")
                                   .Input(_contents)
                                   .Attr("channels", channels)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeCSV::DecodeCSV(tensorflow::Scope& scope, 
           tensorflow::Input records, 
           tensorflow::InputList record_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> OUT_TYPE, 
           tensorflow::string na_value, 
           tensorflow::gtl::ArraySlice<int64_t> select_cols, 
           tensorflow::string field_delim, 
           bool use_quote_delim) {
      if (!scope.ok())
          return;
      auto _records = ::tensorflow::ops::AsNodeOut(scope, records);
      if (!scope.ok())
          return;
      auto _record_defaults = ::tensorflow::ops::AsNodeOutList(scope, record_defaults);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeCSV");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeCSV")
                                   .Input(_records)
                                   .Input(_record_defaults)
                                   .Attr("OUT_TYPE", OUT_TYPE)
                                   .Attr("na_value", na_value)
                                   .Attr("select_cols", select_cols)
                                   .Attr("field_delim", field_delim)
                                   .Attr("use_quote_delim", use_quote_delim)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

DecodeGif::DecodeGif(tensorflow::Scope& scope, 
           tensorflow::Input contents) {
      if (!scope.ok())
          return;
      auto _contents = ::tensorflow::ops::AsNodeOut(scope, contents);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeGif");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeGif")
                                   .Input(_contents)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeJpeg::DecodeJpeg(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::string dct_method, 
           int64_t channels, 
           int64_t ratio, 
           bool fancy_upscaling, 
           bool try_recover_truncated, 
           float acceptable_fraction) {
      if (!scope.ok())
          return;
      auto _contents = ::tensorflow::ops::AsNodeOut(scope, contents);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeJpeg");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeJpeg")
                                   .Input(_contents)
                                   .Attr("dct_method", dct_method)
                                   .Attr("channels", channels)
                                   .Attr("ratio", ratio)
                                   .Attr("fancy_upscaling", fancy_upscaling)
                                   .Attr("try_recover_truncated", try_recover_truncated)
                                   .Attr("acceptable_fraction", acceptable_fraction)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodePng::DecodePng(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t channels, 
           tensorflow::DataType dtype) {
      if (!scope.ok())
          return;
      auto _contents = ::tensorflow::ops::AsNodeOut(scope, contents);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodePng");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodePng")
                                   .Input(_contents)
                                   .Attr("channels", channels)
                                   .Attr("dtype", dtype)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DecodeRaw::DecodeRaw(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::DataType out_type, 
           bool little_endian) {
      if (!scope.ok())
          return;
      auto _bytes = ::tensorflow::ops::AsNodeOut(scope, bytes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DecodeRaw");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DecodeRaw")
                                   .Input(_bytes)
                                   .Attr("out_type", out_type)
                                   .Attr("little_endian", little_endian)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DrawBoundingBoxes::DrawBoundingBoxes(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input boxes, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _boxes = ::tensorflow::ops::AsNodeOut(scope, boxes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DrawBoundingBoxes");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DrawBoundingBoxes")
                                   .Input(_images)
                                   .Input(_boxes)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EncodeJpeg::EncodeJpeg(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::string format, 
           tensorflow::string xmp_metadata, 
           int64_t quality, 
           bool progressive, 
           bool optimize_size, 
           bool chroma_downsampling, 
           tensorflow::string density_unit, 
           int64_t x_density, 
           int64_t y_density) {
      if (!scope.ok())
          return;
      auto _image = ::tensorflow::ops::AsNodeOut(scope, image);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EncodeJpeg");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EncodeJpeg")
                                   .Input(_image)
                                   .Attr("format", format)
                                   .Attr("xmp_metadata", xmp_metadata)
                                   .Attr("quality", quality)
                                   .Attr("progressive", progressive)
                                   .Attr("optimize_size", optimize_size)
                                   .Attr("chroma_downsampling", chroma_downsampling)
                                   .Attr("density_unit", density_unit)
                                   .Attr("x_density", x_density)
                                   .Attr("y_density", y_density)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

EncodePng::EncodePng(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           int64_t compression) {
      if (!scope.ok())
          return;
      auto _image = ::tensorflow::ops::AsNodeOut(scope, image);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("EncodePng");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "EncodePng")
                                   .Input(_image)
                                   .Attr("compression", compression)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExtractGlimpse::ExtractGlimpse(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input size, 
           tensorflow::Input offsets, 
           bool centered, 
           bool normalized, 
           bool uniform_noise) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      if (!scope.ok())
          return;
      auto _offsets = ::tensorflow::ops::AsNodeOut(scope, offsets);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExtractGlimpse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExtractGlimpse")
                                   .Input(_input)
                                   .Input(_size)
                                   .Input(_offsets)
                                   .Attr("centered", centered)
                                   .Attr("normalized", normalized)
                                   .Attr("uniform_noise", uniform_noise)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExtractImagePatches::ExtractImagePatches(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::gtl::ArraySlice<int64_t> ksizes, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExtractImagePatches");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExtractImagePatches")
                                   .Input(_images)
                                   .Attr("ksizes", ksizes)
                                   .Attr("strides", strides)
                                   .Attr("rates", rates)
                                   .Attr("padding", padding)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ExtractJpegShape::ExtractJpegShape(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::DataType output_type) {
      if (!scope.ok())
          return;
      auto _contents = ::tensorflow::ops::AsNodeOut(scope, contents);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ExtractJpegShape");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ExtractJpegShape")
                                   .Input(_contents)
                                   .Attr("output_type", output_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

HSVToRGB::HSVToRGB(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("HSVToRGB");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "HSVToRGB")
                                   .Input(_images)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NonMaxSuppression::NonMaxSuppression(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           float iou_threshold) {
      if (!scope.ok())
          return;
      auto _boxes = ::tensorflow::ops::AsNodeOut(scope, boxes);
      if (!scope.ok())
          return;
      auto _scores = ::tensorflow::ops::AsNodeOut(scope, scores);
      if (!scope.ok())
          return;
      auto _max_output_size = ::tensorflow::ops::AsNodeOut(scope, max_output_size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NonMaxSuppression");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NonMaxSuppression")
                                   .Input(_boxes)
                                   .Input(_scores)
                                   .Input(_max_output_size)
                                   .Attr("iou_threshold", iou_threshold)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NonMaxSuppressionV2::NonMaxSuppressionV2(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold) {
      if (!scope.ok())
          return;
      auto _boxes = ::tensorflow::ops::AsNodeOut(scope, boxes);
      if (!scope.ok())
          return;
      auto _scores = ::tensorflow::ops::AsNodeOut(scope, scores);
      if (!scope.ok())
          return;
      auto _max_output_size = ::tensorflow::ops::AsNodeOut(scope, max_output_size);
      if (!scope.ok())
          return;
      auto _iou_threshold = ::tensorflow::ops::AsNodeOut(scope, iou_threshold);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NonMaxSuppressionV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NonMaxSuppressionV2")
                                   .Input(_boxes)
                                   .Input(_scores)
                                   .Input(_max_output_size)
                                   .Input(_iou_threshold)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedResizeBilinear::QuantizedResizeBilinear(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           tensorflow::DataType T, 
           bool align_corners) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      if (!scope.ok())
          return;
      auto _min = ::tensorflow::ops::AsNodeOut(scope, min);
      if (!scope.ok())
          return;
      auto _max = ::tensorflow::ops::AsNodeOut(scope, max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedResizeBilinear");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedResizeBilinear")
                                   .Input(_images)
                                   .Input(_size)
                                   .Input(_min)
                                   .Input(_max)
                                   .Attr("T", T)
                                   .Attr("align_corners", align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RGBToHSV::RGBToHSV(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RGBToHSV");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RGBToHSV")
                                   .Input(_images)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RandomCrop::RandomCrop(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::Input size, 
           tensorflow::DataType T, 
           int64_t seed, 
           int64_t seed2) {
      if (!scope.ok())
          return;
      auto _image = ::tensorflow::ops::AsNodeOut(scope, image);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RandomCrop");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RandomCrop")
                                   .Input(_image)
                                   .Input(_size)
                                   .Attr("T", T)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResizeArea::ResizeArea(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResizeArea");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResizeArea")
                                   .Input(_images)
                                   .Input(_size)
                                   .Attr("align_corners", align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResizeBicubic::ResizeBicubic(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResizeBicubic");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResizeBicubic")
                                   .Input(_images)
                                   .Input(_size)
                                   .Attr("align_corners", align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResizeBicubicGrad::ResizeBicubicGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input original_image, 
           tensorflow::DataType T, 
           bool align_corners) {
      if (!scope.ok())
          return;
      auto _grads = ::tensorflow::ops::AsNodeOut(scope, grads);
      if (!scope.ok())
          return;
      auto _original_image = ::tensorflow::ops::AsNodeOut(scope, original_image);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResizeBicubicGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResizeBicubicGrad")
                                   .Input(_grads)
                                   .Input(_original_image)
                                   .Attr("T", T)
                                   .Attr("align_corners", align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResizeBilinear::ResizeBilinear(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResizeBilinear");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResizeBilinear")
                                   .Input(_images)
                                   .Input(_size)
                                   .Attr("align_corners", align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResizeBilinearGrad::ResizeBilinearGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input original_image, 
           tensorflow::DataType T, 
           bool align_corners) {
      if (!scope.ok())
          return;
      auto _grads = ::tensorflow::ops::AsNodeOut(scope, grads);
      if (!scope.ok())
          return;
      auto _original_image = ::tensorflow::ops::AsNodeOut(scope, original_image);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResizeBilinearGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResizeBilinearGrad")
                                   .Input(_grads)
                                   .Input(_original_image)
                                   .Attr("T", T)
                                   .Attr("align_corners", align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResizeNearestNeighbor::ResizeNearestNeighbor(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           tensorflow::DataType T, 
           bool align_corners) {
      if (!scope.ok())
          return;
      auto _images = ::tensorflow::ops::AsNodeOut(scope, images);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResizeNearestNeighbor");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResizeNearestNeighbor")
                                   .Input(_images)
                                   .Input(_size)
                                   .Attr("T", T)
                                   .Attr("align_corners", align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResizeNearestNeighborGrad::ResizeNearestNeighborGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input size, 
           tensorflow::DataType T, 
           bool align_corners) {
      if (!scope.ok())
          return;
      auto _grads = ::tensorflow::ops::AsNodeOut(scope, grads);
      if (!scope.ok())
          return;
      auto _size = ::tensorflow::ops::AsNodeOut(scope, size);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResizeNearestNeighborGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResizeNearestNeighborGrad")
                                   .Input(_grads)
                                   .Input(_size)
                                   .Attr("T", T)
                                   .Attr("align_corners", align_corners)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SampleDistortedBoundingBox::SampleDistortedBoundingBox(tensorflow::Scope& scope, 
           tensorflow::Input image_size, 
           tensorflow::Input bounding_boxes, 
           tensorflow::DataType T, 
           int64_t seed, 
           int64_t seed2, 
           float min_object_covered, 
           tensorflow::gtl::ArraySlice<float> aspect_ratio_range, 
           tensorflow::gtl::ArraySlice<float> area_range, 
           int64_t max_attempts, 
           bool use_image_if_no_bounding_boxes) {
      if (!scope.ok())
          return;
      auto _image_size = ::tensorflow::ops::AsNodeOut(scope, image_size);
      if (!scope.ok())
          return;
      auto _bounding_boxes = ::tensorflow::ops::AsNodeOut(scope, bounding_boxes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SampleDistortedBoundingBox");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SampleDistortedBoundingBox")
                                   .Input(_image_size)
                                   .Input(_bounding_boxes)
                                   .Attr("T", T)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("min_object_covered", min_object_covered)
                                   .Attr("aspect_ratio_range", aspect_ratio_range)
                                   .Attr("area_range", area_range)
                                   .Attr("max_attempts", max_attempts)
                                   .Attr("use_image_if_no_bounding_boxes", use_image_if_no_bounding_boxes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SampleDistortedBoundingBoxV2::SampleDistortedBoundingBoxV2(tensorflow::Scope& scope, 
           tensorflow::Input image_size, 
           tensorflow::Input bounding_boxes, 
           tensorflow::Input min_object_covered, 
           tensorflow::DataType T, 
           int64_t seed, 
           int64_t seed2, 
           tensorflow::gtl::ArraySlice<float> aspect_ratio_range, 
           tensorflow::gtl::ArraySlice<float> area_range, 
           int64_t max_attempts, 
           bool use_image_if_no_bounding_boxes) {
      if (!scope.ok())
          return;
      auto _image_size = ::tensorflow::ops::AsNodeOut(scope, image_size);
      if (!scope.ok())
          return;
      auto _bounding_boxes = ::tensorflow::ops::AsNodeOut(scope, bounding_boxes);
      if (!scope.ok())
          return;
      auto _min_object_covered = ::tensorflow::ops::AsNodeOut(scope, min_object_covered);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SampleDistortedBoundingBoxV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SampleDistortedBoundingBoxV2")
                                   .Input(_image_size)
                                   .Input(_bounding_boxes)
                                   .Input(_min_object_covered)
                                   .Attr("T", T)
                                   .Attr("seed", seed)
                                   .Attr("seed2", seed2)
                                   .Attr("aspect_ratio_range", aspect_ratio_range)
                                   .Attr("area_range", area_range)
                                   .Attr("max_attempts", max_attempts)
                                   .Attr("use_image_if_no_bounding_boxes", use_image_if_no_bounding_boxes)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

