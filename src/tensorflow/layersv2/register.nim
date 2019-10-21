import 
    globals, activations, commands, conv2d as cv2d, dense as d, inputs, losses, optims,
    vars as v, macros, json, tables, ../core, ../ops, ../ops/nn,
    ../ops/prob, ../ops/nn/optim as opt, ../ops/math

export
    core, ops, nn, prob, optim, math


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

macro model*(name: untyped, scope: untyped, sess: untyped, x: untyped): untyped = 
    let prgm = newStmtList()

    let model = $name
    if not metadata.hasKey(model):
        prgm.add newNimNode(nnkVarSection).add(newIdentDefs(name, ident "oinvalid"))
        globalVars[model] = @[]
        optimVars[model] = @[]
        nonoptimVars[model] = @[]
        metadata[model] = newJArray()
        constLookUp[model] = initTable[string, NimNode]()

    for i, command in x:
        case command.kind:
        of nnkCommand:
            let fn = $command[0]
            if functionmap.hasKey(fn):
                functionmap[fn](prgm, model, scope, i, command)
            else:
                raise newException(ValueError, "Well..., you fucked up!?")
        of nnkIdent:
            let cmd = $command
            if commandmap.hasKey(cmd):
                commandmap[cmd](prgm, model, sess)
            else:
                raise newException(ValueError, "Well..., you fucked up!?")
        else:
            raise newException(ValueError, "Well..., you fucked up!?")

    let i = metadata[model].len
    var cdown = 1
    while i >= cdown:
        if metadata[model][i-cdown].hasKey("output"):
            prgm.add newNimNode(nnkAsgn)
                        .add(name)
                        .add(newCall("anyToInvalid", ident metadata[model][i-cdown]["output"].to(string)))
            break

        cdown += 1

    return prgm


when isMainModule:
    let scope = newRootScope()
    let sess = scope.newSession()

    let ten = tensor([[[[1], [1], [1]],
                       [[2], [2], [2]],
                       [[3], [3], [3]]]], ofloat)
    
    model m0, scope, sess:
        input ten, [1,3,3,1], ofloat
        conv2d 3, [2, 2], [2, 2]
        conv2d_transpose 3, [2, 2], [2, 2]
        # dense 100, true
        # activation relu
        # dense 50, false 
        # activation sigmoid
        # dense 10
        # activation softmax
        # loss l2Loss
        vars m
        vars v
        optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8

    model m0, scope, sess:
        init
        run 
