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
    CPU: cstring = "CPU"
    GPU: cstring = "GPU"

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

macro input(str: string, x: untyped): untyped =
  lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Input(\"" & $str & "\")"
  x

macro output(str: string, x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".Output(\"" & $str & "\")"
  except: 
    raise newException(ValueError, "Error in output pragma. Did you call the input pragma first?")
  x

macro setShapeFn(fn: proc(ctx: ptr InferenceContext): Status, x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".SetShapeFn(shape" & $name(x) & ")"
  except: 
    raise newException(ValueError, "Error in setShapeFn pragma. Did you call the input pragma first?")

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
  var includes = "\"\"#include \"tensorflow/core/framework/op.h\" \n#include \"tensorflow/core/framework/shape_inference.h\" \n#include \"tensorflow/core/framework/op_kernel.h\" \n\"\""

  var funbody = body(x) 
  var funheader = parseStmt("proc export" & exportName & "(ctx: ptr OpKernelContext) {.exportc:\"" & exportName & "Op::Compute\".}")

  funheader[0].del(funheader[0].len-1, 1)
  insert(funheader[0], funheader[0].len, funbody)
  insert(funheader, 0, parseStmt("{.emit:\"" & cppSource & "\".}"))
  insert(funheader, 0, parseStmt("{.emit:lookUp[\"" & $name(x) & "\"] & \";\".}"))
  insert(funheader, 0, parseStmt("{.emit:\"" & includes & "\".}"))

  return funheader

macro attr(str: string, x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".Attr(\"" & $str & "\")"
  except: 
    raise newException(ValueError, "Error in output pragma. Did you call the input pragma first?")
  x

macro setIsCommutative(x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".SetIsCommutative()"
  except: 
    raise newException(ValueError, "Error in output pragma. Did you call the input pragma first?")
  x

macro setIsAggregate(x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".SetIsAggregate()"
  except: 
    raise newException(ValueError, "Error in output pragma. Did you call the input pragma first?")
  x

macro setIsStateful(x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".SetIsStateful()"
  except: 
    raise newException(ValueError, "Error in output pragma. Did you call the input pragma first?")
  x

macro setAllowsUninitializedInput(x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".SetAllowsUninitializedInput()"
  except: 
    raise newException(ValueError, "Error in output pragma. Did you call the input pragma first?")
  x

macro deprecated(version: int, name: string, x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".Deprecated(" & $version & ", " & $name & ")"
  except: 
    raise newException(ValueError, "Error in output pragma. Did you call the input pragma first?")
  x

macro doc(str: string, x: untyped): untyped =
  try:
    lookUp[$name(x)] &= ".Doc(" & $str & ")"
  except: 
    raise newException(ValueError, "Error in output pragma. Did you call the input pragma first?")
  x


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
       OP_REQUIRES_OK