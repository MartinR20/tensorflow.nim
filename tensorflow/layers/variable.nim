## A Variable is used to create memory that is persitent across sessions. Meaning they don't lose
## their values across different Sessions. This is important for everything that is trainable like 
## weights.
##
## Example:
##
## .. code:: nim
##    
##    let rt = newRootScope()
##
##    rt.newVariable(Const[float32](rt, 0), newTensorShape([]), TF_FLOAT)

import ../core/core
import ../ops/ops
{.hint[XDeclaredButNotUsed]:off.}

type Variable = ref object
  vvar*: Out
  shape*: TensorShape

proc newVariable*(root: Scope, value: Out, shape: TensorShape, dtype: DType): Variable =
  let v = new Variable

  let rref = root.Variable(shape, dtype)

  v.shape = shape
  v.vvar = root.Assign(rref, value)

  return v

proc Assign(rt: Scope, v: Variable, value: Out): Out = 
  let x = rt.Assign(v.vvar, value)
  v.vvar = x
  return x

export Variable,
       newVariable,
       Assign