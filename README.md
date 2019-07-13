#Tensorflow.nim

**Tensorflow.nim** is a wrapper around the c++ interface of tensorflow (currently under heavy development). The goal of this project is to bring tensorflow to nim with all its features.

## Installation

To install the current version use (currently only on linux):

```sh
nimble install https://github.com/MartinR20/tensorflow.nim.git
```

## Usage

This packages basically consists of three parts. The normal low level c++ wrapper meaning code like this:

```nim
import tensorflow

let rt = newRootScope()

let a = rt.Const([[1.0,3.0],
                  [1.0,3.0],
                  [1.0,3.0]])

let b = rt.MatMul(rt.Transpose(a), a)

let outputs = rt.runSession(b)
echo outputs[0]
```

A keras like api (but more on the functional side) that allows for fast model building and prototyping:

[//]: # (TODO: fix this example)
```nim
import tensorflow

var proto: seq[Layer] = @[]

proto.newDense(10, 20)
proto.newActivation(Relu)
proto.newDense(20, 10)
proto.newActivation(Softmax)

let rt = newRootScope()
let (fit,eval) = proto.compile(rt, newMSE(), newAdam())

let input = rt.Const([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]])

let model = rt.fit(input, rt.ZerosLike(input))
let outputs = rt.runSession(model)

echo outputs[0] 
```

And as a really experimental feature custom operations:

```nim
import tensorflow/ops/newop/newop
import tensorflow/core/core

proc ZeroOut(ctx: ptr OpKernelContext) {.input:"to_zero: int32",
                                         output:"zeroed: int32",
                                         setShapeFn: proc(ctx: ptr InferenceContext): Status = 
                                                        ctx.set_output(0, ctx.input(0))
                                                        return ok(),
                                         tfexport:CPU.} =
  let input_tensor  = ctx.input(0)
  let input = input_tensor.flat(cint)

  var output_tensor: Tensor
  OP_REQUIRES_OK(ctx, ctx.allocate_output(0, input_tensor.shape(), output_tensor))

  let output = output_tensor.flat(cint)

  let N = input.size()
  for i in 0..N-1:
      output[i] = 0

  if N > 0: 
      output[0] = input[0] 

#To see the equivalent c++ example go to https://www.tensorflow.org/guide/extend/op
```

getting compiled to a shared library as you would expect with this command:

```sh
nim cpp --app:lib FOO.nim
```

