import 
  ../../core, ../gen,  makev2,  registerv2, register_context,
  macros, strutils, makeutils, tables
include ../../with

const
    CPU*: string = "CPU"
    GPU*: string = "GPU"

proc makeOpKernel(exportName: string, funheader: NimNode): NimNode =
  let cppSource =  "\"\"class " & exportName & "Op : public tensorflow::OpKernel {\n" &
                    "  public: \n" &
                    "    explicit " & exportName & "Op(tensorflow::OpKernelConstruction* context): tensorflow::OpKernel(context) {}\n" &
                    "    void Compute(tensorflow::OpKernelContext* context) override { " & exportName & "_Compute(context); }\n" &
                    "}; \n\"\""

  insert(funheader, 1, parseStmt("{.emit:\"" & cppSource & "\".}"))
  return funheader

proc makeFun(body: NimNode, header: NimNode): NimNode =
  header[0].del(header[0].len-1, 1)
  insert(header[0], header[0].len, body)
  return header

proc makeExportFun(exportName: string, body: NimNode): NimNode =
  return makeFun(body,
                  parseStmt("proc export" & exportName & "(ctx: ptr OpKernelContext) {.exportc:\"" & exportName & "_Compute\".}")
                )

var op_included* {.compileTime.}: bool
proc makeNewOpIncludes*(funheader: NimNode, explicit = false): NimNode =
  if not op_included or explicit:
    var includes = "\"\"#include \"tensorflow/core/framework/op.h\" \n" & 
                   "#include \"tensorflow/core/framework/shape_inference.h\" \n" & 
                   "#include \"tensorflow/core/framework/common_shape_fns.h\" \n" & 
                   "#include \"tensorflow/core/framework/op_kernel.h\" \n" & 
                   "#include \"tensorflow/cc/framework/scope.h\" \n" & 
                   "#include \"tensorflow/core/framework/tensor.h\" \n" & 
                   "#include \"tensorflow/core/framework/tensor_shape.h\" \n" & 
                   "#include \"tensorflow/cc/ops/standard_ops.h\" \n" & 
                   "#include \"tensorflow/core/framework/types.h\" \n\"\""
    insert(funheader, 0, parseStmt("{.emit:\"" & includes & "\".}"))
    op_included = true
  
  return funheader

proc REGISTER_KERNEL_BUILDER*(exportName: string, device: string, funheader: NimNode): NimNode =
  let cppSource = "\"\"REGISTER_KERNEL_BUILDER(Name(\"" & exportName & "\").Device(\"" & device & "\"), " & exportName & "Op);\n\"\""
                
  insert(funheader, 1, parseStmt("{.emit:\"" & cppSource & "\".}"))
  return funheader

macro tfexp*(device: string, x: untyped): untyped =
    let exportName = $name(x)
    
    var ddevice: string
    if $device != "CPU" and $device != "GPU":
        raise newException(ValueError, "Your requested device `" & $device & "` is not supported!")
    else:
        ddevice = $device
    
    var funheader = makeExportFun(exportName, body(x))
    
    funheader = REGISTER_KERNEL_BUILDER(exportName, ddevice, funheader)
    funheader = makeOpKernel(exportName, funheader)
    funheader = makeNewOpIncludes(funheader)

    funheader = registerOp(funheader, exportName, repr x)

    return funheader

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
    