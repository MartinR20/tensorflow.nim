import macros
import tables
import strutils
import ./register
{.hint[XDeclaredButNotUsed]:off.}

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

const translateNimToCpp* = { 
  "Scope"        : "::tensorflow::Scope"             ,            
  "In"           : "::tensorflow::Input"             ,            
  "InList"       : "::tensorflow::InputList"         ,                
  "Out"          : "::tensorflow::Input"             ,             
  "OutList"      : "::tensorflow::InputList"         ,                 
  "bool"         : "::tensorflow::bool"              ,           
  "int"          : "::tensorflow::int64"             ,            
  "int8"         : "::tensorflow::int8"              ,           
  "int16"        : "::tensorflow::int16"             ,            
  "int32"        : "::tensorflow::int32"             ,            
  "int64"        : "::tensorflow::int64"             ,            
  "uint"         : "::tensorflow::uint64"            ,             
  "uint8"        : "::tensorflow::uint8"             ,            
  "uint16"       : "::tensorflow::uint16"            ,             
  "uint32"       : "::tensorflow::uint32"            ,             
  "uint64"       : "::tensorflow::uint64"            ,             
  "float32"      : "::tensorflow::float32"           ,              
  "float64"      : "::tensorflow::float64"           ,              
  "float"        : "::tensorflow::float32"           ,              
  "DType"        : "::tensorflow::DataType"          ,              
  "Tensor"       : "::tensorflow::Tensor"            ,              
  "TensorShape"  : "::tensorflow::PartialTensorShape",              
  "NameAttrList" : "::tensorflow::NameAttrList"      ,              
  "cppstring"    : "::tensorflow::string"                         
}.toTable()

const translateCppToNim* = { 
  "::tensorflow::Scope"              : "Scope"       ,            
  "::tensorflow::Input"              : "Out"         ,            
  "::tensorflow::InputList"          : "OutList"     ,                
  "::tensorflow::Output"             : "Out"         ,             
  "::tensorflow::OutputList"         : "OutList"     ,                 
  "::tensorflow::bool"               : "bool"        ,           
  "::tensorflow::int64"              : "int"         ,            
  "::tensorflow::int8"               : "int8"        ,           
  "::tensorflow::int16"              : "int16"       ,            
  "::tensorflow::int32"              : "int32"       ,            
  "::tensorflow::int64"              : "int64"       ,            
  "::tensorflow::uint64"             : "uint"        ,             
  "::tensorflow::uint8"              : "uint8"       ,            
  "::tensorflow::uint16"             : "uint16"      ,             
  "::tensorflow::uint32"             : "uint32"      ,             
  "::tensorflow::uint64"             : "uint64"      ,             
  "::tensorflow::float32"            : "float32"     ,              
  "::tensorflow::float64"            : "float64"     ,              
  "::tensorflow::float32"            : "float"       ,              
  "::tensorflow::DataType"           : "DType"       ,              
  "::tensorflow::Tensor"             : "Tensor"      ,              
  "::tensorflow::PartialTensorShape" : "TensorShape" ,              
  "::tensorflow::NameAttrList"       : "NameAttrList",              
  "::tensorflow::string"             : "cppstring"                
}.toTable()

proc fromTo(str: string, start: char, eend: char): string =
  let s = str.find(start)+1
  let e = str.find(eend)-1

  return str[s..e]

proc fromTo(str: string, start: char, eend: int): string =
  let s = str.find(start)

  return str[s..eend]

var op_included {.compileTime.} = false

proc translateTypeToCpp(dtype: string): string =
  if dtype.find("ArraySlice") == -1:
    return translateNimToCpp[dtype]
  else: 
    return "tensorflow::gtl::ArraySlice<" & translateNimToCpp[dtype.fromTo('[', ']')] & ">"

proc translateTypeToNim(dtype: string): string =
  if dtype.find("ArraySlice") != -1:
    return "ArraySlice[" & translateCppToNim[dtype.fromTo('<', '>')] & "]"
  else: 
    return translateCppToNim[dtype]

proc getOrReturn[M, N](table: Table[M, N], key: M): N =
  if table.hasKey(key):
    return table[key]
  else:
    return key
  
proc makeNewOpIncludes(funheader: NimNode, explicit = false): NimNode =
  if not op_included or explicit:
    var includes = "\"\"#include \"tensorflow/core/framework/op.h\" \n" & 
                   "#include \"tensorflow/core/framework/shape_inference.h\" \n" & 
                   "#include \"tensorflow/core/framework/common_shape_fns.h\" \n" & 
                   "#include \"tensorflow/core/framework/op_kernel.h\" \n" & 
                   "#include \"tensorflow/cc/framework/scope.h\" \n" & 
                   "#include \"tensorflow/core/framework/tensor.h\" \n" & 
                   "#include \"tensorflow/core/framework/tensor_shape.h\" \n" & 
                   "#include \"tensorflow/cc/ops/standard_ops.h\" \n" & 
                   "#include \"tensorflow/core/framework/types.h\" \n\"\""
    insert(funheader, 0, parseStmt("{.emit:\"" & includes & "\".}"))
    op_included = true
  
  return funheader

proc makeNewDatsetIncludes(funheader: NimNode, explicit = false): NimNode =
  if not op_included or explicit:
    var includes = "\"\"#include \"tensorflow/core/framework/dataset.h\" \n\"\""
    insert(funheader, 0, parseStmt("{.emit:\"" & includes & "\".}"))
    op_included = true
  return funheader

proc makeFun(body: NimNode, header: NimNode): NimNode =
  header[0].del(header[0].len-1, 1)
  insert(header[0], header[0].len, body)
  return header

proc getInsAndAttrs(exportName: string): (OrderedTable[string, string], OrderedTable[string, string], bool) = 
  var ins = initOrderedTable[string, string]()
  var attrs = initOrderedTable[string, string]()
  var outputIsList = false

  if not lookUp.hasKey(exportName):
    raise newException(ValueError, "You didn't register any input or output for your function!")

  for pragma in lookUp[exportName].split("."):
    let splited = pragma
                    .replace("(", " ")
                    .replace(")", " ")
                    .replace("\"", "")
                    .replace(":", "")
                    .split(" ")

    let name = cppKeywordsTranslate.getOrReturn(
                nimKeywordsTranslate.getOrReturn(splited[1])
              )

    if splited[0] == "Input":
      if splited.contains("*"):
        ins[name] = "::tensorflow::InputList"
      else:
        ins[name] = "::tensorflow::Input"

    elif splited[0] == "Attr" and splited[2] != "type":
      attrs[name] = splited[2]

    elif splited[0] == "Output" and splited.contains("*"):
      outputIsList = true

  return (ins, attrs, outputIsList)

export nimKeywordsTranslate,
       cppKeywordsTranslate,
       translateTypeToCpp,
       translateTypeToNim,
       fromTo,
       getOrReturn,
       makeNewOpIncludes,
       makeNewDatsetIncludes,
       makeFun,
       getInsAndAttrs
       