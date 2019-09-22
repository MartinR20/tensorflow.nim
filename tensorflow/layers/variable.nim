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
##    rt.newVariable(Const[float32](rt, 0), newTensorShape([]), DT_FLOAT)

import ../core/core
import ../ops/ops
{.hint[XDeclaredButNotUsed]:off.}

type TVariable = ref object
  vvar*: Out
  assign*: Out
  shape*: TensorShape
  name*: string

proc newVariable*(root: Scope, value: Out, shape: TensorShape, dtype: DType, name = "Variable"): TVariable =
  let v = new TVariable
  v.name = name
  v.shape = shape

  with root.newSubScope(name):
    v.vvar = Variable(shape, dtype)
    v.assign = Assign(v.vvar, value)

  return v

export TVariable,
       newVariable,
       Assign