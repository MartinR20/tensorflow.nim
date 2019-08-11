import tables
import strutils
import macros
{.hint[XDeclaredButNotUsed]:off.}

proc makeArgsNim(table: OrderedTable[string,string]): string =
  var ret: seq[string]

  for name, dtype in table.pairs:
    var ddtype = dtype

    if dtype == "::tensorflow::Input": 
      ddtype = "Out" 
    if dtype == "::tensorflow::InputList": 
      ddtype = "OutList" 

    ret.add name & ": " & ddtype

  return ret.join(", ")
  

proc makeNimDef(exportName: string, 
                ins: OrderedTable[string, string], 
                attrs: OrderedTable[string, string], 
                 outputIsList: bool, 
                 funheader: NimNode): NimNode =

  let nimSource = "proc " & exportName & "(root: Scope, " &  
  makeArgsNim(ins) & ", " & 
  makeArgsNim(attrs) & "): " & 
  (if outputIsList: "OutList" else: "Out") & 
  " {.importcpp:\"" & exportName & "(*#" & ", #".repeat(ins.len + attrs.len) & ").output\".}"

  echo nimSource

  insert(funheader, 1, parseStmt(nimSource))
  return funheader

export makeNimDef
