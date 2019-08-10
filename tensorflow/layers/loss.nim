## The Loss type is the base type for all loss functions. If you would like to create your own just inherit from it
## and overload the make method as well as create a constructor.
##

import ../ops/ops
import ../core/core
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Loss* = ref object of RootObj

        ## The base type for all loss functions.

method `$`(loss: Loss): string {.base.} = "Loss"

method make*(loss: Loss, root: Scope): (proc(rt: Scope, y_true, y_pred: Out): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your loss function")

    ## The make method is intended for all the setup of your loss function that requires a scope and should
    ## be overloaded for all loss functions.

type MSE = ref object of Loss

        ## The Mean Squared Error loss function. Which calculates mean((X - Y)^2). 

proc newMSE*(): MSE =
    return new MSE

    ## Procedure that creates an MSELoss for the compile function.

method `$`(loss: MSE): string = "MSE()"

method make(loss: MSE, root: Scope): (proc(rt: Scope, y_pred, y_true: Out): Out) = 
    return proc(rt: Scope, y_true, y_pred: Out): Out = 
                with rt.newSubScope("MSE"):
                    return Mean(Square(y_true - y_pred), Const(0, int32))


type CrossEntropy = ref object of Loss

        ## The Mean Squared Error loss function. Which calculates mean((X - Y)^2). 

proc newCrossEntropy*(): CrossEntropy =
    return new CrossEntropy

    ## Procedure that creates an MSELoss for the compile function.

method `$`(loss: CrossEntropy): string = "CrossEntropy()"

method make(loss: CrossEntropy, root: Scope): (proc(rt: Scope, y_true, y_pred: Out): Out) = 
    return proc(rt: Scope, y_pred, y_true: Out): Out = 
                with rt.newSubScope("CrossEntropy"):
                    return Negate(Sum(y_true * Log(ClipByValue(y_pred, 1e-7, 0.9999999)), Const(1, int32)))

export Loss,
       make,
       `$`,
       MSE,
       newMSE,
       CrossEntropy,
       newCrossEntropy