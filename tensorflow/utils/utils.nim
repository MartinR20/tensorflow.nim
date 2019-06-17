{.passC: "-isystem /usr/local/include/tensorflow -isystem /usr/local/include/tensorflow/bazel-genfiles -isystem /usr/local/include/tensorflow/bazel-genfiles/genfiles -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads/absl -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads/eigen -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads/gemmlowp -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/downloads/nsync/public -isystem /usr/local/include/tensorflow/tensorflow/contrib/makefile/gen/protobuf-host/include -std=c++11".} 
{.passL: "-Wl,-rpath,/usr/local/lib/tensorflow_cc /usr/local/lib/tensorflow_cc/libtensorflow_cc.so -ldl -lpthread /usr/local/lib/tensorflow_cc/libprotobuf.a".}
{.hint[XDeclaredButNotUsed]:off.}

const
  client_session = "<tensorflow/cc/client/client_session.h>"
  std_ops = "<tensorflow/cc/ops/standard_ops.h>"
  tensor = "<tensorflow/core/framework/tensor.h>"
  gradients = "<tensorflow/cc/framework/gradients.h>"
  memory = "<memory>"
  vector = "<vector>"

type 
  cppstring* {.header:"<string>", importcpp:"std::string".} = object

proc newCPPString(str: ptr char): cppstring {.header:"<string>", importcpp:"std::string(#)".}

proc newCPPString(str: string): cppstring = 
  return newCPPString(unsafeAddr(str[0]))

proc size*(str: cppstring): clong {.importcpp: "(long)#.size()".}


proc c_str*(str: cppstring) : static[ptr cchar] {.importcpp: "(char*)#.c_str()".}

proc print*(str: cppstring) {.header: "<iostream>",
                              importcpp: "std::cout << # << \"\\n\"".}

export client_session,
       std_ops,
       tensor,
       gradients,
       memory,
       vector,
       cppstring,
       newCPPString,
       size,
       c_str,
       print
