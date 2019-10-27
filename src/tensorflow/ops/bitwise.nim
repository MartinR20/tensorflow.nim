import ../core

{.compile:"bitwise/bitwise.cc".}


type BitwiseAnd*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"BitwiseAnd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibitwiseAnd[oT: oall](scope: Scope,
                 x: oT,
                 y: oT,
                 T: DType): BitwiseAnd[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"BitwiseAnd(*#, #, #, #)", constructor.}

proc bitwiseAnd*[oT: oall](scope: Scope,
                 x: oT,
                 y: oT): BitwiseAnd[oT] =
  return iibitwiseAnd(scope,
                      x,
                      y,
                      oT.oTF)

converter bitwiseAndToOut*[oT: oall](op: BitwiseAnd[oT]): oT {.inline.} = return op.output


type BitwiseOr*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"BitwiseOr/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibitwiseOr[oT: oall](scope: Scope,
                x: oT,
                y: oT,
                T: DType): BitwiseOr[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"BitwiseOr(*#, #, #, #)", constructor.}

proc bitwiseOr*[oT: oall](scope: Scope,
                x: oT,
                y: oT): BitwiseOr[oT] =
  return iibitwiseOr(scope,
                     x,
                     y,
                     oT.oTF)

converter bitwiseOrToOut*[oT: oall](op: BitwiseOr[oT]): oT {.inline.} = return op.output


type BitwiseXor*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"BitwiseXor/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibitwiseXor[oT: oall](scope: Scope,
                 x: oT,
                 y: oT,
                 T: DType): BitwiseXor[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"BitwiseXor(*#, #, #, #)", constructor.}

proc bitwiseXor*[oT: oall](scope: Scope,
                 x: oT,
                 y: oT): BitwiseXor[oT] =
  return iibitwiseXor(scope,
                      x,
                      y,
                      oT.oTF)

converter bitwiseXorToOut*[oT: oall](op: BitwiseXor[oT]): oT {.inline.} = return op.output


type Invert*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"Invert/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiinvert[oT: oall](scope: Scope,
             x: oT,
             T: DType): Invert[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"Invert(*#, #, #)", constructor.}

proc invert*[oT: oall](scope: Scope,
             x: oT): Invert[oT] =
  return iiinvert(scope,
                  x,
                  oT.oTF)

converter invertToOut*[oT: oall](op: Invert[oT]): oT {.inline.} = return op.output


type LeftShift*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"LeftShift/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iileftShift[oT: oall](scope: Scope,
                x: oT,
                y: oT,
                T: DType): LeftShift[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"LeftShift(*#, #, #, #)", constructor.}

proc leftShift*[oT: oall](scope: Scope,
                x: oT,
                y: oT): LeftShift[oT] =
  return iileftShift(scope,
                     x,
                     y,
                     oT.oTF)

converter leftShiftToOut*[oT: oall](op: LeftShift[oT]): oT {.inline.} = return op.output


type RightShift*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"RightShift/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirightShift[oT: oall](scope: Scope,
                 x: oT,
                 y: oT,
                 T: DType): RightShift[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/bitwise/bitwise.h", importcpp:"RightShift(*#, #, #, #)", constructor.}

proc rightShift*[oT: oall](scope: Scope,
                 x: oT,
                 y: oT): RightShift[oT] =
  return iirightShift(scope,
                      x,
                      y,
                      oT.oTF)

converter rightShiftToOut*[oT: oall](op: RightShift[oT]): oT {.inline.} = return op.output

