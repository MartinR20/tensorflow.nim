## The Loss type is the base type for all loss functions. If you would like to create your own just inherit from it
## and overload the make method as well as create a constructor.
##

import options
import ../ops/ops
import ../core/core
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Loss* = ref object of RootObj

        ## The base type for all loss functions.

method make*(loss: Loss, root: Scope): (proc(rt: Scope, y_true, y_pred: Out): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your loss function")

    ## The make method is intended for all the setup of your loss function that requires a scope and should
    ## be overloaded for all loss functions.

type MSE = ref object of Loss

        ## The Mean Squared Error loss function. Which calculates (X - Y)^2. (The mean is omitted for now
        ## but will be added later as an option)

proc newMSE*(): MSE =
    return new MSE

    ## Procedure that creates an MSELoss for the compile function.

method make(loss: MSE, root: Scope): (proc(rt: Scope, y_true, y_pred: Out): Out) = 
    return proc(rt: Scope, y_true, y_pred: Out): Out = 
                return rt.Square(rt.Subtract(y_true, y_pred))

export Loss,
       make,
       MSE,
       newMSE