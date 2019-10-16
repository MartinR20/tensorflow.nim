import macros,
       strutils,
       sequtils,
       tables,
       ../utils/utils,
       ../core/core,
       ./make/makeutils,
       ./extendedMacros

proc itfclosureFromScopes(name: cppstring, fn: Scope, scope: Scope): NameAttrList {.
  header:"tensorflow/core/framework/graph_to_functiondef.h",
  importcpp:"""[&](){
    std::string _name = #;

    tensorflow::FunctionDef _fdef;
    TF_CHECK_OK(tensorflow::GraphToFunctionDef(*#->graph(), _name, &_fdef));

    tensorflow::FunctionDefLibrary _fdef_lib;
    *_fdef_lib.add_function() = _fdef;

    TF_CHECK_OK(#->graph()->AddFunctionLibrary(_fdef_lib));
    
    return tensorflow::FunctionDefHelper::FunctionRef(_name).proto.func();
  }()
  """
  .}

proc tfclosureFromScopes*(scope: Scope, fn: Scope, name: string): NameAttrList =
  return itfclosureFromScopes(newCPPString(name), fn, scope)

proc processArgs(fn: NimNode): OrderedTable[string, string] =
  let argNodes = fn[3][0..^1]
  var args = initOrderedTable[string, string]()

  let generics = fn[2][0..^1]
  var gen = initTable[string, string]()

  for g in generics:
    gen[$g[0]] = $g[1]
  
  for i, node in argNodes[0..^1]:

      case node.kind:
      of nnkIdentDefs:
        args[$node[0]] = gen.getOrReturn($node[1])
      
      of nnkPar:
        args["RET"] = "("
        for n in node:
          args["RET"] &= gen.getOrReturn($n) & ", "
        args["RET"] = args["RET"][0..^3] & ")"     

      of nnkEmpty:
        args["RET"] = ""
      
      else:
        args["RET"] = gen.getOrReturn($node)
  
  return args

macro tfclosure*(scope: Scope, x: untyped): untyped =
  let name = $name(x)
  let args = processArgs(x)

  let wrapperName = name & "Wrapper"
  var wrapperBody: seq[NimNode]

  let scopeName = name & "Scope"
  wrapperBody.add newLetStmt(ident(scopeName), newCall(ident("newRootScope")))
  
  var callArgs: seq[NimNode]

  var i = 0
  for name, dtype in args:
    if name == "RET":
      continue

    if dtype == "Scope":
      callArgs.add newIdentNode(scopeName)
    elif tfdict.hasKey(dtype) or dtype.find("olist") != -1 or dtype == "oall": 
      wrapperBody.add newLetStmt(ident(name), newCall(ident("iArg"),
                                                  ident(scopeName), 
                                                  ident(dtype.replace("oall", "oinvalid")),
                                                  newIntLitNode(i)))
      callArgs.add ident(name)
      inc(i)
    else:
      echo "Your using an unsupported type!"
      
  wrapperBody.add x

  if args["RET"][0] == '(':
      var names: seq[NimNode] 

      var retlen = args["RET"].split(", ").len
      for i in 0..retlen-1:
        names.add ident("retVal" & $i)

      wrapperBody.add newMultiLet(names, newCall(ident(name), callArgs))

      for i in 0..retlen-1:
        wrapperBody.add newDiscardStmt(newCall(ident("iRetval"),    
                                                ident(scopeName), 
                                                ident("retVal" & $i), 
                                                newIntLitNode(i)))
  elif args["RET"] != "":
    wrapperBody.add newLetStmt(ident("retVal"), newCall(ident(name), callArgs))
    wrapperBody.add newDiscardStmt(newCall(ident("iRetval"),    
                                            ident(scopeName), 
                                            ident("retVal"), 
                                            newIntLitNode(0)))
  else:
      wrapperBody.add newCall(ident(name), callArgs)

  wrapperBody.add newReturnStmt(newCall(ident("tfclosureFromScopes"), 
                                        ident("scope"),
                                        ident(scopeName),
                                        newStrLitNode(name)))

  let wrapper = newProc(ident(wrapperName), 
                        [ident("NameAttrList")],
                        newStmtList(wrapperBody))

  let res = newStmtList(
      wrapper,
      newLetStmt(ident(name), newCall(ident(wrapperName)))
  )

  return res
