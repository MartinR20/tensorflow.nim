import 
    tensorflow/core, 
    tensorflow/layersv2,
    tensorflow/layersv2/dense, 
    tensorflow/layersv2/optims, 
    unittest

test "multiflow two pass one input":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m5x1, scope, sess:
        input data, [2,3], ofloat

        model m5x1x1:
            dense 100
            vars m
            vars v
            optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
            init
            run 

        model m5x1x2:
            dense 100
            vars m
            vars v
            optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
            init
            run 

    delete data


test "multiflow two pass two input":
    let scope = newRootScope()
    let sess = scope.newSession

    let data0 = tensor([[1.0, 0.5, 0.0],
                        [1.0, 0.5, 0.0]], ofloat)

    let data1 = tensor([[1.0, 0.5, 0.0],
                        [1.0, 0.5, 0.0]], ofloat)

    model m5x2, scope, sess:
        model m5x2x1:
            input data0, [2,3], ofloat
            dense 100
            vars m
            vars v
            optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
            init
            run 

        model m5x2x2:
            input data1, [2,3], ofloat
            dense 100
            vars m
            vars v
            optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
            init
            run 

    delete data0
    delete data1


test "multiflow crossref models":
    let scope = newRootScope()
    let sess = scope.newSession

    let data0 = tensor([[1.0, 0.5, 0.0],
                        [1.0, 0.5, 0.0]], ofloat)

    let data1 = tensor([[1.0, 0.5, 0.0],
                        [1.0, 0.5, 0.0]], ofloat)

    model m5x3x1, scope, sess:
        input data0, [2,3], ofloat
        dense 100
        vars m
        vars v

    model m5x3x2, scope, sess:
        input data1, [2,3], ofloat
        dense 100
        vars m
        vars v
        

    model m5x3, scope, sess:
        concat m5x3x1, m5x3x2
        optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
        init
        run 

    delete data0
    delete data1