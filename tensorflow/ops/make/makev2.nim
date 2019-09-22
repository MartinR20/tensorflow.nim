import ../../core/core,
       ./wrapper,
       ./procdef,
       ./makeutils,
       ./conversions,
       macros,
       tables,
       sequtils,
       sugar
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

proc makeOp(name: string, headerFileName: string, sourceFileName: string, shouldGenerateIncludes = false): (string, string, string) =
    var opdef: ptr OpDef
    let scope = newRootScope()
    scope.getOpDef(name, addr(opdef))
    
    let def = opdef.procdef

    let signature = makeCppSignature(def)
    var (cppheader, cppsource) = makeCppCode(def, signature)
    
    var nimSource: string

    if shouldGenerateIncludes:
        nimSource = "import ../core/core\n\n"
        nimSource &= "{.compile:" & quote(sourceFileName) & ".}\n\n"

        var includes = ""
        for header in headerFiles:
            includes &= "#include " & quote(header) & "\n"

        includes &= "\n"
        cppheader = includes &
                    """template <typename T>
                    tensorflow::Tensor _to_tensor(std::initializer_list<T> _list, std::initializer_list<int> _dtype) {
                    auto _ten = tensorflow::Tensor();
                    _ten.FromProto(_list, _dtype);
                    return _ten;
                    }""" & cppheader

        cppsource = "#include " & quote("tensorflow/cc/ops/const_op.h") & "\n" &
                    "#include " & quote(headerFileName) & "\n\n" &
                    cppsource

    nimSource &= makeTemplateTypes(def) & "\n"
    nimSource &= makeNimType(def, headerFileName) & "\n\n"
    nimSource &= makeNimImportProc(def, headerFileName) & "\n\n"
    nimSource &= makeNimProc(def, headerFileName) & "\n\n"
    nimSource &= makeNimConverter(def) & "\n\n"

    return (cppheader, cppsource, nimSource)

proc getRegisteredOperations(): seq[string] = 
    var names: seq[string]
    let opdefs = getRegisteredOps()
    for op in opdefs:
        names.add op.nomut.name

    return names

when isMainModule:
    let headerName = "generated.h"
    let sourceName = "generated.cc"
    let nimName =    "generated.nim"

    let h = open(headerName, fmWrite)
    let cc = open(sourceName, fmWrite)
    let nnim = open(nimName, fmWrite)

    var includes = true

    for name in getRegisteredOperations():
        let (cppheader, cppsource, nimsource) = makeOp(name, headerName, sourceName, includes)

        h.write(cppheader)
        cc.write(cppsource)
        nnim.write(nimsource)

        includes = false

export makeOp,
       getRegisteredOperations