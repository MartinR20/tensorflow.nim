import macros, tables, math, hashes

from ../ops import
    variableV2, assign, zerosLike, empty

from ../ops/prob import 
    statelessRandomNormal

import ../ops/gradients 
import ../ops/custom_ops 

include ../with

const _* = 0

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
    storage: Table[string, NimNode]

    when defined debug:
        loss: NimNode
        output: NimNode

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

macro register_variable*(ctx: static Ctx, shape: static seq[int], v: untyped, asgn: untyped) =
    ctx[].vars.shape.add shape
    ctx[].vars.v.add v
    ctx[].vars.init.add asgn

proc vs(ctx: Ctx): NimNode {.compileTime.} = 
    result = newNimNode(nnkBracket)
    
    for v in ctx[].vars.v:
        if $v != "_":
            result.add newCall("anyToInvalid", v)

macro vs(ctx: static Ctx): untyped = 
    result = ctx.vs

macro inits(ctx: static Ctx): untyped = 
    result = newNimNode(nnkBracket)

    for init in ctx[].vars.init:
        result.add newCall("anyToInvalid", init)

proc opts(ctx: Ctx): NimNode {.compileTime.} = 
    result = newNimNode(nnkBracket)

    for opt in ctx[].vars.opt:
        result.add newCall("anyToInvalid", opt)
    
macro opts(ctx: static Ctx): untyped = 
    result = ctx.opts

macro scope*(ctx: static Ctx): untyped = 
    result = ctx[].scope

macro sess*(ctx: static Ctx): untyped = 
    result = ctx[].sess

macro dtype*(ctx: static Ctx, T: type) = 
    ctx[].dtype = ident $T

macro dtype*(ctx: static Ctx): typedesc =
    result = ctx[].dtype

macro input*(ctx: static Ctx, x: untyped): untyped = 
    let sym = genSym(nskLet, "input")
    ctx[].input = sym 
    result = newLetStmt(sym, x)

macro input*(ctx: static Ctx): untyped =
    ctx[].input

macro feed*(ctx: static Ctx): untyped =
    result = ctx[].feed

macro feed*(ctx: static Ctx, name: static string, o: oall): untyped =
    let sym = genSym(nskLet, "feed_in")
    ctx[].feed_translate[name] = sym
    result = newLetStmt(sym, o)

macro feed*(ctx: static Ctx, name: static string, value: Tensor[oall]): untyped =
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
    macro loss*(ctx: static Ctx, x: untyped): untyped = 
        let sym = genSym(nskLet, "loss")
        ctx[].loss = sym 
        result = newLetStmt(sym, x)

    macro loss*(ctx: static Ctx): untyped =
        result = ctx[].loss

    macro output*(ctx: static Ctx, x: untyped): untyped = 
        let sym = genSym(nskLet, "output")
        ctx[].output = sym 
        result = newLetStmt(sym, x)

    macro output*(ctx: static Ctx): untyped =
        result = ctx[].output

template initalize*(ctx: static Ctx): untyped = 
    var init_vars = newOutList(ctx.inits)
    
    error runSessionVoid(ctx.sess, init_vars)

template train*(ctx: static Ctx, iters: static int, x: untyped, y: untyped): untyped = 
    var opt_vars = newOutList(ctx.opts())

    ctx.feed("x", x)
    ctx.feed("y", y)

    when defined dweight:
        var vvar = newOutList(ctx.vs)
        for o in runSession(ctx.sess, ctx.feed, vvar):
            echo "init: ", o
    
    for _ in 0..iters-1:
        when defined debug:
            echo "loss:    ", runSession(ctx.sess, ctx.feed, ctx.loss)[0].value_str

            when defined dweight:
                echo "output: ", runSession(ctx.sess, ctx.feed, ctx.output)[0].value_str
                for o in runSession(ctx.sess, ctx.feed, opt_vars):
                    echo "opt: ", o
        else:
            error runSessionVoid(ctx.sess, ctx.feed, opt_vars)
        

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

    var i = 0
    for v in ctx[].vars.v:
        if $v == "_":
            continue

        var blueprint = args[^1].copy
        
        let ivar = genSym(nskLet, $args[0])
        let grad = genSym(nskLet, $args[1])

        blueprint = blueprint.replace(args[0], ivar)
        blueprint = blueprint.replace(args[1], grad)

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
            blueprint = blueprint.replace(arg, ov)

            # @Improvment: make op that creates a tensor full of zeros instead of using zerosLike 
            # empty
            let empty = genSym(nskLet, "empty")
            with.add newLetStmt(empty, newCall("zerosLike", empty0).."output")

            let asgn = genSym(nskLet, "asgn")
            with.add newLetStmt(asgn, newCall("assign", ov, empty).."output")

            # @Note: need to pass `ident "_" ` if multiple optimizers are allowed
            result.add newCall("register_variable", (newLit ctx.int).."Ctx", seq_shape, ov, asgn)

        let optim = genSym(nskLet, "optim")
        result.add newLetStmt(optim, blueprint)
        ctx[].vars.opt.add optim

        i += 1

template random_init*[N](ctx: static Ctx, ishape: static array[N, int]): untyped =
    with ctx.scope:
        constant:
            let rand_shape = ishape.oint32
            let rand_seed = seed().oint32
            let rand = statelessRandomNormal(rand_shape, rand_seed, ctx.dtype).output
    rand

template xavier_init*[N](ctx: static Ctx, ishape: static array[N, int]): untyped =
    template rsqrt(x: float): float =
        1.0 / x.sqrt

    var units = 1
    for dim in ishape[0..^2]: units *= dim

    with ctx.scope:
        constant:
            let rand_shape = ishape.oint32
            let rand_seed = seed().oint32
            let gamma = to(units.float.rsqrt, ctx.dtype)
            let rand = statelessRandomNormal(rand_shape, rand_seed, ctx.dtype).output * gamma
    rand

template one_init*[N](ctx: static Ctx, ishape: static array[N, int]): untyped =
    with ctx.scope:
        constant:
            let one_shape = ishape.oint32
            let one = zerosLike(empty(one_shape, ctx.dtype).output).output + to(1, ctx.dtype)
    one

template zero_init*[N](ctx: static Ctx, ishape: static array[N, int]): untyped =
    # @Improvment: make op that creates a tensor full of zeros instead of using zerosLike 
    # empty
    with ctx.scope:
        constant:
            let zero_shape = ishape.oint32
            let zero = zerosLike(empty(zero_shape, ctx.dtype).output).output
    zero

var unique_counter {.compileTime.} = 0

proc get_unique_int*(): int {.compileTime.} =
    result = unique_counter
    unique_counter += 1    

template variable*[N](ctx: static Ctx, name: static string, vshape: static array[N, int], initalizer: untyped, opt: static bool = true): untyped = 
    with ctx.scope:
        # @Note: getting around name shadowing in tensorflow with a unique identifier at
        # the end of each variable. This for example avoids that different filters of convolutions
        # get confused with each other.
        let v = variableV2("", name & "_" & $get_unique_int(), vshape.shape, ctx.dtype).output
        let asgn = assign(v, ctx.initalizer(vshape)).output
    when opt:
        ctx.register_variable(@vshape, v, asgn)
    else:
        # @Volatile: need to check for underscore on every access     
        ctx.register_variable(@vshape, _, asgn)
    v

when isMainModule:
    import 
        inputs, activs, conv2ds, reshapes, 
        denses, losses, optims, rnn

    new_ctx(ctx)
    ctx.input(ofloat, @[1, 9, 9, 3])
    ctx.reshape([1, 9, 27])
    ctx.GRU(100, relu)
    ctx.flatten()
    ctx.dense(12)
    ctx.activ(softmax)

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

    let y = [[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]].tensor(ofloat)

    ctx.train(10, x, y)