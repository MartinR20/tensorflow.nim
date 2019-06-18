import options
import ../ops/ops
import ../core/core
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Loss = ref object of RootObj

method make(loss: Loss, root: Scope): (proc(rt: Scope, y_true, y_pred: Out): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your loss function")

type MSE = ref object of Loss

proc newMSE(): MSE =
    new MSE

method make(loss: MSE, root: Scope): (proc(rt: Scope, y_true, y_pred: Out): Out) = 
    return proc(rt: Scope, y_true, y_pred: Out): Out = 
                return rt.Square(rt.Subtract(y_true, y_pred))

export Loss,
       make,
       MSE,
       newMSE