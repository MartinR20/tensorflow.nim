import 
    globals, json, macros, tables
    
proc input*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = "input_" & $i
    prgm.add newLetStmt(ident name,
                        newCall("placeholder", scope,
                                               command[3],
                                               newCall("shape", command[2])))

    metadata[model].add %*{
                    "name": name,
                    "shape": %*command[2].seqFromAst,
                    "dtype": $command[3],
                    "feed": $command[1],
                    "output": name
                   }