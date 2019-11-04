import 
  ../../core, ../gen,  makev2,  registerv2, register_context,
  macros, strutils, makeutils, tables, strformat
include ../../with

export 
  makev2,  registerv2, register_context,
  macros, strutils, makeutils, tables

const
    CPU*: string = "CPU"
    GPU*: string = "GPU"

proc makeOpKernel(exportName: string): NimNode =
  let cppSource =  "class " & exportName & "Op : public tensorflow::OpKernel {\n" &
                   "  public: \n" &
                   "    explicit " & exportName & "Op(tensorflow::OpKernelConstruction* context): tensorflow::OpKernel(context) {}\n" &
                   "    void Compute(tensorflow::OpKernelContext* context) override { " & exportName & "_Compute(context); }\n" &
                   "}; \n"

  result = newNimNode(nnkPragma)
            .add(newColonExpr(ident "emit", newStrLitNode cppSource))

var op_included* {.compileTime.}: bool
proc makeNewOpIncludes*(explicit = false): NimNode =
  if not op_included or explicit:
    const includes = "#include \"tensorflow/core/framework/op.h\" \n" & 
                     "#include \"tensorflow/core/framework/shape_inference.h\" \n" & 
                     "#include \"tensorflow/core/framework/common_shape_fns.h\" \n" & 
                     "#include \"tensorflow/core/framework/op_kernel.h\" \n" & 
                     "#include \"tensorflow/cc/framework/scope.h\" \n" & 
                     "#include \"tensorflow/core/framework/tensor.h\" \n" & 
                     "#include \"tensorflow/core/framework/tensor_shape.h\" \n" & 
                     "#include \"tensorflow/cc/ops/standard_ops.h\" \n" & 
                     "#include \"tensorflow/core/framework/types.h\" \n"
    op_included = true
  
    result = newNimNode(nnkPragma)
              .add(newColonExpr(ident "emit", newStrLitNode includes))
  else:
    result = newEmptyNode()

proc REGISTER_KERNEL_BUILDER*(exportName: string, device: string): NimNode =
  let cppSource = "REGISTER_KERNEL_BUILDER(Name(\"" & exportName & "\").Device(\"" & device & "\"), " & exportName & "Op);\n"
                
  result = newNimNode(nnkPragma)
            .add(newColonExpr(ident "emit", newStrLitNode cppSource))

macro tfexp*(device: string, fn: untyped): untyped =
    let exportName = $name(fn)
    
    var ddevice: string
    if $device != "CPU" and $device != "GPU":
        raise newException(ValueError, "Your requested device `" & $device & "` is not supported!")
    else:
        ddevice = $device
    
    result = newStmtList()

    fn[0] = ident exportName & "_Compute" # rename compute procedure
    fn.addPragma(newColonExpr(ident "exportc", newStrLitNode(exportName & "_Compute")))

    result.add makeNewOpIncludes()
    result.add fn
    result.add makeOpKernel(exportName)
    result.add REGISTER_KERNEL_BUILDER(exportName, ddevice)

    result = registerOp(result, exportName, repr fn)

when isMainModule:
    proc ZeroOut(ctx: ptr OpKernelContext) {.input:"to_zero: int32",
                                             output:"zeroed: int32",
                                             attr:"upto: list(int) = [0, 1, 2, 3]",
                                             setShapeFn: proc(ctx: ptr InferenceContext): Status = 
                                                             ctx.set_output(0, ctx.input(0))
                                                             return ok(),
                                             tfexp:CPU.} =
        let input_tensor = ctx.input(0, oint32)
        let input = input_tensor.flat()

        var output_tensor = gc Tensor[oint32]
        ctx.OP_REQUIRES_OK(ctx.allocate_output(0, input_tensor.shape, output_tensor))

        let output = output_tensor[].flat()

        let N = input.len
        for i in 0..N-1:
            output[i] = 0

        if N > 0: 
            output[0] = input[0]


    let scope = newRootScope()

    with scope:
      let ten = [[1,2,3,4],[8,7,6,4]].oint32
      let zeroed = zeroOut(ten)
      let sess = newSession()

      let o = sess.runSession(zeroed)
      echo o[0]
    