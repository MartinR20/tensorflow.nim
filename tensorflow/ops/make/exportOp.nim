import ../newop/newop,
       ../../core/core,
       ./arguments,
       ../generated,
       ./procdef,
       macros,
       strutils,
       makeutils

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

var op_included {.compileTime.}: bool
proc makeNewOpIncludes(funheader: NimNode, explicit = false): NimNode =
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

macro tfexp(device: string, x: untyped): untyped =
    let exportName = $name(x)
    
    var ddevice: string
    if $device != "CPU" and $device != "GPU":
        raise newException(ValueError, "Your requested device `" & $device & "` is not supported!")
    else:
        ddevice = $device
    
    var funheader = makeExportFun(exportName, body(x))
    
    if not lookUp.hasKey(exportName):
        raise newException(ValueError, "You didn't register any input or output for your function!")
    
    var def = new ProcDef
    def.name = exportName

    for pragma in lookUp[exportName].split("."):
        case pragma.fromTo(0, '('):
        of "Input":
            let dtype = pragma.rfromTo(':', '"').strip
            let nimT = if dtype.find("list") == -1: "Out" else: "OutList"

            if dict.hasKey(dtype):
                def.args.add Arg(iname: pragma.fromTo('"', ':'), 
                                iT: nimT, 
                                dtype: tfdict[dict[dtype]],
                                typeattr: "")
            else:
                def.args.add Arg(iname: pragma.fromTo('"', ':'), 
                                iT: nimT, 
                                dtype: DT_INVALID,
                                typeattr: dtype)
        of "Output":
            let dtype = pragma.rfromTo(':', '"').strip
            let nimT = if dtype.find("list") == -1: "Out" else: "OutList"

            if dict.hasKey(dtype):
                def.output = Arg(iname: pragma.fromTo('"', ':'), 
                                 iT: nimT, 
                                 dtype: tfdict[dict[dtype]],
                                 typeattr: "")
            else:
                def.output = Arg(iname: pragma.fromTo('"', ':'), 
                                 iT: nimT, 
                                 dtype: DT_INVALID,
                                 typeattr: dtype)
        of "Attr":
            var dtype: string 
            var default: string

            if pragma.find("=") != -1:
                default = pragma.rfromTo('=', '"').strip
                dtype = pragma.rfromTo(':', '=').strip
            else:
                dtype = pragma.rfromTo(':', '"').strip

            let allowedvalues = if pragma.find("{") != -1: pragma.fromTo('{', '}').replace(",", "|") else: ""

            def.attrs.add Attr(iname: pragma.fromTo('"', ':'), 
                                iT: dtype, 
                                nimdefault: default,
                                cppdefault: default.replace("[" ,"{").replace("]" ,"}"),
                                allowedvalues: allowedvalues)
        else:
            discard

    funheader = REGISTER_KERNEL_BUILDER(exportName, ddevice, funheader)
    funheader = makeOpKernel(exportName, funheader)
    funheader = REGISTER_OP(exportName, funheader)
    funheader = makeNewOpIncludes(funheader)

    let headerName = "test.h"
    let sourceName = "test.cc"
    let nimName =    "test.nim"

    let h = open(headerName, fmWrite)
    let cc = open(sourceName, fmWrite)
    let nnim = open(nimName, fmWrite)

    let cppsignature = makeCppSignature(def)
    var (cppsource, cppheader) = makeCppCode(def, cppsignature)
    insert(funheader, 0, parseStmt(emitStmt(cppheader)))
    insert(funheader, 0, parseStmt(emitStmt(cppsource)))

    var nimSource = makeTemplateTypes(def) & "\n\n"
    nimSource &= makeNimType(def, "") & "\n\n"
    nimSource &= makeNimImportProc(def, "") & "\n\n"
    nimSource &= makeNimProc(def, "") & "\n\n"
    nimSource &= makeNimConverter(def) & "\n\n"

    echo nimSource
    insert(funheader, 0, parseStmt(nimSource))

    return funheader

when isMainModule:
    proc ZeroOut(ctx: ptr OpKernelContext) {.input:"to_zero: int32",
                                            output:"zeroed: int32",
                                            attr:"upto: list(int) = [0, 1, 2, 3]",
                                            setShapeFn: proc(ctx: ptr InferenceContext): Status = 
                                                            ctx.set_output(0, ctx.input(0))
                                                            return ok(),
                                            tfexp:CPU.} =
        let input_tensor = ctx.input(0, oint64)
        let input = input_tensor.flat()

        var output_tensor: Tensor[oint64]
        OP_REQUIRES_OK(ctx, ctx.allocate_output(0, input_tensor.shape(), output_tensor))

        let output = output_tensor.flat()

        let N = input.len
        for i in 0..N-1:
            output[i] = 0

        if N > 0: 
            output[0] = input[0]

    with newRootScope():
        let ten = [[1,2,3,4],[8,7,6,4]].oint64
        let zeroed = zeroOut(ten)
        let sess = newSession()

        let o = sess.runSession(zeroed)
        echo o[0]
    