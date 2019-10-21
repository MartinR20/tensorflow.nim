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
class AdjustContrast{
  public:
    AdjustContrast() {}
    AdjustContrast(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input contrast_factor, 
           tensorflow::Input min_value, 
           tensorflow::Input max_value);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class AdjustContrastv2{
  public:
    AdjustContrastv2() {}
    AdjustContrastv2(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input contrast_factor);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class AdjustHue{
  public:
    AdjustHue() {}
    AdjustHue(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input delta);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class AdjustSaturation{
  public:
    AdjustSaturation() {}
    AdjustSaturation(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input scale);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class CropAndResize{
  public:
    CropAndResize() {}
    CropAndResize(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::Input crop_size, 
           float extrapolation_value = 0.0, 
           tensorflow::string method = "bilinear");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class CropAndResizeGradImage{
  public:
    CropAndResizeGradImage() {}
    CropAndResizeGradImage(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input boxes, 
           tensorflow::Input box_ind, 
           tensorflow::Input image_size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           tensorflow::string method = "bilinear");
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodeAndCropJpeg{
  public:
    DecodeAndCropJpeg() {}
    DecodeAndCropJpeg(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::Input crop_window, 
           tensorflow::string dct_method, 
           int64_t channels = 0, 
           int64_t ratio = 1, 
           bool fancy_upscaling = true, 
           bool try_recover_truncated = false, 
           float acceptable_fraction = 1.0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodeBmp{
  public:
    DecodeBmp() {}
    DecodeBmp(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t channels = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodeCSV{
  public:
    DecodeCSV() {}
    DecodeCSV(tensorflow::Scope& scope, 
           tensorflow::Input records, 
           tensorflow::InputList record_defaults, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> OUT_TYPE, 
           tensorflow::string na_value, 
           tensorflow::gtl::ArraySlice<int64_t> select_cols, 
           tensorflow::string field_delim = ",", 
           bool use_quote_delim = true);
    tensorflow::Operation operation;
    tensorflow::OutputList output;
};

#pragma once
class DecodeGif{
  public:
    DecodeGif() {}
    DecodeGif(tensorflow::Scope& scope, 
           tensorflow::Input contents);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodeJpeg{
  public:
    DecodeJpeg() {}
    DecodeJpeg(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::string dct_method, 
           int64_t channels = 0, 
           int64_t ratio = 1, 
           bool fancy_upscaling = true, 
           bool try_recover_truncated = false, 
           float acceptable_fraction = 1.0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodePng{
  public:
    DecodePng() {}
    DecodePng(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           int64_t channels = 0, 
           tensorflow::DataType dtype = tensorflow::DT_UINT8);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DecodeRaw{
  public:
    DecodeRaw() {}
    DecodeRaw(tensorflow::Scope& scope, 
           tensorflow::Input bytes, 
           tensorflow::DataType out_type = tensorflow::DT_INVALID, 
           bool little_endian = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class DrawBoundingBoxes{
  public:
    DrawBoundingBoxes() {}
    DrawBoundingBoxes(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input boxes, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class EncodeJpeg{
  public:
    EncodeJpeg() {}
    EncodeJpeg(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::string format, 
           tensorflow::string xmp_metadata, 
           int64_t quality = 95, 
           bool progressive = false, 
           bool optimize_size = false, 
           bool chroma_downsampling = true, 
           tensorflow::string density_unit = "in", 
           int64_t x_density = 300, 
           int64_t y_density = 300);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class EncodePng{
  public:
    EncodePng() {}
    EncodePng(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           int64_t compression = -1);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExtractGlimpse{
  public:
    ExtractGlimpse() {}
    ExtractGlimpse(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input size, 
           tensorflow::Input offsets, 
           bool centered = true, 
           bool normalized = true, 
           bool uniform_noise = true);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExtractImagePatches{
  public:
    ExtractImagePatches() {}
    ExtractImagePatches(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::gtl::ArraySlice<int64_t> ksizes, 
           tensorflow::gtl::ArraySlice<int64_t> strides, 
           tensorflow::gtl::ArraySlice<int64_t> rates, 
           tensorflow::string padding, 
           tensorflow::DataType T = tensorflow::DT_INVALID);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ExtractJpegShape{
  public:
    ExtractJpegShape() {}
    ExtractJpegShape(tensorflow::Scope& scope, 
           tensorflow::Input contents, 
           tensorflow::DataType output_type = tensorflow::DT_INT32);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class HSVToRGB{
  public:
    HSVToRGB() {}
    HSVToRGB(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class NonMaxSuppression{
  public:
    NonMaxSuppression() {}
    NonMaxSuppression(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           float iou_threshold = 0.5);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class NonMaxSuppressionV2{
  public:
    NonMaxSuppressionV2() {}
    NonMaxSuppressionV2(tensorflow::Scope& scope, 
           tensorflow::Input boxes, 
           tensorflow::Input scores, 
           tensorflow::Input max_output_size, 
           tensorflow::Input iou_threshold);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class QuantizedResizeBilinear{
  public:
    QuantizedResizeBilinear() {}
    QuantizedResizeBilinear(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           tensorflow::Input min, 
           tensorflow::Input max, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RGBToHSV{
  public:
    RGBToHSV() {}
    RGBToHSV(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::DataType T = tensorflow::DT_FLOAT);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class RandomCrop{
  public:
    RandomCrop() {}
    RandomCrop(tensorflow::Scope& scope, 
           tensorflow::Input image, 
           tensorflow::Input size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t seed = 0, 
           int64_t seed2 = 0);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResizeArea{
  public:
    ResizeArea() {}
    ResizeArea(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResizeBicubic{
  public:
    ResizeBicubic() {}
    ResizeBicubic(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResizeBicubicGrad{
  public:
    ResizeBicubicGrad() {}
    ResizeBicubicGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input original_image, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResizeBilinear{
  public:
    ResizeBilinear() {}
    ResizeBilinear(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResizeBilinearGrad{
  public:
    ResizeBilinearGrad() {}
    ResizeBilinearGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input original_image, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResizeNearestNeighbor{
  public:
    ResizeNearestNeighbor() {}
    ResizeNearestNeighbor(tensorflow::Scope& scope, 
           tensorflow::Input images, 
           tensorflow::Input size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class ResizeNearestNeighborGrad{
  public:
    ResizeNearestNeighborGrad() {}
    ResizeNearestNeighborGrad(tensorflow::Scope& scope, 
           tensorflow::Input grads, 
           tensorflow::Input size, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           bool align_corners = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SampleDistortedBoundingBox{
  public:
    SampleDistortedBoundingBox() {}
    SampleDistortedBoundingBox(tensorflow::Scope& scope, 
           tensorflow::Input image_size, 
           tensorflow::Input bounding_boxes, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           float min_object_covered = 0.1000000014901161, 
           tensorflow::gtl::ArraySlice<float> aspect_ratio_range = {0.75, 1.330000042915344}, 
           tensorflow::gtl::ArraySlice<float> area_range = {0.05000000074505806, 1.0}, 
           int64_t max_attempts = 100, 
           bool use_image_if_no_bounding_boxes = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

#pragma once
class SampleDistortedBoundingBoxV2{
  public:
    SampleDistortedBoundingBoxV2() {}
    SampleDistortedBoundingBoxV2(tensorflow::Scope& scope, 
           tensorflow::Input image_size, 
           tensorflow::Input bounding_boxes, 
           tensorflow::Input min_object_covered, 
           tensorflow::DataType T = tensorflow::DT_INVALID, 
           int64_t seed = 0, 
           int64_t seed2 = 0, 
           tensorflow::gtl::ArraySlice<float> aspect_ratio_range = {0.75, 1.330000042915344}, 
           tensorflow::gtl::ArraySlice<float> area_range = {0.05000000074505806, 1.0}, 
           int64_t max_attempts = 100, 
           bool use_image_if_no_bounding_boxes = false);
    tensorflow::Operation operation;
    tensorflow::Output output;
};

