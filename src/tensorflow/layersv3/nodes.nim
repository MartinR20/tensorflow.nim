import macros, tables, hashes, ../core

from sequtils import 
    toseq

from strutils import
    parseEnum,
    split,
    join,
    replace
    
from ../ops import
    nconst, placeholder

from ../ops/make/conversions import
    d_to_o

type 
    NnsKind* = enum
        nnsVar,
        nnsLayer,
        nnsModel,
        nnsCode,
        nnsConst,
        nnsSym,
        nnsRun

    NnsNode* = ref NnsNodeObj

    NnsNodeObj* = object
        ident: NimNode

        case kind: NnsKind
        of nnsModel:
            m*: string
            layers*: seq[NnsNode]
        of nnsLayer:
            templ: NimNode
            args: seq[NnsNode]
        of nnsCode:
            code*: NimNode    
        of nnsVar:
            v*: string
        of nnsConst:
            val*: NimNode
        of nnsSym:
            sym*: NnsNode
        of nnsRun:
            opts: seq[NnsNode]

proc `$`(node: NnsNode): string =
    case node.kind:
    of nnsModel:
        result = "Model " & node.m
    of nnsLayer:
        result = "Layer:\n"

        for arg in node.args:
            result &= "    " & $arg & "\n"
    of nnsCode:
        result = "Code:\n    " & node.code.repr[1..^1].replace("\n", "\n    ")
    of nnsVar:
        result = "Var " & node.v
    of nnsConst:
        result = "Const " & (repr node.val)
    of nnsSym:
        result = "Sym to " & $node.sym
    of nnsRun:
        result = "run"

proc interrepr(node: NnsNode): string =
    result &= "Model:\n"
    for n in node.layers:
        case n.kind:
        of nnsModel:
            result &= "    " & interrepr(n).replace("\n", "\n    ")[0..^5]
        else: 
            result &= "    " & ($n).replace("\n", "\n    ")[0..^1] & "\n"

proc add(model: NnsNode, layer: NnsNode) =
    model.layers.add layer

proc seqFromAst*(ast: NimNode, T: type): auto =
    result = newSeq[T](ast.len)

    for i,lit in ast: 
        when T is int:
            result[i] = lit.intVal.int 
        elif T is string:
            result[i] = lit.strVal
        else:
            error("Unsupported type.", ast)

proc dtypeFromONode(node: NimNode): DType =
    return parseEnum[DType] node.strVal

proc hash(n: NimNode): Hash =
    return hash(repr n)

var variables {.compileTime.}: seq[NimNode]

macro vars*(x: untyped): untyped =
    result = x

    for v in x:
        variables.add v[0][0]

var inits {.compileTime.}: seq[NimNode]

macro initalize*(x: untyped): untyped =
    result = x

    for v in x:
        inits.add v[0][0]

var consts {.compileTime.}: Table[NimNode, NimNode]

macro constants*(x: untyped): untyped =
    result = x

    for c in x:
        consts[c[0][1]] = c[0][0]

var snapshottable {.compileTime.}: Table[NimNode, seq[NimNode]]

macro snapshotvars(v_ident: untyped) = 
    var vars: seq[NimNode]

    for v in variables:
        vars.add newCall("anyToInvalid", v)

    snapshottable[v_ident] = vars

macro replicate(v_ident: untyped, session: untyped, blueprintast: untyped): untyped =
    result = newNimNode(nnkStmtList)

    var blueprint = blueprintast

    while blueprint[0] == ident "replicate":
        blueprint = blueprint[^1]

    for i, val in blueprint[0][^1][6..^1]:
        if val.kind == nnkIdent:
            let vars = snapshottable[v_ident]
            let node = newNimNode(nnkCall)
            node.add newNimNode(nnkBracketExpr).add(ident "newOutList").add(ident "oinvalid")

            result.add newNimNode(nnkCommand).add(ident "echo").add(newCall("runSessionVoid", session, node))

            for v in vars:
                blueprint[0][^1][i + 6] = v
                result.add blueprintast
            break

macro run(session: untyped, feed: untyped): untyped =
    let vars = newNimNode(nnkCall)
    vars.add newNimNode(nnkBracketExpr).add(ident "newOutList").add(ident "oinvalid")

    for v in variables:
        vars.add v

    let init = newNimNode(nnkCall)
    init.add newNimNode(nnkBracketExpr).add(ident "newOutList").add(ident "oinvalid")

    for i in inits:
        init.add i

    result = newNimNode(nnkStmtList)
    result.add newNimNode(nnkCommand).add(ident "echo").add(newCall("runSessionVoid", session, init))
    result.add newNimNode(nnkCommand).add(ident "echo").add(newCall("runSession", session, feed, vars))
    echo repr result

proc parse(available_symbols: Table[string, NnsNode], name: NimNode, cmds: NimNode): NnsNode = 
    result = NnsNode(kind: nnsModel, m: name.strVal)
    var current_symbols = available_symbols

    for cmd in cmds:
        if cmd.len != 0:
            case $cmd[0]:
            of "vars":
                let node = NnsNode(kind: nnsVar,
                                v: cmd[1].strVal)
                current_symbols[node.v] = node
                result.add node

            of "model":
                let node = parse(current_symbols, cmd[1], cmd[2])
                current_symbols[node.m] = node
                result.add node

            of "code":
                result.add NnsNode(kind: nnsCode,
                                code: cmd[1])

            of "run":
                let node = NnsNode(kind: nnsRun)
                
                for arg in cmd[1..^1]:
                    node.opts.add NnsNode(kind: nnsConst,
                                          val: arg)
            
                result.add node
            else:
                let node = NnsNode(kind: nnsLayer,
                                templ: cmd[0])
                
                for arg in cmd[1..^1]:
                    case arg.kind:
                    of nnkLiterals, nnkBracket:
                        node.args.add NnsNode(kind: nnsConst,
                                            val: arg)
                    of nnkIdent:
                        let key = arg.strVal

                        if current_symbols.hasKey(key):
                            node.args.add NnsNode(kind: nnsSym,
                                                  sym: current_symbols[key])
                        else:
                            node.args.add NnsNode(kind: nnsConst,
                                                  val: arg)
                    else:
                        error("Invalid type for argument " & $arg.kind & ".", arg)

                result.add node
        elif cmd == ident "run":
            result.add NnsNode(kind: nnsRun)
        else:
            result.add NnsNode(kind: nnsLayer,
                                templ: cmd)

proc replaceInputResult(input: NimNode, ast: NimNode): NimNode =
    for i, node in ast:
        case node.kind:
        of nnkIdent:
            if node == ident "input":
                ast[i] = input
        of nnkAsgn:
            if node[0] == ident "result":
                result = genSym(nskLet, "code")
                ast[i] = newLetStmt(result, node[1])
        else:
            result = replaceInputResult(input, node)

proc codegen(ast: NnsNode, input: NimNode,
             scope: NimNode, session: NimNode, shape: NimNode, dtype: NimNode, feed: NimNode,
             cache: var Table[NimNode, NimNode]): NimNode = 
    case ast.kind: 
    of nnsModel:
        result = newNimNode(nnkStmtList)

        var i = input
        for layer in ast.layers:
            let node = layer.codegen(i, scope, session, shape, dtype, feed, cache)
            result.add node
            i = layer.ident

        ast.ident = ast.layers[^1].ident
    of nnsLayer:
        let sym = genSym(nskLet, "Layer")
        ast.ident = sym

        let call = newNimNode(nnkCall)

        result = newNimNode(nnkLetSection)
                    .add(newNimNode(nnkIdentDefs)
                        .add(sym)
                        .add(newEmptyNode())
                        .add(call))

        call.add ast.templ
        call.add scope
        call.add shape
        call.add input
        call.add feed

        for arg in ast.args:
            case arg.kind:
            of nnsSym:
                case arg.sym.kind:
                of nnsVar:
                    # replicate code for all vars of the refered Var
                    result = newCall("replicate", ident arg.sym.v, session, result)
                    call.add ident arg.sym.v
                of nnsModel:
                    # get ident representing output of model
                    call.add arg.sym.ident
                else:
                    discard
            of nnsConst:
                call.add arg.codegen(input, scope, session, shape, dtype, feed, cache)
            else:
                discard

    of nnsCode:
        ast.ident = replaceInputResult(input, ast.code)
        result = ast.code
    of nnsVar:
        # get variables of current scope
        result = newCall("snapshotvars", ident ast.v)
        ast.ident = input
    of nnsConst:
        result = ast.val
        ast.ident = nil # explicitly set null to make it obvious that ident is never called
                        # on this kind of node
    of nnsSym:
        ast.ident = nil # explicitly set null to make it obvious that ident is never called
                        # on this kind of node
    of nnsRun: 
        result = newCall("run", session, feed)
        ast.ident = nil 

macro model*(name: untyped, cmds: untyped): untyped =
    var ast = parse(initTable[string, NnsNode](), name, cmds)
    echo interrepr ast

    var cache: Table[NimNode, NimNode]

    let scope = genSym(nskLet, "scope")
    let scope_let = newLetStmt(scope, newCall("newRootScope"))

    let session = genSym(nskLet, "session")
    let session_let = newLetStmt(session, newCall("newSession", scope))

    let shape = genSym(nskVar, "shape")
    let shape_var = newNimNode(nnkVarSection)
                        .add(newNimNode(nnkIdentDefs)
                                .add(newNimNode(nnkPragmaExpr)
                                    .add(shape)
                                    .add(newNimNode(nnkPragma)
                                        .add(ident "compileTime")))
                                .add(newNimNode(nnkBracketExpr)
                                        .add(ident "seq")
                                        .add(ident "int"))
                                .add(newEmptyNode()))

    let dtype = genSym(nskVar, "dtype")
    let dtype_var = newNimNode(nnkVarSection)
                        .add(newNimNode(nnkIdentDefs)
                            .add(newNimNode(nnkPragmaExpr)
                                .add(dtype)
                                .add(newNimNode(nnkPragma)
                                    .add(ident "compileTime")))
                            .add(newEmptyNode())
                            .add(newLit DT_INVALID))

    let feed = genSym(nskVar, "feed")
    let feed_var = newNimNode(nnkVarSection)
                        .add(newNimNode(nnkIdentDefs)
                                .add(feed)
                                .add(ident "FeedDict")
                                .add(newEmptyNode()))

    result = newNimNode(nnkStmtList)
    result.add scope_let
    result.add session_let
    result.add shape_var
    result.add dtype_var
    result.add feed_var
    result.add ast.codegen(newCall "oinvalid", scope, session, shape, dtype, feed, cache)
    echo repr result

when isMainModule:
    import conv2d
    import optim
    include ../with

    template input*(scope: Scope,
                 sh: var seq[int],
                 input: oall, 
                 feed: FeedDict,
                 dtype: type,
                 inshape: static openArray[int]): untyped = 

        static:
            sh = inshape.toseq

        let img = [[
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]],
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]],
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]],
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]],
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]],
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]],
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]],
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]],
            [[100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255], [100, 100, 255]]
        ]].tensor(ofloat)

        constants:
            let o_img = nconst(scope, img).output

        feed[o_img] = img

        placeholder(scope, dtype, inshape.shape).output

    model m0:
        #load ["x.csv", "y.csv", "pi.csv"]

        input ofloat, [1, 9, 9, 3]

        model m1:
            conv2d 3, [2, 2], [2, 2]
            conv2d 3, [2, 2], [2, 2]

        vars m
        vars v

        adam m, v

        run 100