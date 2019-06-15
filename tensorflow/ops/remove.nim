import os 
import strutils
import sequtils

let forbidden = ["./generated/structs.nim"]

for file in walkFiles("./generated/*.nim"):
    if not forbidden.contains(file):
        echo "FILE: " & file

        var content = toSeq(readFile(file).split("\n"))
        var offset = 0

        for i, line in deepcopy(content):
            if line.len != 0 and line[0] != '{':

                var name = line.split(" ")[1]
                let bracket = name.find("(")

                if bracket != -1:
                    name = name[0..bracket-1]

                    if line.find("attr") != -1:
                        let rm = i - offset
                        content.delete(rm-2,rm-1)
                        offset += 2

        let f = open(file, fmWrite)
        f.write(content.join("\n"))
