import strutils
import tables
import sequtils

let def = readFile("../scrape/ops.def")
var lastFile: File
var lastLine = ""

let outLookUp = {"::tensorflow::Output":"Out", "::tensorflow::OutputList":"OutList"}.newTable
let inLookUp = {"::tensorflow::Input":"Out",
                "const gtl::ArraySlice< float >":"ArraySlice[float]", 
                "const gtl::ArraySlice< PartialTensorShape >":"ArraySlice[PartialTensorShape]",
                "int64":"int",
                "const gtl::ArraySlice< string >":"ArraySlice[cppstring]",
                "const gtl::ArraySlice< int >":"ArraySlice[int]",
                "DataType":"DType",
                "PartialTensorShape":"PartialTensorShape",
                "::tensorflow::InputList":"InList",
                "const DataTypeSlice":"DType",
                "StringPiece":"cppstring"
               }.newTable


var outType = ""
var outName = ""
var func_name = ""
var args: seq[string] = @[]
let struct = open("structs.nim", fmWrite)

for line in def.split("\n"):
    if line.find("function") != -1 and lastLine.find("function") != -1:
        lastFile.write(") =\n")

    lastLine = line

    if line.find("module") != -1:
        if(lastFile != nil): lastFile.close()
        lastFile = open(line.split(" ")[1] & ".nim", fmWrite)
        lastFile.writeLine("import ../core/core.nim")
        lastFile.writeLine("import ../utils/utils.nim")
        lastFile.writeLine("")

    elif line.find("function") != -1:
        let stmts = line.split(" ")
        func_name = stmts[1]
        args = @[]

        if func_name.find("Attrs") != -1: continue

        if stmts.len > 2 and stmts[2].len > 0 and stmts[2][0] == ':':            
            outType = outLookUp[stmts[2]]
            outName = stmts[3]
            lastFile.write("proc " & func_name & "(")
        else:
            lastFile.write("proc " & func_name & "(")
    else:
        let stmts = line.split(" ")

        if stmts.len < 4:
            continue

        var dtype = stmts[2]
        var varName = stmts[3]

        if dtype == "const":
            if stmts[3] == "gtl::ArraySlice<":
                dtype &= " " & stmts[3] & " " & stmts[4] & " " & stmts[5]
                varName = stmts[7]

            elif stmts[3].find("Attrs") != -1:
                dtype = stmts[3].replace("::", "")
                struct.writeLine("type " & dtype & " {.header: std_ops, importcpp:\"tensorflow::ops::" & stmts[3] & "\".} = object")
                varName = stmts[5]
                
            else:
                dtype &= " " & stmts[3]
                varName = stmts[5]

        args.add(dtype)

        if dtype in toSeq(inLookUp.keys):
            dtype = inLookUp[dtype]

        if args.len == 1:
            if func_name.find("Attrs") == -1:
                lastFile.write("root: Scope, ")
            else:
                func_name = func_name.split("::")[^1]
                func_name[0] = chr(ord(func_name[0])+32)
                struct.writeLine("  " & func_name & ": " & dtype)
                continue

        if(varName[^1] == ','):
            lastFile.write(varName[0..^2] & ": " & dtype & ", ")
        else:
            if outType != "":
                lastFile.write(varName & ": " & dtype & "): " & outType & " {.header:std_ops, importcpp:\"tensorflow::ops::" & func_name & "(*@)\".}\n")
                lastFile.writeLine("")
            else:
                lastFile.write(varName & ": " & dtype & ") {.header:std_ops, importcpp:\"tensorflow::ops::" & func_name & "(*@)\".}\n")
                lastFile.writeLine("")

lastFile.write("root: Scope) {.header:std_ops, importcpp:\"tensorflow::ops::" & func_name & "(*@)\".}\n")
