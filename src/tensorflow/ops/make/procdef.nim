import 
    ../../core,  conversions,  wrapper,  arguments,  makeutils,
    sequtils, strutils, tables

proc has_default*(attrdef: OpDefAttrDef): bool {.importcpp:"""(#.SerializeAsString() == "")""".}

proc getArgs*(opdef: ptr OpDef): seq[Arg] =
    var args = newSeqofCap[Arg](opdef.input_arg_size())

    for input in opdef.inputs:
        args.add input.arg    

    return args

proc getAttrs*(opdef: ptr OpDef): seq[Attr] =
    var defaults = newSeqofCap[Attr](opdef.attr_size())
    var nondefaults = newSeqofCap[Attr](opdef.attr_size())

    for attr in opdef.attrs:
        if not (attr.name in attrBlacklist):
            let a = attr.attr
            
            if a.has_default:
                defaults.add a
            else:
                nondefaults.add a 

    return concat(nondefaults, defaults)

type ProcDef* = ref object
    name*: string
    args*: seq[Arg]
    attrs*: seq[Attr]
    oT*: Table[Arg,Attr]
    namesT*: Table[Attr,string]
    output*: Arg
    outType*: string
    explicitGeneric*: bool

const emptyArg = Arg(iname: "", iT: "", dtype: DT_INVALID, typeattr: "")
const emptyAttr = Attr(iname: "", iT: "", nimdefault: "", cppdefault: "", allowedvalues: "")

proc isempty*(arg: Arg): bool = 
    return arg == emptyArg

proc isempty*(arg: Attr): bool = 
    return arg == emptyAttr

proc templateT(def: ProcDef, arg: Arg, nolist = false): string =
    var ret: string

    if def.oT.hasKey(arg) and def.namesT.hasKey(def.oT[arg]):
        ret = def.namesT[def.oT[arg]]
    else:
        if arg.dtype != DT_INVALID:
            ret = reversetfdict[arg.dtype]
        else:
            ret = "oall"

    if (arg.T("nim") == "OutList" or 
       (def.oT.hasKey(arg) and def.oT[arg].iT.find("list") != -1)) and 
       not nolist:
        ret = "olist[" & ret & "]"

    return ret 

proc templateT(def: ProcDef, attr: Attr): string =
    if def.namesT.hasKey(attr):
        return def.namesT[attr]
    else:
        if attr.T("nim") == "Tensor":
            if def.output.typeattr != "":
                return "Tensor[oT]"
            else:
                return "Tensor[oall]"
        else:
            return attr.T("nim")

proc cpp(def: ProcDef, arg: Arg): string =
    if def.templateT(arg).find("olist") != -1:
        return "tensorflow::InputList " & arg.name("cpp")
    else:
        return "tensorflow::Input " & arg.name("cpp")
            
proc nimWithT*(def: ProcDef, arg: Arg): string =
    return arg.name("nim") & ": " & def.templateT(arg)
    
proc nimWithT*(def: ProcDef, attr: Attr): string =
    if attr.default("nim") != "":
        return attr.name("nim") & ": " & def.templateT(attr) & " = " & attr.default("nim")   
    else:
        return attr.name("nim") & ": " & def.templateT(attr)

proc nimWithGeneric(def: ProcDef, arg: Arg): string =
    if def.output.typeattr != "" and 
       def.oT.hasKey(arg) and 
       def.oT[arg].iname == def.output.typeattr:

        if def.templateT(arg).find("olist") != -1:
            return arg.name("nim") & ": olist[oT]"
        else:
            return arg.name("nim") & ": oT"
    else:
        return def.nimWithT(arg)

proc procdef*(opdef: ptr OpDef): ProcDef =
    var def = new ProcDef

    def.args = getArgs(opdef)
    def.attrs = getAttrs(opdef)
    def.name = opdef[].name
    def.oT = initTable[Arg, Attr]()
    def.namesT = initTable[Attr, string]()

    if opdef.output_arg_size() != 0:
        def.output = opdef.output_arg(0).arg
    else:
        def.output = emptyArg

    def.outType = def.templateT(def.output)

    for arg in concat(@[def.output], def.args):
        if arg.typeattr != "":
            var registerd = false

            for T in def.oT.values:
                if T.iname == arg.typeattr:
                    def.oT[arg] = T
                    registerd = true
                    break

            if registerd == false:
                for i, attr in def.attrs:
                    if attr.iname == arg.typeattr:
                        def.oT[arg] = attr
                        if attr.iT == "type" and def.oT[def.output] != attr:
                            def.namesT[attr] = reinterpretLeadingUnderscore(def.name) & attr.name("nim")
                            def.attrs.del i                            
                        break  
        else:
            def.oT[arg] = emptyAttr


        def.explicitGeneric = true

        if not def.output.isempty and def.output.typeattr != "":
            for arg in def.args:
                if def.oT.hasKey(arg) and def.oT[arg] == def.oT[def.output]:
                    def.explicitGeneric = false
                    break
    
            if def.explicitGeneric != false:
                for attr in def.attrs:
                    if attr.iT == "tensor":
                        def.explicitGeneric = false
                        break
        else:
            def.explicitGeneric = false

    return def

proc `$`*(def: ProcDef): string =
    return "(name: " & def.name & 
            ", \n\nargs: " & $def.args & 
            ", \n\nattrs: " & $def.attrs & 
            ", \n\noutput: " & $def.output & 
            ", \n\noT: " & $def.oT & 
            ", \n\nnamesT: " & $def.namesT & ")"


proc makeCppSignature*(def: ProcDef): (string, string) =
    var headerSignature = def.name & "(tensorflow::Scope& scope"

    let argumentSeperator = ", \n           "

    for arg in def.args:
        headerSignature &= argumentSeperator
        headerSignature &= def.cpp(arg)

    var sourceSignature = headerSignature

    for attr in def.attrs:
        headerSignature &= argumentSeperator
        headerSignature &= attr.cpp(true)

        sourceSignature &= argumentSeperator
        sourceSignature &= attr.cpp()
        
    headerSignature &= ")" 
    sourceSignature &= ")" 

    return (headerSignature, sourceSignature)


proc makeCppCode*(def: ProcDef, 
                signature: (string, string)): (string, string) =
    var cppheader: string
    var cppsource: string

    cppheader = "class " & def.name & "{\n" &
                    "  public:\n" &
                    "    " & def.name & "() {}\n" &
                    "    " & signature[0] & ";\n"
                    
    
    cppsource = def.name & "::" & signature[1] & " {\n"

    let checksouce = "      if (!scope.ok())\n" & 
                     "          return;\n"

    for arg in def.args: 
        let translatedName = arg.name("cpp")

        if def.templateT(arg).find("olist") != -1:
            cppsource &= checksouce
            cppsource &= "      auto _" & translatedName & " = ::tensorflow::ops::AsNodeOutList(scope, " & translatedName & ");\n"
        else:
            cppsource &= checksouce
            cppsource &= "      auto _" & translatedName & " = ::tensorflow::ops::AsNodeOut(scope, " & translatedName & ");\n"
        
    cppsource &= "      ::tensorflow::Node *ret;\n" &
                 "      const auto unique_name = scope.GetUniqueNameForOp(\"" & def.name & "\");\n" &
                 "      auto builder = ::tensorflow::NodeBuilder(unique_name, \"" & def.name & "\")\n"

    for arg in def.args: 
        let translatedName = arg.name("cpp")
        cppsource &= "                                   .Input(_" & translatedName & ")\n" 

    for attr in def.attrs: 
        let translatedName = attr.name("cpp")
        cppsource &= "                                   .Attr(\"" & attr.iname & "\", " & translatedName & ")\n"

    cppsource &= "      ;\n" &
                 "      scope.UpdateBuilder(&builder);\n" &
                 "      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));\n" &
                 "      if (!scope.ok()) return;\n" &
                 "      scope.UpdateStatus(scope.DoShapeInference(ret));\n" &
                 "      this->operation = ::tensorflow::Operation(ret);\n" 

    
    if not def.output.isempty: 
        if def.templateT(def.output).find("olist") != -1:
            cppsource &= "      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)\n"  &
                         "          this->output.push_back(tensorflow::Output(ret, i));\n"  
    
            cppheader &= "    tensorflow::Operation operation;\n" &
                         "    tensorflow::OutputList output;\n" 
        else:
            cppsource &= "      this->output = tensorflow::Output(ret, 0);\n" 

            cppheader &= "    tensorflow::Operation operation;\n" &
                         "    tensorflow::Output output;\n" 
    else:
        cppheader &= "    tensorflow::Operation operation;\n"

    cppsource &= "}\n\n" 
    cppheader &= "};\n\n"

    return (cppheader, cppsource)

proc makeTemplateTypes*(def: ProcDef): string =
    var templatetypes: string

    for attr, name in def.namesT:
        templatetypes &= "type " & name & "* = "
    
        if attr.allowedvalues != "":
            templatetypes &= attr.allowedvalues & "\n"
        else:
            templatetypes &= "oall\n"

    return templatetypes

proc makeNimType*(def: ProcDef,
                 header: string): string =
    var opType: string
    let convertedName = reinterpretLeadingUnderscore(def.name)
    
    if not def.output.isempty:
        if def.output.typeattr != "":
            opType = "type " & convertedName & "*[oT:" & def.templateT(def.output, true) & "] " & 
                    importcppStmt(def.name & "/*'0*/", header) & " = object\n  operation*: Operation[oT]\n"
            
            if def.templateT(def.output).find("olist") != -1:
                opType &= "  output*: olist[oT]"
            else:
                opType &= "  output*: oT"
        else:
            opType = "type " & convertedName & "* " & importcppStmt(def.name & "/*'0*/", header) & 
                     " = object\n  operation*: Operation[" & reversetfdict[def.output.dtype] & "]\n"
            
            if def.templateT(def.output).find("olist") != -1:
                opType &= "  output*: olist[" & reversetfdict[def.output.dtype] & "]"
            else:
                opType &= "  output*: " & reversetfdict[def.output.dtype]
    else:
        opType = "type " & convertedName & "*" & 
                 importcppStmt(def.name & "/*'0*/", header) & " = object\n  operation*: Operation[oinvalid]\n"

    return opType

proc makeNimImportProc*(def: ProcDef, 
                       header: string): string =

    let typename = reinterpretLeadingUnderscore(def.name)
    let opname = firstCharToUpper(
                    nimKeywordsTranslate.getOrReturn(
                        firstCharToLower(
                            typename)))
    
    let nimArgSeperator = ",\n      " & " ".repeat(opname.len+1)
    const cppArgSeperator = ", "

    var opProc = "proc ii" & firstCharToLower(opname) 

    if not def.output.isempty and def.output.typeattr != "":
        opProc &= "[oT: " & def.templateT(def.output, true) & "]"

    opProc &= "(scope: Scope" & nimArgSeperator
    var cppsignature = def.name & "(*#" & cppArgSeperator

    for arg in def.args:
        opProc &= def.nimWithGeneric(arg)
        opProc &= nimArgSeperator

        cppsignature &= "#" & cppArgSeperator

    for attr in def.attrs:
        if attr.T("nim") == "DType":
            opProc &= attr.name("nim") & ": DType"
        else:
            opProc &= attr.name("nim") & ": " & def.templateT(attr)
        opProc &= nimArgSeperator

        case needsConversion[attr.T("nim")]:
        of DEREF:
            cppsignature &= "*#"
        of STRINGCONV:
            cppsignature &= "tensorflow::string(#)"
        else:
            cppsignature &= "#"

        cppsignature &= cppArgSeperator

    opProc = opProc[0..^nimArgSeperator.len+1]
    cppsignature = cppsignature[0..^cppArgSeperator.len+1]

    cppsignature &= ")"

    if def.explicitGeneric:
        opProc &= nimArgSeperator & "explicitT: type(oT)"

    opProc &= "): " & typename 

    if not def.output.isempty and def.output.typeattr != "":
        opProc &= "[oT]"
    
    opProc &= " " & importcppStmt(cppsignature, header, true)

    return opProc 

proc makeNimProc*(def: ProcDef, header: string): string =

    let typename = reinterpretLeadingUnderscore(def.name)
    let opname = firstCharToUpper(
                    nimKeywordsTranslate.getOrReturn(
                        firstCharToLower(
                            typename)))

    let nimArgSeperator = ",\n" & " ".repeat(("proc " & opname & "*(").len)

    var opProc = "proc " & firstCharToLower(opname) & "*" 

    if not def.output.isempty and def.output.typeattr != "" and not def.explicitGeneric:
        opProc &= "[oT: " & def.templateT(def.output, true) & "]"
    
    opProc &= "(scope: Scope" & nimArgSeperator

    for arg in def.args:
        opProc &= def.nimWithGeneric(arg)
        opProc &= nimArgSeperator

    for attr in def.attrs:
        case needsConversion[attr.T("nim")]:
        of NONE, DEREF, STRINGCONV, FUNCCONV:
            opProc &= def.nimWithT(attr)
        of LISTCONV:
            opProc &= attr.name("nim") & ": openArray[" & attr.T("nim").fromTo('[', ']') & "]" 
            if attr.has_default:
                opProc &= " = " & attr.default("nim")
        of TYPECONV:
            if attr == def.oT[def.output]:
                if def.explicitGeneric: 
                    opProc &= attr.name("nim") & ": type" 
                else:
                    continue
            elif attr.allowedvalues != "":
                opProc &= attr.name("nim") & ": type(" & attr.allowedvalues.replace(" | ", ") | type(") & ")"
            else:
                opProc &= attr.name("nim") & ": type oall"

            if attr.has_default:
                opProc &= " = " & otypeLookUp[stringtypeLookUp[attr.default("nim")]]


        opProc &= nimArgSeperator

    opProc = opProc[0..^nimArgSeperator.len+1]

    if def.explicitGeneric and def.templateT(def.output).find("olist") != -1 and 
        not def.oT[def.output].has_default:
        opProc &= nimArgSeperator & "explicitT: type"

    opProc &= "): "
    
    if def.explicitGeneric:
        opProc &= "auto"
    else:
        opProc &= typename

        if not def.output.isempty and def.output.typeattr != "":
            opProc &= "[oT]"
    
    opProc &= " =\n  "
    
    let nimParamSeperator = ",\n" & " ".repeat(("  return ii" & opname & "(").len)

    opProc &= "return ii" & firstCharToLower(opname) & "(scope" & nimParamSeperator

    for arg in def.args:
        opProc &= arg.name("nim") & nimParamSeperator

    for attr in def.attrs:
        case needsConversion[attr.T("nim")]:
        of NONE, DEREF, STRINGCONV, FUNCCONV:
            opProc &= attr.name("nim")
        of LISTCONV:
            opProc &= "newArraySlice(" & attr.name("nim") & ")" 
        of TYPECONV:
            if opProc.find("oT") == -1:
                opProc &= attr.name("nim") & "[].oTF"
            else:            
                opProc &= "oT[].oTF"
            
        opProc &= nimParamSeperator

    opProc = opProc[0..^nimParamSeperator.len+1]

    if def.explicitGeneric:
        if def.templateT(def.output).find("olist") != -1 and 
            not def.oT[def.output].has_default:
            opProc &= nimParamSeperator & "explicitT"
        else:
            opProc &= nimParamSeperator & def.oT[def.output].name("nim")

    return opProc & ")"

proc makeNimConverter*(def: ProcDef): string =
    let typename = reinterpretLeadingUnderscore(def.name)
    let opname = nimKeywordsTranslate.getOrReturn(
                    firstCharToLower(
                        typename))
    
    if not def.output.isempty:
        if def.output.typeattr != "":
            var oT = def.templateT(def.output, true)

            if def.templateT(def.output).find("olist") != -1:
                return "converter " & opname & "ToOutList*[oT: " & oT & "](op: " & typename & "[oT]): olist[oT] {.inline.} = return op.output\n\n"
            else:
                return "converter " & opname & "ToOut*[oT: " & oT & "](op: " & typename & "[oT]): oT {.inline.} = return op.output\n\n"
        else:
            var oT = reversetfdict[def.output.dtype]

            if def.templateT(def.output).find("olist") != -1:
                return "converter " & opname & "ToOutList*(op: " & typename & "): olist[" & oT & "] {.inline.} = return op.output\n\n"
            else:
                return "converter " & opname & "ToOut*(op: " & typename & "): " & oT & " {.inline.} = return op.output\n\n"
        
    else:
        return ""

when isMainModule:
    var opdef: ptr OpDef
    let scope = newRootScope()
    scope.getOpDef("SparseApplyRMSProp", addr(opdef))
    echo procdef(opdef).makeNimType("test.h")