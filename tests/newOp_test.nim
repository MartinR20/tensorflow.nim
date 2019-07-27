import ../tensorflow/ops/newop/newop
import ../tensorflow/core/core

proc ZeroOut(ctx: ptr OpKernelContext) {.input:"to_zero: int32",
                                         output:"zeroed: int32",
                                         setShapeFn: proc(ctx: ptr InferenceContext): Status = 
                                                        ctx.set_output(0, ctx.input(0))
                                                        return ok(),
                                         tfexport:CPU.} =
  let input_tensor  = ctx.input(0)
  let input = input_tensor.flat[int32](0)

  var output_tensor: Tensor
  OP_REQUIRES_OK(ctx, ctx.allocate_output(0, input_tensor.shape(), output_tensor))

  let output = output_tensor.flat[int32](0)

  let N = input.size()
  for i in 0..N-1:
      output[i] = 0

  if N > 0: 
      output[0] = input[0] 