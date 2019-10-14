import ../core/core,
       ../utils/utils,
       ./newop/newop,
       ./make/wrapper,
       ./generated,
       ./custom_ops
include ../core/with

## Gradient Related definitions
proc addSymbolicGradients*(root: Scope, outputs, inputs, gradOutputs: olist[oinvalid]) {.header:utils.gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, #, #, &#))".}

  ## Method for getting the gradient of a sequence of operations applied to the inputs.
  ## 
  ## Args:
  ##   root: The current Scope object.
  ##   outputs: A list of outputs or single output containing the relevant ends of the compution graph.
  ##   inputs: A list of outputs or single output containing the variables a gradient should be computed for.
  ##   gradOutputs: A list of outputs containing the computed gradients.

proc addSymbolicGradients*(root: Scope, outputs: oall, inputs, gradOutputs: olist[oinvalid]) {.header:utils.gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, {#}, #, &#))".}

proc addSymbolicGradients*(root: Scope, outputs, inputs: oall, gradOutputs: olist[oinvalid]) {.header:utils.gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, {#}, {#}, &#))".}

proc concatV2Grad*(scope: Scope, 
               op: Operation[oinvalid], 
               gradInputs: olist[oinvalid], 
               gradOutputs: ptr olist[oinvalid]): Status {.grad:concatV2.} =
    let input_len = op.num_inputs()
    
    if input_len == 2:
        gradOutputs[] = gradInputs
        return scope.status
    
    let concat_dim = invalidToany[oint32](op.inputs[input_len - 1])
    let inputs = op.inputs(0..input_len-2)
    
    with scope:
        let non_neg_concat_dim = concat_dim %% rank(inputs[0])

    var sizes: olist[oint32]

    for input in inputs:
        sizes.add scope.shape(input)

    #if sizes.len > 16:
    #    let sliceBegin = newOutList(non_neg_concat_dim, scope.Const(0, int32))
    #    
    #    with scope:
    #        let squeezed = Squeeze(
    #                    Slice(
    #                        Stack(sizes, Const(1, int32)), 
    #                        Concat(sliceBegin, Const(0, int32)), 
    #                        Const([1, -1], int32)
    #                    ))
    #    
    #        gradOutputs[] = Split(gradInputs[0], squeezed, non_neg_concat_dim)
    #else:
    let offset = scope.concatOffset(non_neg_concat_dim, sizes)

    var out_grads: olist[oinvalid]
        
    for (begin, size) in zip(offset, sizes):
        with scope:
            let slice = slice(gradInputs[0], 
                              begin, 
                              size)
        out_grads.add(slice)
    
    gradOutputs[] = out_grads
    
    gradOutputs[].add(oinvalid())
    
    return scope.status()
  
proc Cast*() {.nograd.} = discard

#proc Cast(scope: Scope, op: Operation, gradInputs: OutList, gradOutputs: ptr OutList): Status {.grad.} =
#    gradOutputs[].add scope.Cast(gradInputs[0], op.input_type(0))
#    return scope.status()

proc conv2DBackpropInputGrad*(scope: Scope, 
                              op: Operation[oinvalid], 
                              gradInputs: olist[oinvalid], 
                              gradOutputs: ptr olist[oinvalid]): Status {.grad:conv2DBackpropInput.} =
    let attrs = op.node[].attrs()

    let strides_attr = attrs["strides"]
    var strides: array[0..3, int]

    for i in 0..3:
        strides[i] = strides_attr.listi(i)

    let padding = attrs["padding"].s()

    gradOutputs[].add oinvalid()

    template ops(T: untyped): untyped =
        gradOutputs[].add( 
            anyToInvalid(
                conv2DBackpropFilter(scope,
                                     invalidToAny[T](gradInputs[0]),
                                     shape(scope, op.input(1)),
                                     invalidToAny[T](op.input(2)),
                                     strides,
                                     padding)))

        gradOutputs[].add( 
            anyToInvalid(
                conv2D(scope,
                       invalidToAny[T](gradInputs[0]),
                       invalidToAny[T](op.input(1)),
                       strides,
                       padding)))
        
    case op.output_type(0):
    of DT_HALF:
        ops(ohalf)
    of DT_BFLOAT16:
        ops(obfloat16)
    of DT_FLOAT:
        ops(ofloat)
    of DT_DOUBLE:
        ops(odouble)
    else:
        quit(1)

    return scope.status()
    

proc dilation2DGrad*(scope: Scope, 
                 op: Operation[oinvalid], 
                 gradInputs: olist[oinvalid], 
                 gradOutputs: ptr olist[oinvalid]): Status {.grad:dilation2D.} =
    let attrs = op.node[].attrs()

    let strides_attr = attrs["strides"]
    var strides: array[0..3, int]

    for i in 0..3:
        strides[i] = strides_attr.listi(i)

    let rates_attr = attrs["rates"]
    var rates: array[0..3, int]

    for i in 0..3:
        rates[i] = rates_attr.listi(i)

    let padding = attrs["padding"].s()

    gradOutputs[].add dilation2DBackpropInput(scope, 
                                            op.input(0), 
                                            op.input(1), 
                                            gradInputs[0],
                                            strides,
                                            rates,
                                            padding)

    gradOutputs[].add dilation2DBackpropFilter(scope, 
                                            op.input(0), 
                                            op.input(1), 
                                            gradInputs[0],
                                            strides,
                                            rates,
                                            padding)

    return scope.status()