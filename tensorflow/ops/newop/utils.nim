import macros
import tables
import strutils
{.hint[XDeclaredButNotUsed]:off.}

proc fromTo(str: string, start: char, eend: char): string =
  let s = str.find(start)
  let e = str.find(eend)

  return str[s..e]

proc fromTo(str: string, start: char, eend: int): string =
  let s = str.find(start)

  return str[s..eend]

var op_included {.compileTime.} = false

proc getOrReturn[M, N](table: Table[M, N], key: M): N =
  if table.hasKey(key):
    return table[key]
  else:
    return key
  
proc makeNewOpIncludes(funheader: NimNode): NimNode =
  if not op_included:
    var includes = "\"\"#include \"tensorflow/core/framework/op.h\" \n" & 
                   "#include \"tensorflow/core/framework/shape_inference.h\" \n" & 
                   "#include \"tensorflow/core/framework/op_kernel.h\" \n" & 
                   "#include \"tensorflow/cc/framework/scope.h\" \n" & 
                   "#include \"tensorflow/core/framework/tensor.h\" \n" & 
                   "#include \"tensorflow/core/framework/tensor_shape.h\" \n" & 
                   "#include \"tensorflow/core/framework/types.h\" \n\"\""
    insert(funheader, 0, parseStmt("{.emit:\"" & includes & "\".}"))
    op_included = true
  return funheader

const nimKeywordsTranslate = { 
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

const cppKeywordsTranslate = { 
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

export fromTo,
       getOrReturn,
       makeNewOpIncludes,
       nimKeywordsTranslate,
       cppKeywordsTranslate
       