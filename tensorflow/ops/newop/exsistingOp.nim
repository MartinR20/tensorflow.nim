import macros
import tables
import strutils
import ./utils
import ./opClassBuilder
import ./nimFuncBuilder
{.hint[XDeclaredButNotUsed]:off.}

macro makeExsistingOp(name: static[string], funDef: static[string]): untyped =
  var ins = initOrderedTable[string, string]()
  var attrs = initOrderedTable[string, string]()

  var args = funDef
              .fromTo('(', ')')[1..^2]
              .split(",")
              
  for arg in args:
    var splited = arg.split(":")

    let name = cppKeywordsTranslate.getOrReturn(
                nimKeywordsTranslate.getOrReturn(splited[0])
              )

    let stripped = splited[1].strip()

    if stripped == "Out":
      ins[name.strip()] = "::tensorflow::Input"

    elif stripped == "OutList":
      ins[name.strip()] = "::tensorflow::InputList"

    elif stripped != "Scope":
      echo splited[1]
      attrs[name.strip()] = stripped

  var outputIsList = false

  if funDef.fromTo(')', funDef.len-1).find("OutList") != -1:
    outputIsList = true

  echo ins

  var funheader = makeNewOpIncludes(newStmtList())
  funheader = makeOpClass(name, ins, attrs, outputIsList, funheader)
  funheader = makeNimDef(name, ins, attrs, outputIsList, funheader)

  return funheader

export makeExsistingOp