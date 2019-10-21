import ../../core, ../../utils
{.hint[XDeclaredButNotUsed]:off.}

type
    OpKernelContext* {.header: std_ops,
                      importcpp: "tensorflow::OpKernelContext".} = object
    InferenceContext* {.header: shape_inference,
                       importcpp: "tensorflow::shape_inference::InferenceContext".} = object
    IteratorContext* {.header: dataset,
                      importcpp: "tensorflow::IteratorContext".} = object


proc set_output*(ctx: ptr InferenceContext, i: int, status: Status) {.header: std_ops,
                                                                     importcpp: "#->set_output(#, #)".}

proc input*(ctx: ptr InferenceContext, i: int): Status {.header: std_ops,
                                                        importcpp: "#->input(#)".}

proc input*(ctx: ptr OpKernelContext, i: int, T: type): Tensor[T] {.
    header: op_kernel,
    header: memory,
    importcpp: "(tensorflow::Tensor *)&#->input(#)".}

proc output*(ctx: ptr OpKernelContext, i: int, T: type): Tensor[T] {.
    header: op_kernel,
    header: memory,
    importcpp: "(tensorflow::Tensor *)&#->output(#)".}

proc set_output*[T](ctx: ptr OpKernelContext, i: int, ten: ref Tensor[T]) {.
    header: std_ops,
    importcpp: "#->set_output(#, **#)".}

proc allocate_output*[T](ctx: ptr OpKernelContext, i: int, shape: TensorShape, output: ref Tensor[T]): Status {.
    header: op_kernel,
    importcpp: "#->allocate_output(#, #, #)".}

proc OP_REQUIRES_OK*(ctx: ptr OpKernelContext, status: Status) {.header: op_kernel,
                                                                importcpp: "OP_REQUIRES_OK(#, #)".}
                                                            
proc allocator*(ctx: ptr IteratorContext): ptr Allocator {.
    header: dataset, 
    importcpp:"#->allocator({})".}