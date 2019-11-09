import ../core

from nodes import 
    Ctx, nshape, dtype, scope, input, seed,
    variable, xavier_init, zero_init, one_init,
    get_unique_int

from ../ops/gen import 
    variableV2, assign, concatV2, split, shape,
    placeholder

import ../ops/custom_ops

from ../ops/nn/activ import 
    sigmoid

from ../ops/array import 
    unpack

import macros

macro asarray*(s: static seq[int]): NimNode = 
    result = (newLit s)[^1]

template GRU*(ctx: static Ctx, num_units: static int, activation: untyped,
              batch_first: static bool = true) =
    const input_depth = ctx.nshape[2]

    let gate_kernel = ctx.variable("gate_kernel", [input_depth + num_units, 2 * num_units], xavier_init)
    let gate_bias = ctx.variable("gate_bias", [2 * num_units], one_init)

    let candidate_input_kernel = ctx.variable("candidate_input_kernel", [input_depth, num_units], xavier_init)
    let candidate_input_bias = ctx.variable("candidate_input_bias", [num_units], one_init)

    let candidate_hidden_kernel = ctx.variable("candidate_hidden_kernel", [num_units, num_units], xavier_init)
    let candidate_hidden_bias = ctx.variable("candidate_hidden_bias", [num_units], one_init)

    with ctx.scope:
        const init_shape: array[2, int] = [1, num_units]
        var state = ctx.zero_init(init_shape)
        
        when batch_first:
            let time_series = unpack(ctx.input, ctx.nshape[1], 1).output
        else:
            let time_series = unpack(ctx.input, ctx.nshape[0], 0).output

        var out_series: time_series.type
        for time_step in time_series:
            let con = concatV2(invalidToAny[ctx.dtype](newOutList(time_step, state)), 1.oint32).output
            
            let gate_inputs = con @ gate_kernel + gate_bias

            let value = sigmoid(gate_inputs).output

            let tmp: time_series.type = split(1.oint32, value, 2).output
            let r = tmp[0]
            let u = tmp[1]

            let candidate0 = time_step @ candidate_input_kernel + candidate_input_bias
            let candidate1 = candidate0 + (state @ candidate_hidden_kernel + candidate_hidden_bias) * r

            let candidate2 = activation(candidate1)
            let new_h = (to(1, ctx.dtype) - u) * candidate2 + u * state 

            state = new_h
            out_series.add(state)

        when batch_first:
            ctx.input concatV2(out_series, 1.oint32).output
        else:
            ctx.input concatV2(out_series, 0.oint32).output

    static:
        var sh = ctx.nshape
        sh[2] = num_units
    ctx.nshape sh

