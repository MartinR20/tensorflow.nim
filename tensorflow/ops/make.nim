import strutils
import tables
import sequtils

#TODO: refactor

let def = readFile("../../scrape/ops.def")
var lastFile: File
var lastLine = ""

let outLookUp = {"::tensorflow::Output":"Out", "::tensorflow::OutputList":"OutList"}.newTable
let inLookUp = {"::tensorflow::Input":"Out",
                "const gtl::ArraySlice< float >":"ArraySlice[float]", 
                "const gtl::ArraySlice< PartialTensorShape >":"ArraySlice[TensorShape]",
                "int64":"int",
                "const gtl::ArraySlice< string >":"ArraySlice[cppstring]",
                "const gtl::ArraySlice< int >":"ArraySlice[cint]",
                "DataType":"core.DType",
                "PartialTensorShape":"TensorShape",
                "::tensorflow::InputList":"InList",
                "const DataTypeSlice":"core.DType",
                "StringPiece":"cppstring"
               }.newTable
let argTranslate = {"type":"ttype", 
                    "ref":"rref",
                    "end":"eend",
                    "var":"vvar",
                    "method":"mmethod",
                    "template":"ttemplate"}.newTable
let pointerTypes = @["Scope", "InList"]

var outType = ""
var outName = ""
var func_name = "Attrs"
var args: seq[(string,string)] = @[]
let struct = open("./generated/structs.nim", fmWrite)
struct.writeLine("import ../../core/core")
struct.writeLine("import ../../utils/utils")
struct.writeLine("{.hint[XDeclaredButNotUsed]:off.}")

proc finish() = 
    if func_name.find("Attrs") == -1: 
        if args != @[]:    
            for arg in args[0..^2]:
                lastFile.write(arg[0] & ": " & arg[1] & ", ")
            
            lastFile.write(args[^1][0] & ": " & args[^1][1])

        var cargs = ""

        for i, arg in args:
            if arg[1] in pointerTypes:
                cargs &= "*#"
            else:
                cargs &= "#"
            
            if i != args.len-1:
                cargs &= ", "

        if outType == "OutList":
            lastFile.write("): " & outType & " {.header:std_ops, importcpp:\"tensorflow::ops::" & func_name & "(" & cargs & ").output\".}\n")
        elif outType != "":
            lastFile.write("): " & outType & " {.header:std_ops, importcpp:\"tensorflow::ops::" & func_name & "(" & cargs & ")\".}\n")
        else:
            lastFile.write(") {.header:std_ops, importcpp:\"tensorflow::ops::" & func_name & "(" & cargs & ")\".}\n")

        lastFile.writeLine("")

for line in def.split("\n"):
    if line.find("module") != -1:
        if(lastFile != nil): 
            finish()
            func_name = "Attrs"            
            lastFile.close()

        lastFile = open("./generated/" & line.split(" ")[1] & ".nim", fmWrite)
        lastFile.writeLine("import ../../core/core")
        lastFile.writeLine("import ../../utils/utils")
        lastFile.writeLine("import ./structs")
        lastFile.writeLine("import options")
        lastFile.writeLine("{.hint[XDeclaredButNotUsed]:off.}")
        lastFile.writeLine("")

    elif line.find("function") != -1: 
        finish()

        let stmts = line.split(" ")
        func_name = stmts[1]
        args = @[]

        if func_name.find("Attrs") != -1: 
            continue

        if stmts.len > 2 and stmts[2].len > 0 and stmts[2][0] == ':':            
            outType = outLookUp[stmts[2]]
            outName = stmts[3]
        else:
            outType = ""
            outName = ""

        lastFile.write("proc i" & func_name & "(")

    else:
        let stmts = line.split(" ")

        if stmts.len > 3:

            var dtype = stmts[2]
            var varName = stmts[3]

            if dtype == "const":
                if stmts[3] == "gtl::ArraySlice<":
                    dtype &= " " & stmts[3] & " " & stmts[4] & " " & stmts[5]
                    varName = stmts[7]

                elif stmts[3].find("Attrs") != -1:
                    dtype = stmts[3].replace("::", "")
                    struct.writeLine("\n\ntype " & dtype & " {.header: std_ops, importcpp:\"tensorflow::ops::" & stmts[3] & "\".} = object")
                    varName = stmts[5]
                    
                else:
                    dtype &= " " & stmts[3]
                    varName = stmts[5]

            if dtype in toSeq(inLookUp.keys):
                dtype = inLookUp[dtype]

            if func_name.find("Attrs") != -1:
                var splitFname = func_name.split("::")
                var fname = splitFname[^1]
                var varName = fname
                varName[0] = chr(ord(varName[0])+32)

                if varName in toSeq(argTranslate.keys):
                    varName = argTranslate[varName]

                if fname in toSeq(argTranslate.keys):
                    fname = argTranslate[fname]

                for arg in args:
                    if arg[0] == fname:
                        fname = fname[0] & fname

                args.add((fname,dtype))

                let attrName = splitFname[0] & splitFname[1]
                var lowerAttrName = attrName
                lowerAttrName[0] = chr(ord(lowerAttrName[0])+32)

                struct.writeLine("\nproc " & fname & "(" & lowerAttrName & ": " & attrName & ", " & varName & ": " & dtype & "): " & attrName & " {.header: std_ops, importcpp:\"#." & fname & "(#)\".}")
                continue

            if args.len == 0:
                args.add(("root","Scope"))

            if varName[^1] == ',':
                varName = varName[0..^2]

            if varName in toSeq(argTranslate.keys):
                varName = argTranslate[varName]

            args.add((varName,dtype))

                
        

lastFile.write("root: Scope): Out {.header:std_ops, importcpp:\"tensorflow::ops::" & func_name & "(*@)\".}\n")
