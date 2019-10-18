import 
    globals, json, macros, tables

proc activation*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = "activation_" & $i
    let inname = metadata[model][i-1]["name"].to(string)

    prgm.add newLetStmt(ident name,
                        newCall(command[1], scope, 
                                            ident inname))

    metadata[model].add %*{
                    "name": name,
                    "shape": metadata[model][i-1]["shape"],
                    "dtype": metadata[model][i-1]["dtype"],
                    "output": name
                   }