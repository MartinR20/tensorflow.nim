import ../core/core
import ../ops/ops
{.hint[XDeclaredButNotUsed]:off.}

type Variable* = object
  vvar*: Out
  shape*: TensorShape

proc newVariable(root: Scope, value: Out, shape: TensorShape, dtype: DType): Variable =
  let rref = root.Variable(shape, dtype)
  let vvar = root.Assign(rref, value)

  return Variable(vvar: vvar, shape: shape)

export Variable,
       newVariable