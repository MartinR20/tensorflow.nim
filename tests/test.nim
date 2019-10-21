import 
    core/core, layers/layers

# proc tensor_test() {.test.} =
#     let ten = tensor([[1,2,3,4,5,6]], oint32)
#     let scalar = tensor(0, oint32)

#     echo ten
#     echo scalar

#     echo ten.shape
#     echo scalar.shape

# proc arraySlice_test() {.test.} =
#     let aSlice = newArraySlice(["text", "btext", "textc"])

#     echo aSlice[0]
#     echo aSlice[1]
#     echo aSlice[2]

#     let bSlice = newArraySlice[cppstring](aSlice)

#     bSlice[0].print()
#     bSlice[1].print()
#     bSlice[2].print()

# proc basicOp_test() {.test.} =
#     with newRootScope():
#         let sess = newSession()

#         let a = [[1.0,3.0],
#                  [1.0,3.0],
#                  [1.0,3.0]].ofloat

#         let c = T(a) @ a

#     let outputs = sess.runSession(c)
#     echo outputs[0]

# proc inputListOp_test() {.test.} =  
#     let scope = newRootScope()

#     with scope:
#         let inpList = newOutList([1].oint32.output, [4, 3].oint32.output)
#         let sess = newSession()
#         let d = shapeN(inpList)

#     let outputs = sess.runSession(d)
#     echo outputs[0]

# proc rawDense_test() {.test.} =  
#     with newRootScope():
#         let sess = newSession()

#         let input = [[1, 2, 4, 2, 3, 5, 6, 3, 4, 1]].ofloat

#         let w0 = statelessRandomNormal([10, 10].oint32, [0, 0].oint32)
#         let b0 = statelessRandomNormal([1, 10].oint32, [0, 0].oint32)

#         let h0 = relu(input @ w0 + b0)

#         let w1 = statelessRandomNormal([10, 10].oint32, [0, 0].oint32)
#         let b1 = statelessRandomNormal([1, 10].oint32, [0, 0].oint32)

#         let h1 = softmax(h0 @ w1 + b1)

#     let outputs = sess.runSession(h1)
#     echo outputs[0]

# proc dense_test() {.test.} =  
#     let scope = newRootScope()
#     let sess = scope.newSession()

#     let ten = tensor([[1, 1, 1],
#                       [2, 2, 2],
#                       [3, 3, 3]], ofloat)
    
#     model m0, scope, sess:
#         input ten, [3,3], ofloat
#         dense 100, true
#         vars m
#         vars v
#         optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
#         init
#         run 

# proc AE_test() {.test.} =  
#     let scope = newRootScope()
#     let sess = scope.newSession()

#     let ten = tensor([[0.1, 0.2, 0.4, 0.2, 0.3, 0.5, 0.6, 0.3, 0.4, 0.1],
#                       [0.1, 0.2, 0.4, 0.2, 0.3, 0.5, 0.6, 0.3, 0.4, 0.1],
#                       [0.1, 0.2, 0.4, 0.2, 0.3, 0.5, 0.6, 0.3, 0.4, 0.1]], ofloat)

#     model m1, scope, sess:
#         input ten, [3,3], ofloat
#         dense 10
#         activation relu
#         dense 4
#         activation relu
#         dense 4
#         activation relu
#         dense 10
#         activation sigmoid
#         vars m
#         vars v
#         optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
#         init
#         run 

#[
proc x_test() {.test.} =
    let rt = newRootScope()

    let run = rt.Conv2D(rt.Const([[[[1]]]], float32), 
                        rt.Const([[[[10]]]], float32),
                        newArraySlice([1.cint, 1.cint, 1.cint, 1.cint]),
                        newCPPString("SAME"))
    let sess = rt.newSession()
    echo sess.runSession(run)[0]

proc conv2d_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newConv2d(2, [1, 1], [1, 1])
    proto.newActivation(Relu)
    proto.newConv2d(4, [3, 3], [2, 2]) 
    proto.newActivation(Relu)
    proto.newConv2d(8, [3, 3], [2, 2]) 
    proto.newActivation(Relu)
    proto.newFlatten()
    proto.newDense(5)
    proto.newActivation(Softmax)

    let rt = newRootScope()

    let input = newTensor([[[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
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
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]], float32)

    let model = proto.compile(rt, newMSE(), newAdam(), [2, 9, 9, 1])
    model.fit(input, newTensor([[1,0,0,0,0],[1,0,0,0,0]], float32), 3, batch=2)

proc maxpool_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newMaxPool([3, 3], [3, 3])

    let rt = newRootScope()

    let input = newTensor([[[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
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
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]], float32)

    let model = proto.compile(rt, newMSE(), newAdam(), [2, 9, 9, 1])
    echo model.eval(input)[0].shape

proc avgpool_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newAvgPool([3, 3], [3, 3])

    let rt = newRootScope()

    let input = newTensor([[[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
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
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]], float32)

    let model = proto.compile(rt, newMSE(), newAdam(), [2, 9, 9, 1])
    echo model.eval(input)[0]

proc dropout_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newDropout(0.4)

    let rt = newRootScope()

    let input = newTensor([[[[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]],
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
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]], float32)

    let model = proto.compile(rt, newMSE(), newAdam(), [2, 9, 9, 1])
    echo model.eval(input)[0]

proc concat_grad_test() {.test.} = 
    let rt = newRootScope()

    with rt:
        let a = Const([0], int32)
        let b = Const([1], int32)
    
    let list = newOutList(a, b)

    with rt:
        let c = Concat(list, Const(0, int32))

        var grads: OutList
        addSymbolicGradients(c, list, grads)

        let sess = newSession()

    echo sess.runSession(grads)[0]

proc branch_concat_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newBranch()
    proto.newDense(10)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(10)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newConcat(1)

    proto.newBranch() #level 2
    
    proto.newBranch()
    proto.newDense(2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(2)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newConcat(1)

    proto.newEndBranch() #level 2


    proto.newBranch() #level 2

    proto.newBranch()
    proto.newDense(1)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(1)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newConcat(1)

    proto.newEndBranch() #level 2

    proto.newConcat(1)

    proto.newDense(10)
    proto.newActivation(Sigmoid)

    let rt = newRootScope()

    let input = newTensor([[0.1, 0.2, 0.4, 0.2, 0.3, 0.5, 0.6, 0.3, 0.4, 0.1],
                           [0.1, 0.2, 0.4, 0.2, 0.3, 0.5, 0.6, 0.3, 0.4, 0.1],
                           [0.1, 0.2, 0.4, 0.2, 0.3, 0.5, 0.6, 0.3, 0.4, 0.1]], float32)

    let model = proto.compile(rt, newMSE(), newAdam(), [3, 10])

    # must be called for initalization of vars
    model.fit(input, input, 11, batch=1)
    echo model.eval(input)[0]

proc plotInOut(input: Tensor, output: Tensor) =
    var plt = newPlot()
    plt.subplot(2, 1, 1)
    plt.imshow(input)
    plt.subplot(2, 1, 2)
    plt.imshow(output)
    plt.show()
    plt.run3()

proc dilation_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newDilation2D([[[0], [0], [0]],
                         [[0], [0], [0]],
                         [[0], [0], [0]]], [1,1], [1,1])

    let input = newTensor([[[[0], [0], [0], [0], [0], [0], [0], [0], [0]],
                            [[0], [0], [0], [0], [0], [0], [1], [1], [0]],
                            [[0], [1], [1], [1], [0], [0], [1], [1], [0]],
                            [[0], [1], [1], [1], [1], [0], [0], [0], [0]],
                            [[0], [1], [1], [1], [1], [1], [0], [0], [0]],
                            [[0], [0], [1], [1], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [1], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [0], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [0], [0], [0], [0], [0], [0]]]], float32)

    let model = proto.compile(newRootScope(), newMSE(), newAdam(), [1, 9, 9, 1])
    #plotInOut(input, model.eval(input)[0])

proc erosion_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newErosion2D([[[1], [1], [1]],
                        [[1], [1], [1]],
                        [[1], [1], [1]]], [1,1], [1,1])

    let input = newTensor([[[[0], [0], [0], [0], [0], [0], [0], [0], [0]],
                            [[0], [0], [0], [0], [0], [0], [1], [1], [0]],
                            [[0], [1], [1], [1], [0], [0], [1], [1], [0]],
                            [[0], [1], [1], [1], [1], [0], [0], [0], [0]],
                            [[0], [1], [1], [1], [1], [1], [0], [0], [0]],
                            [[0], [0], [1], [1], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [1], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [0], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [0], [0], [0], [0], [0], [0]]]], float32)

    let model = proto.compile(newRootScope(), newMSE(), newAdam(), [1, 9, 9, 1])
    #plotInOut(input, model.eval(input)[0])

proc opening_test() {.test.} =   
    var proto: seq[Layer] = @[]

    proto.newOpening2D([[[0], [1], [0]],
                        [[1], [1], [1]],
                        [[0], [1], [0]]], [1,1], [1,1])

    let input = newTensor([[[[0], [0], [0], [0], [0], [0], [0], [0], [0]],
                            [[0], [0], [0], [0], [0], [0], [1], [1], [0]],
                            [[0], [1], [1], [1], [0], [0], [1], [1], [0]],
                            [[0], [1], [1], [1], [1], [0], [0], [0], [0]],
                            [[0], [1], [1], [1], [1], [1], [0], [0], [0]],
                            [[0], [0], [1], [1], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [1], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [0], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [0], [0], [0], [0], [0], [0]]]], float32)

    let model = proto.compile(newRootScope(), newMSE(), newAdam(), [1, 9, 9, 1])
    #plotInOut(input, model.eval(input)[0])

proc closing_test() {.test.} =   
    var proto: seq[Layer] = @[]

    proto.newClosing2D([[[0], [1], [0]],
                        [[1], [1], [1]],
                        [[0], [1], [0]]], [1,1], [1,1])

    let input = newTensor([[[[0], [0], [0], [0], [0], [0], [0], [0], [0]],
                            [[0], [0], [0], [0], [0], [0], [1], [1], [0]],
                            [[0], [1], [1], [1], [0], [0], [1], [1], [0]],
                            [[0], [1], [1], [1], [1], [0], [0], [0], [0]],
                            [[0], [1], [1], [1], [1], [1], [0], [0], [0]],
                            [[0], [0], [1], [1], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [1], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [0], [1], [1], [1], [0], [0]],
                            [[0], [0], [0], [0], [0], [0], [0], [0], [0]]]], float32)

    let model = proto.compile(newRootScope(), newMSE(), newAdam(), [1, 9, 9, 1])
    #plotInOut(input, model.eval(input)[0])

#[
proc inception_resnet_v2_test() {.test.} =  
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

        proto.newConv2d(128, inChannels, [1, 1], [1, 1])

        proto.newInline(proc(rt: Scope, input: Out): Out = 
                            return rt.Add(residual, rt.Multiply(input, rt.Const(scale))))

        proto.newActivation(Relu)

    proc block17(proto: var seq[Layer], inChannels: int, scale: float) =
        var residual: Out

        proto.newInline(proc(rt: Scope, input: Out): Out = 
                            residual = input
                            input)
                            
        proto.newBranch()
        proto.newConv2d(inChannels, 192, [1, 1], [1, 1])
        proto.newEndBranch()

        proto.newBranch()
        proto.newConv2d(inChannels, 128, [1, 1], [1, 1])
        proto.newConv2d(128, 160, [1, 7], [1, 1])
        proto.newConv2d(160, 192, [7, 1], [1, 1])
        proto.newEndBranch()

        proto.newConcat(3)

        proto.newConv2d(384, inChannels, [1, 1], [1, 1])

        proto.newInline(proc(rt: Scope, input: Out): Out = 
                            return rt.Add(residual, rt.Multiply(input, rt.Const(scale))))

        proto.newActivation(Relu)

    proc block8(proto: var seq[Layer], inChannels: int, scale: float) =
        var residual: Out

        proto.newInline(proc(rt: Scope, input: Out): Out = 
                            residual = input
                            input)
                            
        proto.newBranch()
        proto.newConv2d(inChannels, 192, [1, 1], [1, 1])
        proto.newEndBranch()

        proto.newBranch()
        proto.newConv2d(inChannels, 192, [1, 1], [1, 1])
        proto.newConv2d(192, 224, [1, 3], [1, 1])
        proto.newConv2d(224, 256, [3, 1], [1, 1])
        proto.newEndBranch()

        proto.newConcat(3)

        proto.newConv2d(448, inChannels, [1, 1], [1, 1])

        proto.newInline(proc(rt: Scope, input: Out): Out = 
                            return rt.Add(residual, rt.Multiply(input, rt.Const(scale))))

        proto.newActivation(Relu)

    let rt = newRootScope()

    let input = rt.Const(newTensor(DT_FLOAT, newTensorShape([1,480,640,3])))

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

    for i in 0..9:
        proto.block35(320, 0.17)

    proto.newBranch()
    proto.newConv2d(320, 384, [3, 3], [1, 1])
    proto.newEndBranch()

    proto.newBranch()
    proto.newConv2d(320, 256, [1, 1], [1, 1])
    proto.newConv2d(256, 256, [3, 3], [1, 1])
    proto.newConv2d(256, 384, [3, 3], [1, 1])
    proto.newEndBranch()

    proto.newBranch()
    proto.newMaxPool([3, 3], [1, 1])
    proto.newEndBranch()

    proto.newConcat(3)
    
    for i in 0..19:
        proto.block17(1088, 0.10)

    proto.newBranch()

    proto.newBranch()
    proto.newConv2d(1088, 256, [1, 1], [1, 1])
    proto.newConv2d(256, 384, [3, 3], [2, 2])
    proto.newEndBranch()

    proto.newBranch()
    proto.newConv2d(1088, 256, [1, 1], [1, 1])
    proto.newConv2d(256, 288, [3, 3], [2, 2])
    proto.newEndBranch()

    proto.newBranch()
    proto.newConv2d(1088, 256, [1, 1], [1, 1])
    proto.newConv2d(256, 288, [3, 3], [1, 1])
    proto.newConv2d(288, 320, [3, 3], [2, 2])
    proto.newEndBranch()

    proto.newBranch()
    proto.newMaxPool([3, 3], [2, 2])
    proto.newEndBranch()

    proto.newConcat(3)

    for i in 0..9:
        proto.block8(2080, 0.2)

    proto.newConv2d(2080, 1536, [1, 1], [1, 1])
    proto.newAvgPool([8, 8], [3, 3])
    proto.newReshape([1, 215040])
    proto.newDropout(0.8)
    proto.newDense(215040, 10) 

    proto.newEndBranch()

    proto.newBranch()

    proto.newAvgPool([5, 5], [3, 3])
    proto.newConv2d(1088, 128, [1, 1], [1, 1])
    proto.newConv2d(128, 768, [5, 5], [1, 1])
    proto.newReshape([1, 414720])
    proto.newDense(414720, 10) 

    proto.newEndBranch()

    proto.newConcat(1)

    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())

    let model = rt.eval(input)

    let outputs = rt.runSession(model)
    echo outputs[0]
]#
]#