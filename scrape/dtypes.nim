import strutils
import tables

let def = readFile("ops.def")

let lines = def.split("\n")

var count = initTable[string, int]()

for line in lines:
    if line.find("Attrs") == -1 and line.len > 0 and line[0] == ' ':
        let keyArgs = line.split(" ")
        var key: string

        if keyArgs[2] == "const": 
            if keyArgs[3] == "gtl::ArraySlice<":
                key = keyArgs[2] & " " & keyArgs[3] & " " & keyArgs[4] & " " & keyArgs[5]
            else:
                key = keyArgs[2] & " " & keyArgs[3]
        else: 
            key = keyArgs[2]
        
        if not count.hasKey(key): count[key] = 1
        else: count[key] += 1

for key, c in count:
    echo key & ":" & $c