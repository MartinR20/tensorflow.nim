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

proc getInsAndAttrs(exportName: string): (OrderedTable[string, string], OrderedTable[string, string], bool) = 
  var ins = initOrderedTable[string, string]()
  var attrs = initOrderedTable[string, string]()
  var outputIsList = false

  if not lookUp.hasKey(exportName):
    raise newException(ValueError, "You didn't register any input or output for your function!")

  for pragma in lookUp[exportName].split("."):
    let splited = pragma
                    .replace("(", " ")
                    .replace(")", " ")
                    .replace("\"", "")
                    .replace(":", "")
                    .split(" ")

    let name = cppKeywordsTranslate.getOrReturn(
                nimKeywordsTranslate.getOrReturn(splited[1])
              )

    if splited[0] == "Input":
      if splited.contains("*"):
        ins[name] = "::tensorflow::InputList"
      else:
        ins[name] = "::tensorflow::Input"

    elif splited[0] == "Attr" and splited[2] != "type":
      attrs[name] = splited[2]

    elif splited[0] == "Output" and splited.contains("*"):
      outputIsList = true

  return (ins, attrs, outputIsList)

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
  
macro tfexport(device: string, x: untyped): untyped =
  let exportName = $name(x)

  var ddevice: string
  if $device != "CPU" and $device != "GPU":
    raise newException(ValueError, "Your requested device `" & $device & "` is not supported!")
  else:
    ddevice = $device

  var funheader = makeExportFun(exportName, body(x))

  let (ins, attrs, outputIsList) = getInsAndAttrs(exportName)  

  funheader = makeNimDef(exportName, ins, attrs, outputIsList, funheader)
  funheader = makeOpClass(exportName, ins, attrs, outputIsList, funheader)
  funheader = REGISTER_KERNEL_BUILDER(exportName, ddevice, funheader)
  funheader = makeOpKernel(exportName, funheader)
  funheader = REGISTER_OP(exportName, funheader)
  funheader = makeNewOpIncludes(funheader)

  return funheader

export tfexport,
       CPU,
       GPU
       