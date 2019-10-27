import 
    ../../core, ../../utils, wrapper, procdef, makeutils, conversions, 
    macros, tables, sequtils, sugar, os, strutils, opmap, algorithm
{.hint[XDeclaredButNotUsed]:off.}

proc getRegisteredOps(): vector[MutOpDef] {.
    header:"<algorithm>",
    importcpp:""" [&]() {
            std::vector<tensorflow::OpDef> _defs;
            tensorflow::OpRegistry::Global()->GetRegisteredOps(&_defs);
            return _defs;
        }()
        """
    .}

proc countOccs(s: string, c: char): int =  
    var count = 0

    for cc in s:
        count += cast[int](cc == c)

    return count

proc makeOp(name: string, 
            corePath: string,
            headerFile: string,
            headerFileName: string, 
            sourceFileName: string, 
            shouldGenerateIncludes = false): (string, string, string) =
    var opdef: ptr OpDef
    let scope = newRootScope()
    scope.getOpDef(name, addr(opdef))
    
    let def = opdef.procdef

    let signature = makeCppSignature(def)
    var (cppheader, cppsource) = makeCppCode(def, signature)
    
    var nimSource: string

    if shouldGenerateIncludes:
        let slashes = headerFileName.countOccs('/')
        nimSource &= "import " & corePath & "\n\n"
        nimSource &= "{.compile:" & quote(sourceFileName) & ".}\n\n"

        var includes = ""
        for header in headerFiles:
            includes &= "#include " & quote(header) & "\n"

        includes &= "\n"

        cppsource = "#include " & quote("tensorflow/cc/ops/const_op.h") & "\n" &
                    "#include " & quote(headerFile) & "\n\n" &
                    cppsource

        cppheader = includes & """
#ifndef conversions 
#define conversions
template <typename T>
tensorflow::Tensor _to_tensor(std::initializer_list<T> _list, std::initializer_list<int> _dtype) {
    auto _ten = tensorflow::Tensor();
    _ten.FromProto(_list, _dtype);
    return _ten;
}
#endif
""" & cppheader

    cppheader = "#pragma once\n" & cppheader

    nimSource &= makeTemplateTypes(def) & "\n"
    nimSource &= makeNimType(def, headerFileName) & "\n\n"
    nimSource &= makeNimImportProc(def, headerFileName) & "\n\n"
    nimSource &= makeNimProc(def, headerFileName) & "\n\n"
    nimSource &= makeNimConverter(def) 
    let desc = opdef[].description

    if desc != "":
        nimSource &= "    # " & desc.replace("\n", "\n    # ") & "\n\n"

    return (cppheader, cppsource, nimSource)

proc getRegisteredOperations(): seq[string] = 
    var names: seq[string]
    let opdefs = getRegisteredOps()
    for op in opdefs:
        names.add op.nomut.name

    return names

type Writer = object
    h: File
    cc: File 
    nim: File

proc writer(nname: string, cname: string): Writer = 
        return Writer(h:    open(cname & ".h", fmWrite), 
                      cc:   open(cname & ".cc", fmWrite), 
                      nim:  open(nname & ".nim", fmWrite))

proc write(writer: Writer, source: (string, string, string)) = 
    writer.h.write source[0]
    writer.cc.write source[1]
    writer.nim.write source[2]

proc close(writer: Writer) = 
    writer.h.close()
    writer.cc.close() 
    writer.nim.close()

when isMainModule:
    if paramCount() == 1 or paramCount() == 2:
        if paramStr(1) == "test":
            let name = "generated"
            let writer = writer(name, name)

            var includes = true

            for op in ["Const", "_Arg", "Shape", "HostConst", "ParallelInterleaveDatasetV2", "EagerPyFunc", 
                        "_While", "ResourceApplyAddSign", "IteratorGetNext", "ShapeN", "Conv2DBackpropInput"]: 
                writer.write(makeOp(op, "../core", name & ".h", name & ".h", name & ".cc", includes))

                includes = false
        elif paramStr(1) == "run":
            createDir("../")
            setCurrentDir("../")

            var ops = getRegisteredOperations()
            sort ops

            var includes = true
            var writers = initTable[OPTYPE, Writer]()
            var importFs = initTable[string, bool]()

            for op in ops:
                if opsmap.hasKey(op):
                    let optype = opsmap[op]
                    var nname = toLowerAscii($optype)

                    let path = nname.split("_")

                    if path.len > 1:
                        nname = path[0..^2].join("/") & "/" & path[^1]

                    let cname = nname & "/" & path[^1]

                    if not writers.hasKey(optype):
                        createDir(nname)

                        writers[optype] = writer(nname, cname)
                        includes = true

                    let pad = "../".repeat(path.len - 1)
                    writers[optype].write(makeOp(op, 
                                                 pad & "../core", 
                                                 path[^1] & ".h", 
                                                 pkgPath & "tensorflow/ops/" & cname & ".h", 
                                                 path[^1] & "/" & path[^1] & ".cc", 
                                                 includes))
                    includes = false

                else:
                    echo op         

            for writer in writers.values:
                writer.close()   

        else:
            raise newException(ValueError, "Expected either \"test\" or \"run\" as parameter not \"" & paramStr(1) & "\"!")
    else:
        raise newException(ValueError, "Wrong parameter count, 1 expected!")

export makeOp,
       getRegisteredOperations