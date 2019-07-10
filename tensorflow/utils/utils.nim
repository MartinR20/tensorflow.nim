{.passC: "-I../tensorflow/utils/include/tensorflow " &
         "-I../tensorflow/utils/include/genfiles " &
         "-I../tensorflow/utils/include/absl " &
         "-I../tensorflow/utils/include/eigen " &
         "-I../tensorflow/utils/include/protobuf " &
         "-std=c++11".} 
#TODO: librarys have to be installed into /usr/local/lib
{.passL: "-L/usr/local/lib -ltensorflow_cc -lprotobuf -ldl -lpthread".}
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

  ## header definitions used across the library

type 
  cppstring* {.header:"<string>", importcpp:"std::string".} = object

    ## thin wrapper around a cppstring only for internal use

proc newCPPString*(str: ptr char): cppstring {.header:"<string>", importcpp:"std::string(#)".}

  ## create cppstring from char pointer

proc newCPPString*(str: string): cppstring = 
  return newCPPString(unsafeAddr(str[0]))

  ## create cppstring from nim string

proc size*(str: cppstring): clong {.importcpp: "(long)#.size()".}

  ## get the size of a cppstring

proc c_str*(str: cppstring) : static[ptr cchar] {.importcpp: "(char*)#.c_str()".}

  ## convert the cppstring to c char array

proc print*(str: cppstring) {.header: "<iostream>",
                              importcpp: "std::cout << # << \"\\n\"".}

  ## print the content of the cppstring

export client_session,
       std_ops,
       tensor,
       gradients,
       shape_inference,
       op_kernel,
       memory,
       vector,
       cppstring,
       newCPPString,
       size,
       c_str,
       print
