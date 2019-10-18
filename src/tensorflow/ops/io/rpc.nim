import ../../core

{.compile:"../../ops/io/rpc/rpc.cc".}


type Rpc* {.header:"../../ops/io/rpc/rpc.h", importcpp:"Rpc/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iirpc(scope: Scope,
          address: ostring,
          nmethod: ostring,
          request: ostring,
          protocol: cstring,
          fail_fast: bool,
          timeout_in_ms: int64): Rpc {.header:"../../ops/io/rpc/rpc.h", importcpp:"Rpc(*#, #, #, #, tensorflow::string(#), #, #)", constructor.}

proc rpc*(scope: Scope,
          address: ostring,
          nmethod: ostring,
          request: ostring,
          protocol: cstring,
          fail_fast: bool = true,
          timeout_in_ms: int64 = 0.int): Rpc =
  return iirpc(scope,
               address,
               nmethod,
               request,
               protocol,
               fail_fast,
               timeout_in_ms)

converter rpcToOut*(op: Rpc): ostring {.inline.} = return op.output


type TryRpc* {.header:"../../ops/io/rpc/rpc.h", importcpp:"TryRpc/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iitryRpc(scope: Scope,
             address: ostring,
             nmethod: ostring,
             request: ostring,
             protocol: cstring,
             fail_fast: bool,
             timeout_in_ms: int64): TryRpc {.header:"../../ops/io/rpc/rpc.h", importcpp:"TryRpc(*#, #, #, #, tensorflow::string(#), #, #)", constructor.}

proc tryRpc*(scope: Scope,
             address: ostring,
             nmethod: ostring,
             request: ostring,
             protocol: cstring,
             fail_fast: bool = true,
             timeout_in_ms: int64 = 0.int): TryRpc =
  return iitryRpc(scope,
                  address,
                  nmethod,
                  request,
                  protocol,
                  fail_fast,
                  timeout_in_ms)

converter tryRpcToOut*(op: TryRpc): ostring {.inline.} = return op.output

