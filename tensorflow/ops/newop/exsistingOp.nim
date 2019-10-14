import macros
import tables
import strutils
import ./utils
import ./opClassBuilder
import ./nimFuncBuilder
{.hint[XDeclaredButNotUsed]:off.}

proc makeExsistingOpProc(name: string, funDef: string, explicitInclude = false): NimNode =
  var ins = initOrderedTable[string, string]()
  var attrs = initOrderedTable[string, string]()

  var args = funDef
              .fromTo('(', ')')
              .split(",")
              
  for arg in args:
    var splited = arg.split(":")

    let name = cppKeywordsTranslate.getOrReturn(
                nimKeywordsTranslate.getOrReturn(splited[0])
              )

    let stripped = splited[1].strip()

    case stripped:
    of "In", "InList", "Out", "OutList":
      ins[name.strip()] = translateTypeToCpp(stripped)
    of "Scope":
      discard
    else:
      attrs[name.strip()] = translateTypeToCpp(stripped)

  var outputIsList = false

  if funDef.fromTo(')', funDef.len-1).find("OutList") != -1:
    outputIsList = true

  var funheader = makeNewOpIncludes(newStmtList(), explicitInclude)
  funheader = makeOpClass(name, ins, attrs, outputIsList, funheader)
  funheader = makeNimDef(name, ins, attrs, outputIsList, funheader)

  return funheader

macro makeExsistingOp(name: static[string], funDef: static[string], explicitInclude: static[bool] = false): untyped =
  return makeExsistingOpProc(name, funDef, explicitInclude)

export makeExsistingOpProc,
       makeExsistingOp