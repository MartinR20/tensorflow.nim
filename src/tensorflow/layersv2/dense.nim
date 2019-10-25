import 
    globals
    
from ../ops/math import
    matMul, matMulToOut,
    add, addToOut

from ../ops/prob import
    statelessRandomNormal, statelessRandomNormalToOut

export
    matMul, matMulToOut,
    add, addToOut,
    statelessRandomNormal, statelessRandomNormalToOut

proc dense*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = unique_name("dense", model, i)
            
    let weight_name = unique_name("w_var", model, i)
    let weight_asgn = unique_name("w_asgn", model, i)

    let bias_name = unique_name("b_var", model, i)
    let bias_asgn = unique_name("b_asgn", model, i)

    let inname = metadata[model][i-1]["name"].to(string)

    dimCheck(name, metadata[model][i-1]["shape"], 2)
    var inshape = metadata[model][i-1]["shape"].to(array[2, int])
    var outshape = inshape
    outshape[1] = command[1].intVal.int

    var bias: bool

    if command.len < 3:
        bias = true 
    else:
        if command[2] == ident "true":
            bias = true
        else:
            bias = false

    metadata[model].add %*{
                    "name": name,
                    "shape": %*outshape,
                    "dtype": metadata[model][i-1]["dtype"],
                    "vars": [{ "var": newJString weight_name, 
                               "init": newJString weight_asgn,
                               "shape": [inshape[1], outshape[1]]}],
                    "output": name
                    }

    let w = newLit [inshape[1], outshape[1]]
    let seed = prgm.nconst(model, scope, newLit [0, 0], ident "oint32")

    prgm.variable(model,
                  scope,
                  newCall("statelessRandomNormal", scope, 
                                                   prgm.nconst(model, scope, w, ident "oint32"), 
                                                   seed),
                  w,
                  ident weight_name,
                  ident weight_asgn)

    if bias:
        metadata[model][i]["vars"].add %*{ "var": newJString bias_name, 
                                    "init": newJString bias_asgn,
                                    "shape": [1, outshape[1]]
                                  }

        let b = newLit [1, outshape[1]]
        prgm.variable(model,
                      scope,
                      newCall("statelessRandomNormal", scope, 
                                                       prgm.nconst(model, scope, b, ident "oint32"), 
                                                       seed),
                      b,
                      ident bias_name,
                      ident bias_asgn)

        prgm.add newLetStmt(ident name,
                            newCall("add", scope,
                                           newCall("matMul", scope, 
                                                             ident inname, 
                                                             ident weight_name),
                                           ident biasname))
    else:
        prgm.add newLetStmt(ident name,
                            newCall("matMul", scope, 
                                              ident inname, 
                                              ident weight_name))

register_function(dense)
