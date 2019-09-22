import macros,
       strutils,
       sequtils,
       tables,
       ../utils/utils,
       ../core/core,
       ./newop/newop

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

proc tfclosureFromScopes(scope: Scope, fn: Scope, name: string): NameAttrList =
  return itfclosureFromScopes(newCPPString(name), fn, scope)

proc processArgs(fn: NimNode): OrderedTable[string, string] =
  let argNodes = fn[3][1..^1]
  var args = initOrderedTable[string, string]()

  
  for i, node in argNodes[0..^1]:
      let name = $node[0]
      let dtype = $node[1]

      # switch types to Out
      #if typeLookUp.hasKey(dtype):
      #  fn[3][i+1][1] = ident("Out")

      args[name] = dtype
  
  return args

proc newDiscardStmt(arg: NimNode): NimNode =
  let disc = newNimNode(nnkDiscardStmt)
  return disc.add(arg)

proc newReturnStmt(arg: NimNode): NimNode =
  let ret = newNimNode(nnkReturnStmt)
  return ret.add(arg)

var def {.compileTime.} = false

macro tfclosure(scope: Scope, x: untyped): untyped =
  let name = $name(x)
  let args = processArgs(x)
  let returnType = x[3][0]

  let wrapperName = name & "Wrapper"
  var wrapperBody: seq[NimNode]

  let scopeName = name & "Scope"
  wrapperBody.add newLetStmt(ident(scopeName), newCall(ident("newRootScope")))
  
  var callArgs: seq[NimNode]

  var i = 0
  for name, dtype in args:
      if dtype == "Scope":
        callArgs.add newIdentNode(scopeName)
      elif dtype == "Out" or dtype == "OutList" : #elif typeLookUp.hasKey(dtype):
        wrapperBody.add newLetStmt(ident(name), newCall(ident("Arg"),    
                                                    ident(scopeName), 
                                                    #newLit(typeLookUp[dtype]), 
                                                    newIntLitNode(i)))
        callArgs.add ident(name)
        inc(i)
      else:
        echo "Your using an unsupported type!"
      
  wrapperBody.add x

  if returnType.kind != nnkEmpty:
      wrapperBody.add newLetStmt(ident("retVal"), newCall(ident(name), callArgs))
      wrapperBody.add newDiscardStmt(newCall(ident("Retval"),    
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
                        [ident("NameAttrList"),
                        newIdentDefs(ident("scope"), ident("Scope"))],
                        newStmtList(wrapperBody))

  let res = newStmtList(
      wrapper,
      newLetStmt(ident(name), newCall(ident(wrapperName), ident($scope)))
  )

  if not def:
      def = true
      return newStmtList(
          makeExsistingOpProc("_Arg", "(scope: Scope, index: int64): Out", true),
          makeExsistingOpProc("_Retval", "(scope: Scope, input: Out, index: int64): Out"),
          res)
  else:
      return res

export tfclosureFromScopes,
       tfclosure