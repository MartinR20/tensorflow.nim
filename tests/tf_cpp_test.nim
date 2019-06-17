import ../tensorflow/tensorflow
import options

proc tensorShape_test() = 
    let tshape = newTensorShape([2,2])

    echo tshape

tensorShape_test()

proc tensor_test() =
    let ten = newTensor([1,2,3,4,5,6])
    let scalar = newTensor(0)

    echo ten
    echo scalar

    echo ten.shape
    echo scalar.shape

tensor_test()

proc arraySlice_test() =
    let aSlice = newArraySlice(["text", "btext", "textc"])

    echo aSlice[0]
    echo aSlice[1]
    echo aSlice[2]

    let bSlice = newArraySlice[cppstring](aSlice)

    bSlice[0].print()
    bSlice[1].print()
    bSlice[2].print()

arraySlice_test()

proc basicOp_test() =
    let rt = newRootScope()

    let a = rt.Const([[1.0,3.0],
                      [1.0,3.0],
                      [1.0,3.0]])

    let c = rt.MatMul(rt.Transpose(a), a)

    let outputs = rt.runSession(c)
    echo outputs[0]

basicOp_test()

proc inputListOp_test() = 
    let rt = newRootScope()

    let inpList = newInList($@[1], $@[2], $@[0], $@[4])

    let d = rt.ShapeN(inpList)

    let outputs = rt.runSession(d)
    echo outputs[0]

inputListOp_test()

proc attrOp_test() =
    let rt = newRootScope()

    let a = rt.Const([[0,1,2,3],[3,2,1,0]])

    let d = rt.Unstack(a, 2)

    let outputs = rt.runSession(d)
    echo outputs[0]

attrOp_test()

proc rawDense_test() = 
    let rt = newRootScope()

    let input = rt.Const([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]])

    let w0 = rt.RandomNormal(rt.Const([10, 10]), TF_FLOAT, some(0), some(0))
    let b0 = rt.RandomNormal(rt.Const([1,10]), TF_FLOAT, some(0), some(0))

    let h0 = rt.Relu(rt.Add(rt.MatMul(input, w0), b0))

    let w1 = rt.RandomNormal(rt.Const([10, 10]), TF_FLOAT, some(0), some(0))
    let b1 = rt.RandomNormal(rt.Const([1,10]), TF_FLOAT, some(0), some(0))

    let h1 = rt.Softmax(rt.Add(rt.MatMul(h0, w1), b1))

    let outputs = rt.runSession(h1)
    echo outputs[0]

rawDense_test()

proc dense_test() = 
    var proto: seq[Layer] = @[]

    proto.newDense(10, 20)
    proto.newActivation(Relu)
    proto.newDense(20, 30)
    proto.newActivation(Relu)
    proto.newDense(30, 20)
    proto.newActivation(Relu)
    proto.newDense(20, 10)
    proto.newActivation(Softmax)

    let rt = newRootScope()

    let input = rt.Const([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                          [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                          [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]])

    let model = proto.build(rt, input, newAdam())

    let outputs = rt.runSession(model)
    echo outputs[0] 

    let outputs1 = rt.runSession(model)
    echo outputs1[0]

dense_test()

proc AE_test() = 
    var proto: seq[Layer] = @[]

    proto.newDense(10, 4)
    proto.newActivation(Relu)
    proto.newDense(4, 4)
    proto.newActivation(Relu)
    proto.newDense(4, 10)
    proto.newActivation(Softmax)

    let rt = newRootScope()

    let input = rt.Const([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                          [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                          [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]])

    let model = proto.build(rt, input, newAdam())

    let outputs = rt.runSession(model)
    echo outputs[0] 

    let outputs1 = rt.runSession(model)
    echo outputs1[0]

AE_test()

proc conv2d_test() = 
    var proto: seq[Layer] = @[]

    proto.newConv2d(1, 2, [3, 3], [2, 2])
    proto.newActivation(Relu)
    proto.newConv2d(2, 4, [3, 3], [2, 2])
    proto.newActivation(Relu)
    proto.newConv2d(4, 8, [3, 3], [2, 2])
    proto.newActivation(Relu)
    proto.newReshape([1, 64])
    proto.newDense(64,64)
    proto.newActivation(Softmax)

    echo proto

    let rt = newRootScope()

    let input = rt.Const([[[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]],
                          [[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]])

    var model = proto.build(rt, input, newAdam())

    let outputs = rt.runSession(model)
    echo outputs[0]
    
    let outputs1 = rt.runSession(model)
    echo outputs1[0]

conv2d_test()

proc maxpool_test() = 
    var proto: seq[Layer] = @[]

    proto.newMaxPool([3, 3], [3, 3])

    echo proto

    let rt = newRootScope()

    let input = rt.Const([[[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]],
                          [[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]])

    let model = proto.build(rt, input, newAdam())

    let outputs = rt.runSession(model)
    echo outputs[0]

    let outputs1 = rt.runSession(model)
    echo outputs1[0]

maxpool_test()

proc avgpool_test() = 
    var proto: seq[Layer] = @[]

    proto.newAvgPool([3, 3], [3, 3])

    echo proto

    let rt = newRootScope()

    let input = rt.Const([[[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]],
                          [[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]])

    let model = proto.build(rt, input, newAdam())

    let outputs = rt.runSession(model)
    echo outputs[0]

    let outputs1 = rt.runSession(model)
    echo outputs1[0]

avgpool_test()

proc dropout_test() = 
    var proto: seq[Layer] = @[]

    proto.newDropout(0.4)

    echo proto

    let rt = newRootScope()

    let input = rt.Const([[[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]],
                          [[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]])

    let model = proto.build(rt, input, newAdam())

    let outputs = rt.runSession(model)
    echo outputs[0]

    let outputs1 = rt.runSession(model)
    echo outputs1[0]

dropout_test()
