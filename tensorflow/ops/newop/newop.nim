import ../../core/core
import ../../utils/utils
import macros
import tables
{.hint[XDeclaredButNotUsed]:off.}

type
    OpDefBuilderWrapper {.header: std_ops,
                          header: memory,
                          importcpp: "tensorflow::register_op::OpDefBuilderWrapper<true>".} = object

    InferenceContext {.header: shape_inference,
                       importcpp: "tensorflow::shape_inference::InferenceContext".} = object

    Status {.header: std_ops,
             importcpp: "tensorflow::Status".} = object

    OpKernel {.header: op_kernel,
               importcpp: "tensorflow::OpKernel".} = object of RootObj

    OpKernelContext {.header: std_ops,
                      importcpp: "tensorflow::OpKernelContext".} = object

    KernelDefBuilder {.header: std_ops,
                       importcpp: "tensorflow::KernelDefBuilder".} = object
                    
const
    CPU: string = "CPU"
    GPU: string = "GPU"

template MakeOpType(name, cname, compute) = 
    type 
        nameConstructor {.importcpp:"explicit " & cname & "(tensorflow::OpKernelConstruction* context): tensorflow::OpKernel(context) {}; //".} = object
        ComputeType {.importcpp:"void Compute(tensorflow::OpKernelContext* context) override; //".} = object

    type name {.exportc: cname.} = object of OpKernel
        constructor: nameConstructor
        compute: ComputeType

    proc ComputeFunction(ctx: ptr OpKernelContext) {.exportc: cname & "::Compute".} =
        compute(ctx)

proc ok(): Status {.header: std_ops,
                    importcpp: "tensorflow::Status::OK()".}

var lookUp {.compileTime.} = newTable[string,string]()
var op_registered {.compileTime.} = false
var op_included {.compileTime.} = false
var grad_included {.compileTime.} = false

macro input(str: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Input(\"" & $str & "\")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Input(\"" & $str & "\")"

  x

macro output(str: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Output(\"" & $str & "\")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Output(\"" & $str & "\")"
  x

macro setShapeFn(fn: proc(ctx: ptr InferenceContext): Status, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetShapeFn(shape" & $name(x) & ")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetShapeFn(shape" & $name(x) & ")"

  var fun = parseStmt("proc shapeFn(ctx: ptr InferenceContext): Status {.exportc:\"shape" & $name(x) & "\".}")
  
  fun[0].del(fun[0].len-1, 1)
  insert(fun[0], fun[0].len, nnkCommand.newTree(
                          fn,
                          newIdentNode("ctx")
                        ))

  
  nnkStmtList.newTree(fun, x)

macro tfexport(device: string, x: untyped): untyped =
  var exportName = $name(x)

  var ddevice: string
  if $device != "CPU" and $device != "GPU":
    raise newException(ValueError, "Your requested device `" & $device & "` is not supported!")
  else:
    ddevice = $device

  var cppSource =  "\"\"class " & exportName & "Op : public tensorflow::OpKernel {\n  public: \n    explicit " & exportName & "Op(tensorflow::OpKernelConstruction* context): tensorflow::OpKernel(context) {}\n    void Compute(tensorflow::OpKernelContext* context) override;\n    }; \nREGISTER_KERNEL_BUILDER(Name(\"" & exportName & "\").Device(\"" & ddevice & "\"), " & exportName & "Op);\"\""

  var funbody = body(x) 
  var funheader = parseStmt("proc export" & exportName & "(ctx: ptr OpKernelContext) {.exportc:\"" & exportName & "Op::Compute\", asmNoStackFrame, noconv.}")

  funheader[0].del(funheader[0].len-1, 1)
  insert(funheader[0], funheader[0].len, funbody)
  insert(funheader, 0, parseStmt("{.emit:\"" & cppSource & "\".}"))
  insert(funheader, 0, parseStmt("{.emit:lookUp[\"" & $name(x) & "\"] & \";\".}"))

  if not op_included:
    var includes = "\"\"#include \"tensorflow/core/framework/op.h\" \n#include \"tensorflow/core/framework/shape_inference.h\" \n#include \"tensorflow/core/framework/op_kernel.h\" \n\"\""
    insert(funheader, 0, parseStmt("{.emit:\"" & includes & "\".}"))
    op_included = true

  return funheader

macro attr(str: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Attr(\"" & $str & "\")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Attr(\"" & $str & "\")"
  x

macro setIsCommutative(x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetIsCommutative()"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetIsCommutative()"
  x

macro setIsAggregate(x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetIsAggregate()"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetIsAggregate()"
  x

macro setIsStateful(x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetIsStateful()"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetIsStateful()"
  x

macro setAllowsUninitializedInput(x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetAllowsUninitializedInput()"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetAllowsUninitializedInput()"
  x

macro deprecated(version: int, name: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Deprecated(" & $version & ", " & $name & ")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Deprecated(" & $version & ", " & $name & ")"
  x

macro doc(str: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = ".Doc(" & $str & ")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Doc(" & $str & ")"
  x

macro grad*(x: untyped): untyped =
  var exportName = $name(x) & "Grad"

  var funbody = body(x) 
  var funheader = parseStmt("proc " & exportName & "(scope: Scope, op: Operation, gradInputs: TensorVec, gradOutputs: ptr TensorVec) {.exportc:\"" & exportName & "\", asmNoStackFrame, stdcall.}")

  funheader[0].del(funheader[0].len-1, 1)
  insert(funheader[0], funheader[0].len, funbody)
  insert(funheader, 1, parseStmt("{.emit:\"REGISTER_GRADIENT_OP(\\\"" & $name(x) & "\\\", " & exportName & ");\".}")[0])

  if not grad_included:
    var includes = "\"\"#include \"tensorflow/cc/framework/grad_op_registry.h\" \n#include \"tensorflow/cc/framework/gradients.h\" \n\"\""
    insert(funheader, 0, parseStmt("{.emit:\"" & includes & "\".}"))
    grad_included = true

  return funheader

macro nograd(x: untyped): untyped =
  let register = parseStmt("{.emit:\"REGISTER_NO_GRADIENT_OP(\\\"" & $name(x) & "\\\");\".}")

  if not grad_included:
    const includes = "\"\"#include \"tensorflow/cc/framework/grad_op_registry.h\" \n#include \"tensorflow/cc/framework/gradients.h\" \n\"\""
  
    let res = newStmtList(
      parseStmt("{.emit:\"" & includes & "\".}")[0],
      register[0]
    )

    grad_included = true

    return res
  
  else:
    return register

proc set_output(ctx: ptr InferenceContext, i: int, status: Status) {.header: std_ops,
                                                                     importcpp: "#->set_output(#, #)".}

proc input(ctx: ptr InferenceContext, i: int): Status {.header: std_ops,
                                                        importcpp: "#->input(#)".}


proc REGISTER_KERNEL_BUILDER(builder: KernelDefBuilder, class: type) {.header: std_ops,
                                                                       inline,
                                                                       importcpp: "REGISTER_KERNEL_BUILDER(#, '2)".}

proc name(name: cstring): KernelDefBuilder {.header: std_ops,
                                             inline,
                                             importcpp: "Name(@)".}

proc device(builder: KernelDefBuilder, device: cstring): KernelDefBuilder {.header: std_ops,
                                                                            inline,
                                                                            importcpp: "#.Device(#)".}


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


export CPU,
       GPU,
       OpDefBuilderWrapper,
       Status,
       ok,
       MakeOpType,
       attr,
       input,
       output,
       setIsCommutative,
       setIsAggregate,
       setIsStateful,
       setAllowsUninitializedInput,
       deprecated,
       doc,
       tfexport,
       tables,
       lookUp,
       InferenceContext,
       setShapeFn,
       set_output,
       input,
       OpKernel,
       REGISTER_KERNEL_BUILDER,
       name,
       device,
       OpKernelContext,
       input,
       allocate_output,
       OP_REQUIRES_OK,
       nograd,
       grad