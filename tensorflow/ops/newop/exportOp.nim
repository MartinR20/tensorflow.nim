import macros
import strutils
import ../../core/core
import ./utils
import ./nimFuncBuilder
import ./opClassBuilder
import ./register
{.hint[XDeclaredButNotUsed]:off.}

const
  CPU: string = "CPU"
  GPU: string = "GPU"

proc makeOpKernel(exportName: string, funheader: NimNode): NimNode =
  let cppSource =  "\"\"class " & exportName & "Op : public tensorflow::OpKernel {\n" &
                    "  public: \n" &
                    "    explicit " & exportName & "Op(tensorflow::OpKernelConstruction* context): tensorflow::OpKernel(context) {}\n" &
                    "    void Compute(tensorflow::OpKernelContext* context) override { " & exportName & "_Compute(context); }\n" &
                    "}; \n\"\""

  insert(funheader, 1, parseStmt("{.emit:\"" & cppSource & "\".}"))
  return funheader

proc makeExportFun(exportName: string, body: NimNode): NimNode =
  return makeFun(body,
                  parseStmt("proc export" & exportName & "(ctx: ptr OpKernelContext) {.exportc:\"" & exportName & "_Compute\".}")
                )
  
macro tfexport(device: string, x: untyped): untyped =
  let exportName = $name(x)

  var ddevice: string
  if $device != "CPU" and $device != "GPU":
    raise newException(ValueError, "Your requested device `" & $device & "` is not supported!")
  else:
    ddevice = $device

  var funheader = makeExportFun(exportName, body(x))

  let (ins, attrs, outputIsList) = getInsAndAttrs(exportName)  
  

  #funheader = makeNimDef(exportName, ins, attrs, outputIsList, funheader)
  #funheader = makeOpClass(exportName, ins, attrs, outputIsList, funheader)
  funheader = REGISTER_KERNEL_BUILDER(exportName, ddevice, funheader)
  funheader = makeOpKernel(exportName, funheader)
  funheader = REGISTER_OP(exportName, funheader)
  funheader = makeNewOpIncludes(funheader)

  return funheader

export getInsAndAttrs,
       tfexport,
       CPU,
       GPU
       