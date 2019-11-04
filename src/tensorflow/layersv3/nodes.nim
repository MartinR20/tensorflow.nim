import macros, tables, math

from ../ops import
    variableV2, assign, zerosLike, empty

from ../ops/gradients import
    addSymbolicGradients

include ../with

template seed*(): untyped =
    const seed {.intdefine.}: int = 2
    # some prime number fun to get a different value
    const seed2 = (seed * 23) %% 41 

    [seed, seed2] 

var consts {.compileTime.} = initTable[string, NimNode]()

macro constant*(x: untyped): untyped =
    # @TODO: adjust cache for statelessRandomNormal in conv2d
    result = x

    for c in x:
        case c.kind:
        of nnkLetSection, nnkVarSection:
            let key = repr c[0][2]

            if consts.hasKey(key):
                result.add(newLetStmt(c[0][0], consts[key]))
            else:
                consts[key] = c[0][0]

        else:  
            error("A constant has to consist of asgn stmts!")

type Ctx* = distinct int

type IVar = ref object
    shape: seq[seq[int]]
    opt: seq[NimNode]
    init: seq[NimNode]
    v: seq[NimNode]

type CtxObj* = ref object
    shape*: seq[int]
    scope*: NimNode
    sess*: NimNode
    feed*: NimNode
    feed_translate: Table[string, NimNode]
    input*: NimNode
    dtype*: NimNode
    vars: IVar

    when defined debug:
        loss: NimNode

var ctxs {.compileTime.}: seq[CtxObj]

macro init_ctx(ctx: static Ctx): untyped =
    let ictx = ctxs[ctx.int]
    result = newStmtList()
    result.add newLetStmt(ictx.scope, newCall("newRootScope"))
    result.add newLetStmt(ictx.sess, newCall("newSession", ictx.scope))
    result.add newNimNode(nnkVarSection)
                .add(newIdentDefs(ictx.feed, ident "FeedDict"))

template `[]`(ctx: Ctx): untyped =
    ctxs[ctx.int]

template new_ctx(ctx: untyped): untyped =
    const ctx = Ctx ctxs.len

    static:
        ctxs.add new CtxObj
        
        ctx[].scope = genSym(nskLet, "scope")
        ctx[].sess = genSym(nskLet, "sess") 
        ctx[].feed = genSym(nskVar, "feed")
        ctx[].feed_translate = initTable[string, NimNode]()
        ctx[].vars = new IVar

    init_ctx(ctx)

macro variable*(ctx: static Ctx, shape: static seq[int], v: untyped, asgn: untyped) =
    ctx[].vars.shape.add shape

    ctx[].vars.v.add v
    ctx[].vars.init.add asgn

proc vs(ctx: Ctx): NimNode {.compileTime.} = 
    result = newNimNode(nnkBracket)
    
    for v in ctx[].vars.v:
        result.add newCall("anyToInvalid", v)

macro inits(ctx: static Ctx): untyped = 
    result = newNimNode(nnkBracket)

    for init in ctx[].vars.init:
        result.add newCall("anyToInvalid", init)

macro opts(ctx: static Ctx): untyped = 
    result = newNimNode(nnkBracket)

    for opt in ctx[].vars.opt:
        result.add newCall("anyToInvalid", opt)

macro scope*(ctx: static Ctx): untyped = 
    result = ctx[].scope

macro sess*(ctx: static Ctx): untyped = 
    result = ctx[].sess

macro dtype*(ctx: static Ctx, T: type) = 
    ctx[].dtype = ident $T

macro dtype*(ctx: static Ctx): typedesc =
    result = ctx[].dtype

macro input*(ctx: static Ctx, x: untyped) = 
    ctx[].input = x

macro input*(ctx: static Ctx): untyped =
    ctx[].input

macro feed*(ctx: static Ctx): untyped =
    result = ctx[].feed

macro feed*(ctx: static Ctx, name: static string, o: oall) =
    ctx[].feed_translate[name] = o

macro feed*(ctx: static Ctx, name: static string, value: Tensor[oall]) =
    result = newNimNode(nnkAsgn)
                .add(newNimNode(nnkBracketExpr)
                        .add(ctx[].feed)
                        .add(ctx[].feed_translate[name]))
                .add(value)

macro nshape*(ctx: static Ctx, x: static seq[int]) = 
    ctx[].shape = x

macro nshape*(ctx: static Ctx): untyped =
    result = newLit ctx[].shape

when defined debug:
    macro loss*(ctx: static Ctx, x: untyped) = 
        ctx[].loss = x

    macro loss*(ctx: static Ctx): untyped =
        result = ctx[].loss

template initalize*(ctx: static Ctx): untyped = 
    var init_vars = newOutList(ctx.inits)
    error runSessionVoid(ctx.sess, init_vars)

template train*(ctx: static Ctx, iters: static int, x: untyped, y: untyped): untyped = 
    var opt_vars = newOutList(ctx.opts())
    # var vars = newOutList(ctx.vs())
    ctx.feed("x", x)
    ctx.feed("y", y)
    
    when defined debug:
        echo runSession(ctx.sess, ctx.feed, ctx.loss)[0]

    while runSessionVoid(ctx.sess, ctx.feed, opt_vars) != ok():
        ctx.initalize()

    for _ in 0..iters-1:
        discard runSessionVoid(ctx.sess, ctx.feed, opt_vars)

    when defined debug:
        echo runSession(ctx.sess, ctx.feed, ctx.loss)[0]

proc replace(x: NimNode, target: NimNode, value: NimNode): NimNode {.compileTime.} =
    result = copy x

    for i,c in result:
        if c == target:
            result[i] = value
        else:
            result[i] = c.replace(target, value)

proc newVar(name: string | NimNode, T: NimNode = newEmptyNode(), val: NimNode = newEmptyNode()): NimNode =
    result = newNimNode(nnkVarSection)
    result.add newNimNode(nnkIdentDefs)

    when name is NimNode:
        result[0].add name 
    else:
        result[0].add ident name 

    result[0].add T 
    result[0].add val 

proc `[]`(a: string | NimNode, b: string | NimNode): NimNode =
    result = newNimNode(nnkBracketExpr)

    when a is NimNode:
        result.add a 
    else:
        result.add ident a 

    when b is NimNode:
        result.add b 
    else:
        result.add ident b

proc `..`(a: string | NimNode, b: string | NimNode): NimNode =
    result = newNimNode(nnkDotExpr)

    when a is NimNode:
        result.add a 
    else:
        result.add ident a 

    when b is NimNode:
        result.add b 
    else:
        result.add ident b  

macro forvarsgrad*(ctx: static Ctx, args: varargs[untyped]) =
    result = newStmtList()

    result.add newVar("grad_out", "olist"["oinvalid"])
    result.add newCall("addSymbolicGradients", ctx[].scope, ctx[].input, newCall("newOutList"["oinvalid"], ctx.vs), ident "grad_out")

    for i, v in ctx[].vars.v:
        let ivar = genSym(nskLet, $args[0])
        let grad = genSym(nskLet, $args[1])

        args[^1] = args[^1].replace(args[0], ivar)
        args[^1] = args[^1].replace(args[1], grad)

        result.add newLetStmt(ivar, v)
        result.add newLetStmt(grad, newCall("invalidToAny"["ofloat"], "grad_out"[newLit i]))

        for j, arg in args[2..^2]:
            result.add newNimNode(nnkCommand)
            let cmd = result[^1]
            cmd.add ident "with"
            cmd.add ctx[].scope

            let seq_shape = newLit ctx[].vars.shape[i]
            let arr_shape = seq_shape[^1]

            cmd.add newStmtList()
            let with = cmd[^1]

            let empty0 = genSym(nskLet, "empty")
            with.add newLetStmt(empty0, newCall("empty", arr_shape.."oint32", ctx[].dtype).."output")

            let ov = genSym(nskLet, $arg)
            with.add newLetStmt(ov, newCall("variableV2", newLit"", newLit($arg & $i & $j), arr_shape.."shape", ctx[].dtype).."output")
            args[^1] = args[^1].replace(arg, ov)

            # @Improvment: make op that creates a tensor full of zeros instead of using zerosLike 
            # empty
            let empty = genSym(nskLet, "empty")
            with.add newLetStmt(empty, newCall("zerosLike", empty0).."output")

            let asgn = genSym(nskLet, "asgn")
            with.add newLetStmt(asgn, newCall("assign", ov, empty).."output")

            result.add newCall("variable", (newLit ctx.int).."Ctx", seq_shape, ov, asgn)

        let optim = genSym(nskLet, "optim")
        result.add newLetStmt(optim, args[^1])
        ctx[].vars.opt.add optim

when isMainModule:
    import 
        inputs, activs, conv2ds, flattens, 
        denses, losses, optims

    new_ctx(ctx)
    ctx.input(ofloat, @[1, 9, 9, 3])
    ctx.activ(relu)
    ctx.conv2d(3, [2, 2], [2, 2])
    ctx.activ(relu)
    ctx.conv2d(3, [2, 2], [2, 2])
    ctx.activ(relu)
    ctx.conv2d(3, [3, 3], [2, 2])
    ctx.activ(relu)
    ctx.flatten()
    ctx.dense(12)

    ctx.mse()
    ctx.adam()
    ctx.initalize()

    let x = [[
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]],
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]],
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]],
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]],
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]],
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]],
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]],
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]],
        [[0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0], [0.5, 0.5, 1.0]]
    ]].tensor(ofloat)

    let y = [[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]].tensor(ofloat)

    ctx.train(100, x, y)

    