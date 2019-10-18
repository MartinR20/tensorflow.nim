import ../core,
       ../utils,
       gen,
       math,
       typetraits
include ../with
{.hint[XDeclaredButNotUsed]:off.}

proc `+`*[T: oall](root: Scope, A, B: T): T =
  return add(root, A, B).output

proc `-`*[T: oall](root: Scope, A, B: T): T =
  return sub(root, A, B).output

proc `*`*[T: oall](root: Scope, A, B: T): T =
  return mul(root, A, B).output

proc `/`*[T: oall](root: Scope, A, B: T): T =
  return ndiv(root, A, B).output

proc `@`*[T: oall](root: Scope, A, B: T): T =
  return matMul(root, A, B).output

proc `>`*[T: GreaterT](root: Scope, A, B: T): T =
  return greater(root, A, B).output

proc `<`*[T: LessT](root: Scope, A, B: T): T =
  return less(root, A, B).output

proc `>=`*[T: GreaterEqualT](root: Scope, A, B: T): T =
  return greaterEqual(root, A, B).output
 
proc `<=`*[T: LessEqualT](root: Scope, A, B: T): T =
  return lessEqual(root, A, B).output
  
proc `==`*[T: EqualT](root: Scope, A, B: T): T =
  return equal(root, A, B).output
  
proc `!=`*[T: NotEqualT](root: Scope, A, B: T): T =
  return notEqual(root, A, B).output

proc `%%`*[T: oall](root: Scope, A, B: T): T =
  return nmod(root, A, B).output
  
proc transpose*[T: oall](root: Scope, A: T) : T =
  with root:
    let rank = rank(A)
    return transpose(A, (rank - 1.oint32) - gen.range(0.oint32, rank, 1.oint32)).output

  ## Transpose that removes the need of providing a permutation for the (in most cases) expected result

proc T*[T: oall](root: Scope, A: T) : T =
  return root.transpose(A)

       
       