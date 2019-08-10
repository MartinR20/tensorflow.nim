import ../tensorflow/tensorflow
import ../tensorflow/utils/utils
import ../tensorflow/ops/generated/structs
import options
import macros
import times

macro test(x: untyped): untyped =
  let name = $name(x)
  let node = nnkCommand.newTree(newIdentNode("echo"), parseStmt("\"\\n\" & $now() & \" \" & \"" & $name(x) & ":\""))
  insert(body(x), 0, node)
  x

proc tensorShape_test() {.test.} = 
    let tshape = newTensorShape([2,2])

    echo tshape

tensorShape_test()

proc tensor_test() {.test.} =
    let ten = newTensor([[1,2,3,4,5,6]])
    let scalar = newTensor(0)

    echo ten
    echo scalar

    echo ten.shape
    echo scalar.shape

tensor_test()

proc arraySlice_test() {.test.} =
    let aSlice = newArraySlice(["text", "btext", "textc"])

    echo aSlice[0]
    echo aSlice[1]
    echo aSlice[2]

    let bSlice = newArraySlice[cppstring](aSlice)

    bSlice[0].print()
    bSlice[1].print()
    bSlice[2].print()

arraySlice_test()

proc basicOp_test() {.test.} =
    with newRootScope():
        let sess = newSession()

        let a = Const([[1.0,3.0],
                       [1.0,3.0],
                       [1.0,3.0]], float32)

        let c = MatMul(Transpose(a), a)

    let outputs = sess.runSession(c)
    echo outputs[0]

basicOp_test()

proc var_test() {.test.} =
    let v_shape = newTensorShape([2,2])

    with newRootScope():
        let v = newVariable(Const([[2,2], [2,2]], float32), v_shape, TF_FLOAT)
        let m = MatMul(Transpose(v.vvar), v.vvar)
        
        let sess = newSession()

    with sess:
        runSessionVoid(v.assign)
        runSessionVoid(m)
        let outputs = runSession(m)
        echo outputs[0]

var_test()

proc inputListOp_test() {.test.} =  
    let inpList = newInList($@[1], $@[2], $@[0], $@[4])

    with newRootScope():
        let sess = newSession()

        let d = ShapeN(inpList)

    let outputs = sess.runSession(d)
    echo outputs[0]

inputListOp_test()

proc attrOp_test() {.test.} = 
    with newRootScope():
        let sess = newSession()

        let a = Const([[0,1,2,3],[3,2,1,0]], int32)
        let d = Unstack(a, 2)

    let outputs = sess.runSession(d)
    echo outputs[0]

attrOp_test()

proc rawDense_test() {.test.} =  
    let o = some(0)

    with newRootScope():
        let sess = newSession()

        let input = Const([[1, 2, 4, 2, 3, 
                            5, 6, 3, 4, 1]], float32)

        let w0 = RandomNormal(Const([10, 10], int32), TF_FLOAT, o, o)
        let b0 = RandomNormal(Const([1,10], int32), TF_FLOAT, o, o)

        let h0 = Relu(Add(MatMul(input, w0), b0))

        let w1 = RandomNormal(Const([10, 10], int32), TF_FLOAT, o, o)
        let b1 = RandomNormal(Const([1,10], int32), TF_FLOAT, o, o)

        let h1 = Softmax(Add(MatMul(h0, w1), b1))

    let outputs = sess.runSession(h1)
    echo outputs[0]

rawDense_test()

proc dense_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newDense(10, 20)
    proto.newActivation(Relu)
    proto.newDense(20, 10)
    proto.newActivation(Softmax)

    let rt = newRootScope()
    let (fit,_) = proto.compile(rt, newMSE(), newAdam())

    let input = newTensor([[1, 2, 4, 2, 3, 5, 6, 3, 4, 1]], float32)

    rt.fit(input, input, 100)

dense_test()

proc AE_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newDense(10, 4)
    proto.newActivation(Relu)
    proto.newDense(4, 4)
    proto.newActivation(Relu)
    proto.newDense(4, 10)
    proto.newActivation(Softmax)

    let rt = newRootScope()

    let input = newTensor([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                           [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                           [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]], float32)

    let (fit,_) = proto.compile(rt, newMSE(), newAdam())

    rt.fit(input, input, 5)

AE_test()

proc getAttrs(): Conv2DAttrs {.importcpp:"[](){ tensorflow::ops::Conv2D::Attrs attrs; attrs.data_format_ = \"NHWC\"; attrs.dilations_ = tensorflow::gtl::ArraySlice<int>({1,1,1,1}); attrs.use_cudnn_on_gpu_ = true; return attrs; }()".}

proc x_test() {.test.} =
    let rt = newRootScope()

    let run = rt.Conv2D(rt.Const([[[[1]]]], float32), 
                        rt.Const([[[[10]]]], float32),
                        newArraySlice([1.cint, 1.cint, 1.cint, 1.cint]),
                        newCPPString("SAME"),
                        getAttrs())
    let sess = rt.newSession()
    echo sess.runSession(run)[0]

x_test()

proc conv2d_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newConv2d(1, 2, [1, 1], [1, 1])
    proto.newActivation(Relu)
    proto.newConv2d(2, 4, [3, 3], [2, 2])
    proto.newActivation(Relu)
    proto.newConv2d(4, 8, [3, 3], [2, 2])
    proto.newActivation(Relu)
    proto.newReshape([1, 144])
    proto.newDense(144,5)
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

    var (fit, _) = proto.compile(rt, newMSE(), newAdam())
    rt.fit(input, newTensor([[0,0,0,0,0]], float32), 3)

conv2d_test()

proc maxpool_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newMaxPool([3, 3], [3, 3])

    let rt = newRootScope()
    let sess = rt.newSession()

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
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]], float32)

    let (_,eval) = proto.compile(rt, newMSE(), newAdam())
    
    let model = rt.eval(input)

    let outputs = sess.runSession(model)
    echo outputs[0]

maxpool_test()

proc avgpool_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newAvgPool([3, 3], [3, 3])

    let rt = newRootScope()
    let sess = rt.newSession()

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
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]], float32)

    let (_,eval) = proto.compile(rt, newMSE(), newAdam())
    
    let model = rt.eval(input)

    let outputs = sess.runSession(model)
    echo outputs[0]

avgpool_test()

proc dropout_test() {.test.} =  
    var proto: seq[Layer] = @[]

    proto.newDropout(0.4)

    let rt = newRootScope()
    let sess = rt.newSession()

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
                           [[1.0], [2.0], [4.0], [2.0], [3.0], [5.0], [6.0], [3.0], [4.0]]]], float32)

    let (_,eval) = proto.compile(rt, newMSE(), newAdam())

    let model = rt.eval(input)

    let outputs = sess.runSession(model)
    echo outputs[0]

dropout_test()

proc branch_concat_test() {.test.} =  
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

    proto.newBranch() #level 2
    
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

    proto.newEndBranch() #level 2


    proto.newBranch() #level 2

    proto.newBranch()
    proto.newDense(20, 1)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newBranch()
    proto.newDense(20, 1)
    proto.newActivation(Relu)
    proto.newEndBranch()

    proto.newConcat(1)

    proto.newEndBranch() #level 2

    proto.newConcat(1)

    proto.newDense(10, 10)
    proto.newActivation(Softmax)

    let rt = newRootScope()
    let sess = rt.newSession()

    let input = newTensor([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                          [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0],
                          [1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]], float32)

    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())

    # must be called for initalization of vars
    rt.fit(input, input, 1)
    let model = rt.eval(rt.Const(input))

    let outputs = sess.runSession(model)
    echo outputs[0] 

branch_concat_test()

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

inception_resnet_v2_test()
]#