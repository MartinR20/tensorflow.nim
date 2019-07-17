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

proc Const*[N,M](root: Scope, arr: array[N, M]) : Out =
  return root.Const(newTensor(arr))

  ## Construct a constant value from an array holding data with the dtype of the array

proc Const*[N,M](root: Scope, arr: array[N, M], T: type) : Out =
  return root.Const(newTensor(arr, T))

  ## Construct a constant value from an array holding data with the given type

proc Const*[T](root: Scope, val: T) : Out =
  return root.Const(newTensor(val))

  ## Construct a constant scalar of the input type

proc Const*[N](root: Scope, val: N, T: type) : Out =
  return root.Const(newTensor(val, T))

  ## Construct a constant scalar of the given type

proc `-`(root: Scope, A, B: Out): Out =
  return Subtract(root, A, B)

proc `@`(root: Scope, A, B: Out): Out =
  return MatMul(root, A, B)

proc Transpose*(root: Scope, A: Out) : Out =
  let rank = root.Rank(A)
  return root.Transpose(A, root.Subtract(root.Subtract(rank, root.Const(1, int32)), root.Range(root.Const(0, int32), rank, root.Const(1, int32))))

  ## Transpose that removes the need of providing a permutation for the normally expected result

export Const,
       #`-`,
       #`@`,
       Transpose
