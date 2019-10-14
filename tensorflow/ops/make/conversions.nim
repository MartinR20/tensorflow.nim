import 
    tables, sugar, strutils, ../../core/core, wrapper, makeutils

const attrBlacklist* = ["N"]

type conversions* = enum
    NONE = 0
    DEREF = 1
    STRINGCONV = 2
    LISTCONV = 3
    FUNCCONV = 4
    TYPECONV = 5
    #SHAPECONV = 6

const needsConversion* = {
    "Out"                     : NONE,
    "OutList"                 : NONE,
    "bool"                    : NONE,
    "float32"                 : NONE,
    "int32"                   : NONE,       
    "int64"                   : NONE,       
    "NameAttrList"            : FUNCCONV,
    "cstring"                 : STRINGCONV,                
    "TensorShape"             : NONE,                   
    "Tensor"                  : DEREF,       
    "DType"                   : TYPECONV,          
    "ArraySlice[bool]"        : LISTCONV,                          
    "ArraySlice[float32]"     : LISTCONV,                              
    "ArraySlice[int]"         : LISTCONV,                          
    "ArraySlice[int32]"       : LISTCONV,                          
    "ArraySlice[int64]"       : LISTCONV,                          
    "ArraySlice[cstring]"     : LISTCONV,                                          
    "ArraySlice[TensorShape]" : LISTCONV,                                                     
    "ArraySlice[Tensor]"      : LISTCONV,
    "ArraySlice[DType]"       : LISTCONV
}.toTable()

const headerFiles* = [
    "tensorflow/cc/framework/ops.h",
    "tensorflow/cc/framework/scope.h",
    "tensorflow/core/framework/tensor.h",
    "tensorflow/core/framework/tensor_shape.h",
    "tensorflow/core/framework/types.h",
    "tensorflow/core/lib/gtl/array_slice.h",
    "math.h"
]

proc cpp*(x: bool): string =
    return $x

proc nim*(x: bool): string =
    return $x

proc cpp*(x: float): string =
    case x:
    of Inf:
        return "INFINITY"
    of NegInf:
        return "-INFINITY"
    else:
        return $x

proc nim*(x: float): string =
    case x:
    of Inf:
        return "Inf.float32"
    of NegInf:
        return "NegInf.float32"
    else:
        return $x & ".float32"

proc cpp*(x: int): string =
    return $x

proc nim*(x: int): string =
    return $x & ".int"
    
proc nim*(x: int32): string =
    return $x & ".int32"

proc nim*(x: int64): string =
    return $x & ".int64"

proc cpp*(x: string): string =
    if x != "":
        return quote(x)
    else:
        return ""

proc nim*(x: string): string =
    if $x != "":
        return quote(x)
    else:
        return ""
    
proc cpp*(x: DType): string =
    return "tensorflow::" & $x

proc nim*(x: DType): string =
    return $x

proc cpp*(x: TensorShape): string =
    if $x == "<unknown>":
        return "{}"
    else:
        return "{" & ($x)[1..^2] & "}"

proc nim*(x: TensorShape): string =
    if $x == "<unknown>":
        return "[].shape"
    else:
        return $x & ".shape"

proc cpp*(x: ref Tensor[oinvalid]): string =
    let ten = x[].toValueStr(-1)[1..^2].replace(" ", ", ")

    if ten == "": return ""

    return "_to_tensor({" & ten & 
                "}, {tensorflow::" & $x[].dtype & "})"

proc nim*(x: ref Tensor[oinvalid]): string =
    let ten = x[].toValueStr(-1).replace(" ", ", ")
 
    if ten == "[]": return ""

    return "tensor(" & ten & ", " & typeLookUpReverse[x[].dtype] & ")"
                
proc cpp*(x: NameAttrList): string =
    return ""

proc nim*(x: NameAttrList): string =
    return ""

import macros

macro listCreator*(language: static[string], typename: static[string]): untyped =
    var openChar: string
    var closeChar: string

    if language == "cpp":
        openChar = "{"
        closeChar = "}"
    elif language == "nim":
        openChar = "["
        closeChar = "]"

    return parseStmt("""(proc(attrdef: OpDefAttrDef): string =
            let dattr = attrdef.default_value
            let l = dattr.len""" & typename & """

            if l == 0: return ""
            var default: seq[string]
            for i in 0..l-1: default.add (dattr.list""" & typename & """(i).""" & language & """)

            return """" & openChar & """" & default.join(", ") & """" & closeChar & """")""")

const defaultToCpp* = {
    "bool"          : (attrdef: OpDefAttrDef) => cpp(attrdef.default_value.b)          ,
    "float"         : (attrdef: OpDefAttrDef) => cpp(attrdef.default_value.f)          ,
    "int"           : (attrdef: OpDefAttrDef) => cpp(attrdef.default_value.i)          ,
    "string"        : (attrdef: OpDefAttrDef) => cpp(attrdef.default_value.s)          ,
    "shape"         : (attrdef: OpDefAttrDef) => cpp(attrdef.default_value.shape)      ,
    "tensor"        : (attrdef: OpDefAttrDef) => cpp(attrdef.default_value.tensor)     ,
    "type"          : (attrdef: OpDefAttrDef) => cpp(attrdef.default_value.type)       ,
    "func"          : (attrdef: OpDefAttrDef) => cpp(attrdef.default_value.fn)         ,
    "list(bool)"    : (attrdef: OpDefAttrDef) => listCreator("cpp", "b")(attrdef)      ,
    "list(float)"   : (attrdef: OpDefAttrDef) => listCreator("cpp", "f")(attrdef)      , 
    "list(int)"     : (attrdef: OpDefAttrDef) => listCreator("cpp", "i")(attrdef)      ,
    "list(string)"  : (attrdef: OpDefAttrDef) => listCreator("cpp", "s")(attrdef)      ,
    "list(shape)"   : (attrdef: OpDefAttrDef) => listCreator("cpp", "shape")(attrdef)  ,
    "list(tensor)"  : (attrdef: OpDefAttrDef) => listCreator("cpp", "tensor")(attrdef) ,
    "list(type)"    : (attrdef: OpDefAttrDef) => listCreator("cpp", "type")(attrdef)   ,           
    "list(func)"    : (attrdef: OpDefAttrDef) => listCreator("cpp", "fn")(attrdef)               
    }.toTable

const defaultToNim* = {
    "bool"          : (attrdef: OpDefAttrDef) => nim(attrdef.default_value.b)          ,
    "float"         : (attrdef: OpDefAttrDef) => nim(attrdef.default_value.f)          ,
    "int"           : (attrdef: OpDefAttrDef) => nim(attrdef.default_value.i)          ,
    "string"        : (attrdef: OpDefAttrDef) => nim(attrdef.default_value.s)          ,
    "shape"         : (attrdef: OpDefAttrDef) => nim(attrdef.default_value.shape)      ,
    "tensor"        : (attrdef: OpDefAttrDef) => nim(attrdef.default_value.tensor)     ,
    "type"          : (attrdef: OpDefAttrDef) => nim(attrdef.default_value.type)       ,
    "func"          : (attrdef: OpDefAttrDef) => nim(attrdef.default_value.fn)         ,
    "list(bool)"    : (attrdef: OpDefAttrDef) => listCreator("nim", "b")(attrdef)      ,
    "list(float)"   : (attrdef: OpDefAttrDef) => listCreator("nim", "f")(attrdef)      , 
    "list(int)"     : (attrdef: OpDefAttrDef) => listCreator("nim", "i")(attrdef)      ,
    "list(string)"  : (attrdef: OpDefAttrDef) => listCreator("nim", "s")(attrdef)      ,
    "list(shape)"   : (attrdef: OpDefAttrDef) => listCreator("nim", "shape")(attrdef)  ,
    "list(tensor)"  : (attrdef: OpDefAttrDef) => listCreator("nim", "tensor")(attrdef) ,
    "list(type)"    : (attrdef: OpDefAttrDef) => listCreator("nim", "type")(attrdef)   ,           
    "list(func)"    : (attrdef: OpDefAttrDef) => listCreator("nim", "fn")(attrdef)      
}.toTable

const otypeLookUp* = { 
    DT_INVALID       : "oinvalid"    ,  
    DT_DOUBLE        : "odouble"     ,  
    DT_FLOAT         : "ofloat"      , 
    DT_INT64         : "oint64"      , 
    DT_INT32         : "oint32"      , 
    DT_UINT8         : "ouint8"      , 
    DT_INT16         : "oint16"      , 
    DT_INT8          : "oint8"       , 
    DT_STRING        : "ostring"     ,  
    DT_BOOL          : "obool"       ,
    DT_UINT16        : "ouint16"     ,  
    DT_UINT32        : "ouint32"     ,  
    DT_UINT64        : "ouint64"     ,  
    DT_COMPLEX64     : "ocomplex64"  ,  
    DT_COMPLEX128    : "ocomplex128" ,  
    DT_QINT8         : "oqint8"      ,  
    DT_QUINT8        : "oquint8"     ,  
    DT_QINT32        : "oqint32"     ,  
    DT_BFLOAT16      : "obfloat16"   ,  
    DT_QINT16        : "oqint16"     ,  
    DT_QUINT16       : "oquint16"    ,  
    DT_HALF          : "ohalf"       ,  
    DT_RESOURCE      : "oresource"   ,  
    DT_VARIANT       : "ovariant"  
}.toTable

const stringtypeLookUp* = { 
    "DT_INVALID"       : DT_INVALID    ,  
    "DT_DOUBLE"        : DT_DOUBLE     ,  
    "DT_FLOAT"         : DT_FLOAT      , 
    "DT_INT64"         : DT_INT64      , 
    "DT_INT32"         : DT_INT32      , 
    "DT_UINT8"         : DT_UINT8      , 
    "DT_INT16"         : DT_INT16      , 
    "DT_INT8"          : DT_INT8       , 
    "DT_STRING"        : DT_STRING     ,  
    "DT_BOOL"          : DT_BOOL       ,
    "DT_UINT16"        : DT_UINT16     ,  
    "DT_UINT32"        : DT_UINT32     ,  
    "DT_UINT64"        : DT_UINT64     ,  
    "DT_COMPLEX64"     : DT_COMPLEX64  ,  
    "DT_COMPLEX128"    : DT_COMPLEX128 ,  
    "DT_QINT8"         : DT_QINT8      ,  
    "DT_QUINT8"        : DT_QUINT8     ,  
    "DT_QINT32"        : DT_QINT32     ,  
    "DT_BFLOAT16"      : DT_BFLOAT16   ,  
    "DT_QINT16"        : DT_QINT16     ,  
    "DT_QUINT16"       : DT_QUINT16    ,  
    "DT_HALF"          : DT_HALF       ,  
    "DT_RESOURCE"      : DT_RESOURCE   ,  
    "DT_VARIANT"       : DT_VARIANT   
}.toTable

const attrToCpp* = {
    "bool"          : "bool"                                                        ,
    "float"         : "float"                                                       ,
    "int"           : "int64_t"                                                     ,
    "int32"         : "tensorflow::int32"                                           ,
    "int64"         : "tensorflow::int64"                                           ,
    "string"        : "tensorflow::string"                                          ,
    "shape"         : "tensorflow::PartialTensorShape"                              ,
    "tensor"        : "tensorflow::Tensor"                                          ,
    "type"          : "tensorflow::DataType"                                        ,
    "func"          : "tensorflow::NameAttrList"                                    ,
    "list(bool)"    : "tensorflow::gtl::ArraySlice<bool>"                           ,
    "list(float)"   : "tensorflow::gtl::ArraySlice<float>"                          , 
    "list(int)"     : "tensorflow::gtl::ArraySlice<int64_t>"                        ,
    "list(int32)"   : "tensorflow::gtl::ArraySlice<tensorflow::int32>"              ,
    "list(int64)"   : "tensorflow::gtl::ArraySlice<tensorflow::int64>"              ,
    "list(string)"  : "tensorflow::gtl::ArraySlice<tensorflow::string>"             ,
    "list(shape)"   : "tensorflow::gtl::ArraySlice<tensorflow::PartialTensorShape>" ,
    "list(tensor)"  : "tensorflow::gtl::ArraySlice<tensorflow::Tensor>"             ,
    "list(type)"    : "tensorflow::gtl::ArraySlice<tensorflow::DataType>"           , 
    "list(func)"    : "tensorflow::gtl::ArraySlice<tensorflow::NameAttrList>"
}.toTable

const attrToNim* = {
    "bool"          : "bool"                    ,
    "float"         : "float32"                 ,
    "int"           : "int64"                   ,
    "int32"         : "int32"                   ,
    "int64"         : "int64"                   ,
    "string"        : "cstring"                 ,
    "shape"         : "TensorShape"             ,
    "tensor"        : "Tensor"                  ,
    "type"          : "DType"                   ,
    "func"          : "NameAttrList"            ,
    "list(bool)"    : "ArraySlice[bool]"        ,
    "list(float)"   : "ArraySlice[float32]"     ,
    "list(int)"     : "ArraySlice[int]"         ,
    "list(int32)"   : "ArraySlice[int32]"       ,
    "list(int64)"   : "ArraySlice[int64]"       ,
    "list(string)"  : "ArraySlice[cstring]"     ,
    "list(shape)"   : "ArraySlice[TensorShape]" ,
    "list(tensor)"  : "ArraySlice[Tensor]"      ,
    "list(type)"    : "ArraySlice[DType]"       ,     
    "list(func)"    : "ArraySlice[NameAttrList]"
}.toTable

const nimKeywordsTranslate* = { 
  "addr"       : "naddr"      ,           
  "and"        : "nand"       ,         
  "as"         : "nas"        ,        
  "asm"        : "nasm"       ,        
  "bind"       : "nbind"      ,          
  "block"      : "nblock"     ,           
  "break"      : "nbreak"     ,          
  "case"       : "ncase"      ,          
  "cast"       : "ncast"      ,          
  "concept"    : "nconcept"   ,             
  "const"      : "nconst"     ,           
  "continue"   : "ncontinue"  ,              
  "converter"  : "nconverter" ,              
  "defer"      : "ndefer"     ,           
  "discard"    : "ndiscard"   ,             
  "distinct"   : "ndistinct"  ,              
  "div"        : "ndiv"       ,         
  "do"         : "ndo"        ,       
  "elif"       : "nelif"      ,          
  "else"       : "nelse"      ,          
  "end"        : "nend"       ,         
  "enum"       : "nenum"      ,          
  "except"     : "nexcept"    ,            
  "export"     : "nexport"    ,           
  "finally"    : "nfinally"   ,             
  "for"        : "nfor"       ,         
  "from"       : "nfrom"      ,          
  "func"       : "nfunc"      ,         
  "if"         : "nif"        ,        
  "import"     : "nimport"    ,            
  "in"         : "nin"        ,        
  "include"    : "ninclude"   ,             
  "interface"  : "ninterface" ,               
  "is"         : "nis"        ,               
  "isnot"      : "nisnot"     ,               
  "iterator"   : "niterator"  ,                
  "let"        : "nlet"       ,                
  "macro"      : "nmacro"     ,      
  "method"     : "nmethod"    ,       
  "mixin"      : "nmixin"     ,      
  "mod"        : "nmod"       ,    
  "nil"        : "nnil"       ,     
  "not"        : "nnot"       ,        
  "notin"      : "nnotin"     ,        
  "object"     : "nobject"    ,            
  "of"         : "nof"        ,        
  "or"         : "nor"        ,        
  "out"        : "nout"       ,        
  "proc"       : "nproc"      ,          
  "ptr"        : "nptr"       ,        
  "raise"      : "nraise"     ,           
  "ref"        : "nref"       ,         
  "return"     : "nreturn"    ,           
  "shl"        : "nshl"       ,         
  "shr"        : "nshr"       ,         
  "static"     : "nstatic"    ,           
  "template"   : "ntemplate"  ,              
  "try"        : "ntry"       ,         
  "tuple"      : "ntuple"     ,           
  "type"       : "ntype"      ,         
  "using"      : "nusing"     ,          
  "var"        : "nvar"       ,        
  "when"       : "nwhen"      ,          
  "while"      : "nwhile"     ,          
  "xor"        : "nxor"       ,        
  "yield"      : "nyield"              
}.toTable()

const cppKeywordsTranslate* = { 
  "asm"              : "casm"              ,    
  "else"             : "celse"             ,     
  "new"              : "cnew"              ,    
  "this"             : "cthis"             ,     
  "auto"             : "cauto"             ,     
  "enum"             : "cenum"             ,     
  "operator"         : "coperator"         ,         
  "throw"            : "cthrow"            ,      
  "bool"             : "cbool"             ,     
  "explicit"         : "cexplicit"         ,         
  "private"          : "cprivate"          ,        
  "true"             : "ctrue"             ,     
  "break"            : "cbreak"            ,      
  "export"           : "cexport"           ,       
  "protected"        : "cprotected"        ,          
  "try"              : "ctry"              ,    
  "case"             : "ccase"             ,       
  "extern"           : "cextern"           ,       
  "public"           : "cpublic"           ,       
  "typedef"          : "ctypedef"          ,        
  "catch"            : "ccatch"            ,      
  "false"            : "cfalse"            ,      
  "register"         : "cregister"         ,         
  "typeid"           : "ctypeid"           ,       
  "char"             : "cchar"             ,     
  "float"            : "cfloat"            ,      
  "reinterpret_cast" : "creinterpret_cast" ,                 
  "typename"         : "ctypename"         ,         
  "class"            : "cclass"            ,      
  "for"              : "cfor"              ,    
  "return"           : "creturn"           ,       
  "union"            : "cunion"            ,      
  "const"            : "cconst"            ,      
  "friend"           : "cfriend"           ,       
  "short"            : "cshort"            ,                        
  "unsigned"         : "cunsigned"         ,         
  "const_cast"       : "cconst_cast"       ,           
  "goto"             : "cgoto"             ,     
  "signed"           : "csigned"           ,       
  "using"            : "cusing"            ,      
  "continue"         : "ccontinue"         ,         
  "if"               : "cif"               ,   
  "sizeof"           : "csizeof"           ,       
  "virtual"          : "cvirtual"          ,        
  "default"          : "cdefault"          ,        
  "inline"           : "cinline"           ,       
  "static"           : "cstatic"           ,       
  "void"             : "cvoid"             ,     
  "delete"           : "cdelete"           ,       
  "int"              : "cint"              ,    
  "static_cast"      : "cstatic_cast"      ,            
  "volatile"         : "cvolatile"         ,         
  "do"               : "cdo"               ,   
  "long"             : "clong"             ,     
  "struct"           : "cstruct"           ,       
  "wchar_t"          : "cwchar_t"          ,        
  "double"           : "cdouble"           ,       
  "mutable"          : "cmutable"          ,        
  "switch"           : "cswitch"           ,       
  "while"            : "cwhile"            ,      
  "dynamic_cast"     : "cdynamic_cast"     ,             
  "namespace"        : "cnamespace"        ,          
  "template"         : "ctemplate"         ,                           
  "And"              : "cAnd"              ,    
  "bitor"            : "cbitor"            ,      
  "not_eq"           : "cnot_eq"           ,       
  "xor"              : "cxor"              ,                      
  "and_eq"           : "cand_eq"           ,       
  "compl"            : "ccompl"            ,      
  "or"               : "cor"               ,   
  "xor_eq"           : "cxor_eq"           ,       
  "bitand"           : "cbitand"           ,       
  "not"              : "cnot"              ,    
  "or_eq"            : "cor_eq"                  
}.toTable()
