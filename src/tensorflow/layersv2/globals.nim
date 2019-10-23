import 
    json, macros, tables
    
export 
    json, macros, tables

type Variable* = tuple
    name: NimNode 
    asgn: NimNode 
    shape: NimNode
    value: NimNode
    dtype: NimNode 

proc dimCheck*(layer: string, insize: JsonNode, dims: int) = 
    assert insize.len == dims, "The input shape for the layer " & layer & " should have " & 
                                $dims & " dimensions but has " & $insize.len & "!"

proc seqFromAst*(ast: NimNode): seq[int] =
    var s = newSeq[int](ast.len)

    for i,intLit in ast: 
        s[i] = intLit.intVal.int 

    return s

var globalVars  * {.compileTime.} : Table[string, seq[Variable]]
var optimVars   * {.compileTime.} : Table[string, seq[Variable]]
var nonoptimVars* {.compileTime.} : Table[string, seq[Variable]]
var constLookUp * {.compileTime.} : Table[string, Table[string,NimNode]]
var metadata    * {.compileTime.} : Table[string, JsonNode]
var feed        * {.compileTime.} : Table[string, seq[NimNode]]


proc variable*(prgm: NimNode, 
              model: string,
              scope: NimNode, 
              value: NimNode, 
              shape: NimNode, 
              name: NimNode,
              asgn: NimNode,
              optim: bool = false) =
    let lastmeta = metadata[model][metadata[model].len - 1]
    let dtype = ident lastmeta["dtype"].to(string)

    let v: Variable = (name, asgn, shape, value, dtype)
    globalVars[model].add v

    if optim:
        optimVars[model].add v 
    else:
        nonoptimVars[model].add v 

    let namelit = newLit v.name.strVal

    prgm.add newLetStmt(v.name,
                        newCall("variableV2", scope,
                                              newLit "",
                                              namelit,
                                              newCall("shape", v.shape),
                                              v.dtype))

    prgm.add newLetStmt(v.asgn,
                        newCall("assign", scope,
                                          v.name,
                                          v.value))


proc nconst*(prgm: NimNode, model: string, scope: NimNode, arr: NimNode, dtype: NimNode): NimNode =
    let value = newCall("nconst", scope, 
                        newCall("tensor", arr, dtype))

    if not constLookUp[model].hasKey(repr value):
        let res = genSym(nskLet, "const")
        constLookUp[model][repr value] = res
        prgm.add newLetStmt(res, value)
        return res
    else:
        return constLookUp[model][repr value]

proc get*(command: NimNode, pos: int): NimNode =
    if command.len > pos:
        return command[pos]
    else:
        raise newException(ValueError, "To few arguments for " & $command[0])

proc getOrDefault*[T](command: NimNode, pos: int, val: T): NimNode =
    if command.len > pos:
        return command[pos]
    else:
        return newLit val

proc discardNode*(node: NimNode): NimNode = 
    let n = newNimNode(nnkDiscardStmt)
    n.add node 
    return n

proc bracketExpr*(nodes: varargs[string]): NimNode =
    let n = newNimNode(nnkBracketExpr)

    for node in nodes:
        n.add ident node

    return n

proc processInput*(prgm: NimNode, model: string, scope: NimNode, arg: NimNode, otype: NimNode): NimNode =
    #TODO: use dynamicBindSym to check if it really is
    case arg.kind:
    of nnkLiterals, nnkBracketExpr:
        return prgm.nconst(model, scope, arg, otype)
    else:
        return arg

proc fromTo*(str: string, start: int, eend: char): string =
    let e = str.find(eend)-1

    return str[start..e]

template firstmatch*(model: string, cmd: string, i: untyped, x: untyped) = 
    var i = metadata[model].len - 1
    while i > -1:
        if metadata[model][i].hasKey(cmd):
            x
            break

        i -= 1

proc unique_name*(name: string, model: string, i: int): string =
    return name & "_" & model & "_" & $i