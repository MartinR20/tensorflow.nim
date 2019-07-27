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
  assign*: Out
  shape*: TensorShape
  name*: string

proc newVariable*(root: Scope, value: Out, shape: TensorShape, dtype: DType, name = "Variable"): Variable =
  let rootNamed = root.newSubScope(name)
  let v = new Variable
  v.name = name

  v.vvar = rootNamed.Variable(shape, dtype)

  v.shape = shape
  v.assign = rootNamed.Assign(v.vvar, value)

  return v

export Variable,
       newVariable,
       Assign