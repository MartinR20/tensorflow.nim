import macros, tables, hashes, ../core

from strutils import
    parseEnum,
    split,
    join,
    replace
    
from ../ops import
    nconst

from ../ops/make/conversions import
    d_to_o

type 
    NnsKind* = enum
        nnsInput,
        nnsVar,
        nnsLayer,
        nnsModel,
        nnsCode,
        nnsLoad,
        nnsConst,
        nnsSym

    NnsNode* = ref NnsNodeObj

    NnsNodeObj* = object
        name*: string
        shape*: seq[int]
        dtype*: DType
        id*: int

        case kind: NnsKind
        of nnsInput:
            feed*: NimNode
        of nnsModel:
            layers*: seq[NnsNode]
        of nnsLayer:
            args: seq[NnsNode]
        of nnsCode:
            code*: NimNode    
        of nnsLoad:
            files*: seq[string]
        of nnsVar:
            v*: string
        of nnsConst:
            val*: NimNode
        of nnsSym:
            sym*: string

proc `$`(node: NnsNode): string =
    case node.kind:
    of nnsInput:
        result = "Input " & $node.shape & " " & $node.dtype
    of nnsModel:
        result = "Model"
    of nnsLayer:
        result = "Layer:\n"

        for arg in node.args:
            result &= "    " & $arg & "\n"
    of nnsCode:
        result = "Code:\n    " & node.code.repr[1..^1].replace("\n", "\n    ")
    of nnsLoad:
        result = "Load:\n"

        for file in node.files:
            result &= "    " & file & "\n"
    of nnsVar:
        result = "Var " & node.v
    of nnsConst:
        result = "Const " & (repr node.val) & " " & $node.shape & " " & $node.dtype
    of nnsSym:
        result = "Sym " & node.sym

proc interrepr(node: static NnsNode): string =
    result &= "Model:\n"
    for n in node.layers:
        case n.kind:
        of nnsModel:
            result &= "    " & interrepr(n).replace("\n", "\n    ")[0..^5]
        else: 
            result &= "    " & ($n).replace("\n", "\n    ")[0..^1] & "\n"

proc add(model: NnsNode, layer: NnsNode) =
    model.layers.add layer

proc unique_name(node: NnsNode, model: string) =
    node.name = model & "_" & $node.kind & "_" & $node.id

proc seqFromAst*(ast: NimNode, T: type): seq[T] =
    var s = newSeq[T](ast.len)

    for i,lit in ast: 
        when T is int:
            s[i] = lit.intVal.int 
        elif T is string:
            s[i] = lit.strVal
        else:
            error("Unsupported type.", ast)

    return s

proc dtypeFromONode(node: NimNode): DType =
    return parseEnum[DType] node.strVal

proc parse(name: NimNode, cmds: NimNode): NnsNode = 
    var id = 0

    let n_str = name.strVal
    result = NnsNode(kind: nnsModel,
                     name: n_str,
                     id: id)

    for cmd in cmds:
        id += 1

        case $cmd[0]:
        of "input":
            let node = NnsNode(kind: nnsInput,
                               feed: cmd[1],
                               shape: cmd[2].seqFromAst(int),
                               dtype: cmd[3].dtypeFromONode,
                               id: id)
            node.unique_name n_str
            result.add node

        of "vars":
            let node = NnsNode(kind: nnsVar,
                               v: cmd[1].strVal,
                               id: id)
            node.unique_name n_str
            result.add node

        of "model":
            result.add parse(cmd[1], cmd[2])

        of "code":
            result.add NnsNode(kind: nnsCode,
                               code: cmd[1],
                               id: id)

        of "load":
            result.add NnsNode(kind: nnsLoad,
                               files: cmd[1].seqFromAst(string),
                               id: id)

        else:
            let node = NnsNode(kind: nnsLayer,
                               id: id)
            
            for arg in cmd[1..^1]:
                id += 1

                case arg.kind:
                of nnkLiterals, nnkBracket:
                    node.args.add NnsNode(kind: nnsConst,
                                          val: arg,
                                          id: id)
                of nnkIdent:
                    node.args.add NnsNode(kind: nnsSym,
                                          id: id)
                else:
                    error("Invalid type for argument " & $arg.kind & ".", arg)

            result.add node

proc typecheck(ast: NnsNode) = 
    discard

proc hash(n: NimNode): Hash =
    return hash(repr n)

proc codegen(ast: NnsNode, const_cache: var Table[NimNode, NimNode]): NimNode = 
    let scope = genSym(nskLet, "const")
    let scope_let = newLetStmt(scope, newCall("newRootScope"))

    case ast.kind: 
    of nnsInput:
        result = newEmptyNode()
    of nnsModel:
        result = newNimNode(nnkStmtList)

        for layer in ast.layers:
            result.add layer.codegen const_cache
    of nnsLayer:
        result = newNimNode(nnkStmtList)

        for arg in ast.args:
            result.add arg.codegen const_cache
    of nnsCode:
        result = ast.code
    of nnsLoad:
        result = newEmptyNode()
    of nnsVar:
        result = newEmptyNode()
    of nnsConst:
        case const_cache.hasKey(ast.val):
        of false:
            let sym = genSym(nskLet, "const")
            const_cache[ast.val] = sym
            let tensor = newCall("tensor", ast.val, ident d_to_o[ast.dtype])
            let nconst = newCall("nconst", scope, tensor)
            result = newLetStmt(sym, nconst)
            
        of true:
            result = const_cache[ast.val]

    of nnsSym:
        result = newEmptyNode()

macro model*(name: untyped, cmds: untyped): untyped =
    var ast = parse(name, cmds)

    var const_cache: Table[NimNode, NimNode]
    result = ast.codegen const_cache
    echo treerepr result

#[
def conv2d(channels: const, 
           kernels: const,
           strides: const, 
           padding: const = "SAME",
           dataformat: const = "NHWC",
           dilations: const = [1, 1],
           useCudnnOnGpu=true):
    conv2D
]#

when isMainModule:
    model m0:
        load ["x.csv", "y.csv", "pi.csv"]

        vars v

        model m1:
            vars m
            vars y
            conv2d 3, [2, 2], [2, 2]
            conv2d_transpose 3, [2, 2], [2, 2]
            some_layer 3, [[2,1]], v, m1

            code:
                let y = 4
                echo y

        code:
            let x = 10
            echo x