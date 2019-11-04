import ../../core, ../../utils
{.hint[XDeclaredButNotUsed]:off.}

type
    OpKernelContext* {.header: op_kernel,
                      importcpp: "tensorflow::OpKernelContext".} = object
    InferenceContext* {.header: shape_inference,
                       importcpp: "tensorflow::shape_inference::InferenceContext".} = object
    IteratorContext* {.header: dataset,
                      importcpp: "tensorflow::IteratorContext".} = object
    Mutex* {.header: op_kernel,
             importcpp: "tensorflow::mutex*".} = object


proc set_output*(ctx: ptr InferenceContext, i: int, status: Status) {.header: std_ops,
                                                                     importcpp: "#->set_output(#, #)".}

proc input*(ctx: ptr InferenceContext, i: int): Status {.header: std_ops,
                                                        importcpp: "#->input(#)".}

proc input_dtype*(ctx: ptr OpKernelContext, i: int): DType {.
    header: op_kernel,
    header: memory,
    importcpp: "#->input_dtype(#)".}

proc iinput[T](ctx: ptr OpKernelContext, name: cppstring, tensor: ref Tensor[T]): Status {.
    header: op_kernel,
    header: memory,
    importcpp: "#->input(#, (const tensorflow::Tensor**)#)".}

proc input*[T](ctx: ptr OpKernelContext, name: string, tensor: ref Tensor[T]): Status = 
    result = ctx.iinput(name.newCPPString, tensor)

proc iinput_ref_mutex(ctx: ptr OpKernelContext, name: cppstring, mutex: ref Mutex): Status {.
    header: op_kernel,
    header: memory,
    importcpp: "#->input_ref_mutex(#, #)".}

proc input_ref_mutex*(ctx: ptr OpKernelContext, name: string, mutex: ref Mutex): Status =
    result = ctx.iinput_ref_mutex(name.newCPPString, mutex)

proc lock*(mutex: Mutex) {.
    header: op_kernel,
    header: memory,
    importcpp: "tensorflow::mutex_lock lock(*#)".}

proc imutable_input[T](ctx: ptr OpKernelContext, name: cppstring, tensor: Tensor[T], lock_held: bool): Status {.
    header: op_kernel,
    header: memory,
    importcpp: "#->mutable_input(#, #, #)".}

proc mutable_input*[T](ctx: ptr OpKernelContext, name: string, tensor: Tensor[T], lock_held: bool): Status =
    result = ctx.imutable_input(newCPPString(name), tensor, lock_held)

proc output*(ctx: ptr OpKernelContext, i: int, T: type): Tensor[T] {.
    header: op_kernel,
    header: memory,
    importcpp: "(tensorflow::Tensor *)&#->output(#)".}

proc set_status*(ctx: ptr OpKernelContext, s: Status) {.
    header: op_kernel,
    header: memory,
    importcpp: "#->SetStatus(#)".}

proc set_output*[T](ctx: ptr OpKernelContext, i: int, ten: ref Tensor[T]) {.
    header: std_ops,
    importcpp: "#->set_output(#, **#)".}
    
proc set_output*[T](ctx: ptr OpKernelContext, i: int, ten: Tensor[T]) {.
    header: std_ops,
    importcpp: "#->set_output(#, *#)".}

proc allocate_output*[T](ctx: ptr OpKernelContext, i: int, shape: TensorShape, output: ref Tensor[T]): Status {.
    header: op_kernel,
    importcpp: "#->allocate_output(#, #, #)".}

proc OP_REQUIRES_OK*(ctx: ptr OpKernelContext, status: Status) {.header: op_kernel,
                                                                importcpp: "OP_REQUIRES_OK(#, #)".}
                                                            
proc allocator*(ctx: ptr IteratorContext): ptr Allocator {.
    header: dataset, 
    importcpp:"#->allocator({})".}