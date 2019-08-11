import macros
import tables
import ../../utils/utils
import ../../core/core
import ./register_context
{.hint[XDeclaredButNotUsed]:off.}

var lookUp {.compileTime.} = initOrderedTable[string,string]()
var op_registered {.compileTime.} = false

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

proc REGISTER_OP(exportName: string, funheader: NimNode): NimNode =
  insert(funheader, 1, parseStmt("{.emit:lookUp[\"" & exportName & "\"] & \";\".}"))
  return funheader

proc REGISTER_KERNEL_BUILDER(exportName: string, device: string, funheader: NimNode): NimNode =
  let cppSource = "\"\"REGISTER_KERNEL_BUILDER(Name(\"" & exportName & "\").Device(\"" & device & "\"), " & exportName & "Op);\n\"\""
                
  insert(funheader, 1, parseStmt("{.emit:\"" & cppSource & "\".}"))
  return funheader
  
export lookUp,
       tables,
       input,
       output,
       setShapeFn,
       attr,
       setIsCommutative,
       setIsAggregate,
       setIsStateful,
       setAllowsUninitializedInput,
       deprecated,
       doc,
       REGISTER_OP,
       REGISTER_KERNEL_BUILDER