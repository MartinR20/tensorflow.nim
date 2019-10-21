import 
    tensorflow/core, 
    tensorflow/layersv2, 
    tensorflow/layersv2/dense, 
    tensorflow/layersv2/optims, 
    unittest

test "l1loss":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m2, scope, sess:
        input data, [2,3], ofloat
        dense 100
        vars m
        vars v
        optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
        init
        run 

    delete data