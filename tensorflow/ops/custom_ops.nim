import ../core/core,
       ../utils/utils,
       ./generated/generated,
       typetraits
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

proc Cast(root: Scope, ten: Out, T: type): Out =
  return root.Cast(ten, typeLookUp[T.name])

  ## Cast given Tensor to given type

proc Placeholder(root: Scope, dtype: core.DType): Out {.header: std_ops,
                                                        importcpp: "tensorflow::ops::Placeholder(*#, #)".} 

  ## Placeholder representing a given type until it is provided trough a FeedDict.

proc `+`(root: Scope, A, B: Out): Out =
  return Add(root, A, B)

proc `-`(root: Scope, A, B: Out): Out =
  return Subtract(root, A, B)

proc `*`(root: Scope, A, B: Out): Out =
  return Multiply(root, A, B)

proc `/`(root: Scope, A, B: Out): Out =
  return Div(root, A, B)

proc `@`(root: Scope, A, B: Out): Out =
  return MatMul(root, A, B)

proc `>`(root: Scope, A, B: Out): Out =
  return Greater(root, A, B)

proc `<`(root: Scope, A, B: Out): Out =
  return Less(root, A, B)

proc `>=`(root: Scope, A, B: Out): Out =
  return GreaterEqual(root, A, B)
 
proc `<=`(root: Scope, A, B: Out): Out =
  return LessEqual(root, A, B)
  
proc `==`(root: Scope, A, B: Out): Out =
  return Equal(root, A, B)
  
proc `!=`(root: Scope, A, B: Out): Out =
  return NotEqual(root, A, B)

proc `%%`(root: Scope, A, B: Out): Out =
  return Mod(root, A, B)
  
proc Transpose*(root: Scope, A: Out) : Out =
  with root:
    let rank = Rank(A)
    return Transpose(A, Subtract(Subtract(rank, Const(1, int32)), Range(Const(0, int32), rank, Const(1, int32))))

  ## Transpose that removes the need of providing a permutation for the normally expected result

proc T*(root: Scope, A: Out) : Out =
  return root.Transpose(A)

proc ClipByValue(root: Scope, t: Out, clip_value_min: float, clip_value_max: float): Out =
  with root:
    return Minimum(Maximum(t, Const(clip_value_min, float32)), Const(clip_value_max, float32))

  ## ClipByValue proc supporting gradients (the one provided by math_ops does not)

proc Assign(root: Scope, vvar: Out, ten: Tensor): Out {.importcpp:"tensorflow::ops::Assign(*#, #, *#)".}

export Const,
       Cast,
       Placeholder,
       ClipByValue,
       `+`,
       `-`,
       `*`,
       `/`,
       `@`,
       `>`,
       `<`,
       `>=`,
       `<=`,
       `==`,
       `!=`,
       `%%`,
       Transpose,
       T,
       Assign
       