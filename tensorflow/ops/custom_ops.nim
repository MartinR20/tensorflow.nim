import ../core/core,
       ../utils/utils,
       ./generated/array_ops,
       ./generated/math_ops
{.hint[XDeclaredButNotUsed]:off.}

proc Const*(root: Scope, A: Out) : Out {.header: std_ops,
                                         importcpp: "tensorflow::ops::Const(*#, #)".} 

  ## Construct a constant value from Out object

proc Const*(root: Scope, A: Tensor) : Out {.header: std_ops,
                                            importcpp: "tensorflow::ops::Const(*#, *#)".} 

  ## Construct a constant value from a Tensor

proc Const*[N,T](root: Scope, arr: array[N, T]) : Out =
  return root.Const(newTensor(arr))

  ## Construct a constant value from an array holding data

proc Const*(root: Scope, i: int) : Out =
  return root.Const(newTensor(i))

  ## Construct a constant scalar of type int

proc Const*(root: Scope, i: float) : Out =
  return root.Const(newTensor(i))

  ## Construct a constant scalar of type float

proc `-`(root: Scope, A, B: Out): Out =
  return Subtract(root, A, B)

proc `@`(root: Scope, A, B: Out): Out =
  return MatMul(root, A, B)

proc Transpose*(root: Scope, A: Out) : Out =
  let rank = root.Rank(A)
  return root.Transpose(A, root.Subtract(root.Subtract(rank, root.Const(1)), root.Range(root.Const(0), rank, root.Const(1))))

  ## Transpose that removes the need of providing a permutation for the normally expected result

export Const,
       #`-`,
       #`@`,
       Transpose
