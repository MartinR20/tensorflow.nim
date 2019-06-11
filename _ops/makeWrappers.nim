import os 
import strutils
import tables
import sequtils

let forbidden = ["make.nim", "makeWrappers.nim", "structs.nim"]
let toWrap = ["InList", "cppstring", "PartialTensorShape", "ArraySlice[cppstring]", "ArraySlice[PartialTensorShape]", "attr"]

let structFile = readFile("structs.nim")

var structs = initTable[string,seq[string]]()
var currSeq: seq[string]
var currName = ""

for line in structFile.split("\n")[0..^2]:
    if line[0] == ' ':
        currSeq.add(line.strip())
    else:
        if currName != "":
            structs[currName] = currSeq

        let nameEnd = line[5..^1].find(" ")
        currName = line[5..nameEnd+4]

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

for file in walkFiles("*.nim"):
    if not forbidden.contains(file):
        let content = readFile(file)

        if(currFile != nil): 
            currFile.close()
            break
        currFile = open(file, fmAppend)

        echo "FILE: " & file
        
        for wrapType in toWrap:
            for line in content.split("\n"):
                let hits = line.find(wrapType)
                
                if hits != -1:                    
                    if wrapType == "InList":
                        let newLine = line.replace("InList", "OutList")
                        currFile.writeLine(newLine)

                    elif wrapType == "cppstring":
                        let start = line.find("(")
                        let last = line.find(")")
                        let curly = line.find("{")

                        var (names, types) = getArgs(line[start..last])

                        let pos = types.find("cppstring")
                        let strname = names[pos]
                        names[pos] = "cppstr"

                        currFile.writeLine(line[0..curly-1].replace("cppstring", "string"))
                        currFile.writeLine("  let cppstr = newCPPString(" & strname & ")")
                        currFile.writeLine("  return " & line[5..start-1] & "(" & names.join(", ") & ")")

