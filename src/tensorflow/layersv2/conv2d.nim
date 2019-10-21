import 
    globals
    
from ../ops/prob import
    statelessRandomNormal, statelessRandomNormalToOut

from ../ops/nn import
    conv2D, conv2DToOut,
    conv2DBackpropInput, conv2DBackpropInputToOut

export 
    conv2D, conv2DToOut,
    conv2DBackpropInput, conv2DBackpropInputToOut,
    statelessRandomNormal, statelessRandomNormalToOut
    
proc conv2d*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = "conv2d_" & $i

    let inname = metadata[model][i-1]["name"].to(string)

    dimCheck(name, metadata[model][i-1]["shape"], 4)
    var shape = metadata[model][i-1]["shape"].to(array[4, int])
            
    let inchannels = shape[3]
    let outchannels = command.get(1)
    let kernel = command.get(2)

    if kernel.len == 2:
        kernel.insert(0, newLit 1)
        kernel.insert(3, newLit 1)

    let strides = command.get(3)

    if strides.len == 2:
        strides.insert(0, newLit 1)
        strides.insert(3, newLit 1)

    let padding = command.getOrDefault(4, "SAME")
    let use_cudnn_on_gpu = command.getOrDefault(5, true)
    let data_format = command.getOrDefault(6, "NHWC")
    let dilations = command.getOrDefault(7, [1, 1, 1, 1])

    if dilations.len == 2:
        dilations.insert(0, newLit 1)
        dilations.insert(3, newLit 1)

    case padding.strVal:
    of "VALID":
        var effective_filter_size: array[0..1, int]
        effective_filter_size[0] = (kernel[1].intVal.int - 1) * dilations[1].intVal.int + 1;
        effective_filter_size[1] = (kernel[2].intVal.int - 1) * dilations[2].intVal.int + 1;

        shape = [shape[0], 
                    (shape[1] - effective_filter_size[0] + strides[1].intVal.int) div strides[1].intVal.int,
                    (shape[2] - effective_filter_size[1] + strides[2].intVal.int) div strides[2].intVal.int,
                    outchannels.intVal.int]
    of "SAME":
        shape = [shape[0], 
                    (shape[1] + strides[1].intVal.int - 1) div strides[1].intVal.int,
                    (shape[2] + strides[2].intVal.int - 1) div strides[2].intVal.int,
                    outchannels.intVal.int]

    let varshape = [kernel[1].intVal.int, kernel[2].intVal.int, inchannels, outchannels.intVal.int]
    echo repr kernel, varshape
    let f = newLit varshape
    let f_name = "f_var_" & $i
    let f_asgn = "f_asgn_" & $i
    let seed = prgm.nconst(model, scope, newLit [0, 0], ident "oint32")

    metadata[model].add %*{
                            "name": name,
                            "shape": %*shape,
                            "dtype": metadata[model][i-1]["dtype"],
                            "vars": [{ "var": newJString f_name, 
                                    "init": newJString f_asgn,
                                    "shape": varshape}],
                            "output": name
                          }

    prgm.variable(model,
                  scope,
                  newCall("statelessRandomNormal", scope, 
                                                   prgm.nconst(model, scope, f, ident "oint32"), 
                                                   seed),
                  f,
                  ident f_name,
                  ident f_asgn)

    prgm.add newLetStmt(ident name,
                        newCall("conv2D", scope, 
                                          ident inname, 
                                          ident f_name,
                                          strides,
                                          padding,
                                          use_cudnn_on_gpu,
                                          data_format,
                                          dilations))

proc conv2d_transpose*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = "conv2d_" & $i

    let inname = metadata[model][i-1]["name"].to(string)

    dimCheck(name, metadata[model][i-1]["shape"], 4)
    var shape = metadata[model][i-1]["shape"].to(array[4, int])
            
    let inchannels = shape[3]
    let outchannels = command.get(1)
    let kernel = command.get(2)

    if kernel.len == 2:
        kernel.insert(0, newLit 1)
        kernel.insert(3, newLit 1)

    let strides = command.get(3)

    if strides.len == 2:
        strides.insert(0, newLit 1)
        strides.insert(3, newLit 1)

    let padding = command.getOrDefault(4, "SAME")
    let use_cudnn_on_gpu = command.getOrDefault(5, true)
    let data_format = command.getOrDefault(6, "NHWC")
    let dilations = command.getOrDefault(7, [1, 1, 1, 1])

    if dilations.len == 2:
        dilations.insert(0, newLit 1)
        dilations.insert(3, newLit 1)

    case padding.strVal:
    of "VALID":
        var effective_filter_size: array[0..1, int]
        effective_filter_size[0] = (kernel[1].intVal.int - 1) * dilations[1].intVal.int + 1;
        effective_filter_size[1] = (kernel[2].intVal.int - 1) * dilations[2].intVal.int + 1;
        
        shape = [shape[0], 
                    shape[1] * strides[1].intVal.int + effective_filter_size[0] - strides[1].intVal.int,
                    shape[2] * strides[2].intVal.int + effective_filter_size[1] - strides[2].intVal.int,
                    outchannels.intVal.int]
    of "SAME":
        shape = [shape[0], 
                    shape[1] * strides[1].intVal.int - strides[1].intVal.int + 1,
                    shape[2] * strides[2].intVal.int - strides[2].intVal.int + 1,
                    outchannels.intVal.int]

    let varshape = [kernel[1].intVal.int, kernel[2].intVal.int, inchannels, outchannels.intVal.int]
    echo repr kernel, varshape
    let f = newLit varshape
    let f_name = "f_var_" & $i
    let f_asgn = "f_asgn_" & $i
    let seed = prgm.nconst(model, scope, newLit [0, 0], ident "oint32")

    metadata[model].add %*{
                            "name": name,
                            "shape": %*shape,
                            "dtype": metadata[model][i-1]["dtype"],
                            "vars": [{ "var": newJString f_name, 
                                    "init": newJString f_asgn,
                                    "shape": varshape}],
                            "output": name
                          }

    prgm.variable(model,
                  scope,
                  newCall("statelessRandomNormal", scope, 
                                                   prgm.nconst(model, scope, f, ident "oint32"), 
                                                   seed),
                  f,
                  ident f_name,
                  ident f_asgn)

    prgm.add newLetStmt(ident name,
                        newCall("conv2DBackpropInput", scope, 
                                                       prgm.nconst(model, scope, newLit shape, ident "oint32"),
                                                       ident f_name,
                                                       ident inname, 
                                                       strides,
                                                       padding,
                                                       use_cudnn_on_gpu,
                                                       data_format,
                                                       dilations))
