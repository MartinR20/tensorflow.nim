import ../core/core,
       ../utils/utils

## 1ArgFuncs
template make1ArgFunc*(func_name, tf_func_name) =
  proc func_name*(root: Scope, A: Out) : Out {.header: std_ops,
                                               importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #)".} 
  
  proc func_name*(root: Scope, A: Tensor) : Out {.header: std_ops,
                                                  importcpp: "tensorflow::ops::" & tf_func_name & "(*#, *#)".} 
    
template make1ArgFuncWithT*(func_name, T) = 
  proc func_name*(root: Scope, A: T) : Out =
    return root.func_name(newTensor(A).toIn())

template make1ArgFuncFull*(func_name, tf_func_name, T) = 
  make1ArgFunc(func_name, tf_func_name, A)
  make1ArgFuncWithT(func_name, T, A)
  export func_name

## 2ArgFuncs
template make2ArgFunc*(func_name, tf_func_name) =
  proc func_name*(root: Scope, A,B: Out) : Out {.header: std_ops,
                                                 importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #, #)".} 
  
  proc func_name*(root: Scope, A,B: Tensor) : Out {.header: std_ops,
                                                    importcpp: "tensorflow::ops::" & tf_func_name & "(*#, *#, *#)".} 

  proc func_name*(root: Scope, A: Tensor,B: Out) : Out {.header: std_ops,
                                                         importcpp: "tensorflow::ops::" & tf_func_name & "(*#, *#, #)".} 

  proc func_name*(root: Scope, A: Out,B: Tensor) : Out {.header: std_ops,
                                                         importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #, *#)".} 

template make2ArgFuncWithT*(func_name, T) = 
  proc func_name*(root: Scope, A: Out,B: T) : Out =
    return root.func_name(A, newTensor(B).toIn())

  proc func_name*(root: Scope, A: T,B: Out) : Out =
    return root.func_name(newTensor(A).toIn(), B)

template make2ArgFuncFull*(func_name, tf_func_name, T) = 
  make2ArgFunc(func_name, tf_func_name)
  make2ArgFuncWithT(func_name, T)
  export func_name

template make2ArgOp*(op, func_name, tf_func_name) =
  proc op*(root: Scope, A,B: Out) : Out {.header: std_ops,
                                          importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #, #)".} 
  
  proc op*(root: Scope, A,B: Tensor) : Out {.header: std_ops,
                                              importcpp: "tensorflow::ops::" & tf_func_name & "(*#, *#, *#)".} 

  proc op*(root: Scope, A: Tensor,B: Out) : Out {.header: std_ops,
                                                  importcpp: "tensorflow::ops::" & tf_func_name & "(*#, *#, #)".} 

  proc op*(root: Scope, A: Out,B: Tensor) : Out {.header: std_ops,
                                                  importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #, *#)".} 

template make2ArgOpWithT*(op, func_name, T) = 
  proc op*(root: Scope, A: Out,B: T) : Out =
    return root.func_name(A, newTensor(B).toIn())

  proc op*(root: Scope, A: T,B: Out) : Out =
    return root.func_name(newTensor(A).toIn(), B)

template make2ArgOpFull*(op, func_name, tf_func_name, T) = 
  make2ArgOp(op, func_name, tf_func_name)
  make2ArgOpWithT(op, func_name, T)
  export func_name


## 3ArgFuncs
template make3ArgFunc*(func_name, tf_func_name) =
  proc func_name*(root: Scope, A,B,C: Out) : Out {.header: std_ops,
                                                   importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #, #, #)".} 
  
  proc func_name*(root: Scope, A,B,C: Tensor) : Out {.header: std_ops,
                                                      importcpp: "tensorflow::ops::" & tf_func_name & "(*#, *#, *#, *#)".} 

  proc func_name*(root: Scope, A: Tensor, B: Out, C: Out) : Out {.header: std_ops,
                                                                  importcpp: "tensorflow::ops::" & tf_func_name & "(*#, *#, #, #)".} 

  proc func_name*(root: Scope, A: Out, B: Tensor, C: Out) : Out {.header: std_ops,
                                                                  importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #, *#, #)".} 

  proc func_name*(root: Scope, A: Out, B: Out, C: Tensor) : Out {.header: std_ops,
                                                                  importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #, #, *#)".} 

  proc func_name*(root: Scope, A: Tensor, B: Tensor, C: Out) : Out {.header: std_ops,
                                                                     importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #*, *#, #)".} 
  
  proc func_name*(root: Scope, A: Out, B: Tensor, C: Tensor) : Out {.header: std_ops,
                                                                     importcpp: "tensorflow::ops::" & tf_func_name & "(*#, #, *#, *#)".} 
  
  proc func_name*(root: Scope, A: Tensor, B: Out, C: Tensor) : Out {.header: std_ops,
                                                                     importcpp: "tensorflow::ops::" & tf_func_name & "(*#, *#, #, *#)".} 
  
template make3ArgFuncWithT*(func_name, T) = 
  proc func_name*(root: Scope, A: T, B: Out, C: Out) : Out =
    return root.func_name(newTensor(A).toIn(), B, C)

  proc func_name*(root: Scope, A: Out, B: T, C: Out) : Out =
    return root.func_name(A, newTensor(B).toIn(), C)

  proc func_name*(root: Scope, A: Out, B: Out, C: T) : Out =
    return root.func_name(A, B, newTensor(C).toIn())

  proc func_name*(root: Scope, A: T, B: T, C: Out) : Out =
    return root.func_name(newTensor(A).toIn(), newTensor(B).toIn(), C)

  proc func_name*(root: Scope, A: Out, B: T, C: T) : Out =
    return root.func_name(A, newTensor(B).toIn(), newTensor(C).toIn())

  proc func_name*(root: Scope, A: T, B: Out, C: T) : Out =
    return root.func_name(newTensor(A).toIn(), B, newTensor(C).toIn())

  proc func_name*(root: Scope, A: T, B: T, C: T) : Out =
    return root.func_name(newTensor(A).toIn(), newTensor(B).toIn(), newTensor(C).toIn())

template make3ArgFuncFull*(func_name, tf_func_name, T) = 
  make3ArgFunc(func_name, tf_func_name)
  make3ArgFuncWithT(func_name, T)
  export func_name

export make1ArgFunc,
       make1ArgFuncFull,
       make1ArgFuncWithT,
       make2ArgFunc,
       make2ArgFuncFull,
       make2ArgFuncWithT,
       make2ArgOp,
       make2ArgOpFull,
       make2ArgOpWithT,
       make3ArgFunc,
       make3ArgFuncFull,
       make3ArgFuncWithT