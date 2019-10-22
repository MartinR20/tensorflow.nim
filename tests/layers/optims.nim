import 
    tensorflow/core, 
    tensorflow/layersv2, 
    tensorflow/layersv2/dense, 
    tensorflow/layersv2/optims, 
    unittest

test "applyAdam":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m3x1, scope, sess:
        input data, [2,3], ofloat
        dense 100
        vars m
        vars v
        optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
        init
        run 

    delete data

test "applyAdaMax":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m3x2, scope, sess:
        input data, [2,3], ofloat
        dense 100
        vars m
        vars v
        optim applyAdaMax vars, m, v, 0, 1e-4, 0.9, 0.99, 10e-8
        init
        run 

    delete data

test "applyAdadelta":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m3x3, scope, sess:
        input data, [2,3], ofloat
        dense 100
        vars accum
        vars accum_update
        optim applyAdadelta vars, accum, accum_update, 1e-4, 0.95, 10e-8
        init
        run 

    delete data

test "applyAdagrad":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m3x4, scope, sess:
        input data, [2,3], ofloat
        dense 100
        vars accum
        optim applyAdagrad vars, accum, 1e-4
        init
        run 

    delete data

test "applyCenteredRMSProp":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m3x5, scope, sess:
        input data, [2,3], ofloat
        dense 100
        vars mg
        vars ms
        vars mom
        optim applyCenteredRMSProp vars, mg, ms, mom, 1e-4, 0.95, 0, 10e-8
        init
        run 

    delete data

test "applyProximalAdagrad":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m3x6, scope, sess:
        input data, [2,3], ofloat
        dense 100
        vars accum
        optim applyProximalAdagrad vars, accum, 1e-2, 1e-2, 1e-2
        init
        run 

    delete data

test "applyProximalGradientDescent":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m3x7, scope, sess:
        input data, [2,3], ofloat
        dense 100
        optim applyProximalGradientDescent vars, 1e-2, 1e-2, 1e-2
        init
        run 

    delete data

test "applyRMSProp":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m3x8, scope, sess:
        input data, [2,3], ofloat
        dense 100
        vars ms
        vars mom
        optim applyRMSProp vars, ms, mom, 1e-4, 0.95, 0, 10e-8
        init
        run 

    delete data