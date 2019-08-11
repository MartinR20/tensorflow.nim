import ../../core/core
import ../../utils/utils
{.hint[XDeclaredButNotUsed]:off.}

type
    OpKernelContext {.header: std_ops,
                      importcpp: "tensorflow::OpKernelContext".} = object
    InferenceContext {.header: shape_inference,
                       importcpp: "tensorflow::shape_inference::InferenceContext".} = object

proc set_output(ctx: ptr InferenceContext, i: int, status: Status) {.header: std_ops,
                                                                     importcpp: "#->set_output(#, #)".}

proc input(ctx: ptr InferenceContext, i: int): Status {.header: std_ops,
                                                        importcpp: "#->input(#)".}

proc input(ctx: ptr OpKernelContext, i: int): Tensor {.header: op_kernel,
                                                       header: memory,
                                                       importcpp: "std::make_shared<tensorflow::Tensor>(std::move(#->input(#)))".}

proc output(ctx: ptr OpKernelContext, i: int): Tensor {.header: op_kernel,
                                                        header: memory,
                                                        importcpp: "std::make_shared<tensorflow::Tensor>(std::move(#->output(#)))".}

proc set_output(ctx: ptr OpKernelContext, i: int, ten: Tensor) {.header: std_ops,
                                                                 importcpp: "#->set_output(#, *#)".}

proc allocate_output(ctx: ptr OpKernelContext, i: int, shape: TensorShape, output: Tensor): Status {.header: op_kernel,
                                                                                                     importcpp: "[&]() { auto _ctx = #; auto _i = #; auto _shape = #; tensorflow::Tensor* _tensorref = (tensorflow::Tensor*)(#.get()); return _ctx->allocate_output(_i, _shape, &_tensorref); } ()".}

proc OP_REQUIRES_OK(ctx: ptr OpKernelContext, status: Status) {.header: op_kernel,
                                                                importcpp: "OP_REQUIRES_OK(#, #)".}

export OpKernelContext,
       InferenceContext,
       set_output,
       input,
       output,
       set_output,
       allocate_output,
       OP_REQUIRES_OK