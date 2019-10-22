import 
    tensorflow/core, 
    tensorflow/layersv2, 
    tensorflow/layersv2/conv2d, 
    tensorflow/layersv2/optims, 
    unittest

test "conv2d": 
    let scope = newRootScope()
    let sess = scope.newSession()

    let ten = tensor([[[[1], [1], [1]],
                       [[2], [2], [2]],
                       [[3], [3], [3]]]], ofloat)
    
    model m1x0, scope, sess:
        input ten, [1,3,3,1], ofloat
        conv2d 3, [2, 2], [2, 2]
        vars m
        vars v
        optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
        init
        run 

    delete ten

test "transpose_conv2d": 
    let scope = newRootScope()
    let sess = scope.newSession()

    let ten = tensor([[[[1], [1], [1]],
                       [[2], [2], [2]],
                       [[3], [3], [3]]]], ofloat)
    
    model m1x1, scope, sess:
        input ten, [1,3,3,1], ofloat
        conv2d 3, [2, 2], [2, 2]
        conv2d_transpose 3, [2, 2], [2, 2]
        vars m
        vars v
        optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
        init
        run 

    delete ten