{.passC: "-isystem /usr/local/include/tensorflow -isystem /usr/local/include/tensorflow/bazel-genfiles -isystem /usr/local/include/tensorflow/bazel-genfiles/genfiles -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads/absl -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads/eigen -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads/gemmlowp -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads/nsync/public -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/gen/protobuf-host/include -std=c++11".} 
{.passL: "-Wl,-rpath,/usr/local/lib/tensorflow_cc /usr/local/lib/tensorflow_cc/libtensorflow_cc.so -ldl -lpthread /usr/local/lib/tensorflow_cc/libprotobuf.a".}
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
