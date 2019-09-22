import ../core/core,
       ../utils/utils,
       ./newop/newop,
       ./generated,
       ./custom_ops,
       sequtils

#proc Stack(scope: Scope, list: OutList, axis: Out): Out {.importcpp:"tensorflow::ops::Stack(*#, #, #)".}

proc ConcatV2(scope: Scope, op: Operation, gradInputs: OutList, gradOutputs: ptr OutList): Status {.grad.} =
    let input_len = op.num_inputs()
    
    if input_len == 2:
        gradOutputs[] = gradInputs
        return scope.status
    
    let concat_dim = op.inputs[input_len - 1]
    let inputs = op.inputs(0..input_len-2)
    
    with scope:
        let non_neg_concat_dim = concat_dim %% Rank(inputs[0])

    var sizes: OutList

    for input in inputs:
        sizes.add scope.Shape(input)

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

    var out_grads: OutList
        
    for (begin, size) in zip(offset, sizes):
        with scope:
            let slice = Slice(gradInputs[0], 
                              begin, 
                              size)
        out_grads.add(slice)
    
    gradOutputs[] = out_grads
    
    gradOutputs[].add(Out())
    
    return scope.status()
  
proc Cast() {.nograd.} = discard

#proc Cast(scope: Scope, op: Operation, gradInputs: OutList, gradOutputs: ptr OutList): Status {.grad.} =
#    gradOutputs[].add scope.Cast(gradInputs[0], op.input_type(0))
#    return scope.status()

proc Conv2DBackpropInput(scope: Scope, op: Operation, gradInputs: OutList, gradOutputs: ptr OutList): Status {.grad.} =
    var strides_64: array[0..3, int64]
    op.getSliceAttr_i("strides", 4, strides_64)

    var strides_32: array[0..3, cint]

    for i in 0..3:
        strides_32[i] = cast[int32](strides_64[i])

    let strides = newArraySlice(strides_32)
    let padding = op.getStrAttr(newCPPString("padding"))

    gradOutputs[].add Out()

    gradOutputs[].add Conv2DBackpropFilter(scope,
                                           gradInputs[0],
                                           Shape(scope, op.input(1)),
                                           op.input(2),
                                           strides,
                                           padding)

    gradOutputs[].add Conv2D(scope,
                             gradInputs[0],
                             op.input(1),
                             strides,
                             padding)

    return scope.status()
    

proc Dilation2D(scope: Scope, op: Operation, gradInputs: OutList, gradOutputs: ptr OutList): Status {.grad.} =
    var strides_64: array[0..3, int64]
    op.getSliceAttr_i("strides", 4, strides_64)

    var strides_32: array[0..3, cint]

    for i in 0..3:
        strides_32[i] = cast[int32](strides_64[i])

    var rates_64: array[0..3, int64]
    op.getSliceAttr_i("strides", 4, rates_64)

    var rates_32: array[0..3, cint]

    for i in 0..3:
        rates_32[i] = cast[int32](rates_64[i])

    let strides = newArraySlice(strides_32)
    let rates = newArraySlice(rates_32)
    let padding = op.getStrAttr("padding")

    gradOutputs[].add Dilation2DBackpropInput(scope, 
                                            op.input(0), 
                                            op.input(1), 
                                            gradInputs[0],
                                            strides,
                                            rates,
                                            padding)

    gradOutputs[].add Dilation2DBackpropFilter(scope, 
                                            op.input(0), 
                                            op.input(1), 
                                            gradInputs[0],
                                            strides,
                                            rates,
                                            padding)

    return scope.status()
