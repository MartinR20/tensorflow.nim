# Tensorflow.nim

**Tensorflow.nim** is a wrapper around the c++ interface of tensorflow (currently under heavy development). The goal of this project is to bring tensorflow to nim with all its features.

## Usage

This package basically consists of two parts. The normal low level c++ wrapper meaning code like this:

```nim
import tensorflow

let rt = newRootScope()

let a = rt.Const([[1.0,3.0],
                  [1.0,3.0],
                  [1.0,3.0]], float32)

let b = rt.MatMul(rt.Transpose(a), a)

var outputs: TensorVec 
rt.runSession(b, outputs)
echo outputs[0]
```

A keras like api (but more on the functional side) that allows for fast model building and prototyping:

```nim
import tensorflow

var proto: seq[Layer] = @[]

proto.newDense(10, 20)
proto.newActivation(Relu)
proto.newDense(20, 10)
proto.newActivation(Softmax)

let rt = newRootScope()
let model = proto.compile(rt, newMSE(), newAdam())

let input = newTensor([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]], float32)

model.fit(input, input, 5)
```

## Doc
The doc is available under the following link: [documentation](https://martinr20.github.io/tensorflow.nim/tensorflow.html)
