import ../../core

{.compile:"../../ops/internal/py/py.cc".}


type EagerPyFunc*[oT:oall] {.header:"../../ops/internal/py/py.h", importcpp:"EagerPyFunc/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iieagerPyFunc[oT: oall](scope: Scope,
                  input: olist[oall],
                  token: cstring,
                  Tin: ArraySlice[DType],
                  Tout: ArraySlice[DType],
                  explicitT: type(oT)): EagerPyFunc[oT] {.header:"../../ops/internal/py/py.h", importcpp:"EagerPyFunc(*#, #, tensorflow::string(#), #, #)", constructor.}

proc eagerPyFunc*(scope: Scope,
                  input: olist[oall],
                  token: cstring,
                  Tin: openArray[DType],
                  Tout: openArray[DType],
                  explicitT: type): auto =
  return iieagerPyFunc(scope,
                       input,
                       token,
                       newArraySlice(Tin),
                       newArraySlice(Tout),
                       explicitT)

converter eagerPyFuncToOutList*[oT: oall](op: EagerPyFunc[oT]): olist[oT] {.inline.} = return op.output


type PyFunc*[oT:oall] {.header:"../../ops/internal/py/py.h", importcpp:"PyFunc/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iipyFunc[oT: oall](scope: Scope,
             input: olist[oall],
             token: cstring,
             Tin: ArraySlice[DType],
             Tout: ArraySlice[DType],
             explicitT: type(oT)): PyFunc[oT] {.header:"../../ops/internal/py/py.h", importcpp:"PyFunc(*#, #, tensorflow::string(#), #, #)", constructor.}

proc pyFunc*(scope: Scope,
             input: olist[oall],
             token: cstring,
             Tin: openArray[DType],
             Tout: openArray[DType],
             explicitT: type): auto =
  return iipyFunc(scope,
                  input,
                  token,
                  newArraySlice(Tin),
                  newArraySlice(Tout),
                  explicitT)

converter pyFuncToOutList*[oT: oall](op: PyFunc[oT]): olist[oT] {.inline.} = return op.output


type PyFuncStateless*[oT:oall] {.header:"../../ops/internal/py/py.h", importcpp:"PyFuncStateless/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iipyFuncStateless[oT: oall](scope: Scope,
                      input: olist[oall],
                      token: cstring,
                      Tin: ArraySlice[DType],
                      Tout: ArraySlice[DType],
                      explicitT: type(oT)): PyFuncStateless[oT] {.header:"../../ops/internal/py/py.h", importcpp:"PyFuncStateless(*#, #, tensorflow::string(#), #, #)", constructor.}

proc pyFuncStateless*(scope: Scope,
                      input: olist[oall],
                      token: cstring,
                      Tin: openArray[DType],
                      Tout: openArray[DType],
                      explicitT: type): auto =
  return iipyFuncStateless(scope,
                           input,
                           token,
                           newArraySlice(Tin),
                           newArraySlice(Tout),
                           explicitT)

converter pyFuncStatelessToOutList*[oT: oall](op: PyFuncStateless[oT]): olist[oT] {.inline.} = return op.output

