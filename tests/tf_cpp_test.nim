import ../tensorflow/tensorflow
import options
#[
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

    echo proto

    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())

    let model = rt.fit(input, rt.ZerosLike(input))

    let outputs = rt.runSession(rt.eval(input))
    echo outputs[0] 

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

    echo proto

    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())

    let model = rt.fit(input, rt.ZerosLike(input))

    let outputs = rt.runSession(rt.eval(input))
    echo outputs[0] 

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

    var (fit,eval) = proto.compile(rt, newMSE(), newAdam())

    let zeros = rt.ZerosLike(rt.Const(newTensor(TF_FLOAT, newTensorShape([1,64]))))
    var model = rt.fit(input, zeros)

    for i in 0..3:
        model = rt.fit(input, zeros)
        discard rt.runSession(model)

    let outputs = rt.runSession(rt.eval(input))
    echo outputs[0]

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

    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())
    
    let model = rt.eval(input)

    let outputs = rt.runSession(model)
    echo outputs[0]

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

    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())
    
    let model = rt.eval(input)

    let outputs = rt.runSession(model)
    echo outputs[0]

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

    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())

    let model = rt.eval(input)

    let outputs = rt.runSession(model)
    echo outputs[0]

dropout_test()
]#

proc branch_concat_test() = 
    var proto: seq[Layer] = @[]

    proto.newBranch()
    proto.newDense(10, 10)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(10, 10)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newConcat(1)

    proto.newBranch()
    proto.newDense(20, 2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(20, 2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(20, 2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(20, 2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(20, 2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newConcat(1)

    #proto.newDense(10, 10)
    #proto.newActivation(Softmax)

    let rt = newRootScope()

    let input = rt.Const([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                          [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                          [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]])

    echo proto

    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())

    let model = rt.eval(input)

    let outputs = rt.runSession(model)
    echo outputs[0] 

branch_concat_test()

#[
proc inception_resnet_v2_test() = 
    proc block35(proto: var seq[Layer], inChannels: int, scale: float) =
        var residual: Out

        proto.newInline(proc(rt: Scope, input: Out): Out = 
                            residual = input
                            input)

        proto.newBranch()
        proto.newConv2d(inChannels, 32, [1, 1], [1, 1])
        proto.newEndBranch()

        proto.newBranch()
        proto.newConv2d(inChannels, 32, [1, 1], [1, 1])
        proto.newConv2d(32, 32, [3, 3], [1, 1])
        proto.newEndBranch()

        proto.newBranch()
        proto.newConv2d(inChannels, 32, [1, 1], [1, 1])
        proto.newConv2d(32, 48, [3, 3], [1, 1])
        proto.newConv2d(48, 64, [3, 3], [1, 1])
        proto.newEndBranch()

        proto.newConcat(3)

        #[
        proto.newConv2d(inChannels, inChannels, [1, 1], [1, 1])

        proto.newInline(proc(rt: Scope, input: Out): Out = 
                            return rt.Add(residual, rt.Multiply(input, rt.Const(scale))))

        proto.newActivation(Relu)
        ]#

    let rt = newRootScope()

    let input = rt.Const(newTensor(TF_FLOAT, newTensorShape([1,480,640,3])))

    var proto: seq[Layer] = @[]

    proto.newConv2d(3, 32, [3, 3], [2, 2])
    proto.newConv2d(32, 32, [3, 3], [1, 1])
    proto.newConv2d(32, 64, [3, 3], [1, 1])
    proto.newMaxPool([3, 3], [2, 2])
    proto.newConv2d(64, 80, [1, 1], [1, 1])
    proto.newConv2d(80, 192, [3, 3], [1, 1])
    proto.newMaxPool([3, 3], [2, 2])

    proto.newBranch()
    proto.newConv2d(192, 96, [1, 1], [1, 1])
    proto.newEndBranch()
    
    proto.newBranch()
    proto.newConv2d(192, 48, [1, 1], [1, 1])
    proto.newConv2d(48, 64, [5, 5], [1, 1])
    proto.newEndBranch()
    
    proto.newBranch()
    proto.newConv2d(192, 64, [1, 1], [1, 1])
    proto.newConv2d(64, 96, [3, 3], [1, 1])
    proto.newConv2d(96, 96, [3, 3], [1, 1])
    proto.newEndBranch()

    proto.newBranch()
    proto.newAvgPool([3, 3], [1, 1])
    proto.newConv2d(192, 64, [1, 1], [1, 1])
    proto.newEndBranch()
    
    proto.newConcat(3)

    proto.block35(320, 0.17)
    
    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())

    let model = rt.eval(input)

    let outputs = rt.runSession(model)
    echo outputs[0]

inception_resnet_v2_test()
]#