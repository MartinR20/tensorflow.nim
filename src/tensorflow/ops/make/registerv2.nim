import 
    wrapper, strutils, makeutils, ../../core, ../../utils, register_context,
    macros, tables, json, hashes, os, strformat

proc make_shared(T: static[string], args: varargs[string], move = true): static[string] =
    var ret = "std::make_shared<" & T & ">("

    if move:
        ret &= "std::move(" & args.join(", ") & ")"
    else:
        ret &= args.join(", ")
        
    ret &= ")"
    return ret

proc shared(T: static[string]): static[string] =
    return "std::shared_ptr<" & T & ">"

const WrapperT = "tensorflow::register_op::OpDefBuilderWrapper<true>"

type OpDefBuilderWrapper {.importcpp: shared(WrapperT), header:utils.op.} = object

proc opDefBuilderWrapper*(name: cstring): OpDefBuilderWrapper {.
    importcpp: make_shared(WrapperT, "#", false)
.}

proc Input*(wrapper: OpDefBuilderWrapper, def: cstring): OpDefBuilderWrapper {.
    importcpp: make_shared(WrapperT, "#->Input(#)")
.}

proc Output*(wrapper: OpDefBuilderWrapper, def: cstring): OpDefBuilderWrapper{.
    importcpp: make_shared(WrapperT, "#->Output(#)")
.}

proc Attr*(wrapper: OpDefBuilderWrapper, def: cstring): OpDefBuilderWrapper{.
    importcpp: make_shared(WrapperT, "#->Attr(#)")
.}

proc SetShapeFn*(wrapper: OpDefBuilderWrapper, def: proc(ctx: ptr InferenceContext): Status {.noconv .}): OpDefBuilderWrapper {.
    importcpp: make_shared(WrapperT, "#->SetShapeFn(#)")
.}

proc SetIsCommutative*(wrapper: OpDefBuilderWrapper): OpDefBuilderWrapper{.
    importcpp: make_shared(WrapperT, "#->SetIsCommutative()")
.}

proc SetIsAggregate*(wrapper: OpDefBuilderWrapper): OpDefBuilderWrapper{.
    importcpp: make_shared(WrapperT, "#->SetIsAggregate()")
.}

proc SetIsStateful*(wrapper: OpDefBuilderWrapper): OpDefBuilderWrapper{.
    importcpp: make_shared(WrapperT, "#->SetIsStateful()")
.}

proc SetAllowsUninitializedInput*(wrapper: OpDefBuilderWrapper): OpDefBuilderWrapper{.
    importcpp: make_shared(WrapperT, "#->SetAllowsUninitializedInput()")
.}

proc Deprecated*(wrapper: OpDefBuilderWrapper, version: int, def: cstring): OpDefBuilderWrapper{.
    importcpp: make_shared(WrapperT, "#->Deprecated(#, #)")
.}

proc Doc*(wrapper: OpDefBuilderWrapper, def: cstring): OpDefBuilderWrapper {.
    importcpp: make_shared(WrapperT, "#->Doc(#)")
.}

proc Register(wrapper: OpDefBuilderWrapper) {.
    importcpp:"""auto _b = #;
    tensorflow::OpRegistry::Global()->Register(
      [_b](tensorflow::OpRegistrationData* op_reg_data) -> tensorflow::Status {
        return _b->builder().Finalize(op_reg_data);
      });
    """
.}

var registerOpDef* {.compileTime.} = initTable[string, string]()

proc call*(name: string, args: varargs[string]): string {.compileTime.} = 
    return name & "(" & args.join(", ") & ")"

proc initIfNot(name: string) {.compileTime.} =
    if registerOpDef.hasKey(name):
        return 
    else:
        registerOpDef[name] = call("opDefBuilderWrapper", quote(name))

macro input*(str: static[string], x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = call("Input", registerOpDef[name], quote(str))
    x

macro output*(str: static[string], x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = call("Output", registerOpDef[name], quote(str))
    x

proc newReturnStmt(node: NimNode): NimNode =
    let n = newNimNode(nnkReturnStmt)
    n.add(node)
    return n

macro setShapeFn*(fn: proc(ctx: ptr InferenceContext): Status, x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    var f = fn

    if f.kind == nnkSym:
        f = fn.getImpl

    if f.kind == nnkProcDef:
        f = newProc("".ident, 
                    ["Status".ident, newIdentDefs("ctx".ident, "ptr InferenceContext".ident)], 
                    newStmtList(
                        fn.getImpl,
                        newReturnStmt(newCall($f.name, "ctx".ident))))

    addPragma(f, ident("noconv"))    
    
    registerOpDef[name] = call("SetShapeFn", registerOpDef[name], repr f)
    x

macro attr*(str: static[string], x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = call("Attr", registerOpDef[name], quote(str))
    x

macro setIsCommutative*(x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = call("SetIsCommutative", registerOpDef[name])
    x

macro setIsAggregate*(x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = call("SetIsAggregate", registerOpDef[name])
    x

macro setIsStateful*(x: untyped): untyped =
    echo treeRepr x
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = call("SetIsStateful", registerOpDef[name])
    x

macro setAllowsUninitializedInput*(x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = call("SetAllowsUninitializedInput", registerOpDef[name])
    x

macro deprecated*(version: static[int], opname: static[string], x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = "Deprecated(" & registerOpDef[name] & ", " & $version & ", " & quote(opname)
    x

macro doc*(str: static[string], x: untyped): untyped =
    let name = $name(x)
    initIfNot(name)
    registerOpDef[name] = call("Doc", registerOpDef[name], quote(str))
    x

proc makeOpDef*(name: string, builder: OpDefBuilderWrapper): ptr OpDef = 
    builder.Register()

    var opdef: ptr OpDef
    let scope = newRootScope()
    scope.getOpDef(name, addr(opdef))

    return opdef

macro make*(name: static[string]): untyped =
    return parseStmt(registerOpDef[name])

proc getDefSource*(name: string): string =
    return registerOpDef[name]
    
proc newIncludeStmt(name: string): NimNode =
    var n = newNimNode(nnkIncludeStmt)
    n.add(ident(name))
    return n

proc staticRmFile(file: string) =
    when defined windows:
        discard staticExec("del " & file)
    else:
        discard staticExec("rm " & file)

macro nimscript(x: static string): untyped =
    let file = getTempDir() & "tmp.nims"
    writeFile(file, x)
    result = newLit staticExec("nim " & file).split("\n")[2..^1]
    staticRmFile(file)

proc registerOp*(funheader: NimNode, exportName: string, source: string): NimNode {.compileTime.} =
    let filename = firstCharToLower(reinterpretLeadingUnderscore(exportName))

    let defsource = getDefSource(exportName)

    let h1 = hash(defsource)
    let h2 = hash(source)
    let currhash = h1 xor h2

    const opcachePath = getTempDir() & "opcache.json"
    let exsists = parseBool(nimscript("echo fileExists(" & opcachePath.quote & ")")[0])

    if not exsists:
        writeFile(opcachePath, $newJObject())

    const tmpPath = getTempDir() & "tmp.nim"
    var ops = parseJson(readFile(opcachePath))

    if not ops.contains(filename) or currhash != ops[filename].to(int):
        echo &"Creating Op \"{exportName}\" in folder \"{tmpPath}\"."
        ops{filename} = newJInt(currhash)
        writeFile(opcachePath, $ops)

        writeFile(tmpPath, &"""
import 
    tensorflow/core, tensorflow/ops/make/exportOp

discard makeOpDef("{exportName}", {defsource})
let (cppheader, cppsource, nimsource) = makeOp("{exportName}", "../../core", "{getTempDir()}/debug.h", "{getTempDir()}/debug.h", "{filename}.cc", true)
        
let h = open("{getTempDir() & filename}.h", fmWrite)
let cc = open("{getTempDir() & filename}.cc", fmWrite)
let nnim = open("{getTempDir() & filename}.nim", fmWrite)

h.write(cppheader)
cc.write(cppsource)
nnim.write(nimsource)""")
    
        discard staticExec("nim cpp -r " & tmpPath)
        staticRmFile(tmpPath)
        staticRmFile(tmpPath)

    insert(funheader, 0, parseStmt(&"discard makeOpDef(\"{exportName}\", {defsource})"))
    insert(funheader, 0, newIncludeStmt(getTempDir() & filename))

    return funheader


when isMainModule:
    proc ZeroOut() {.input:"to_zero: int32",
                     output:"zeroed: int32".} =
        discard

    let opdef = makeOpDef("ZeroOut", make("ZeroOut"))

    for input in opdef.inputs:
        echo input.name

   