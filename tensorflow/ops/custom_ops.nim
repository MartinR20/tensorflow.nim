import ../core/core,
       ../utils/utils,
       ./generated,
       typetraits
include ../core/with
{.hint[XDeclaredButNotUsed]:off.}

proc `+`*[T: oall](root: Scope, A, B: T): T =
  return add(root, A, B)

proc `-`*[T: oall](root: Scope, A, B: T): T =
  return sub(root, A, B)

proc `*`*[T: oall](root: Scope, A, B: T): T =
  return mul(root, A, B)

proc `/`*[T: oall](root: Scope, A, B: T): T =
  return ndiv(root, A, B)

proc `@`*[T: oall](root: Scope, A, B: T): T =
  return matMul(root, A, B)

proc `>`*[T: GreaterT](root: Scope, A, B: T): T =
  return greater(root, A, B)

proc `<`*[T: LessT](root: Scope, A, B: T): T =
  return less(root, A, B)

proc `>=`*[T: GreaterEqualT](root: Scope, A, B: T): T =
  return greaterEqual(root, A, B)
 
proc `<=`*[T: LessEqualT](root: Scope, A, B: T): T =
  return lessEqual(root, A, B)
  
proc `==`*[T: EqualT](root: Scope, A, B: T): T =
  return equal(root, A, B)
  
proc `!=`*[T: NotEqualT](root: Scope, A, B: T): T =
  return notEqual(root, A, B)

proc `%%`*[T: oall](root: Scope, A, B: T): T =
  return nmod(root, A, B)
  
proc transpose*[T: oall](root: Scope, A: T) : T =
  with root:
    let rank = rank(A)
    return transpose(A, (rank - 1.oint32) - generated.range(0.oint32, rank, 1.oint32))

  ## Transpose that removes the need of providing a permutation for the (in most cases) expected result

proc T*[T: oall](root: Scope, A: T) : T =
  return root.transpose(A)

       
       