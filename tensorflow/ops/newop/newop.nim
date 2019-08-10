import ../../core/core
import ../../utils/utils
import macros
import tables
import strutils
import sequtils
{.hint[XDeclaredButNotUsed]:off.}

type
    OpDefBuilderWrapper {.header: std_ops,
                          header: memory,
                          importcpp: "tensorflow::register_op::OpDefBuilderWrapper<true>".} = object

    InferenceContext {.header: shape_inference,
                       importcpp: "tensorflow::shape_inference::InferenceContext".} = object

    OpKernel {.header: op_kernel,
               importcpp: "tensorflow::OpKernel".} = object of RootObj

    OpKernelContext {.header: std_ops,
                      importcpp: "tensorflow::OpKernelContext".} = object

    KernelDefBuilder {.header: std_ops,
                       importcpp: "tensorflow::KernelDefBuilder".} = object
                    
const
    CPU: string = "CPU"
    GPU: string = "GPU"

template MakeOpType(name, cname, compute) = 
    type 
        nameConstructor {.importcpp:"explicit " & cname & "(tensorflow::OpKernelConstruction* context): tensorflow::OpKernel(context) {}; //".} = object
        ComputeType {.importcpp:"void Compute(tensorflow::OpKernelContext* context) override; //".} = object

    type name {.exportc: cname.} = object of OpKernel
        constructor: nameConstructor
        compute: ComputeType

    proc ComputeFunction(ctx: ptr OpKernelContext) {.exportc: cname & "::Compute".} =
        compute(ctx)

var lookUp {.compileTime.} = newTable[string,string]()
var op_registered {.compileTime.} = false
var op_included {.compileTime.} = false
var grad_included {.compileTime.} = false

macro input(str: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Input(\"" & $str & "\")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Input(\"" & $str & "\")"

  x

macro output(str: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Output(\"" & $str & "\")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Output(\"" & $str & "\")"
  x

macro setShapeFn(fn: proc(ctx: ptr InferenceContext): Status, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetShapeFn(shape" & $name(x) & ")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetShapeFn(shape" & $name(x) & ")"

  var fun = parseStmt("proc shapeFn(ctx: ptr InferenceContext): Status {.exportc:\"shape" & $name(x) & "\".}")
  
  fun[0].del(fun[0].len-1, 1)
  insert(fun[0], fun[0].len, nnkCommand.newTree(
                          fn,
                          newIdentNode("ctx")
                        ))

  
  nnkStmtList.newTree(fun, x)

proc makeArgsCPP(table: TableRef[string,string]): string =
  var ret: seq[string]

  for name, dtype in table.pairs:
    ret.add "       " & dtype & " " & name

  return ret.join(",\n")

proc makeArgsNim(table: TableRef[string,string]): string =
  var ret: seq[string]

  for name, dtype in table.pairs:
    ret.add name & ": " & (if dtype == "::tensorflow::Input": "Out" else: dtype)

  return ret.join(", ")
  
proc convInputsToOutputs(table: TableRef[string,string]): string =
  var ret: string

  for name in table.keys:
    ret &= "       auto _" & name & " = ::tensorflow::ops::AsNodeOut(scope, " & name & ");\n"
    ret &= "       if (!scope.ok()) return;\n"

  return ret

proc makeBuilderInputs(table: TableRef[string,string]): string =
  var ret: string

  for name in table.keys:
    ret &= "                                    .Input(_" & name & ")\n"

  return ret
  
proc makeBuilderAttrs(table: TableRef[string,string]): string =
  var ret: string

  for name in table.keys:
    ret &= "                                    .Attr(\"" & name & "\", " & name & ")\n"

  return ret

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

proc getOrReturn[M, N](table: Table[M, N], key: M): N =
  if table.hasKey(key):
    return table[key]
  else:
    return key

macro tfexport(device: string, x: untyped): untyped =
  var exportName = $name(x)

  var ddevice: string
  if $device != "CPU" and $device != "GPU":
    raise newException(ValueError, "Your requested device `" & $device & "` is not supported!")
  else:
    ddevice = $device

  var ins = newTable[string, string]()
  var attrs = newTable[string, string]()
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
      ins[name] = "::tensorflow::Input"

    elif splited[0] == "Attr" and splited[2] != "type":
      attrs[name] = splited[2]

    elif splited[0] == "Output" and splited.contains("*"):
      outputIsList = true

  var cppSource =  "\"\"class " & exportName & "Op : public tensorflow::OpKernel {\n" &
                   "  public: \n" &
                   "    explicit " & exportName & "Op(tensorflow::OpKernelConstruction* context): tensorflow::OpKernel(context) {}\n" &
                   "    void Compute(tensorflow::OpKernelContext* context) override { " & exportName & "_Compute(context); }\n" &
                   "}; \n" &
                   "REGISTER_KERNEL_BUILDER(Name(\"" & exportName & "\").Device(\"" & ddevice & "\"), " & exportName & "Op);\n" &
                   "class " & exportName & "{\n" &
                   "  public:\n" &
                   "    " & exportName & "(const ::tensorflow::Scope& scope,\n" & 
                   makeArgsCPP(ins) & ",\n" &
                   makeArgsCPP(attrs) & ") {\n" &
                   "       if (!scope.ok()) return;\n" &
                   convInputsToOutputs(ins) &
                   "       ::tensorflow::Node* ret;\n" &
                   "       const auto unique_name = scope.GetUniqueNameForOp(\"" & exportName & "\");\n" &
                   "       auto builder = ::tensorflow::NodeBuilder(unique_name, \"" & exportName & "\")\n" &
                   makeBuilderInputs(ins) &
                   makeBuilderAttrs(attrs) &
                   "       ;\n" &
                   "       scope.UpdateBuilder(&builder);\n" &
                   "       scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));\n" &
                   "       if (!scope.ok()) return;\n" &
                   "       scope.UpdateStatus(scope.DoShapeInference(ret));\n" &
                   "       this->operation = ::tensorflow::Operation(ret);\n" 
  
  if outputIsList:
    cppSource &= "       for (int32_t i = 0; i < ret->num_outputs(); ++i)\n" &
                 "         this->output.push_back(::tensorflow::Output(ret, i));\n" &
                 "    }\n" & 
                 "\n" &
                 "    ::tensorflow::Output operator[](size_t index) const { return output[index]; }\n" &
                 "\n" &
                 "    ::tensorflow::Operation operation;\n" &
                 "    ::tensorflow::OutputList output;\n"
  else:
    cppSource &= "       this->output = ::tensorflow::Output(ret, i);\n" &
                 "    }\n" & 
                 "\n" &
                 "    ::tensorflow::Operation operation;\n" &
                 "    ::tensorflow::Output output;\n"

  cppSource &= "};\n\"\""

  var funbody = body(x) 
  var funheader = parseStmt("proc export" & exportName & "(ctx: ptr OpKernelContext) {.exportc:\"" & exportName & "_Compute\".}")

  funheader[0].del(funheader[0].len-1, 1)
  insert(funheader[0], funheader[0].len, funbody)

  let nimSource = "proc " & exportName & "(root: Scope, " &  
                    makeArgsNim(ins) & ", " & 
                    makeArgsNim(attrs) & "): " & 
                    (if outputIsList: "OutList" else: "Out") & 
                    " {.importcpp:\"" & exportName & "(*#" & ", #".repeat(ins.len + attrs.len) & ").output\".}"

  insert(funheader, 1, parseStmt(nimSource))
  insert(funheader, 1, parseStmt("{.emit:\"" & cppSource & "\".}"))
  insert(funheader, 1, parseStmt("{.emit:lookUp[\"" & $name(x) & "\"] & \";\".}"))

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

macro attr(str: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Attr(\"" & $str & "\")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Attr(\"" & $str & "\")"
  x

macro setIsCommutative(x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetIsCommutative()"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetIsCommutative()"
  x

macro setIsAggregate(x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetIsAggregate()"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetIsAggregate()"
  x

macro setIsStateful(x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetIsStateful()"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetIsStateful()"
  x

macro setAllowsUninitializedInput(x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").SetAllowsUninitializedInput()"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".SetAllowsUninitializedInput()"
  x

macro deprecated(version: int, name: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = "REGISTER_OP(\"" & $name(x) & "\").Deprecated(" & $version & ", " & $name & ")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Deprecated(" & $version & ", " & $name & ")"
  x

macro doc(str: string, x: untyped): untyped =
  if op_registered == false:
    lookUp[$name(x)] = ".Doc(" & $str & ")"
    op_registered = true
  else:
    lookUp[$name(x)] &= ".Doc(" & $str & ")"
  x

macro grad*(x: untyped): untyped =
  var exportName = $name(x) & "Grad"

  addPragma(x, newColonExpr(
                newIdentNode("exportc"),
                newStrLitNode(exportName)
              )
            )

  let fun = newStmtList(
    x,
    parseStmt("{.emit:\"tensorflow::Status " & exportName & "_(const tensorflow::Scope &s, const tensorflow::Operation &p, const std::vector<tensorflow::Output> &i, std::vector<tensorflow::Output> *o){ return " & exportName & "(std::make_shared<tensorflow::Scope>(std::move(s)),p,i,o); }\".}"),
    parseStmt("{.emit:\"REGISTER_GRADIENT_OP(\\\"" & $name(x) & "\\\", " & exportName & "_);\".}")
  )

  if not grad_included:
    var includes = "\"\"#include \"tensorflow/cc/framework/grad_op_registry.h\" \n" &
                       "#include \"tensorflow/cc/framework/gradients.h\" \n\"\""
    insert(fun, 0, parseStmt("{.emit:\"" & includes & "\".}"))
    grad_included = true

  return fun

macro nograd(x: untyped): untyped =
  let register = parseStmt("{.emit:\"REGISTER_NO_GRADIENT_OP(\\\"" & $name(x) & "\\\");\".}")

  if not grad_included:
    const includes = "\"\"#include \"tensorflow/cc/framework/grad_op_registry.h\" \n#include \"tensorflow/cc/framework/gradients.h\" \n\"\""
  
    let res = newStmtList(
      parseStmt("{.emit:\"" & includes & "\".}")[0],
      register[0]
    )

    grad_included = true

    return res
  
  else:
    return register

proc set_output(ctx: ptr InferenceContext, i: int, status: Status) {.header: std_ops,
                                                                     importcpp: "#->set_output(#, #)".}

proc input(ctx: ptr InferenceContext, i: int): Status {.header: std_ops,
                                                        importcpp: "#->input(#)".}


proc REGISTER_KERNEL_BUILDER(builder: KernelDefBuilder, class: type) {.header: std_ops,
                                                                       inline,
                                                                       importcpp: "REGISTER_KERNEL_BUILDER(#, '2)".}

proc name(name: cstring): KernelDefBuilder {.header: std_ops,
                                             inline,
                                             importcpp: "Name(@)".}

proc device(builder: KernelDefBuilder, device: cstring): KernelDefBuilder {.header: std_ops,
                                                                            inline,
                                                                            importcpp: "#.Device(#)".}


proc input(ctx: ptr OpKernelContext, i: int): Tensor {.header: op_kernel,
                                                       header: memory,
                                                       importcpp: "std::make_shared<tensorflow::Tensor>(std::move(#->input(#)))".}

proc output(ctx: ptr OpKernelContext, i: int): Tensor {.header: op_kernel,
                                                        header: memory,
                                                        importcpp: "std::make_shared<tensorflow::Tensor>(std::move(#->output(#)))".}

proc set_output(ctx: ptr OpKernelContext, i: int, ten: Tensor) {.header: std_ops,
                                                                 importcpp: "#->set_output(#, *#)".}

proc allocate_output(ctx: ptr OpKernelContext, i: int, shape: TensorShape, output: Tensor): Status {.header: op_kernel,
                                                                                                     importcpp: "[&]() { auto _ctx = #; auto _i = #; auto _shape = #; tensorflow::Tensor* _tensorref = (tensorflow::Tensor*)(#.get()); return _ctx->allocate_output(_i, _shape, &_tensorref); } ()".}

proc OP_REQUIRES_OK(ctx: ptr OpKernelContext, status: Status) {.header: op_kernel,
                                                                importcpp: "OP_REQUIRES_OK(#, #)".}


export CPU,
       GPU,
       OpDefBuilderWrapper,
       Status,
       ok,
       MakeOpType,
       attr,
       input,
       output,
       setIsCommutative,
       setIsAggregate,
       setIsStateful,
       setAllowsUninitializedInput,
       deprecated,
       doc,
       tfexport,
       tables,
       lookUp,
       InferenceContext,
       setShapeFn,
       set_output,
       input,
       OpKernel,
       REGISTER_KERNEL_BUILDER,
       name,
       device,
       OpKernelContext,
       input,
       allocate_output,
       OP_REQUIRES_OK,
       nograd,
       grad