when defined(linux) or defined(macosx):
  const includeDir = "$HOME/.nimble/pkgs/tensorflow-0.1.0/include/"
  const libDir = "$HOME/.nimble/pkgs/tensorflow-0.1.0/lib/"

{.passC:"-I" & includeDir & "tensorflow " &
         "-I" & includeDir & "genfiles " &
         "-I" & includeDir & "absl " &
         "-I" & includeDir & "eigen " &
         "-I" & includeDir & "protobuf " &
         "-std=c++11 " &
         "-DNDEBUG " #Workaround for ref count error of custom ops
         .} 
{.passL: "-undefined dynamic_lookup " &
         "-Wl,-rpath," & libDir & 
         " -L" & libDir & " -ltensorflow_cc -lprotobuf -ldl -lpthread".}
{.hint[XDeclaredButNotUsed]:off.}

const
  client_session = "<tensorflow/cc/client/client_session.h>"
  std_ops = "<tensorflow/cc/ops/standard_ops.h>"
  tensor = "<tensorflow/core/framework/tensor.h>"
  gradients = "<tensorflow/cc/framework/gradients.h>"
  shape_inference = "<tensorflow/core/framework/shape_inference.h>"
  op_kernel = "<tensorflow/core/framework/op_kernel.h>"
  memory = "<memory>"
  vector = "<vector>"
  writer = "<tensorflow/core/util/events_writer.h>"

  ## header definitions used across the library

type 
  cppstring* {.header:"<string>", importcpp:"std::string".} = object

    ## thin wrapper around a cppstring only for internal use

proc newCPPString*(str: cstring): cppstring {.header:"<string>", importcpp:"std::string(#)".}

  ## create cppstring from cstring

proc len*(str: cppstring): clong {.importcpp: "(long)#.size()".}

  ## get the size of a cppstring

proc c_str*(str: cppstring) : static[ptr cchar] {.importcpp: "(char*)#.c_str()".}

  ## convert the cppstring to c char array

proc print*(str: cppstring) {.header: "<iostream>",
                              importcpp: "std::cout << # << \"\\n\"".}

  ## print the content of the cppstring

proc `$`*(str: cppstring): string =
  let l = str.len
  var nim = newString(l)
  copyMem(addr(nim[0]), str.c_str, l)
  return nim

export client_session,
       std_ops,
       tensor,
       gradients,
       shape_inference,
       op_kernel,
       memory,
       vector,
       writer,
       cppstring,
       newCPPString,
       len,
       c_str,
       print,
       `$`
