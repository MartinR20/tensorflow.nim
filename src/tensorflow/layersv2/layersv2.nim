import 
    globals, activations, commands, conv2d as cv2d, dense as d, inputs, losses, optims,
    vars as v, inputs
    
from ../core import
    Scope, Session

from ../ops/gen import 
    variableV2, variableV2ToOut, 
    assign, assignToOut,
    empty, emptyToOut,
    nconst, nconstToOut
    
export
    variableV2, variableV2ToOut, 
    assign, assignToOut,
    empty, emptyToOut,
    nconst, nconstToOut,
    inputs, 
    globals, `[]=` , `%*` # used for registration table

var functionmap* {.compileTime.} = 
    initTable[string, proc(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode)]()

macro register_function*(name: untyped): untyped =
    return newNimNode(nnkStaticStmt)
                .add(newNimNode(nnkAsgn)
                    .add(newNimNode(nnkBracketExpr)
                            .add(ident "functionmap")
                            .add(newLit $name))
                    .add(name))

register_function(input)
register_function(dense)
register_function(activation)
register_function(loss)
register_function(optim)
register_function(vars)
register_function(conv2d)
register_function(conv2d_transpose)

var commandmap* {.compileTime.} = 
    initTable[string, proc(prgm: NimNode, model: string, sess: NimNode)]()

macro register_command*(name: untyped): untyped =
    return newNimNode(nnkStaticStmt)
                .add(newNimNode(nnkAsgn)
                    .add(newNimNode(nnkBracketExpr)
                            .add(ident "commandmap")
                            .add(newLit $name))
                    .add(name))

register_command(init)
register_command(run)

proc blank*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = unique_name("blank", model, i)

    prgm.add newLetStmt(ident name, ident command[3].strVal)
    echo treerepr prgm

    metadata[model].add %*{
        "name": newJString name,
        "shape": %*command[1].seqFromAst,
        "dtype": newJString command[2].strVal,
        "output": newJString command[3].strVal
    }

register_function(blank)


proc model(name: NimNode, scope: NimNode, sess: NimNode, x: NimNode): NimNode = 
    let prgm = newStmtList()

    let model = $name
    if not metadata.hasKey(model):
        prgm.add newNimNode(nnkVarSection).add(newIdentDefs(name, ident "oinvalid"))
        globalVars[model] = @[]
        optimVars[model] = @[]
        nonoptimVars[model] = @[]
        metadata[model] = newJArray()
        constLookUp[model] = initTable[string, NimNode]()

    var func_count = 0
    for i, command in x:
        case command.kind:
        of nnkCommand:
            let fn = $command[0]
            if functionmap.hasKey(fn):
                functionmap[fn](prgm, model, scope, func_count, command)

            elif fn == "model":
                let model_name = $command[1]
                let cmds = command[2]

                var make_blank = false

                firstmatch model, "output", idx:
                    make_blank = true

                if make_blank:
                    let curr_meta = metadata[model][func_count-1]
                    let shape = newLit curr_meta["shape"].to(seq[int])

                    cmds.insert(0, newNimNode(nnkCommand)
                                        .add(ident "blank")
                                        .add(shape[1])
                                        .add(ident curr_meta["dtype"].to(string))
                                        .add(ident curr_meta["output"].to(string)))

                prgm.add model(ident model_name, scope, sess, cmds)

                var meta: JsonNode

                firstmatch model_name, "output", idx1:
                    meta = metadata[model_name][idx1]

                metadata[model].add %*{
                    "name": newJString("model_" & $i),
                    "shape": meta["shape"],
                    "dtype": meta["dtype"],
                    "output": meta["output"],
                    "metadata": metadata[model_name]
                }

            else:
                error("Trying to use unkown function " & fn & ".", command)

            func_count += 1

        of nnkIdent:
            let cmd = $command
            if commandmap.hasKey(cmd):
                commandmap[cmd](prgm, model, sess)
            else:
                error("Trying to use unkown command " & cmd & ".", command)
        else:
            error("Invalid Syntax.", command)

    firstmatch model, "output", i:
        prgm.add newNimNode(nnkAsgn)
            .add(name)
            .add(newCall("anyToInvalid", ident metadata[model][i]["output"].to(string)))

    return prgm

macro model*(name: untyped, scope: Scope, sess: Session, x: untyped): untyped =
    return model(name, scope, sess, x)    

# when isMainModule:
#     let scope = newRootScope()
#     let sess = scope.newSession()

#     let ten = tensor([[[[1], [1], [1]],
#                        [[2], [2], [2]],
#                        [[3], [3], [3]]]], ofloat)
    
#     model m0, scope, sess:
#         input ten, [1,3,3,1], ofloat
#         conv2d 3, [2, 2], [2, 2]
#         conv2d_transpose 3, [2, 2], [2, 2]
#         # dense 100, true
#         # activation relu
#         # dense 50, false 
#         # activation sigmoid
#         # dense 10
#         # activation softmax
#         # loss l2Loss
#         vars m
#         vars v
#         optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8

#     model m0, scope, sess:
#         init
#         run 
