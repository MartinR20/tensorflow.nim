import os 
import strutils
import tables
import sequtils

let forbidden = ["./generated/structs.nim"]
let toWrap = ["InList", "cppstring", "attr"]

let translate = {"cppstring":"string", "ArraySlice[cppstring]":"ArraySlice[string]"}.newTable()
let convert = {"string":"newCPPString(", "ArraySlice[string]":"newArraySlice[cppstring]("}.newTable()

let argTranslate = {"type":"ttype", 
                    "ref":"rref",
                    "end":"eend",
                    "var":"vvar",
                    "method":"mmethod",
                    "template":"ttemplate"}.newTable

let structFile = readFile("./generated/structs.nim")

var funcHistory: seq[string]

var structs = initTable[string, seq[(string, string)]]()
var currSeq: seq[(string, string)]
var currName = ""

proc makeExports(f: File, funcHistory: seq[string]) = 
    f.write("export ")
    f.write(funcHistory.deduplicate().join(",\n       "))


for line in structFile.split("\n")[3..^2]:
    if line.len == 0:
        continue
    elif line[0] == 'p':
        let split = line.split(" ")
        let last = split[1].find("(")
        let varName = split[1][0..last-1]

        currSeq.add((varName, split[4]))
        funcHistory.add(varName)
    else:
        if currName != "":
            structs[currName] = currSeq
            currSeq = @[]

        let nameEnd = line[5..^1].find(" ")
        currName = line[5..nameEnd+4]
        funcHistory.add(currName)

makeExports(open("./generated/structs.nim", fmAppend), funcHistory)
structs[currName] = currSeq

proc getArgs(line: string): (seq[string], seq[string]) =
    let argRange = line[1..^1]

    var names: seq[string] = @[]
    var types: seq[string] = @[]

    for el in argRange.split(" "):
        if el[^1] == ':':
            names.add(el[0..^2])
        else:
            types.add(el[0..^2])

    return (names, types)

var currFile: File

for file in walkFiles("./generated/*.nim"):
    if not forbidden.contains(file):
        let content = readFile(file)

        currFile = open(file, fmAppend)

        echo "FILE: " & file

        funcHistory = @[]

        for line in content.split("\n")[5..^1]:
            if line.len > 0:
                let start = line.find("(")

                if start != -1:
                    funcHistory.add(line[6..start-1])
                                
                    let last = line.find(")")
                    let curly = line.find("{")

                    var (names, types) = getArgs(line[start..last]) 

                    currFile.write("proc " & line[6..curly-1] & "=\n  ")
                    
                    if line[last] == ':':
                        currFile.write("return ")
                    
                    currFile.writeLine(line[5..start-1] & "(" & names.join(", ") & ")\n")


                for wrapType in toWrap:
                    let hits = line.find(wrapType)
            
                    if hits != -1:                    
                        let last = line.find(")")
                        let curly = line.find("{")

                        var (names, types) = getArgs(line[start..last])

                        if wrapType == "attr":
                            var writeString = ""

                            let pos = names.find("attrs") 
                            let attrs = structs[types[pos].strip()]

                            writeString &= "proc " & line[6..start-1] & "("

                            for i in 0..names.len-2:
                                writeString &= names[i] & ": " & types[i] & ", "

                            var attrNames: seq[string] = @[] 
                            var attrTypes: seq[string] = @[]

                            for i,attr in attrs:
                                var name = attr[0]
                                name[0] = chr(ord(name[0])+32)

                                if name in toSeq(argTranslate.keys):
                                    name = argTranslate[name]

                                var dtype = attr[1][0..^3]

                                if dtype in toSeq(translate.keys):
                                    dtype = translate[dtype]

                                attrNames.add(name)
                                attrTypes.add(dtype)

                                writeString &= name & " = none(" & dtype

                                if i+1 != attrs.len:
                                    writeString &= "), "

                            let outType = line[last+1..curly-2]

                            writeString &= "))" & outType & " =\n"
                            writeString &= "  var attrs = " & types[^1] & "()\n\n"
                            
                            for i, attr in attrNames:
                                var upperAttr = attr

                                if upperAttr in toSeq(argTranslate.values):
                                    upperAttr = upperAttr[1..^1]

                                upperAttr[0] = chr(ord(upperAttr[0])-32)

                                writeString &= "  if " & attr & ".isSome:\n    attrs = attrs." & upperAttr & "("

                                if attrTypes[i] in toSeq(convert.keys):
                                    writeString &= convert[attrTypes[i]] & attr & ".get()))\n"
                                else:
                                    writeString &= attr & ".get())\n"

                            writeString &= "\n  "
                            
                            if outType != "":
                                writeString &= "return " 

                            writeString &= line[6..start-1] & "(" & names.join(", ") & ")\n\n"
                            currFile.write(writeString)

                            if types.find("InList") != -1:
                                currFile.write(writeString.replace("InList", "OutList"))
                        
                        elif wrapType == "InList":

                            var newLine = line.replace("InList", "OutList")

                            var count = 0

                            for i, c in deepcopy(newLine):
                                if c == '#':
                                    if types[count] == "InList":
                                        newLine = newLine[0..i-2] & newLine[i..^1]

                                    count += 1

                            currFile.writeLine("proc " & newLine[6..^1] & "\n")

                        elif wrapType == "cppstring":

                            currFile.writeLine("proc " & line[6..curly-1].replace("cppstring", "string") & "=")

                            for i, dtype in types:
                                if dtype == "cppstring":
                                    currFile.writeLine("  let cppstr" & $i & " = newCPPString(" & names[i] & ")")
                                    names[i] = "cppstr" & $i
                                    types[i] = "string"
                                elif dtype == "ArraySlice[cppstring]":
                                    currFile.writeLine("  let cppSlice" & $i & " = newArraySlice[cppstring](" & names[i] & ")")
                                    names[i] = "cppSlice" & $i
                                    types[i] = "ArraySlice[string]"

                            currFile.write("  ") 

                            if line[last+1] == ':':
                                currFile.write("return ") 
                            
                            currFile.writeLine(line[6..start-1] & "(" & names.join(", ") & ")\n")

        makeExports(currFile, funcHistory)
    