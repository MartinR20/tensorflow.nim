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

type HVariable[T] = ref object
  vvar*: oall
  assign*: oall
  shape*: TensorShape
  name*: string

proc newVariable*[T](root: Scope, value: T, shape: TensorShape | openArray[int], name = "Variable"): HVariable[T] =
  let v = new HVariable[T]
  v.name = name

  when shape.type is TensorShape:
    v.shape = shape
  else:
    v.shape = shape.shape

  with root.newSubScope(name):
    v.vvar = variable(name.cstring, name.cstring, v.shape, T)
    v.assign = assign(v.vvar, value)

  return v

export HVariable,
       newVariable