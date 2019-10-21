import 
    register_context, ../../core

proc scalarShape*(ctx: ptr InferenceContext): Status {.
    header:"tensorflow/core/framework/common_shape_fns.h",
    importcpp:"tensorflow::shape_inference::ScalarShape(#)".}