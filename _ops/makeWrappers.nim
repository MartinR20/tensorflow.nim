import os 
import strutils
import tables
import sequtils

let forbidden = ["make.nim", "makeWrappers.nim", "structs.nim"]
let toWrap = ["InList", "cppstring", "ArraySlice[cppstring]", "attr"]

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
            currSeq = @[]

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

                    elif wrapType == "cppstring" or wrapType == "ArraySlice[cppstring]":
                        let start = line.find("(")
                        let last = line.find(")")
                        let curly = line.find("{")

                        var (names, types) = getArgs(line[start..last]) 

                        let pos = types.find("cppstring")
                        let strname = names[pos]

                        if wrapType == "cppstring":
                            names[pos] = "cppstr"
                        else:
                            names[pos] = "cppSlice"

                        currFile.writeLine(line[0..curly-1].replace("cppstring", "string"))
                        
                        if wrapType == "cppstring":
                            currFile.writeLine("  let cppstr = newCPPString(" & strname & ")")
                        else:
                            currFile.writeLine("  let cppSlice = newArraySlice(" & strname & ")")

                        currFile.writeLine("  return " & line[5..start-1] & "(" & names.join(", ") & ")" & line[last+1..curly-1])

                    elif wrapType == "attr":
                        let start = line.find("(")
                        let last = line.find(")")
                        let curly = line.find("{")

                        var (names, types) = getArgs(line[start..last]) 
                        
                        let pos = names.find("attrs") 
                        let attrs = structs[types[pos]]

                        currFile.write("proc " & line[5..start-1] & "(")

                        for i in 0..names.len-2:
                            currFile.write(names[i] & ": " & types[i] & ", ")

                        var attrNames: seq[string] = @[] 
                        var attrTypes: seq[string] = @[]

                        for i,attr in attrs:
                            let split = attr.split(": ")

                            let name = split[0]
                            let dtype = split[1]
                            
                            attrNames.add(name)
                            attrTypes.add(dtype)

                            if i+1 != attrs.len:
                                currFile.write(name & " = none(" & dtype & "), ")
                            else:
                                currFile.write(name & " = none(" & dtype & ")")

                        currFile.write(")" & line[last+1..curly-2] & " =\n")
                        currFile.writeLine("  let attrs = " & types[^1] & "()")
                        
                        for attr in attrNames:
                            currFile.writeLine("  if " & attr & ".isSome: attrs." & attr & " = " & attr & ".some")

                        currFile.writeLine("  return " & line[5..start-1] & "(" & names.join(", ") & ")")
                        

