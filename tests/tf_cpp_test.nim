import ../tensorflow/tensorflow

let rt1 = newRootScope()

let a = rt1.Const([[1,3],[1,3],[1,3]])
#let b = rt.Const([[3,1,3],[3,1,3]])

#let c = rt.MatMul(b, a)
let c = rt1.MatMul(rt1.Transpose(a), a)

let outputs = rt1.runSession(c)

echo outputs[0].toValueStr()



let rt2 = newRootScope()

let inpList = newTensorVec($@[1], $@[2], $@[0], $@[4])

let d = rt2.ShapeN(inpList)

let outputs2 = rt2.runSession(d)

echo outputs2[0].toValueStr()