import tables
import strutils
import macros
{.hint[XDeclaredButNotUsed]:off.}

proc makeArgsCPP(table: OrderedTable[string,string]): string =
  var ret: seq[string]

  for name, dtype in table.pairs:
    ret.add "       " & dtype & " " & name

  return ret.join(",\n")

proc convInputsToOutputs(table: OrderedTable[string,string]): string =
  var ret: string

  for name, dtype in table:
    var conversion = "::tensorflow::ops::AsNodeOut"

    if dtype == "::tensorflow::InputList":
      conversion &= "List"

    ret &= "       auto _" & name & " = " & conversion & "(scope, " & name & ");\n"
    ret &= "       if (!scope.ok()) return;\n"

  return ret

proc makeBuilderInputs(table: OrderedTable[string,string]): string =
  var ret: string

  for name in table.keys:
    ret &= "                                    .Input(_" & name & ")\n"

  return ret
  
proc makeBuilderAttrs(table: OrderedTable[string,string]): string =
  var ret: string

  for name in table.keys:
    ret &= "                                    .Attr(\"" & name & "\", " & name & ")\n"

  return ret

proc makeOpClass(exportName: string, 
                 ins: OrderedTable[string, string], 
                 attrs: OrderedTable[string, string], 
                 outputIsList: bool, 
                 funheader: NimNode): NimNode = 

  let cppArgsIns = makeArgsCPP(ins)
  let cppArgsAttrs = makeArgsCPP(attrs)

  var cppSource =  "\"\"class " & exportName & "{\n" &
                   "  public:\n" &
                   "    " & exportName & "(const ::tensorflow::Scope& scope\n" & 
                   (if cppArgsIns == "": "" else: ", " & cppArgsIns & "\n") &
                   (if cppArgsAttrs == "": "" else: ", " & cppArgsAttrs) & ") {\n" &
                   "       if (!scope.ok()) return;\n" &
                   convInputsToOutputs(ins) &
                   "       ::tensorflow::Node* ret;\n" &
                   "       const auto unique_name = scope.GetUniqueNameForOp(\"" & exportName & "\");\n" &
                   "       auto builder = ::tensorflow::NodeBuilder(unique_name, \"" & exportName & "\")\n" &
                   makeBuilderInputs(ins) &
                   makeBuilderAttrs(attrs) &
                   "       ;\n" &
                   "       scope.UpdateBuilder(&builder);\n" &
                   "       scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));\n" &
                   "       if (!scope.ok()) return;\n" &
                   "       scope.UpdateStatus(scope.DoShapeInference(ret));\n" &
                   "       this->operation = ::tensorflow::Operation(ret);\n" 
  
  if outputIsList:
    cppSource &= "       for (int32_t i = 0; i < ret->num_outputs(); ++i)\n" &
                 "         this->output.push_back(::tensorflow::Output(ret, i));\n" &
                 "    }\n" & 
                 "\n" &
                 "    ::tensorflow::Output operator[](size_t index) const { return output[index]; }\n" &
                 "\n" &
                 "    ::tensorflow::Operation operation;\n" &
                 "    ::tensorflow::OutputList output;\n"
  else:
    cppSource &= "       this->output = ::tensorflow::Output(ret, 0);\n" &
                 "    }\n" & 
                 "\n" &
                 "    ::tensorflow::Operation operation;\n" &
                 "    ::tensorflow::Output output;\n"

  cppSource &= "};\n\"\""
  insert(funheader, 1, parseStmt("{.emit:\"" & cppSource & "\".}"))
  return funheader

export makeOpClass