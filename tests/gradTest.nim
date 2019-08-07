import ../tensorflow/tensorflow

proc PrintV2() {.nograd.} = discard

proc ConcatV2(scope: Scope, op: Operation, gradInputs: OutList, gradOutputs: ptr OutList): Status {.grad.} =
    gradOutputs[] = scope.ShapeN(op.inputs(0..2))

    return scope.status

let rt = newRootScope()
let sess = rt.newSession()

let a = rt.Const([0,1], int32)
let b = rt.Const([2,3], int32)
let toConcat = newOutList(a, b)
let c = rt.Concat(toConcat, rt.Const(0, int32))

var grads: OutList
rt.addSymbolicGradients(c, toConcat, grads)

sess.runSessionVoid(grads)
