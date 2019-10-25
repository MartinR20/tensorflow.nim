import 
    globals, inputs, vars, commands
    
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
    inputs, commands, vars,
    globals, `[]=` , `%*` # used for registration table

proc blank*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = unique_name("blank", model, i)

    prgm.add newLetStmt(ident name, ident command[3].strVal)

    metadata[model].add %*{
            "name": newJString name,
            "shape": %*command[1].seqFromAst,
            "dtype": newJString command[2].strVal,
            "output": newJString command[3].strVal
        }

    let val = command.getOrDefault(4, "").strVal

    if val != "":
        metadata[model][i]["feed"] = newJString val

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

                    let cmd = newNimNode(nnkCommand)
                                .add(ident "blank")
                                .add(shape[1])
                                .add(ident curr_meta["dtype"].to(string))
                                .add(ident curr_meta["output"].to(string))

                    firstmatch model, "feed", idx:
                        cmd.add newLit metadata[model][idx]["feed"].to(string)
                        
                    cmds.insert(0, cmd)

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

    echo repr prgm
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
