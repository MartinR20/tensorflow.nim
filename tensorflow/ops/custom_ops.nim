import ../core/core,
       ../utils/utils,
       ./generated/array_ops,
       ./generated/math_ops,
       ./templates
{.hint[XDeclaredButNotUsed]:off.}

proc Const*(root: Scope, A: Out) : Out {.header: std_ops,
                                         importcpp: "tensorflow::ops::Const(*#, #)".} 

proc Const*(root: Scope, A: Tensor) : Out {.header: std_ops,
                                            importcpp: "tensorflow::ops::Const(*#, *#)".} 

proc Const[N,T](root: Scope, arr: array[N, T]) : Out =
  return root.Const(newTensor(arr))

proc Const(root: Scope, i: int) : Out =
  return root.Const(newTensor(i))

proc Const(root: Scope, i: float) : Out =
  return root.Const(newTensor(i))

proc `-`(root: Scope, A, B: Out): Out =
  return Subtract(root, A, B)

proc `@`(root: Scope, A, B: Out): Out =
  return MatMul(root, A, B)

proc Transpose*(root: Scope, A: Out) : Out =
  let rank = root.Rank(A)
  return root.Transpose(A, root.Subtract(root.Subtract(rank, root.Const(1)), root.Range(root.Const(0), rank, root.Const(1))))

export Const,
       `-`,
       `@`,
       Transpose
