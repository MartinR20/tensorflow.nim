import 
    tensorflow/core, 
    tensorflow/layersv2, 
    tensorflow/layersv2/dense, 
    tensorflow/layersv2/optims, 
    unittest

# function
proc test_fn*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    metadata[model].add %*{
                    "name": "fest_fn_" & $i,
                    "shape": metadata[model][i-1]["shape"],
                    "dtype": metadata[model][i-1]["dtype"],
                    "vars": []
                }

register_function(test_fn)

# command
proc test_cmd*(prgm: NimNode, model: string, sess: NimNode) =
    discard

register_command(test_cmd)

test "register":
    let scope = newRootScope()
    let sess = scope.newSession

    let data = tensor([[1.0, 0.5, 0.0],
                       [1.0, 0.5, 0.0]], ofloat)

    model m4, scope, sess:
        input data, [2,3], ofloat
        dense 100
        test_fn 10
        vars m
        vars v
        test_cmd
        optim applyAdam vars, m, v, 0, 0, 1e-4, 0.9, 0.99, 10e-8
        init
        run 

    delete data