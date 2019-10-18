## The Loss type is the base type for all loss functions. If you would like to create your own just inherit from it
## and overload the make method as well as create a constructor.
##

import ../ops/ops
import ../core/core
import ./variable
import macros
{.hint[XDeclaredButNotUsed]:off.}
{.warning[Deprecated]:off.}

type Loss* = ref object of RootObj

        ## The base type for all loss functions.

method `$`*(loss: Loss): string {.base.} = "Loss"

method fn*[T: oall](loss: Loss, rt: Scope, y_true, y_pred: T): T {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your loss function")

    ## The make method is intended for all the setup of your loss function that requires a scope and should
    ## be overloaded for all loss functions.

macro loss*(x: untyped): untyped =
    let lossName = $name(x)
    let T = parseStmt("type " & lossName & "* = ref object of Loss")
    let constructor = parseStmt("proc new" & lossName & "*(): " & lossName & "= return new " & lossName)
    let strConversion = parseStmt("method `$`*(loss: " & lossName & "): string =  \"" & lossName & "()\"")
    x[0] = newIdentNode("fn")
    insert(x[3], 1, newIdentDefs(newIdentNode("loss"), newIdentNode(lossName)))

    return newStmtList(
        T,
        constructor,
        strConversion,
        x
    )

method MSE*[T: oall](rt: Scope, y_true, y_pred: T): T {.loss.} =
    with rt.newSubScope("MSE"): 
        return mean(square(y_true - y_pred), 0.int32)


method CrossEntropy*[T: oall](rt: Scope, y_pred, y_true: T): T {.loss.} = 
    with rt.newSubScope("CrossEntropy"):
        return negate(sum(y_true * log(clipByValue(y_pred, 1e-7.ofloat, 0.9999999.ofloat)), 1.oint32))

method Mock*[T: oall](rt: Scope, y_pred, y_true: T): T {.loss.} =
    return y_pred
    