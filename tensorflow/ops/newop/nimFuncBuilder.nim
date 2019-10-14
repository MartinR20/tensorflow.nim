import tables
import strutils
import macros
import ./utils
import ../../utils/utils as coreutil
{.hint[XDeclaredButNotUsed]:off.}

proc makeArgsNim(table: OrderedTable[string,string]): string =
  var ret: seq[string]

  for name, dtype in table.pairs:
    var ddtype: string
    if translateCppToNim.hasKey(dtype):
      ddtype = nimKeywordsTranslate.getOrReturn(translateTypeToNim(dtype))
    else:
      ddtype = nimKeywordsTranslate.getOrReturn(dtype)
    let nname = nimKeywordsTranslate.getOrReturn(name)

    ret.add nname & ": " & ddtype

  return ret.join(", ")

proc makeNimDef(exportName: string, 
                ins: OrderedTable[string, string], 
                attrs: OrderedTable[string, string], 
                outputIsList: bool, 
                funheader: NimNode): NimNode =

  let nimSource = "proc " & exportName.replace("_", "") & "(root: Scope" &  
  (if ins.len != 0: ", " & makeArgsNim(ins) else: "") &  
  (if attrs.len != 0: ", " & makeArgsNim(attrs) else: "") & "): " & 
  (if outputIsList: "OutList" else: "Out") & 
  " {.importcpp:\"" & exportName & "(*#" & ", #".repeat(ins.len + attrs.len) & ").output\".}"

  funheader.add parseStmt(nimSource)
  return funheader

export makeArgsNim,
       makeNimDef
