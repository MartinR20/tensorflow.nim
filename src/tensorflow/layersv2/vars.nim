import 
    globals, strutils

proc vars*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = ($command[1]).replace('_', 'u')

    metadata[model].add %*{
                    "name": name,
                    "shape": metadata[model][i-1]["shape"],
                    "dtype": metadata[model][i-1]["dtype"],
                    "vars": []
                }

    for v in nonoptimVars[model]:
        metadata[model][i]["vars"].add %*{ "var": newJString v.name.strVal, 
                                    "init": newJString v.asgn.strVal,
                                    "shape": parseJson(repr v.shape),
                                    "optim_var": true
                                }

        prgm.variable(model, 
                    scope,
                    newCall("empty", scope, 
                                    prgm.nconst(model, scope, v.shape, ident "oint32"), 
                                    v.dtype),
                    v.shape,
                    ident name & "_" & $v.name,
                    ident name & "_" & $v.asgn,
                    optim=true)
