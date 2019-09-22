import strutils,
       ../../core/core,
       ./wrapper,
       ./conversions,
       ./makeutils,
       hashes,
       sequtils,
       tables
       

type Attr* = object
    iname*: string
    iT*: string
    nimdefault*: string
    cppdefault*: string
    allowedvalues*: string

type Arg* = object
    iname*: string
    iT*: string
    dtype*: DType
    typeattr*: string

var argAttrLink* = initTable[Arg,Attr]()
var templateAttrs*: seq[Attr]


## Attr procs

proc hash*(attr: Attr): Hash =
    return hash(attr.iname)

proc allowedTypes*(attrdef: OpDefAttrDef): string =
        let dattr = attrdef.allowed_values
        let l = dattr.lentype

        if l == 0: return ""
        var default: seq[string]
        for i in 0..l-1: default.add (otypeLookUp[dattr.listtype(i)])

        return default.join(" | ")

proc default*(attr: OpDefAttrDef, language: static[string]): string =
    when language == "cpp":
        return defaultToCpp[attr.type](attr)
    elif language == "nim":
        return defaultToNim[attr.type](attr)

proc attr*(attrdef: OpDefAttrDef): Attr =
    return Attr(iname: attrdef.name, 
                iT: attrdef.type, 
                nimdefault: attrdef.default("nim"), 
                cppdefault: attrdef.default("cpp"),
                allowedvalues: allowedTypes(attrdef))
    
proc name*(attr: Attr, language: static[string]): string =
    when language == "nim":
        return nimKeywordsTranslate.getOrReturn(attr.iname)
    elif language == "cpp":
        return cppKeywordsTranslate.getOrReturn(attr.iname)

proc T*(attr: Attr, language: static[string]): string =
    when language == "nim":
        return attrToNim[attr.iT]
    elif language == "cpp":
        return attrToCpp[attr.iT]

proc default*(attr: Attr, language: static[string]): string =
    when language == "cpp":
        return attr.cppdefault
    elif language == "nim":
        return attr.nimdefault

proc has_default*(attr: Attr): bool =
    return attr.nimdefault != ""

proc cpp*(attr: Attr, default: static[bool] = false): string =
    if default and attr.has_default:
        return attr.T("cpp") & " " & attr.name("cpp") & " = " & attr.default("cpp")
    else:
        return attr.T("cpp") & " " & attr.name("cpp")

proc nim*(attr: Attr, default: static[bool] = false): string =
    if default and attr.has_default:
        return attr.name("nim") & ": " & attr.T("nim") & " = " & attr.default("nim")
    else:
        return attr.name("nim") & ": " & attr.T("nim") 

proc nim*(attr: Attr, opdef: ptr OpDef, default: static[bool] = false): string =
    if default and attr.has_default:
        return attr.name("nim") & ": " & attr.templateT(opdef) & " = " & attr.default("nim")
    else:
        return attr.name("nim") & ": " & attr.templateT(opdef) 


## Arg procs

proc hash*(arg: Arg): Hash =
    return hash(arg.iname)

proc arg*(argdef: OpDefArgDef): Arg =
    if argdef.number_attr == "N":
        return Arg(iname: argdef.name, iT: "OutList", dtype: argdef.type, typeattr: argdef.type_attr)
    else: 
        return Arg(iname: argdef.name, iT: "Out", dtype: argdef.type, typeattr: argdef.type_attr)

proc lookUpLink*(arg: Arg): string =
    if argAttrLink.hasKey(arg):
        return argAttrLink[arg].allowedvalues
    else:
        return otypeLookUp[arg.dtype]

const argToCpp = {
    "Out"     : "tensorflow::Input",
    "OutList" : "tensorflow::InputList"
}.toTable

proc name*(arg: Arg, language: static[string]): string =
    when language == "nim":
        return nimKeywordsTranslate.getOrReturn(arg.iname)
    elif language == "cpp":
        return cppKeywordsTranslate.getOrReturn(arg.iname)

proc T*(arg: Arg, language: static[string]): string =
    when language == "nim":
        return arg.iT 
    elif language == "cpp":
        return argToCpp[arg.iT]

proc cpp*(arg: Arg): string =
    return arg.T("cpp") & " " & arg.name("cpp")

proc nim*(arg: Arg): string =
    return arg.name("nim") & ": " & arg.T("nim")


## template Procs

proc templateT*(arg: Arg, opdef: ptr OpDef): string =
    if argAttrLink.hasKey(arg):
        return reinterpretLeadingUnderscore(opdef[].name) & argAttrLink[arg].name("nim")
    else:
        return otypeLookUp[arg.dtype]

proc templateT*(attr: Attr, opdef: ptr OpDef): string =
    if attr.T("nim") == "Tensor":
        var name: string 

        for at in templateAttrs:
            if at.allowed_values == attr.allowed_values:
                name = at.name("nim")

        var oT: string
        if opdef.output_arg_size() != 0:
            let arg = opdef.output_arg(0).arg
            oT = arg.templateT(opdef)
        else: 
            return attrToNim[attr.iT]

        if reinterpretLeadingUnderscore(opdef[].name) & name == oT:
            return attrToNim[attr.iT] & "[oT]"
        else:
            return attrToNim[attr.iT] & "[" & oT & "]"            
    else:    
        return attrToNim[attr.iT]

proc nimWithT*(arg: Arg, opdef: ptr OpDef): string =
    return arg.name("nim") & ": " & arg.templateT(opdef)

