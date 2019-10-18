import ../core

{.compile:"../../ops/math/math.cc".}


type Abs*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Abs/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiabs[oT: oall](scope: Scope,
          x: oT,
          T: DType): Abs[oT] {.header:"../../ops/math/math.h", importcpp:"Abs(*#, #, #)", constructor.}

proc abs*[oT: oall](scope: Scope,
          x: oT): Abs[oT] =
  return iiabs(scope,
               x,
               oT[].oTF)

converter absToOut*[oT: oall](op: Abs[oT]): oT {.inline.} = return op.output


type Acos*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Acos/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiacos[oT: oall](scope: Scope,
           x: oT,
           T: DType): Acos[oT] {.header:"../../ops/math/math.h", importcpp:"Acos(*#, #, #)", constructor.}

proc acos*[oT: oall](scope: Scope,
           x: oT): Acos[oT] =
  return iiacos(scope,
                x,
                oT[].oTF)

converter acosToOut*[oT: oall](op: Acos[oT]): oT {.inline.} = return op.output


type Acosh*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Acosh/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiacosh[oT: oall](scope: Scope,
            x: oT,
            T: DType): Acosh[oT] {.header:"../../ops/math/math.h", importcpp:"Acosh(*#, #, #)", constructor.}

proc acosh*[oT: oall](scope: Scope,
            x: oT): Acosh[oT] =
  return iiacosh(scope,
                 x,
                 oT[].oTF)

converter acoshToOut*[oT: oall](op: Acosh[oT]): oT {.inline.} = return op.output


type Add*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Add/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiadd[oT: oall](scope: Scope,
          x: oT,
          y: oT,
          T: DType): Add[oT] {.header:"../../ops/math/math.h", importcpp:"Add(*#, #, #, #)", constructor.}

proc add*[oT: oall](scope: Scope,
          x: oT,
          y: oT): Add[oT] =
  return iiadd(scope,
               x,
               y,
               oT[].oTF)

converter addToOut*[oT: oall](op: Add[oT]): oT {.inline.} = return op.output


type AddN*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"AddN/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiaddN[oT: oall](scope: Scope,
           inputs: olist[oT],
           T: DType): AddN[oT] {.header:"../../ops/math/math.h", importcpp:"AddN(*#, #, #)", constructor.}

proc addN*[oT: oall](scope: Scope,
           inputs: olist[oT]): AddN[oT] =
  return iiaddN(scope,
                inputs,
                oT[].oTF)

converter addNToOut*[oT: oall](op: AddN[oT]): oT {.inline.} = return op.output


type AddV2*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"AddV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiaddV2[oT: oall](scope: Scope,
            x: oT,
            y: oT,
            T: DType): AddV2[oT] {.header:"../../ops/math/math.h", importcpp:"AddV2(*#, #, #, #)", constructor.}

proc addV2*[oT: oall](scope: Scope,
            x: oT,
            y: oT): AddV2[oT] =
  return iiaddV2(scope,
                 x,
                 y,
                 oT[].oTF)

converter addV2ToOut*[oT: oall](op: AddV2[oT]): oT {.inline.} = return op.output

type AngleT* = ocomplex64 | ocomplex128

type Angle*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Angle/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiangle[oT: oall](scope: Scope,
            input: AngleT,
            Tout: DType,
            explicitT: type(oT)): Angle[oT] {.header:"../../ops/math/math.h", importcpp:"Angle(*#, #, #)", constructor.}

proc angle*(scope: Scope,
            input: AngleT,
            Tout: type = ofloat): auto =
  return iiangle(scope,
                 input,
                 Tout[].oTF,
                 Tout)

converter angleToOut*[oT: oall](op: Angle[oT]): oT {.inline.} = return op.output

type ApproximateEqualT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type ApproximateEqual* {.header:"../../ops/math/math.h", importcpp:"ApproximateEqual/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiapproximateEqual(scope: Scope,
                       x: ApproximateEqualT,
                       y: ApproximateEqualT,
                       tolerance: float32): ApproximateEqual {.header:"../../ops/math/math.h", importcpp:"ApproximateEqual(*#, #, #, #)", constructor.}

proc approximateEqual*(scope: Scope,
                       x: ApproximateEqualT,
                       y: ApproximateEqualT,
                       tolerance: float32 = 9.999999747378752e-06.float32): ApproximateEqual =
  return iiapproximateEqual(scope,
                            x,
                            y,
                            tolerance)

converter approximateEqualToOut*(op: ApproximateEqual): obool {.inline.} = return op.output

type ArgMaxT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ArgMaxTidx* = oint32 | oint64

type ArgMax*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ArgMax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiargMax[oT: oall](scope: Scope,
             input: ArgMaxT,
             dimension: ArgMaxTidx,
             output_type: DType,
             explicitT: type(oT)): ArgMax[oT] {.header:"../../ops/math/math.h", importcpp:"ArgMax(*#, #, #, #)", constructor.}

proc argMax*(scope: Scope,
             input: ArgMaxT,
             dimension: ArgMaxTidx,
             output_type: type = oint64): auto =
  return iiargMax(scope,
                  input,
                  dimension,
                  output_type[].oTF,
                  output_type)

converter argMaxToOut*[oT: oall](op: ArgMax[oT]): oT {.inline.} = return op.output

type ArgMinT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ArgMinTidx* = oint32 | oint64

type ArgMin*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ArgMin/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiargMin[oT: oall](scope: Scope,
             input: ArgMinT,
             dimension: ArgMinTidx,
             output_type: DType,
             explicitT: type(oT)): ArgMin[oT] {.header:"../../ops/math/math.h", importcpp:"ArgMin(*#, #, #, #)", constructor.}

proc argMin*(scope: Scope,
             input: ArgMinT,
             dimension: ArgMinTidx,
             output_type: type = oint64): auto =
  return iiargMin(scope,
                  input,
                  dimension,
                  output_type[].oTF,
                  output_type)

converter argMinToOut*[oT: oall](op: ArgMin[oT]): oT {.inline.} = return op.output


type Asin*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Asin/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiasin[oT: oall](scope: Scope,
           x: oT,
           T: DType): Asin[oT] {.header:"../../ops/math/math.h", importcpp:"Asin(*#, #, #)", constructor.}

proc asin*[oT: oall](scope: Scope,
           x: oT): Asin[oT] =
  return iiasin(scope,
                x,
                oT[].oTF)

converter asinToOut*[oT: oall](op: Asin[oT]): oT {.inline.} = return op.output


type Asinh*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Asinh/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiasinh[oT: oall](scope: Scope,
            x: oT,
            T: DType): Asinh[oT] {.header:"../../ops/math/math.h", importcpp:"Asinh(*#, #, #)", constructor.}

proc asinh*[oT: oall](scope: Scope,
            x: oT): Asinh[oT] =
  return iiasinh(scope,
                 x,
                 oT[].oTF)

converter asinhToOut*[oT: oall](op: Asinh[oT]): oT {.inline.} = return op.output


type AssignAdd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"AssignAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiassignAdd[oT: oall](scope: Scope,
                nref: oT,
                value: oT,
                T: DType,
                use_locking: bool): AssignAdd[oT] {.header:"../../ops/math/math.h", importcpp:"AssignAdd(*#, #, #, #, #)", constructor.}

proc assignAdd*[oT: oall](scope: Scope,
                nref: oT,
                value: oT,
                use_locking: bool = false): AssignAdd[oT] =
  return iiassignAdd(scope,
                     nref,
                     value,
                     oT[].oTF,
                     use_locking)

converter assignAddToOut*[oT: oall](op: AssignAdd[oT]): oT {.inline.} = return op.output


type Atan*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Atan/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiatan[oT: oall](scope: Scope,
           x: oT,
           T: DType): Atan[oT] {.header:"../../ops/math/math.h", importcpp:"Atan(*#, #, #)", constructor.}

proc atan*[oT: oall](scope: Scope,
           x: oT): Atan[oT] =
  return iiatan(scope,
                x,
                oT[].oTF)

converter atanToOut*[oT: oall](op: Atan[oT]): oT {.inline.} = return op.output


type Atan2*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Atan2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiatan2[oT: oall](scope: Scope,
            y: oT,
            x: oT,
            T: DType): Atan2[oT] {.header:"../../ops/math/math.h", importcpp:"Atan2(*#, #, #, #)", constructor.}

proc atan2*[oT: oall](scope: Scope,
            y: oT,
            x: oT): Atan2[oT] =
  return iiatan2(scope,
                 y,
                 x,
                 oT[].oTF)

converter atan2ToOut*[oT: oall](op: Atan2[oT]): oT {.inline.} = return op.output


type Atanh*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Atanh/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiatanh[oT: oall](scope: Scope,
            x: oT,
            T: DType): Atanh[oT] {.header:"../../ops/math/math.h", importcpp:"Atanh(*#, #, #)", constructor.}

proc atanh*[oT: oall](scope: Scope,
            x: oT): Atanh[oT] =
  return iiatanh(scope,
                 x,
                 oT[].oTF)

converter atanhToOut*[oT: oall](op: Atanh[oT]): oT {.inline.} = return op.output


type BatchCholesky*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchCholesky/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchCholesky[oT: oall](scope: Scope,
                    input: oT,
                    T: DType): BatchCholesky[oT] {.header:"../../ops/math/math.h", importcpp:"BatchCholesky(*#, #, #)", constructor.}

proc batchCholesky*[oT: oall](scope: Scope,
                    input: oT): BatchCholesky[oT] =
  return iibatchCholesky(scope,
                         input,
                         oT[].oTF)

converter batchCholeskyToOut*[oT: oall](op: BatchCholesky[oT]): oT {.inline.} = return op.output


type BatchCholeskyGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchCholeskyGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchCholeskyGrad[oT: oall](scope: Scope,
                        l: oT,
                        grad: oT,
                        T: DType): BatchCholeskyGrad[oT] {.header:"../../ops/math/math.h", importcpp:"BatchCholeskyGrad(*#, #, #, #)", constructor.}

proc batchCholeskyGrad*[oT: oall](scope: Scope,
                        l: oT,
                        grad: oT): BatchCholeskyGrad[oT] =
  return iibatchCholeskyGrad(scope,
                             l,
                             grad,
                             oT[].oTF)

converter batchCholeskyGradToOut*[oT: oall](op: BatchCholeskyGrad[oT]): oT {.inline.} = return op.output


type BatchFFT* {.header:"../../ops/math/math.h", importcpp:"BatchFFT/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iibatchFFT(scope: Scope,
               input: ocomplex64): BatchFFT {.header:"../../ops/math/math.h", importcpp:"BatchFFT(*#, #)", constructor.}

proc batchFFT*(scope: Scope,
               input: ocomplex64): BatchFFT =
  return iibatchFFT(scope,
                    input)

converter batchFFTToOut*(op: BatchFFT): ocomplex64 {.inline.} = return op.output


type BatchFFT2D* {.header:"../../ops/math/math.h", importcpp:"BatchFFT2D/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iibatchFFT2D(scope: Scope,
                 input: ocomplex64): BatchFFT2D {.header:"../../ops/math/math.h", importcpp:"BatchFFT2D(*#, #)", constructor.}

proc batchFFT2D*(scope: Scope,
                 input: ocomplex64): BatchFFT2D =
  return iibatchFFT2D(scope,
                      input)

converter batchFFT2DToOut*(op: BatchFFT2D): ocomplex64 {.inline.} = return op.output


type BatchFFT3D* {.header:"../../ops/math/math.h", importcpp:"BatchFFT3D/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iibatchFFT3D(scope: Scope,
                 input: ocomplex64): BatchFFT3D {.header:"../../ops/math/math.h", importcpp:"BatchFFT3D(*#, #)", constructor.}

proc batchFFT3D*(scope: Scope,
                 input: ocomplex64): BatchFFT3D =
  return iibatchFFT3D(scope,
                      input)

converter batchFFT3DToOut*(op: BatchFFT3D): ocomplex64 {.inline.} = return op.output


type BatchIFFT* {.header:"../../ops/math/math.h", importcpp:"BatchIFFT/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iibatchIFFT(scope: Scope,
                input: ocomplex64): BatchIFFT {.header:"../../ops/math/math.h", importcpp:"BatchIFFT(*#, #)", constructor.}

proc batchIFFT*(scope: Scope,
                input: ocomplex64): BatchIFFT =
  return iibatchIFFT(scope,
                     input)

converter batchIFFTToOut*(op: BatchIFFT): ocomplex64 {.inline.} = return op.output


type BatchIFFT2D* {.header:"../../ops/math/math.h", importcpp:"BatchIFFT2D/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iibatchIFFT2D(scope: Scope,
                  input: ocomplex64): BatchIFFT2D {.header:"../../ops/math/math.h", importcpp:"BatchIFFT2D(*#, #)", constructor.}

proc batchIFFT2D*(scope: Scope,
                  input: ocomplex64): BatchIFFT2D =
  return iibatchIFFT2D(scope,
                       input)

converter batchIFFT2DToOut*(op: BatchIFFT2D): ocomplex64 {.inline.} = return op.output


type BatchIFFT3D* {.header:"../../ops/math/math.h", importcpp:"BatchIFFT3D/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iibatchIFFT3D(scope: Scope,
                  input: ocomplex64): BatchIFFT3D {.header:"../../ops/math/math.h", importcpp:"BatchIFFT3D(*#, #)", constructor.}

proc batchIFFT3D*(scope: Scope,
                  input: ocomplex64): BatchIFFT3D =
  return iibatchIFFT3D(scope,
                       input)

converter batchIFFT3DToOut*(op: BatchIFFT3D): ocomplex64 {.inline.} = return op.output


type BatchMatMul*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatMul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatMul[oT: oall](scope: Scope,
                  x: oT,
                  y: oT,
                  T: DType,
                  adj_x: bool,
                  adj_y: bool): BatchMatMul[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatMul(*#, #, #, #, #, #)", constructor.}

proc batchMatMul*[oT: oall](scope: Scope,
                  x: oT,
                  y: oT,
                  adj_x: bool = false,
                  adj_y: bool = false): BatchMatMul[oT] =
  return iibatchMatMul(scope,
                       x,
                       y,
                       oT[].oTF,
                       adj_x,
                       adj_y)

converter batchMatMulToOut*[oT: oall](op: BatchMatMul[oT]): oT {.inline.} = return op.output


type BatchMatrixBandPart*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixBandPart/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixBandPart[oT: oall](scope: Scope,
                          input: oT,
                          num_lower: oint64,
                          num_upper: oint64,
                          T: DType): BatchMatrixBandPart[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixBandPart(*#, #, #, #, #)", constructor.}

proc batchMatrixBandPart*[oT: oall](scope: Scope,
                          input: oT,
                          num_lower: oint64,
                          num_upper: oint64): BatchMatrixBandPart[oT] =
  return iibatchMatrixBandPart(scope,
                               input,
                               num_lower,
                               num_upper,
                               oT[].oTF)

converter batchMatrixBandPartToOut*[oT: oall](op: BatchMatrixBandPart[oT]): oT {.inline.} = return op.output


type BatchMatrixDeterminant*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixDeterminant/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixDeterminant[oT: oall](scope: Scope,
                             input: oT,
                             T: DType): BatchMatrixDeterminant[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixDeterminant(*#, #, #)", constructor.}

proc batchMatrixDeterminant*[oT: oall](scope: Scope,
                             input: oT): BatchMatrixDeterminant[oT] =
  return iibatchMatrixDeterminant(scope,
                                  input,
                                  oT[].oTF)

converter batchMatrixDeterminantToOut*[oT: oall](op: BatchMatrixDeterminant[oT]): oT {.inline.} = return op.output


type BatchMatrixDiag*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixDiag/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixDiag[oT: oall](scope: Scope,
                      diagonal: oT,
                      T: DType): BatchMatrixDiag[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixDiag(*#, #, #)", constructor.}

proc batchMatrixDiag*[oT: oall](scope: Scope,
                      diagonal: oT): BatchMatrixDiag[oT] =
  return iibatchMatrixDiag(scope,
                           diagonal,
                           oT[].oTF)

converter batchMatrixDiagToOut*[oT: oall](op: BatchMatrixDiag[oT]): oT {.inline.} = return op.output


type BatchMatrixDiagPart*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixDiagPart/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixDiagPart[oT: oall](scope: Scope,
                          input: oT,
                          T: DType): BatchMatrixDiagPart[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixDiagPart(*#, #, #)", constructor.}

proc batchMatrixDiagPart*[oT: oall](scope: Scope,
                          input: oT): BatchMatrixDiagPart[oT] =
  return iibatchMatrixDiagPart(scope,
                               input,
                               oT[].oTF)

converter batchMatrixDiagPartToOut*[oT: oall](op: BatchMatrixDiagPart[oT]): oT {.inline.} = return op.output


type BatchMatrixInverse*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixInverse/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixInverse[oT: oall](scope: Scope,
                         input: oT,
                         adjoint: bool,
                         T: DType): BatchMatrixInverse[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixInverse(*#, #, #, #)", constructor.}

proc batchMatrixInverse*[oT: oall](scope: Scope,
                         input: oT,
                         adjoint: bool = false): BatchMatrixInverse[oT] =
  return iibatchMatrixInverse(scope,
                              input,
                              adjoint,
                              oT[].oTF)

converter batchMatrixInverseToOut*[oT: oall](op: BatchMatrixInverse[oT]): oT {.inline.} = return op.output


type BatchMatrixSetDiag*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixSetDiag/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixSetDiag[oT: oall](scope: Scope,
                         input: oT,
                         diagonal: oT,
                         T: DType): BatchMatrixSetDiag[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixSetDiag(*#, #, #, #)", constructor.}

proc batchMatrixSetDiag*[oT: oall](scope: Scope,
                         input: oT,
                         diagonal: oT): BatchMatrixSetDiag[oT] =
  return iibatchMatrixSetDiag(scope,
                              input,
                              diagonal,
                              oT[].oTF)

converter batchMatrixSetDiagToOut*[oT: oall](op: BatchMatrixSetDiag[oT]): oT {.inline.} = return op.output


type BatchMatrixSolve*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixSolve/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixSolve[oT: oall](scope: Scope,
                       matrix: oT,
                       rhs: oT,
                       adjoint: bool,
                       T: DType): BatchMatrixSolve[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixSolve(*#, #, #, #, #)", constructor.}

proc batchMatrixSolve*[oT: oall](scope: Scope,
                       matrix: oT,
                       rhs: oT,
                       adjoint: bool = false): BatchMatrixSolve[oT] =
  return iibatchMatrixSolve(scope,
                            matrix,
                            rhs,
                            adjoint,
                            oT[].oTF)

converter batchMatrixSolveToOut*[oT: oall](op: BatchMatrixSolve[oT]): oT {.inline.} = return op.output


type BatchMatrixSolveLs*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixSolveLs/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixSolveLs[oT: oall](scope: Scope,
                         matrix: oT,
                         rhs: oT,
                         l2_regularizer: odouble,
                         T: DType,
                         fast: bool): BatchMatrixSolveLs[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixSolveLs(*#, #, #, #, #, #)", constructor.}

proc batchMatrixSolveLs*[oT: oall](scope: Scope,
                         matrix: oT,
                         rhs: oT,
                         l2_regularizer: odouble,
                         fast: bool = true): BatchMatrixSolveLs[oT] =
  return iibatchMatrixSolveLs(scope,
                              matrix,
                              rhs,
                              l2_regularizer,
                              oT[].oTF,
                              fast)

converter batchMatrixSolveLsToOut*[oT: oall](op: BatchMatrixSolveLs[oT]): oT {.inline.} = return op.output


type BatchMatrixTriangularSolve*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixTriangularSolve/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchMatrixTriangularSolve[oT: oall](scope: Scope,
                                 matrix: oT,
                                 rhs: oT,
                                 lower: bool,
                                 adjoint: bool,
                                 T: DType): BatchMatrixTriangularSolve[oT] {.header:"../../ops/math/math.h", importcpp:"BatchMatrixTriangularSolve(*#, #, #, #, #, #)", constructor.}

proc batchMatrixTriangularSolve*[oT: oall](scope: Scope,
                                 matrix: oT,
                                 rhs: oT,
                                 lower: bool = true,
                                 adjoint: bool = false): BatchMatrixTriangularSolve[oT] =
  return iibatchMatrixTriangularSolve(scope,
                                      matrix,
                                      rhs,
                                      lower,
                                      adjoint,
                                      oT[].oTF)

converter batchMatrixTriangularSolveToOut*[oT: oall](op: BatchMatrixTriangularSolve[oT]): oT {.inline.} = return op.output


type BatchSelfAdjointEig*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchSelfAdjointEig/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchSelfAdjointEig[oT: oall](scope: Scope,
                          input: oT,
                          T: DType): BatchSelfAdjointEig[oT] {.header:"../../ops/math/math.h", importcpp:"BatchSelfAdjointEig(*#, #, #)", constructor.}

proc batchSelfAdjointEig*[oT: oall](scope: Scope,
                          input: oT): BatchSelfAdjointEig[oT] =
  return iibatchSelfAdjointEig(scope,
                               input,
                               oT[].oTF)

converter batchSelfAdjointEigToOut*[oT: oall](op: BatchSelfAdjointEig[oT]): oT {.inline.} = return op.output


type BatchSvd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BatchSvd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchSvd[oT: oall](scope: Scope,
               input: oT,
               compute_uv: bool,
               full_matrices: bool,
               T: DType): BatchSvd[oT] {.header:"../../ops/math/math.h", importcpp:"BatchSvd(*#, #, #, #, #)", constructor.}

proc batchSvd*[oT: oall](scope: Scope,
               input: oT,
               compute_uv: bool = true,
               full_matrices: bool = false): BatchSvd[oT] =
  return iibatchSvd(scope,
                    input,
                    compute_uv,
                    full_matrices,
                    oT[].oTF)

converter batchSvdToOut*[oT: oall](op: BatchSvd[oT]): oT {.inline.} = return op.output


type BesselI0e*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BesselI0e/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibesselI0e[oT: oall](scope: Scope,
                x: oT,
                T: DType): BesselI0e[oT] {.header:"../../ops/math/math.h", importcpp:"BesselI0e(*#, #, #)", constructor.}

proc besselI0e*[oT: oall](scope: Scope,
                x: oT): BesselI0e[oT] =
  return iibesselI0e(scope,
                     x,
                     oT[].oTF)

converter besselI0eToOut*[oT: oall](op: BesselI0e[oT]): oT {.inline.} = return op.output


type BesselI1e*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"BesselI1e/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibesselI1e[oT: oall](scope: Scope,
                x: oT,
                T: DType): BesselI1e[oT] {.header:"../../ops/math/math.h", importcpp:"BesselI1e(*#, #, #)", constructor.}

proc besselI1e*[oT: oall](scope: Scope,
                x: oT): BesselI1e[oT] =
  return iibesselI1e(scope,
                     x,
                     oT[].oTF)

converter besselI1eToOut*[oT: oall](op: BesselI1e[oT]): oT {.inline.} = return op.output


type Betainc*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Betainc/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibetainc[oT: oall](scope: Scope,
              a: oT,
              b: oT,
              x: oT,
              T: DType): Betainc[oT] {.header:"../../ops/math/math.h", importcpp:"Betainc(*#, #, #, #, #)", constructor.}

proc betainc*[oT: oall](scope: Scope,
              a: oT,
              b: oT,
              x: oT): Betainc[oT] =
  return iibetainc(scope,
                   a,
                   b,
                   x,
                   oT[].oTF)

converter betaincToOut*[oT: oall](op: Betainc[oT]): oT {.inline.} = return op.output


type Ceil*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Ceil/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiceil[oT: oall](scope: Scope,
           x: oT,
           T: DType): Ceil[oT] {.header:"../../ops/math/math.h", importcpp:"Ceil(*#, #, #)", constructor.}

proc ceil*[oT: oall](scope: Scope,
           x: oT): Ceil[oT] =
  return iiceil(scope,
                x,
                oT[].oTF)

converter ceilToOut*[oT: oall](op: Ceil[oT]): oT {.inline.} = return op.output


type CheckNumerics*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"CheckNumerics/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicheckNumerics[oT: oall](scope: Scope,
                    tensor: oT,
                    message: cstring,
                    T: DType): CheckNumerics[oT] {.header:"../../ops/math/math.h", importcpp:"CheckNumerics(*#, #, tensorflow::string(#), #)", constructor.}

proc checkNumerics*[oT: oall](scope: Scope,
                    tensor: oT,
                    message: cstring): CheckNumerics[oT] =
  return iicheckNumerics(scope,
                         tensor,
                         message,
                         oT[].oTF)

converter checkNumericsToOut*[oT: oall](op: CheckNumerics[oT]): oT {.inline.} = return op.output


type Cholesky*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Cholesky/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicholesky[oT: oall](scope: Scope,
               input: oT,
               T: DType): Cholesky[oT] {.header:"../../ops/math/math.h", importcpp:"Cholesky(*#, #, #)", constructor.}

proc cholesky*[oT: oall](scope: Scope,
               input: oT): Cholesky[oT] =
  return iicholesky(scope,
                    input,
                    oT[].oTF)

converter choleskyToOut*[oT: oall](op: Cholesky[oT]): oT {.inline.} = return op.output


type CholeskyGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"CholeskyGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicholeskyGrad[oT: oall](scope: Scope,
                   l: oT,
                   grad: oT,
                   T: DType): CholeskyGrad[oT] {.header:"../../ops/math/math.h", importcpp:"CholeskyGrad(*#, #, #, #)", constructor.}

proc choleskyGrad*[oT: oall](scope: Scope,
                   l: oT,
                   grad: oT): CholeskyGrad[oT] =
  return iicholeskyGrad(scope,
                        l,
                        grad,
                        oT[].oTF)

converter choleskyGradToOut*[oT: oall](op: CholeskyGrad[oT]): oT {.inline.} = return op.output

type ComplexT* = ofloat | odouble

type Complex*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Complex/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicomplex[oT: oall](scope: Scope,
              real: ComplexT,
              imag: ComplexT,
              Tout: DType,
              explicitT: type(oT)): Complex[oT] {.header:"../../ops/math/math.h", importcpp:"Complex(*#, #, #, #)", constructor.}

proc complex*(scope: Scope,
              real: ComplexT,
              imag: ComplexT,
              Tout: type = ocomplex64): auto =
  return iicomplex(scope,
                   real,
                   imag,
                   Tout[].oTF,
                   Tout)

converter complexToOut*[oT: oall](op: Complex[oT]): oT {.inline.} = return op.output

type ComplexAbsT* = ocomplex64 | ocomplex128

type ComplexAbs*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ComplexAbs/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicomplexAbs[oT: oall](scope: Scope,
                 x: ComplexAbsT,
                 Tout: DType,
                 explicitT: type(oT)): ComplexAbs[oT] {.header:"../../ops/math/math.h", importcpp:"ComplexAbs(*#, #, #)", constructor.}

proc complexAbs*(scope: Scope,
                 x: ComplexAbsT,
                 Tout: type = ofloat): auto =
  return iicomplexAbs(scope,
                      x,
                      Tout[].oTF,
                      Tout)

converter complexAbsToOut*[oT: oall](op: ComplexAbs[oT]): oT {.inline.} = return op.output


type Conj*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Conj/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconj[oT: oall](scope: Scope,
           input: oT,
           T: DType): Conj[oT] {.header:"../../ops/math/math.h", importcpp:"Conj(*#, #, #)", constructor.}

proc conj*[oT: oall](scope: Scope,
           input: oT): Conj[oT] =
  return iiconj(scope,
                input,
                oT[].oTF)

converter conjToOut*[oT: oall](op: Conj[oT]): oT {.inline.} = return op.output

type ConjugateTransposeTperm* = oint32 | oint64

type ConjugateTranspose*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ConjugateTranspose/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconjugateTranspose[oT: oall](scope: Scope,
                         x: oT,
                         perm: ConjugateTransposeTperm,
                         T: DType): ConjugateTranspose[oT] {.header:"../../ops/math/math.h", importcpp:"ConjugateTranspose(*#, #, #, #)", constructor.}

proc conjugateTranspose*[oT: oall](scope: Scope,
                         x: oT,
                         perm: ConjugateTransposeTperm): ConjugateTranspose[oT] =
  return iiconjugateTranspose(scope,
                              x,
                              perm,
                              oT[].oTF)

converter conjugateTransposeToOut*[oT: oall](op: ConjugateTranspose[oT]): oT {.inline.} = return op.output


type Cos*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Cos/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicos[oT: oall](scope: Scope,
          x: oT,
          T: DType): Cos[oT] {.header:"../../ops/math/math.h", importcpp:"Cos(*#, #, #)", constructor.}

proc cos*[oT: oall](scope: Scope,
          x: oT): Cos[oT] =
  return iicos(scope,
               x,
               oT[].oTF)

converter cosToOut*[oT: oall](op: Cos[oT]): oT {.inline.} = return op.output


type Cosh*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Cosh/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicosh[oT: oall](scope: Scope,
           x: oT,
           T: DType): Cosh[oT] {.header:"../../ops/math/math.h", importcpp:"Cosh(*#, #, #)", constructor.}

proc cosh*[oT: oall](scope: Scope,
           x: oT): Cosh[oT] =
  return iicosh(scope,
                x,
                oT[].oTF)

converter coshToOut*[oT: oall](op: Cosh[oT]): oT {.inline.} = return op.output


type CountUpTo*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"CountUpTo/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicountUpTo[oT: oall](scope: Scope,
                nref: oT,
                limit: int64,
                T: DType): CountUpTo[oT] {.header:"../../ops/math/math.h", importcpp:"CountUpTo(*#, #, #, #)", constructor.}

proc countUpTo*[oT: oall](scope: Scope,
                nref: oT,
                limit: int64 = 0.int): CountUpTo[oT] =
  return iicountUpTo(scope,
                     nref,
                     limit,
                     oT[].oTF)

converter countUpToToOut*[oT: oall](op: CountUpTo[oT]): oT {.inline.} = return op.output


type Cross*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Cross/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicross[oT: oall](scope: Scope,
            a: oT,
            b: oT,
            T: DType): Cross[oT] {.header:"../../ops/math/math.h", importcpp:"Cross(*#, #, #, #)", constructor.}

proc cross*[oT: oall](scope: Scope,
            a: oT,
            b: oT): Cross[oT] =
  return iicross(scope,
                 a,
                 b,
                 oT[].oTF)

converter crossToOut*[oT: oall](op: Cross[oT]): oT {.inline.} = return op.output

type CumprodTidx* = oint32 | oint64

type Cumprod*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Cumprod/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicumprod[oT: oall](scope: Scope,
              x: oT,
              axis: CumprodTidx,
              exclusive: bool,
              reverse: bool,
              T: DType): Cumprod[oT] {.header:"../../ops/math/math.h", importcpp:"Cumprod(*#, #, #, #, #, #)", constructor.}

proc cumprod*[oT: oall](scope: Scope,
              x: oT,
              axis: CumprodTidx,
              exclusive: bool = false,
              reverse: bool = false): Cumprod[oT] =
  return iicumprod(scope,
                   x,
                   axis,
                   exclusive,
                   reverse,
                   oT[].oTF)

converter cumprodToOut*[oT: oall](op: Cumprod[oT]): oT {.inline.} = return op.output

type CumsumTidx* = oint32 | oint64

type Cumsum*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Cumsum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iicumsum[oT: oall](scope: Scope,
             x: oT,
             axis: CumsumTidx,
             exclusive: bool,
             reverse: bool,
             T: DType): Cumsum[oT] {.header:"../../ops/math/math.h", importcpp:"Cumsum(*#, #, #, #, #, #)", constructor.}

proc cumsum*[oT: oall](scope: Scope,
             x: oT,
             axis: CumsumTidx,
             exclusive: bool = false,
             reverse: bool = false): Cumsum[oT] =
  return iicumsum(scope,
                  x,
                  axis,
                  exclusive,
                  reverse,
                  oT[].oTF)

converter cumsumToOut*[oT: oall](op: Cumsum[oT]): oT {.inline.} = return op.output

type DequantizeT* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type Dequantize* {.header:"../../ops/math/math.h", importcpp:"Dequantize/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iidequantize(scope: Scope,
                 input: DequantizeT,
                 min_range: ofloat,
                 max_range: ofloat,
                 mode: cstring): Dequantize {.header:"../../ops/math/math.h", importcpp:"Dequantize(*#, #, #, #, tensorflow::string(#))", constructor.}

proc dequantize*(scope: Scope,
                 input: DequantizeT,
                 min_range: ofloat,
                 max_range: ofloat,
                 mode: cstring = "MIN_COMBINED"): Dequantize =
  return iidequantize(scope,
                      input,
                      min_range,
                      max_range,
                      mode)

converter dequantizeToOut*(op: Dequantize): ofloat {.inline.} = return op.output


type Diag*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Diag/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidiag[oT: oall](scope: Scope,
           diagonal: oT,
           T: DType): Diag[oT] {.header:"../../ops/math/math.h", importcpp:"Diag(*#, #, #)", constructor.}

proc diag*[oT: oall](scope: Scope,
           diagonal: oT): Diag[oT] =
  return iidiag(scope,
                diagonal,
                oT[].oTF)

converter diagToOut*[oT: oall](op: Diag[oT]): oT {.inline.} = return op.output


type DiagPart*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"DiagPart/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidiagPart[oT: oall](scope: Scope,
               input: oT,
               T: DType): DiagPart[oT] {.header:"../../ops/math/math.h", importcpp:"DiagPart(*#, #, #)", constructor.}

proc diagPart*[oT: oall](scope: Scope,
               input: oT): DiagPart[oT] =
  return iidiagPart(scope,
                    input,
                    oT[].oTF)

converter diagPartToOut*[oT: oall](op: DiagPart[oT]): oT {.inline.} = return op.output


type Digamma*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Digamma/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidigamma[oT: oall](scope: Scope,
              x: oT,
              T: DType): Digamma[oT] {.header:"../../ops/math/math.h", importcpp:"Digamma(*#, #, #)", constructor.}

proc digamma*[oT: oall](scope: Scope,
              x: oT): Digamma[oT] =
  return iidigamma(scope,
                   x,
                   oT[].oTF)

converter digammaToOut*[oT: oall](op: Digamma[oT]): oT {.inline.} = return op.output


type Div*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Div/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iindiv[oT: oall](scope: Scope,
           x: oT,
           y: oT,
           T: DType): Div[oT] {.header:"../../ops/math/math.h", importcpp:"Div(*#, #, #, #)", constructor.}

proc ndiv*[oT: oall](scope: Scope,
           x: oT,
           y: oT): Div[oT] =
  return iindiv(scope,
                x,
                y,
                oT[].oTF)

converter ndivToOut*[oT: oall](op: Div[oT]): oT {.inline.} = return op.output


type DivNoNan*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"DivNoNan/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidivNoNan[oT: oall](scope: Scope,
               x: oT,
               y: oT,
               T: DType): DivNoNan[oT] {.header:"../../ops/math/math.h", importcpp:"DivNoNan(*#, #, #, #)", constructor.}

proc divNoNan*[oT: oall](scope: Scope,
               x: oT,
               y: oT): DivNoNan[oT] =
  return iidivNoNan(scope,
                    x,
                    y,
                    oT[].oTF)

converter divNoNanToOut*[oT: oall](op: DivNoNan[oT]): oT {.inline.} = return op.output

type EqualT* = obfloat16 | ohalf | ofloat | odouble | ouint8 | oint8 | oint16 | oint32 | oint64 | ocomplex64 | oquint8 | oqint8 | oqint32 | ostring | obool | ocomplex128

type Equal* {.header:"../../ops/math/math.h", importcpp:"Equal/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiequal(scope: Scope,
            x: EqualT,
            y: EqualT): Equal {.header:"../../ops/math/math.h", importcpp:"Equal(*#, #, #)", constructor.}

proc equal*(scope: Scope,
            x: EqualT,
            y: EqualT): Equal =
  return iiequal(scope,
                 x,
                 y)

converter equalToOut*(op: Equal): obool {.inline.} = return op.output


type Erf*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Erf/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iierf[oT: oall](scope: Scope,
          x: oT,
          T: DType): Erf[oT] {.header:"../../ops/math/math.h", importcpp:"Erf(*#, #, #)", constructor.}

proc erf*[oT: oall](scope: Scope,
          x: oT): Erf[oT] =
  return iierf(scope,
               x,
               oT[].oTF)

converter erfToOut*[oT: oall](op: Erf[oT]): oT {.inline.} = return op.output


type Erfc*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Erfc/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iierfc[oT: oall](scope: Scope,
           x: oT,
           T: DType): Erfc[oT] {.header:"../../ops/math/math.h", importcpp:"Erfc(*#, #, #)", constructor.}

proc erfc*[oT: oall](scope: Scope,
           x: oT): Erfc[oT] =
  return iierfc(scope,
                x,
                oT[].oTF)

converter erfcToOut*[oT: oall](op: Erfc[oT]): oT {.inline.} = return op.output


type Exp*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Exp/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiexp[oT: oall](scope: Scope,
          x: oT,
          T: DType): Exp[oT] {.header:"../../ops/math/math.h", importcpp:"Exp(*#, #, #)", constructor.}

proc exp*[oT: oall](scope: Scope,
          x: oT): Exp[oT] =
  return iiexp(scope,
               x,
               oT[].oTF)

converter expToOut*[oT: oall](op: Exp[oT]): oT {.inline.} = return op.output


type Expm1*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Expm1/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiexpm1[oT: oall](scope: Scope,
            x: oT,
            T: DType): Expm1[oT] {.header:"../../ops/math/math.h", importcpp:"Expm1(*#, #, #)", constructor.}

proc expm1*[oT: oall](scope: Scope,
            x: oT): Expm1[oT] =
  return iiexpm1(scope,
                 x,
                 oT[].oTF)

converter expm1ToOut*[oT: oall](op: Expm1[oT]): oT {.inline.} = return op.output


type FFT*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"FFT/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifFT[oT: oall](scope: Scope,
          input: oT,
          Tcomplex: DType): FFT[oT] {.header:"../../ops/math/math.h", importcpp:"FFT(*#, #, #)", constructor.}

proc fFT*[oT: oall](scope: Scope,
          input: oT): FFT[oT] =
  return iifFT(scope,
               input,
               oT[].oTF)

converter fFTToOut*[oT: oall](op: FFT[oT]): oT {.inline.} = return op.output


type FFT2D*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"FFT2D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifFT2D[oT: oall](scope: Scope,
            input: oT,
            Tcomplex: DType): FFT2D[oT] {.header:"../../ops/math/math.h", importcpp:"FFT2D(*#, #, #)", constructor.}

proc fFT2D*[oT: oall](scope: Scope,
            input: oT): FFT2D[oT] =
  return iifFT2D(scope,
                 input,
                 oT[].oTF)

converter fFT2DToOut*[oT: oall](op: FFT2D[oT]): oT {.inline.} = return op.output


type FFT3D*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"FFT3D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifFT3D[oT: oall](scope: Scope,
            input: oT,
            Tcomplex: DType): FFT3D[oT] {.header:"../../ops/math/math.h", importcpp:"FFT3D(*#, #, #)", constructor.}

proc fFT3D*[oT: oall](scope: Scope,
            input: oT): FFT3D[oT] =
  return iifFT3D(scope,
                 input,
                 oT[].oTF)

converter fFT3DToOut*[oT: oall](op: FFT3D[oT]): oT {.inline.} = return op.output


type Floor*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Floor/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifloor[oT: oall](scope: Scope,
            x: oT,
            T: DType): Floor[oT] {.header:"../../ops/math/math.h", importcpp:"Floor(*#, #, #)", constructor.}

proc floor*[oT: oall](scope: Scope,
            x: oT): Floor[oT] =
  return iifloor(scope,
                 x,
                 oT[].oTF)

converter floorToOut*[oT: oall](op: Floor[oT]): oT {.inline.} = return op.output


type FloorDiv*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"FloorDiv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifloorDiv[oT: oall](scope: Scope,
               x: oT,
               y: oT,
               T: DType): FloorDiv[oT] {.header:"../../ops/math/math.h", importcpp:"FloorDiv(*#, #, #, #)", constructor.}

proc floorDiv*[oT: oall](scope: Scope,
               x: oT,
               y: oT): FloorDiv[oT] =
  return iifloorDiv(scope,
                    x,
                    y,
                    oT[].oTF)

converter floorDivToOut*[oT: oall](op: FloorDiv[oT]): oT {.inline.} = return op.output


type FloorMod*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"FloorMod/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifloorMod[oT: oall](scope: Scope,
               x: oT,
               y: oT,
               T: DType): FloorMod[oT] {.header:"../../ops/math/math.h", importcpp:"FloorMod(*#, #, #, #)", constructor.}

proc floorMod*[oT: oall](scope: Scope,
               x: oT,
               y: oT): FloorMod[oT] =
  return iifloorMod(scope,
                    x,
                    y,
                    oT[].oTF)

converter floorModToOut*[oT: oall](op: FloorMod[oT]): oT {.inline.} = return op.output

type GreaterT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type Greater* {.header:"../../ops/math/math.h", importcpp:"Greater/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iigreater(scope: Scope,
              x: GreaterT,
              y: GreaterT): Greater {.header:"../../ops/math/math.h", importcpp:"Greater(*#, #, #)", constructor.}

proc greater*(scope: Scope,
              x: GreaterT,
              y: GreaterT): Greater =
  return iigreater(scope,
                   x,
                   y)

converter greaterToOut*(op: Greater): obool {.inline.} = return op.output

type GreaterEqualT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type GreaterEqual* {.header:"../../ops/math/math.h", importcpp:"GreaterEqual/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iigreaterEqual(scope: Scope,
                   x: GreaterEqualT,
                   y: GreaterEqualT): GreaterEqual {.header:"../../ops/math/math.h", importcpp:"GreaterEqual(*#, #, #)", constructor.}

proc greaterEqual*(scope: Scope,
                   x: GreaterEqualT,
                   y: GreaterEqualT): GreaterEqual =
  return iigreaterEqual(scope,
                        x,
                        y)

converter greaterEqualToOut*(op: GreaterEqual): obool {.inline.} = return op.output


type IFFT*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"IFFT/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiFFT[oT: oall](scope: Scope,
           input: oT,
           Tcomplex: DType): IFFT[oT] {.header:"../../ops/math/math.h", importcpp:"IFFT(*#, #, #)", constructor.}

proc iFFT*[oT: oall](scope: Scope,
           input: oT): IFFT[oT] =
  return iiiFFT(scope,
                input,
                oT[].oTF)

converter iFFTToOut*[oT: oall](op: IFFT[oT]): oT {.inline.} = return op.output


type IFFT2D*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"IFFT2D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiFFT2D[oT: oall](scope: Scope,
             input: oT,
             Tcomplex: DType): IFFT2D[oT] {.header:"../../ops/math/math.h", importcpp:"IFFT2D(*#, #, #)", constructor.}

proc iFFT2D*[oT: oall](scope: Scope,
             input: oT): IFFT2D[oT] =
  return iiiFFT2D(scope,
                  input,
                  oT[].oTF)

converter iFFT2DToOut*[oT: oall](op: IFFT2D[oT]): oT {.inline.} = return op.output


type IFFT3D*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"IFFT3D/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiiFFT3D[oT: oall](scope: Scope,
             input: oT,
             Tcomplex: DType): IFFT3D[oT] {.header:"../../ops/math/math.h", importcpp:"IFFT3D(*#, #, #)", constructor.}

proc iFFT3D*[oT: oall](scope: Scope,
             input: oT): IFFT3D[oT] =
  return iiiFFT3D(scope,
                  input,
                  oT[].oTF)

converter iFFT3DToOut*[oT: oall](op: IFFT3D[oT]): oT {.inline.} = return op.output


type IRFFT* {.header:"../../ops/math/math.h", importcpp:"IRFFT/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiiRFFT(scope: Scope,
            input: ocomplex64,
            fft_length: oint32): IRFFT {.header:"../../ops/math/math.h", importcpp:"IRFFT(*#, #, #)", constructor.}

proc iRFFT*(scope: Scope,
            input: ocomplex64,
            fft_length: oint32): IRFFT =
  return iiiRFFT(scope,
                 input,
                 fft_length)

converter iRFFTToOut*(op: IRFFT): ofloat {.inline.} = return op.output


type IRFFT2D* {.header:"../../ops/math/math.h", importcpp:"IRFFT2D/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiiRFFT2D(scope: Scope,
              input: ocomplex64,
              fft_length: oint32): IRFFT2D {.header:"../../ops/math/math.h", importcpp:"IRFFT2D(*#, #, #)", constructor.}

proc iRFFT2D*(scope: Scope,
              input: ocomplex64,
              fft_length: oint32): IRFFT2D =
  return iiiRFFT2D(scope,
                   input,
                   fft_length)

converter iRFFT2DToOut*(op: IRFFT2D): ofloat {.inline.} = return op.output


type IRFFT3D* {.header:"../../ops/math/math.h", importcpp:"IRFFT3D/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iiiRFFT3D(scope: Scope,
              input: ocomplex64,
              fft_length: oint32): IRFFT3D {.header:"../../ops/math/math.h", importcpp:"IRFFT3D(*#, #, #)", constructor.}

proc iRFFT3D*(scope: Scope,
              input: ocomplex64,
              fft_length: oint32): IRFFT3D =
  return iiiRFFT3D(scope,
                   input,
                   fft_length)

converter iRFFT3DToOut*(op: IRFFT3D): ofloat {.inline.} = return op.output


type Igamma*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Igamma/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiigamma[oT: oall](scope: Scope,
             a: oT,
             x: oT,
             T: DType): Igamma[oT] {.header:"../../ops/math/math.h", importcpp:"Igamma(*#, #, #, #)", constructor.}

proc igamma*[oT: oall](scope: Scope,
             a: oT,
             x: oT): Igamma[oT] =
  return iiigamma(scope,
                  a,
                  x,
                  oT[].oTF)

converter igammaToOut*[oT: oall](op: Igamma[oT]): oT {.inline.} = return op.output


type IgammaGradA*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"IgammaGradA/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiigammaGradA[oT: oall](scope: Scope,
                  a: oT,
                  x: oT,
                  T: DType): IgammaGradA[oT] {.header:"../../ops/math/math.h", importcpp:"IgammaGradA(*#, #, #, #)", constructor.}

proc igammaGradA*[oT: oall](scope: Scope,
                  a: oT,
                  x: oT): IgammaGradA[oT] =
  return iiigammaGradA(scope,
                       a,
                       x,
                       oT[].oTF)

converter igammaGradAToOut*[oT: oall](op: IgammaGradA[oT]): oT {.inline.} = return op.output


type Igammac*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Igammac/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiigammac[oT: oall](scope: Scope,
              a: oT,
              x: oT,
              T: DType): Igammac[oT] {.header:"../../ops/math/math.h", importcpp:"Igammac(*#, #, #, #)", constructor.}

proc igammac*[oT: oall](scope: Scope,
              a: oT,
              x: oT): Igammac[oT] =
  return iiigammac(scope,
                   a,
                   x,
                   oT[].oTF)

converter igammacToOut*[oT: oall](op: Igammac[oT]): oT {.inline.} = return op.output

type ImagT* = ocomplex64 | ocomplex128

type Imag*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Imag/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiimag[oT: oall](scope: Scope,
           input: ImagT,
           Tout: DType,
           explicitT: type(oT)): Imag[oT] {.header:"../../ops/math/math.h", importcpp:"Imag(*#, #, #)", constructor.}

proc imag*(scope: Scope,
           input: ImagT,
           Tout: type = ofloat): auto =
  return iiimag(scope,
                input,
                Tout[].oTF,
                Tout)

converter imagToOut*[oT: oall](op: Imag[oT]): oT {.inline.} = return op.output

type InTopKT* = oint32 | oint64

type InTopK* {.header:"../../ops/math/math.h", importcpp:"InTopK/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiinTopK(scope: Scope,
             predictions: ofloat,
             targets: InTopKT,
             k: int64): InTopK {.header:"../../ops/math/math.h", importcpp:"InTopK(*#, #, #, #)", constructor.}

proc inTopK*(scope: Scope,
             predictions: ofloat,
             targets: InTopKT,
             k: int64 = 0.int): InTopK =
  return iiinTopK(scope,
                  predictions,
                  targets,
                  k)

converter inTopKToOut*(op: InTopK): obool {.inline.} = return op.output

type InTopKV2T* = oint32 | oint64

type InTopKV2* {.header:"../../ops/math/math.h", importcpp:"InTopKV2/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiinTopKV2(scope: Scope,
               predictions: ofloat,
               targets: InTopKV2T,
               k: InTopKV2T): InTopKV2 {.header:"../../ops/math/math.h", importcpp:"InTopKV2(*#, #, #, #)", constructor.}

proc inTopKV2*(scope: Scope,
               predictions: ofloat,
               targets: InTopKV2T,
               k: InTopKV2T): InTopKV2 =
  return iiinTopKV2(scope,
                    predictions,
                    targets,
                    k)

converter inTopKV2ToOut*(op: InTopKV2): obool {.inline.} = return op.output


type InplaceAdd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"InplaceAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiinplaceAdd[oT: oall](scope: Scope,
                 x: oT,
                 i: oint32,
                 v: oT,
                 T: DType): InplaceAdd[oT] {.header:"../../ops/math/math.h", importcpp:"InplaceAdd(*#, #, #, #, #)", constructor.}

proc inplaceAdd*[oT: oall](scope: Scope,
                 x: oT,
                 i: oint32,
                 v: oT): InplaceAdd[oT] =
  return iiinplaceAdd(scope,
                      x,
                      i,
                      v,
                      oT[].oTF)

converter inplaceAddToOut*[oT: oall](op: InplaceAdd[oT]): oT {.inline.} = return op.output


type InplaceSub*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"InplaceSub/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiinplaceSub[oT: oall](scope: Scope,
                 x: oT,
                 i: oint32,
                 v: oT,
                 T: DType): InplaceSub[oT] {.header:"../../ops/math/math.h", importcpp:"InplaceSub(*#, #, #, #, #)", constructor.}

proc inplaceSub*[oT: oall](scope: Scope,
                 x: oT,
                 i: oint32,
                 v: oT): InplaceSub[oT] =
  return iiinplaceSub(scope,
                      x,
                      i,
                      v,
                      oT[].oTF)

converter inplaceSubToOut*[oT: oall](op: InplaceSub[oT]): oT {.inline.} = return op.output


type Inv*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Inv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiinv[oT: oall](scope: Scope,
          x: oT,
          T: DType): Inv[oT] {.header:"../../ops/math/math.h", importcpp:"Inv(*#, #, #)", constructor.}

proc inv*[oT: oall](scope: Scope,
          x: oT): Inv[oT] =
  return iiinv(scope,
               x,
               oT[].oTF)

converter invToOut*[oT: oall](op: Inv[oT]): oT {.inline.} = return op.output


type InvGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"InvGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiinvGrad[oT: oall](scope: Scope,
              y: oT,
              dy: oT,
              T: DType): InvGrad[oT] {.header:"../../ops/math/math.h", importcpp:"InvGrad(*#, #, #, #)", constructor.}

proc invGrad*[oT: oall](scope: Scope,
              y: oT,
              dy: oT): InvGrad[oT] =
  return iiinvGrad(scope,
                   y,
                   dy,
                   oT[].oTF)

converter invGradToOut*[oT: oall](op: InvGrad[oT]): oT {.inline.} = return op.output

type IsFiniteT* = obfloat16 | ohalf | ofloat | odouble

type IsFinite* {.header:"../../ops/math/math.h", importcpp:"IsFinite/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiisFinite(scope: Scope,
               x: IsFiniteT): IsFinite {.header:"../../ops/math/math.h", importcpp:"IsFinite(*#, #)", constructor.}

proc isFinite*(scope: Scope,
               x: IsFiniteT): IsFinite =
  return iiisFinite(scope,
                    x)

converter isFiniteToOut*(op: IsFinite): obool {.inline.} = return op.output

type IsInfT* = obfloat16 | ohalf | ofloat | odouble

type IsInf* {.header:"../../ops/math/math.h", importcpp:"IsInf/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiisInf(scope: Scope,
            x: IsInfT): IsInf {.header:"../../ops/math/math.h", importcpp:"IsInf(*#, #)", constructor.}

proc isInf*(scope: Scope,
            x: IsInfT): IsInf =
  return iiisInf(scope,
                 x)

converter isInfToOut*(op: IsInf): obool {.inline.} = return op.output

type IsNanT* = obfloat16 | ohalf | ofloat | odouble

type IsNan* {.header:"../../ops/math/math.h", importcpp:"IsNan/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiisNan(scope: Scope,
            x: IsNanT): IsNan {.header:"../../ops/math/math.h", importcpp:"IsNan(*#, #)", constructor.}

proc isNan*(scope: Scope,
            x: IsNanT): IsNan =
  return iiisNan(scope,
                 x)

converter isNanToOut*(op: IsNan): obool {.inline.} = return op.output

type LessT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type Less* {.header:"../../ops/math/math.h", importcpp:"Less/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iiless(scope: Scope,
           x: LessT,
           y: LessT): Less {.header:"../../ops/math/math.h", importcpp:"Less(*#, #, #)", constructor.}

proc less*(scope: Scope,
           x: LessT,
           y: LessT): Less =
  return iiless(scope,
                x,
                y)

converter lessToOut*(op: Less): obool {.inline.} = return op.output

type LessEqualT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type LessEqual* {.header:"../../ops/math/math.h", importcpp:"LessEqual/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iilessEqual(scope: Scope,
                x: LessEqualT,
                y: LessEqualT): LessEqual {.header:"../../ops/math/math.h", importcpp:"LessEqual(*#, #, #)", constructor.}

proc lessEqual*(scope: Scope,
                x: LessEqualT,
                y: LessEqualT): LessEqual =
  return iilessEqual(scope,
                     x,
                     y)

converter lessEqualToOut*(op: LessEqual): obool {.inline.} = return op.output


type Lgamma*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Lgamma/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilgamma[oT: oall](scope: Scope,
             x: oT,
             T: DType): Lgamma[oT] {.header:"../../ops/math/math.h", importcpp:"Lgamma(*#, #, #)", constructor.}

proc lgamma*[oT: oall](scope: Scope,
             x: oT): Lgamma[oT] =
  return iilgamma(scope,
                  x,
                  oT[].oTF)

converter lgammaToOut*[oT: oall](op: Lgamma[oT]): oT {.inline.} = return op.output

type LinSpaceTidx* = oint32 | oint64

type LinSpace*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"LinSpace/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilinSpace[oT: oall](scope: Scope,
               start: oT,
               stop: oT,
               num: LinSpaceTidx,
               T: DType): LinSpace[oT] {.header:"../../ops/math/math.h", importcpp:"LinSpace(*#, #, #, #, #)", constructor.}

proc linSpace*[oT: oall](scope: Scope,
               start: oT,
               stop: oT,
               num: LinSpaceTidx): LinSpace[oT] =
  return iilinSpace(scope,
                    start,
                    stop,
                    num,
                    oT[].oTF)

converter linSpaceToOut*[oT: oall](op: LinSpace[oT]): oT {.inline.} = return op.output


type Log*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Log/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilog[oT: oall](scope: Scope,
          x: oT,
          T: DType): Log[oT] {.header:"../../ops/math/math.h", importcpp:"Log(*#, #, #)", constructor.}

proc log*[oT: oall](scope: Scope,
          x: oT): Log[oT] =
  return iilog(scope,
               x,
               oT[].oTF)

converter logToOut*[oT: oall](op: Log[oT]): oT {.inline.} = return op.output


type Log1p*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Log1p/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilog1p[oT: oall](scope: Scope,
            x: oT,
            T: DType): Log1p[oT] {.header:"../../ops/math/math.h", importcpp:"Log1p(*#, #, #)", constructor.}

proc log1p*[oT: oall](scope: Scope,
            x: oT): Log1p[oT] =
  return iilog1p(scope,
                 x,
                 oT[].oTF)

converter log1pToOut*[oT: oall](op: Log1p[oT]): oT {.inline.} = return op.output


type LogMatrixDeterminant*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"LogMatrixDeterminant/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilogMatrixDeterminant[oT: oall](scope: Scope,
                           input: oT,
                           T: DType): LogMatrixDeterminant[oT] {.header:"../../ops/math/math.h", importcpp:"LogMatrixDeterminant(*#, #, #)", constructor.}

proc logMatrixDeterminant*[oT: oall](scope: Scope,
                           input: oT): LogMatrixDeterminant[oT] =
  return iilogMatrixDeterminant(scope,
                                input,
                                oT[].oTF)

converter logMatrixDeterminantToOut*[oT: oall](op: LogMatrixDeterminant[oT]): oT {.inline.} = return op.output


type LogicalAnd* {.header:"../../ops/math/math.h", importcpp:"LogicalAnd/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iilogicalAnd(scope: Scope,
                 x: obool,
                 y: obool): LogicalAnd {.header:"../../ops/math/math.h", importcpp:"LogicalAnd(*#, #, #)", constructor.}

proc logicalAnd*(scope: Scope,
                 x: obool,
                 y: obool): LogicalAnd =
  return iilogicalAnd(scope,
                      x,
                      y)

converter logicalAndToOut*(op: LogicalAnd): obool {.inline.} = return op.output


type LogicalNot* {.header:"../../ops/math/math.h", importcpp:"LogicalNot/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iilogicalNot(scope: Scope,
                 x: obool): LogicalNot {.header:"../../ops/math/math.h", importcpp:"LogicalNot(*#, #)", constructor.}

proc logicalNot*(scope: Scope,
                 x: obool): LogicalNot =
  return iilogicalNot(scope,
                      x)

converter logicalNotToOut*(op: LogicalNot): obool {.inline.} = return op.output


type LogicalOr* {.header:"../../ops/math/math.h", importcpp:"LogicalOr/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iilogicalOr(scope: Scope,
                x: obool,
                y: obool): LogicalOr {.header:"../../ops/math/math.h", importcpp:"LogicalOr(*#, #, #)", constructor.}

proc logicalOr*(scope: Scope,
                x: obool,
                y: obool): LogicalOr =
  return iilogicalOr(scope,
                     x,
                     y)

converter logicalOrToOut*(op: LogicalOr): obool {.inline.} = return op.output

type LowerBoundT* = oall

type LowerBound*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"LowerBound/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilowerBound[oT: oall](scope: Scope,
                 sorted_inputs: LowerBoundT,
                 values: LowerBoundT,
                 out_type: DType,
                 explicitT: type(oT)): LowerBound[oT] {.header:"../../ops/math/math.h", importcpp:"LowerBound(*#, #, #, #)", constructor.}

proc lowerBound*(scope: Scope,
                 sorted_inputs: LowerBoundT,
                 values: LowerBoundT,
                 out_type: type = oint32): auto =
  return iilowerBound(scope,
                      sorted_inputs,
                      values,
                      out_type[].oTF,
                      out_type)

converter lowerBoundToOut*[oT: oall](op: LowerBound[oT]): oT {.inline.} = return op.output


type Lu*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Lu/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilu[oT: oall](scope: Scope,
         input: oT,
         T: DType,
         output_idx_type: DType): Lu[oT] {.header:"../../ops/math/math.h", importcpp:"Lu(*#, #, #, #)", constructor.}

proc lu*[oT: oall](scope: Scope,
         input: oT,
         output_idx_type: type(oint32) | type(oint64) = oint32): Lu[oT] =
  return iilu(scope,
              input,
              oT[].oTF,
              oT[].oTF)

converter luToOut*[oT: oall](op: Lu[oT]): oT {.inline.} = return op.output


type MatMul*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatMul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatMul[oT: oall](scope: Scope,
             a: oT,
             b: oT,
             transpose_a: bool,
             transpose_b: bool,
             T: DType): MatMul[oT] {.header:"../../ops/math/math.h", importcpp:"MatMul(*#, #, #, #, #, #)", constructor.}

proc matMul*[oT: oall](scope: Scope,
             a: oT,
             b: oT,
             transpose_a: bool = false,
             transpose_b: bool = false): MatMul[oT] =
  return iimatMul(scope,
                  a,
                  b,
                  transpose_a,
                  transpose_b,
                  oT[].oTF)

converter matMulToOut*[oT: oall](op: MatMul[oT]): oT {.inline.} = return op.output

type MatrixBandPartTindex* = oint32 | oint64

type MatrixBandPart*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixBandPart/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixBandPart[oT: oall](scope: Scope,
                     input: oT,
                     num_lower: MatrixBandPartTindex,
                     num_upper: MatrixBandPartTindex,
                     T: DType): MatrixBandPart[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixBandPart(*#, #, #, #, #)", constructor.}

proc matrixBandPart*[oT: oall](scope: Scope,
                     input: oT,
                     num_lower: MatrixBandPartTindex,
                     num_upper: MatrixBandPartTindex): MatrixBandPart[oT] =
  return iimatrixBandPart(scope,
                          input,
                          num_lower,
                          num_upper,
                          oT[].oTF)

converter matrixBandPartToOut*[oT: oall](op: MatrixBandPart[oT]): oT {.inline.} = return op.output


type MatrixDeterminant*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixDeterminant/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixDeterminant[oT: oall](scope: Scope,
                        input: oT,
                        T: DType): MatrixDeterminant[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixDeterminant(*#, #, #)", constructor.}

proc matrixDeterminant*[oT: oall](scope: Scope,
                        input: oT): MatrixDeterminant[oT] =
  return iimatrixDeterminant(scope,
                             input,
                             oT[].oTF)

converter matrixDeterminantToOut*[oT: oall](op: MatrixDeterminant[oT]): oT {.inline.} = return op.output


type MatrixDiag*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixDiag/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixDiag[oT: oall](scope: Scope,
                 diagonal: oT,
                 T: DType): MatrixDiag[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixDiag(*#, #, #)", constructor.}

proc matrixDiag*[oT: oall](scope: Scope,
                 diagonal: oT): MatrixDiag[oT] =
  return iimatrixDiag(scope,
                      diagonal,
                      oT[].oTF)

converter matrixDiagToOut*[oT: oall](op: MatrixDiag[oT]): oT {.inline.} = return op.output


type MatrixDiagPart*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixDiagPart/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixDiagPart[oT: oall](scope: Scope,
                     input: oT,
                     T: DType): MatrixDiagPart[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixDiagPart(*#, #, #)", constructor.}

proc matrixDiagPart*[oT: oall](scope: Scope,
                     input: oT): MatrixDiagPart[oT] =
  return iimatrixDiagPart(scope,
                          input,
                          oT[].oTF)

converter matrixDiagPartToOut*[oT: oall](op: MatrixDiagPart[oT]): oT {.inline.} = return op.output


type MatrixExponential*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixExponential/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixExponential[oT: oall](scope: Scope,
                        input: oT,
                        T: DType): MatrixExponential[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixExponential(*#, #, #)", constructor.}

proc matrixExponential*[oT: oall](scope: Scope,
                        input: oT): MatrixExponential[oT] =
  return iimatrixExponential(scope,
                             input,
                             oT[].oTF)

converter matrixExponentialToOut*[oT: oall](op: MatrixExponential[oT]): oT {.inline.} = return op.output


type MatrixInverse*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixInverse/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixInverse[oT: oall](scope: Scope,
                    input: oT,
                    adjoint: bool,
                    T: DType): MatrixInverse[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixInverse(*#, #, #, #)", constructor.}

proc matrixInverse*[oT: oall](scope: Scope,
                    input: oT,
                    adjoint: bool = false): MatrixInverse[oT] =
  return iimatrixInverse(scope,
                         input,
                         adjoint,
                         oT[].oTF)

converter matrixInverseToOut*[oT: oall](op: MatrixInverse[oT]): oT {.inline.} = return op.output


type MatrixLogarithm*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixLogarithm/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixLogarithm[oT: oall](scope: Scope,
                      input: oT,
                      T: DType): MatrixLogarithm[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixLogarithm(*#, #, #)", constructor.}

proc matrixLogarithm*[oT: oall](scope: Scope,
                      input: oT): MatrixLogarithm[oT] =
  return iimatrixLogarithm(scope,
                           input,
                           oT[].oTF)

converter matrixLogarithmToOut*[oT: oall](op: MatrixLogarithm[oT]): oT {.inline.} = return op.output


type MatrixSetDiag*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixSetDiag/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixSetDiag[oT: oall](scope: Scope,
                    input: oT,
                    diagonal: oT,
                    T: DType): MatrixSetDiag[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixSetDiag(*#, #, #, #)", constructor.}

proc matrixSetDiag*[oT: oall](scope: Scope,
                    input: oT,
                    diagonal: oT): MatrixSetDiag[oT] =
  return iimatrixSetDiag(scope,
                         input,
                         diagonal,
                         oT[].oTF)

converter matrixSetDiagToOut*[oT: oall](op: MatrixSetDiag[oT]): oT {.inline.} = return op.output


type MatrixSolve*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixSolve/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixSolve[oT: oall](scope: Scope,
                  matrix: oT,
                  rhs: oT,
                  adjoint: bool,
                  T: DType): MatrixSolve[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixSolve(*#, #, #, #, #)", constructor.}

proc matrixSolve*[oT: oall](scope: Scope,
                  matrix: oT,
                  rhs: oT,
                  adjoint: bool = false): MatrixSolve[oT] =
  return iimatrixSolve(scope,
                       matrix,
                       rhs,
                       adjoint,
                       oT[].oTF)

converter matrixSolveToOut*[oT: oall](op: MatrixSolve[oT]): oT {.inline.} = return op.output


type MatrixSolveLs*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixSolveLs/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixSolveLs[oT: oall](scope: Scope,
                    matrix: oT,
                    rhs: oT,
                    l2_regularizer: odouble,
                    T: DType,
                    fast: bool): MatrixSolveLs[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixSolveLs(*#, #, #, #, #, #)", constructor.}

proc matrixSolveLs*[oT: oall](scope: Scope,
                    matrix: oT,
                    rhs: oT,
                    l2_regularizer: odouble,
                    fast: bool = true): MatrixSolveLs[oT] =
  return iimatrixSolveLs(scope,
                         matrix,
                         rhs,
                         l2_regularizer,
                         oT[].oTF,
                         fast)

converter matrixSolveLsToOut*[oT: oall](op: MatrixSolveLs[oT]): oT {.inline.} = return op.output


type MatrixSquareRoot*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixSquareRoot/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixSquareRoot[oT: oall](scope: Scope,
                       input: oT,
                       T: DType): MatrixSquareRoot[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixSquareRoot(*#, #, #)", constructor.}

proc matrixSquareRoot*[oT: oall](scope: Scope,
                       input: oT): MatrixSquareRoot[oT] =
  return iimatrixSquareRoot(scope,
                            input,
                            oT[].oTF)

converter matrixSquareRootToOut*[oT: oall](op: MatrixSquareRoot[oT]): oT {.inline.} = return op.output


type MatrixTriangularSolve*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"MatrixTriangularSolve/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimatrixTriangularSolve[oT: oall](scope: Scope,
                            matrix: oT,
                            rhs: oT,
                            lower: bool,
                            adjoint: bool,
                            T: DType): MatrixTriangularSolve[oT] {.header:"../../ops/math/math.h", importcpp:"MatrixTriangularSolve(*#, #, #, #, #, #)", constructor.}

proc matrixTriangularSolve*[oT: oall](scope: Scope,
                            matrix: oT,
                            rhs: oT,
                            lower: bool = true,
                            adjoint: bool = false): MatrixTriangularSolve[oT] =
  return iimatrixTriangularSolve(scope,
                                 matrix,
                                 rhs,
                                 lower,
                                 adjoint,
                                 oT[].oTF)

converter matrixTriangularSolveToOut*[oT: oall](op: MatrixTriangularSolve[oT]): oT {.inline.} = return op.output

type MaxTidx* = oint32 | oint64

type Max*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Max/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimax[oT: oall](scope: Scope,
          input: oT,
          reduction_indices: MaxTidx,
          keep_dims: bool,
          T: DType): Max[oT] {.header:"../../ops/math/math.h", importcpp:"Max(*#, #, #, #, #)", constructor.}

proc max*[oT: oall](scope: Scope,
          input: oT,
          reduction_indices: MaxTidx,
          keep_dims: bool = false): Max[oT] =
  return iimax(scope,
               input,
               reduction_indices,
               keep_dims,
               oT[].oTF)

converter maxToOut*[oT: oall](op: Max[oT]): oT {.inline.} = return op.output


type Maximum*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Maximum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimaximum[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              T: DType): Maximum[oT] {.header:"../../ops/math/math.h", importcpp:"Maximum(*#, #, #, #)", constructor.}

proc maximum*[oT: oall](scope: Scope,
              x: oT,
              y: oT): Maximum[oT] =
  return iimaximum(scope,
                   x,
                   y,
                   oT[].oTF)

converter maximumToOut*[oT: oall](op: Maximum[oT]): oT {.inline.} = return op.output

type MeanTidx* = oint32 | oint64

type Mean*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Mean/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimean[oT: oall](scope: Scope,
           input: oT,
           reduction_indices: MeanTidx,
           keep_dims: bool,
           T: DType): Mean[oT] {.header:"../../ops/math/math.h", importcpp:"Mean(*#, #, #, #, #)", constructor.}

proc mean*[oT: oall](scope: Scope,
           input: oT,
           reduction_indices: MeanTidx,
           keep_dims: bool = false): Mean[oT] =
  return iimean(scope,
                input,
                reduction_indices,
                keep_dims,
                oT[].oTF)

converter meanToOut*[oT: oall](op: Mean[oT]): oT {.inline.} = return op.output


type Mfcc* {.header:"../../ops/math/math.h", importcpp:"Mfcc/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iimfcc(scope: Scope,
           spectrogram: ofloat,
           sample_rate: oint32,
           upper_frequency_limit: float32,
           lower_frequency_limit: float32,
           filterbank_channel_count: int64,
           dct_coefficient_count: int64): Mfcc {.header:"../../ops/math/math.h", importcpp:"Mfcc(*#, #, #, #, #, #, #)", constructor.}

proc mfcc*(scope: Scope,
           spectrogram: ofloat,
           sample_rate: oint32,
           upper_frequency_limit: float32 = 4000.0.float32,
           lower_frequency_limit: float32 = 20.0.float32,
           filterbank_channel_count: int64 = 40.int,
           dct_coefficient_count: int64 = 13.int): Mfcc =
  return iimfcc(scope,
                spectrogram,
                sample_rate,
                upper_frequency_limit,
                lower_frequency_limit,
                filterbank_channel_count,
                dct_coefficient_count)

converter mfccToOut*(op: Mfcc): ofloat {.inline.} = return op.output

type MinTidx* = oint32 | oint64

type Min*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Min/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimin[oT: oall](scope: Scope,
          input: oT,
          reduction_indices: MinTidx,
          keep_dims: bool,
          T: DType): Min[oT] {.header:"../../ops/math/math.h", importcpp:"Min(*#, #, #, #, #)", constructor.}

proc min*[oT: oall](scope: Scope,
          input: oT,
          reduction_indices: MinTidx,
          keep_dims: bool = false): Min[oT] =
  return iimin(scope,
               input,
               reduction_indices,
               keep_dims,
               oT[].oTF)

converter minToOut*[oT: oall](op: Min[oT]): oT {.inline.} = return op.output


type Minimum*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Minimum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiminimum[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              T: DType): Minimum[oT] {.header:"../../ops/math/math.h", importcpp:"Minimum(*#, #, #, #)", constructor.}

proc minimum*[oT: oall](scope: Scope,
              x: oT,
              y: oT): Minimum[oT] =
  return iiminimum(scope,
                   x,
                   y,
                   oT[].oTF)

converter minimumToOut*[oT: oall](op: Minimum[oT]): oT {.inline.} = return op.output


type Mod*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Mod/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iinmod[oT: oall](scope: Scope,
           x: oT,
           y: oT,
           T: DType): Mod[oT] {.header:"../../ops/math/math.h", importcpp:"Mod(*#, #, #, #)", constructor.}

proc nmod*[oT: oall](scope: Scope,
           x: oT,
           y: oT): Mod[oT] =
  return iinmod(scope,
                x,
                y,
                oT[].oTF)

converter nmodToOut*[oT: oall](op: Mod[oT]): oT {.inline.} = return op.output


type Mul*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Mul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iimul[oT: oall](scope: Scope,
          x: oT,
          y: oT,
          T: DType): Mul[oT] {.header:"../../ops/math/math.h", importcpp:"Mul(*#, #, #, #)", constructor.}

proc mul*[oT: oall](scope: Scope,
          x: oT,
          y: oT): Mul[oT] =
  return iimul(scope,
               x,
               y,
               oT[].oTF)

converter mulToOut*[oT: oall](op: Mul[oT]): oT {.inline.} = return op.output


type Neg*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Neg/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iineg[oT: oall](scope: Scope,
          x: oT,
          T: DType): Neg[oT] {.header:"../../ops/math/math.h", importcpp:"Neg(*#, #, #)", constructor.}

proc neg*[oT: oall](scope: Scope,
          x: oT): Neg[oT] =
  return iineg(scope,
               x,
               oT[].oTF)

converter negToOut*[oT: oall](op: Neg[oT]): oT {.inline.} = return op.output

type NotEqualT* = obfloat16 | ohalf | ofloat | odouble | ouint8 | oint8 | oint16 | oint32 | oint64 | ocomplex64 | oquint8 | oqint8 | oqint32 | ostring | obool | ocomplex128

type NotEqual* {.header:"../../ops/math/math.h", importcpp:"NotEqual/*'0*/".} = object
  operation*: Operation[obool]
  output*: obool

proc iinotEqual(scope: Scope,
               x: NotEqualT,
               y: NotEqualT): NotEqual {.header:"../../ops/math/math.h", importcpp:"NotEqual(*#, #, #)", constructor.}

proc notEqual*(scope: Scope,
               x: NotEqualT,
               y: NotEqualT): NotEqual =
  return iinotEqual(scope,
                    x,
                    y)

converter notEqualToOut*(op: NotEqual): obool {.inline.} = return op.output

type PadV2Tpaddings* = oint32 | oint64

type PadV2*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"PadV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iipadV2[oT: oall](scope: Scope,
            input: oT,
            paddings: PadV2Tpaddings,
            constant_values: oT,
            T: DType): PadV2[oT] {.header:"../../ops/math/math.h", importcpp:"PadV2(*#, #, #, #, #)", constructor.}

proc padV2*[oT: oall](scope: Scope,
            input: oT,
            paddings: PadV2Tpaddings,
            constant_values: oT): PadV2[oT] =
  return iipadV2(scope,
                 input,
                 paddings,
                 constant_values,
                 oT[].oTF)

converter padV2ToOut*[oT: oall](op: PadV2[oT]): oT {.inline.} = return op.output


type Polygamma*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Polygamma/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iipolygamma[oT: oall](scope: Scope,
                a: oT,
                x: oT,
                T: DType): Polygamma[oT] {.header:"../../ops/math/math.h", importcpp:"Polygamma(*#, #, #, #)", constructor.}

proc polygamma*[oT: oall](scope: Scope,
                a: oT,
                x: oT): Polygamma[oT] =
  return iipolygamma(scope,
                     a,
                     x,
                     oT[].oTF)

converter polygammaToOut*[oT: oall](op: Polygamma[oT]): oT {.inline.} = return op.output


type Pow*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Pow/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iipow[oT: oall](scope: Scope,
          x: oT,
          y: oT,
          T: DType): Pow[oT] {.header:"../../ops/math/math.h", importcpp:"Pow(*#, #, #, #)", constructor.}

proc pow*[oT: oall](scope: Scope,
          x: oT,
          y: oT): Pow[oT] =
  return iipow(scope,
               x,
               y,
               oT[].oTF)

converter powToOut*[oT: oall](op: Pow[oT]): oT {.inline.} = return op.output

type ProdTidx* = oint32 | oint64

type Prod*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Prod/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiprod[oT: oall](scope: Scope,
           input: oT,
           reduction_indices: ProdTidx,
           keep_dims: bool,
           T: DType): Prod[oT] {.header:"../../ops/math/math.h", importcpp:"Prod(*#, #, #, #, #)", constructor.}

proc prod*[oT: oall](scope: Scope,
           input: oT,
           reduction_indices: ProdTidx,
           keep_dims: bool = false): Prod[oT] =
  return iiprod(scope,
                input,
                reduction_indices,
                keep_dims,
                oT[].oTF)

converter prodToOut*[oT: oall](op: Prod[oT]): oT {.inline.} = return op.output


type Qr*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Qr/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiqr[oT: oall](scope: Scope,
         input: oT,
         full_matrices: bool,
         T: DType): Qr[oT] {.header:"../../ops/math/math.h", importcpp:"Qr(*#, #, #, #)", constructor.}

proc qr*[oT: oall](scope: Scope,
         input: oT,
         full_matrices: bool = false): Qr[oT] =
  return iiqr(scope,
              input,
              full_matrices,
              oT[].oTF)

converter qrToOut*[oT: oall](op: Qr[oT]): oT {.inline.} = return op.output


type QuantizeV2*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"QuantizeV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizeV2[oT: oall](scope: Scope,
                 input: ofloat,
                 min_range: ofloat,
                 max_range: ofloat,
                 T: DType,
                 mode: cstring,
                 round_mode: cstring,
                 explicitT: type(oT)): QuantizeV2[oT] {.header:"../../ops/math/math.h", importcpp:"QuantizeV2(*#, #, #, #, #, tensorflow::string(#), tensorflow::string(#))", constructor.}

proc quantizeV2*(scope: Scope,
                 input: ofloat,
                 min_range: ofloat,
                 max_range: ofloat,
                 T: type = oinvalid,
                 mode: cstring = "MIN_COMBINED",
                 round_mode: cstring = "HALF_AWAY_FROM_ZERO"): auto =
  return iiquantizeV2(scope,
                      input,
                      min_range,
                      max_range,
                      T[].oTF,
                      mode,
                      round_mode,
                      T)

converter quantizeV2ToOut*[oT: oall](op: QuantizeV2[oT]): oT {.inline.} = return op.output

type QuantizedAddT1* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16
type QuantizedAddT2* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedAdd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"QuantizedAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedAdd[oT: oall](scope: Scope,
                   x: QuantizedAddT1,
                   y: QuantizedAddT2,
                   min_x: ofloat,
                   max_x: ofloat,
                   min_y: ofloat,
                   max_y: ofloat,
                   Toutput: DType,
                   explicitT: type(oT)): QuantizedAdd[oT] {.header:"../../ops/math/math.h", importcpp:"QuantizedAdd(*#, #, #, #, #, #, #, #)", constructor.}

proc quantizedAdd*(scope: Scope,
                   x: QuantizedAddT1,
                   y: QuantizedAddT2,
                   min_x: ofloat,
                   max_x: ofloat,
                   min_y: ofloat,
                   max_y: ofloat,
                   Toutput: type = oqint32): auto =
  return iiquantizedAdd(scope,
                        x,
                        y,
                        min_x,
                        max_x,
                        min_y,
                        max_y,
                        Toutput[].oTF,
                        Toutput)

converter quantizedAddToOut*[oT: oall](op: QuantizedAdd[oT]): oT {.inline.} = return op.output


type QuantizedInstanceNorm*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"QuantizedInstanceNorm/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedInstanceNorm[oT: oall](scope: Scope,
                            x: oT,
                            x_min: ofloat,
                            x_max: ofloat,
                            T: DType,
                            output_range_given: bool,
                            given_y_min: float32,
                            given_y_max: float32,
                            variance_epsilon: float32,
                            min_separation: float32): QuantizedInstanceNorm[oT] {.header:"../../ops/math/math.h", importcpp:"QuantizedInstanceNorm(*#, #, #, #, #, #, #, #, #, #)", constructor.}

proc quantizedInstanceNorm*[oT: oall](scope: Scope,
                            x: oT,
                            x_min: ofloat,
                            x_max: ofloat,
                            output_range_given: bool = false,
                            given_y_min: float32 = 0.0.float32,
                            given_y_max: float32 = 0.0.float32,
                            variance_epsilon: float32 = 9.999999747378752e-06.float32,
                            min_separation: float32 = 0.001000000047497451.float32): QuantizedInstanceNorm[oT] =
  return iiquantizedInstanceNorm(scope,
                                 x,
                                 x_min,
                                 x_max,
                                 oT[].oTF,
                                 output_range_given,
                                 given_y_min,
                                 given_y_max,
                                 variance_epsilon,
                                 min_separation)

converter quantizedInstanceNormToOut*[oT: oall](op: QuantizedInstanceNorm[oT]): oT {.inline.} = return op.output

type QuantizedMatMulT1* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16
type QuantizedMatMulT2* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedMatMul*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"QuantizedMatMul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedMatMul[oT: oall](scope: Scope,
                      a: QuantizedMatMulT1,
                      b: QuantizedMatMulT2,
                      min_a: ofloat,
                      max_a: ofloat,
                      min_b: ofloat,
                      max_b: ofloat,
                      Tactivation: DType,
                      transpose_b: bool,
                      Toutput: DType,
                      transpose_a: bool,
                      explicitT: type(oT)): QuantizedMatMul[oT] {.header:"../../ops/math/math.h", importcpp:"QuantizedMatMul(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc quantizedMatMul*(scope: Scope,
                      a: QuantizedMatMulT1,
                      b: QuantizedMatMulT2,
                      min_a: ofloat,
                      max_a: ofloat,
                      min_b: ofloat,
                      max_b: ofloat,
                      Tactivation: type(oqint8) | type(oquint8) | type(oqint32) | type(oqint16) | type(oquint16) = oquint8,
                      transpose_b: bool = false,
                      Toutput: type = oqint32,
                      transpose_a: bool = false): auto =
  return iiquantizedMatMul(scope,
                           a,
                           b,
                           min_a,
                           max_a,
                           min_b,
                           max_b,
                           Tactivation[].oTF,
                           transpose_b,
                           oT[].oTF,
                           transpose_a,
                           Toutput)

converter quantizedMatMulToOut*[oT: oall](op: QuantizedMatMul[oT]): oT {.inline.} = return op.output

type QuantizedMulT1* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16
type QuantizedMulT2* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type QuantizedMul*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"QuantizedMul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiquantizedMul[oT: oall](scope: Scope,
                   x: QuantizedMulT1,
                   y: QuantizedMulT2,
                   min_x: ofloat,
                   max_x: ofloat,
                   min_y: ofloat,
                   max_y: ofloat,
                   Toutput: DType,
                   explicitT: type(oT)): QuantizedMul[oT] {.header:"../../ops/math/math.h", importcpp:"QuantizedMul(*#, #, #, #, #, #, #, #)", constructor.}

proc quantizedMul*(scope: Scope,
                   x: QuantizedMulT1,
                   y: QuantizedMulT2,
                   min_x: ofloat,
                   max_x: ofloat,
                   min_y: ofloat,
                   max_y: ofloat,
                   Toutput: type = oqint32): auto =
  return iiquantizedMul(scope,
                        x,
                        y,
                        min_x,
                        max_x,
                        min_y,
                        max_y,
                        Toutput[].oTF,
                        Toutput)

converter quantizedMulToOut*[oT: oall](op: QuantizedMul[oT]): oT {.inline.} = return op.output


type RFFT* {.header:"../../ops/math/math.h", importcpp:"RFFT/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iirFFT(scope: Scope,
           input: ofloat,
           fft_length: oint32): RFFT {.header:"../../ops/math/math.h", importcpp:"RFFT(*#, #, #)", constructor.}

proc rFFT*(scope: Scope,
           input: ofloat,
           fft_length: oint32): RFFT =
  return iirFFT(scope,
                input,
                fft_length)

converter rFFTToOut*(op: RFFT): ocomplex64 {.inline.} = return op.output


type RFFT2D* {.header:"../../ops/math/math.h", importcpp:"RFFT2D/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iirFFT2D(scope: Scope,
             input: ofloat,
             fft_length: oint32): RFFT2D {.header:"../../ops/math/math.h", importcpp:"RFFT2D(*#, #, #)", constructor.}

proc rFFT2D*(scope: Scope,
             input: ofloat,
             fft_length: oint32): RFFT2D =
  return iirFFT2D(scope,
                  input,
                  fft_length)

converter rFFT2DToOut*(op: RFFT2D): ocomplex64 {.inline.} = return op.output


type RFFT3D* {.header:"../../ops/math/math.h", importcpp:"RFFT3D/*'0*/".} = object
  operation*: Operation[ocomplex64]
  output*: ocomplex64

proc iirFFT3D(scope: Scope,
             input: ofloat,
             fft_length: oint32): RFFT3D {.header:"../../ops/math/math.h", importcpp:"RFFT3D(*#, #, #)", constructor.}

proc rFFT3D*(scope: Scope,
             input: ofloat,
             fft_length: oint32): RFFT3D =
  return iirFFT3D(scope,
                  input,
                  fft_length)

converter rFFT3DToOut*(op: RFFT3D): ocomplex64 {.inline.} = return op.output

type RealT* = ocomplex64 | ocomplex128

type Real*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Real/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireal[oT: oall](scope: Scope,
           input: RealT,
           Tout: DType,
           explicitT: type(oT)): Real[oT] {.header:"../../ops/math/math.h", importcpp:"Real(*#, #, #)", constructor.}

proc real*(scope: Scope,
           input: RealT,
           Tout: type = ofloat): auto =
  return iireal(scope,
                input,
                Tout[].oTF,
                Tout)

converter realToOut*[oT: oall](op: Real[oT]): oT {.inline.} = return op.output


type Reciprocal*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Reciprocal/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireciprocal[oT: oall](scope: Scope,
                 x: oT,
                 T: DType): Reciprocal[oT] {.header:"../../ops/math/math.h", importcpp:"Reciprocal(*#, #, #)", constructor.}

proc reciprocal*[oT: oall](scope: Scope,
                 x: oT): Reciprocal[oT] =
  return iireciprocal(scope,
                      x,
                      oT[].oTF)

converter reciprocalToOut*[oT: oall](op: Reciprocal[oT]): oT {.inline.} = return op.output


type ReciprocalGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ReciprocalGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireciprocalGrad[oT: oall](scope: Scope,
                     y: oT,
                     dy: oT,
                     T: DType): ReciprocalGrad[oT] {.header:"../../ops/math/math.h", importcpp:"ReciprocalGrad(*#, #, #, #)", constructor.}

proc reciprocalGrad*[oT: oall](scope: Scope,
                     y: oT,
                     dy: oT): ReciprocalGrad[oT] =
  return iireciprocalGrad(scope,
                          y,
                          dy,
                          oT[].oTF)

converter reciprocalGradToOut*[oT: oall](op: ReciprocalGrad[oT]): oT {.inline.} = return op.output


type RefIdentity*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"RefIdentity/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirefIdentity[oT: oall](scope: Scope,
                  input: oT,
                  T: DType): RefIdentity[oT] {.header:"../../ops/math/math.h", importcpp:"RefIdentity(*#, #, #)", constructor.}

proc refIdentity*[oT: oall](scope: Scope,
                  input: oT): RefIdentity[oT] =
  return iirefIdentity(scope,
                       input,
                       oT[].oTF)

converter refIdentityToOut*[oT: oall](op: RefIdentity[oT]): oT {.inline.} = return op.output

type RequantizationRangeTinput* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type RequantizationRange* {.header:"../../ops/math/math.h", importcpp:"RequantizationRange/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iirequantizationRange(scope: Scope,
                          input: RequantizationRangeTinput,
                          input_min: ofloat,
                          input_max: ofloat): RequantizationRange {.header:"../../ops/math/math.h", importcpp:"RequantizationRange(*#, #, #, #)", constructor.}

proc requantizationRange*(scope: Scope,
                          input: RequantizationRangeTinput,
                          input_min: ofloat,
                          input_max: ofloat): RequantizationRange =
  return iirequantizationRange(scope,
                               input,
                               input_min,
                               input_max)

converter requantizationRangeToOut*(op: RequantizationRange): ofloat {.inline.} = return op.output

type RequantizeTinput* = oqint8 | oquint8 | oqint32 | oqint16 | oquint16

type Requantize*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Requantize/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirequantize[oT: oall](scope: Scope,
                 input: RequantizeTinput,
                 input_min: ofloat,
                 input_max: ofloat,
                 requested_output_min: ofloat,
                 requested_output_max: ofloat,
                 out_type: DType,
                 explicitT: type(oT)): Requantize[oT] {.header:"../../ops/math/math.h", importcpp:"Requantize(*#, #, #, #, #, #, #)", constructor.}

proc requantize*(scope: Scope,
                 input: RequantizeTinput,
                 input_min: ofloat,
                 input_max: ofloat,
                 requested_output_min: ofloat,
                 requested_output_max: ofloat,
                 out_type: type = oinvalid): auto =
  return iirequantize(scope,
                      input,
                      input_min,
                      input_max,
                      requested_output_min,
                      requested_output_max,
                      out_type[].oTF,
                      out_type)

converter requantizeToOut*[oT: oall](op: Requantize[oT]): oT {.inline.} = return op.output


type ResourceCountUpTo*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ResourceCountUpTo/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiresourceCountUpTo[oT: oall](scope: Scope,
                        resource: oresource,
                        limit: int64,
                        T: DType,
                        explicitT: type(oT)): ResourceCountUpTo[oT] {.header:"../../ops/math/math.h", importcpp:"ResourceCountUpTo(*#, #, #, #)", constructor.}

proc resourceCountUpTo*(scope: Scope,
                        resource: oresource,
                        limit: int64 = 0.int,
                        T: type = oinvalid): auto =
  return iiresourceCountUpTo(scope,
                             resource,
                             limit,
                             T[].oTF,
                             T)

converter resourceCountUpToToOut*[oT: oall](op: ResourceCountUpTo[oT]): oT {.inline.} = return op.output

type ResourceScatterAdddtype* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceScatterAddTindices* = oint32 | oint64

type ResourceScatterAdd*{.header:"../../ops/math/math.h", importcpp:"ResourceScatterAdd/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterAdd(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterAddTindices,
                         updates: ResourceScatterAdddtype): ResourceScatterAdd {.header:"../../ops/math/math.h", importcpp:"ResourceScatterAdd(*#, #, #, #)", constructor.}

proc resourceScatterAdd*(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterAddTindices,
                         updates: ResourceScatterAdddtype): ResourceScatterAdd =
  return iiresourceScatterAdd(scope,
                              resource,
                              indices,
                              updates)

type ResourceScatterDivdtype* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceScatterDivTindices* = oint32 | oint64

type ResourceScatterDiv*{.header:"../../ops/math/math.h", importcpp:"ResourceScatterDiv/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterDiv(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterDivTindices,
                         updates: ResourceScatterDivdtype): ResourceScatterDiv {.header:"../../ops/math/math.h", importcpp:"ResourceScatterDiv(*#, #, #, #)", constructor.}

proc resourceScatterDiv*(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterDivTindices,
                         updates: ResourceScatterDivdtype): ResourceScatterDiv =
  return iiresourceScatterDiv(scope,
                              resource,
                              indices,
                              updates)

type ResourceScatterMuldtype* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceScatterMulTindices* = oint32 | oint64

type ResourceScatterMul*{.header:"../../ops/math/math.h", importcpp:"ResourceScatterMul/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterMul(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterMulTindices,
                         updates: ResourceScatterMuldtype): ResourceScatterMul {.header:"../../ops/math/math.h", importcpp:"ResourceScatterMul(*#, #, #, #)", constructor.}

proc resourceScatterMul*(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterMulTindices,
                         updates: ResourceScatterMuldtype): ResourceScatterMul =
  return iiresourceScatterMul(scope,
                              resource,
                              indices,
                              updates)

type ResourceScatterNdAddT* = oall
type ResourceScatterNdAddTindices* = oint32 | oint64

type ResourceScatterNdAdd*{.header:"../../ops/math/math.h", importcpp:"ResourceScatterNdAdd/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterNdAdd(scope: Scope,
                           nref: oresource,
                           indices: ResourceScatterNdAddTindices,
                           updates: ResourceScatterNdAddT,
                           use_locking: bool): ResourceScatterNdAdd {.header:"../../ops/math/math.h", importcpp:"ResourceScatterNdAdd(*#, #, #, #, #)", constructor.}

proc resourceScatterNdAdd*(scope: Scope,
                           nref: oresource,
                           indices: ResourceScatterNdAddTindices,
                           updates: ResourceScatterNdAddT,
                           use_locking: bool = true): ResourceScatterNdAdd =
  return iiresourceScatterNdAdd(scope,
                                nref,
                                indices,
                                updates,
                                use_locking)

type ResourceScatterSubdtype* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type ResourceScatterSubTindices* = oint32 | oint64

type ResourceScatterSub*{.header:"../../ops/math/math.h", importcpp:"ResourceScatterSub/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iiresourceScatterSub(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterSubTindices,
                         updates: ResourceScatterSubdtype): ResourceScatterSub {.header:"../../ops/math/math.h", importcpp:"ResourceScatterSub(*#, #, #, #)", constructor.}

proc resourceScatterSub*(scope: Scope,
                         resource: oresource,
                         indices: ResourceScatterSubTindices,
                         updates: ResourceScatterSubdtype): ResourceScatterSub =
  return iiresourceScatterSub(scope,
                              resource,
                              indices,
                              updates)


type Rint*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Rint/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirint[oT: oall](scope: Scope,
           x: oT,
           T: DType): Rint[oT] {.header:"../../ops/math/math.h", importcpp:"Rint(*#, #, #)", constructor.}

proc rint*[oT: oall](scope: Scope,
           x: oT): Rint[oT] =
  return iirint(scope,
                x,
                oT[].oTF)

converter rintToOut*[oT: oall](op: Rint[oT]): oT {.inline.} = return op.output


type Round*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Round/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiround[oT: oall](scope: Scope,
            x: oT,
            T: DType): Round[oT] {.header:"../../ops/math/math.h", importcpp:"Round(*#, #, #)", constructor.}

proc round*[oT: oall](scope: Scope,
            x: oT): Round[oT] =
  return iiround(scope,
                 x,
                 oT[].oTF)

converter roundToOut*[oT: oall](op: Round[oT]): oT {.inline.} = return op.output


type Rsqrt*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Rsqrt/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirsqrt[oT: oall](scope: Scope,
            x: oT,
            T: DType): Rsqrt[oT] {.header:"../../ops/math/math.h", importcpp:"Rsqrt(*#, #, #)", constructor.}

proc rsqrt*[oT: oall](scope: Scope,
            x: oT): Rsqrt[oT] =
  return iirsqrt(scope,
                 x,
                 oT[].oTF)

converter rsqrtToOut*[oT: oall](op: Rsqrt[oT]): oT {.inline.} = return op.output


type RsqrtGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"RsqrtGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirsqrtGrad[oT: oall](scope: Scope,
                y: oT,
                dy: oT,
                T: DType): RsqrtGrad[oT] {.header:"../../ops/math/math.h", importcpp:"RsqrtGrad(*#, #, #, #)", constructor.}

proc rsqrtGrad*[oT: oall](scope: Scope,
                y: oT,
                dy: oT): RsqrtGrad[oT] =
  return iirsqrtGrad(scope,
                     y,
                     dy,
                     oT[].oTF)

converter rsqrtGradToOut*[oT: oall](op: RsqrtGrad[oT]): oT {.inline.} = return op.output

type ScatterAddTindices* = oint32 | oint64

type ScatterAdd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ScatterAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterAdd[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterAddTindices,
                 updates: oT,
                 T: DType,
                 use_locking: bool): ScatterAdd[oT] {.header:"../../ops/math/math.h", importcpp:"ScatterAdd(*#, #, #, #, #, #)", constructor.}

proc scatterAdd*[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterAddTindices,
                 updates: oT,
                 use_locking: bool = false): ScatterAdd[oT] =
  return iiscatterAdd(scope,
                      nref,
                      indices,
                      updates,
                      oT[].oTF,
                      use_locking)

converter scatterAddToOut*[oT: oall](op: ScatterAdd[oT]): oT {.inline.} = return op.output

type ScatterDivTindices* = oint32 | oint64

type ScatterDiv*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ScatterDiv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterDiv[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterDivTindices,
                 updates: oT,
                 T: DType,
                 use_locking: bool): ScatterDiv[oT] {.header:"../../ops/math/math.h", importcpp:"ScatterDiv(*#, #, #, #, #, #)", constructor.}

proc scatterDiv*[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterDivTindices,
                 updates: oT,
                 use_locking: bool = false): ScatterDiv[oT] =
  return iiscatterDiv(scope,
                      nref,
                      indices,
                      updates,
                      oT[].oTF,
                      use_locking)

converter scatterDivToOut*[oT: oall](op: ScatterDiv[oT]): oT {.inline.} = return op.output

type ScatterMaxTindices* = oint32 | oint64

type ScatterMax*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ScatterMax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterMax[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterMaxTindices,
                 updates: oT,
                 T: DType,
                 use_locking: bool): ScatterMax[oT] {.header:"../../ops/math/math.h", importcpp:"ScatterMax(*#, #, #, #, #, #)", constructor.}

proc scatterMax*[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterMaxTindices,
                 updates: oT,
                 use_locking: bool = false): ScatterMax[oT] =
  return iiscatterMax(scope,
                      nref,
                      indices,
                      updates,
                      oT[].oTF,
                      use_locking)

converter scatterMaxToOut*[oT: oall](op: ScatterMax[oT]): oT {.inline.} = return op.output

type ScatterMinTindices* = oint32 | oint64

type ScatterMin*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ScatterMin/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterMin[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterMinTindices,
                 updates: oT,
                 T: DType,
                 use_locking: bool): ScatterMin[oT] {.header:"../../ops/math/math.h", importcpp:"ScatterMin(*#, #, #, #, #, #)", constructor.}

proc scatterMin*[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterMinTindices,
                 updates: oT,
                 use_locking: bool = false): ScatterMin[oT] =
  return iiscatterMin(scope,
                      nref,
                      indices,
                      updates,
                      oT[].oTF,
                      use_locking)

converter scatterMinToOut*[oT: oall](op: ScatterMin[oT]): oT {.inline.} = return op.output

type ScatterMulTindices* = oint32 | oint64

type ScatterMul*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ScatterMul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterMul[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterMulTindices,
                 updates: oT,
                 T: DType,
                 use_locking: bool): ScatterMul[oT] {.header:"../../ops/math/math.h", importcpp:"ScatterMul(*#, #, #, #, #, #)", constructor.}

proc scatterMul*[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterMulTindices,
                 updates: oT,
                 use_locking: bool = false): ScatterMul[oT] =
  return iiscatterMul(scope,
                      nref,
                      indices,
                      updates,
                      oT[].oTF,
                      use_locking)

converter scatterMulToOut*[oT: oall](op: ScatterMul[oT]): oT {.inline.} = return op.output

type ScatterNdAddTindices* = oint32 | oint64

type ScatterNdAdd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ScatterNdAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterNdAdd[oT: oall](scope: Scope,
                   nref: oT,
                   indices: ScatterNdAddTindices,
                   updates: oT,
                   T: DType,
                   use_locking: bool): ScatterNdAdd[oT] {.header:"../../ops/math/math.h", importcpp:"ScatterNdAdd(*#, #, #, #, #, #)", constructor.}

proc scatterNdAdd*[oT: oall](scope: Scope,
                   nref: oT,
                   indices: ScatterNdAddTindices,
                   updates: oT,
                   use_locking: bool = false): ScatterNdAdd[oT] =
  return iiscatterNdAdd(scope,
                        nref,
                        indices,
                        updates,
                        oT[].oTF,
                        use_locking)

converter scatterNdAddToOut*[oT: oall](op: ScatterNdAdd[oT]): oT {.inline.} = return op.output

type ScatterNdNonAliasingAddTindices* = oint32 | oint64

type ScatterNdNonAliasingAdd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ScatterNdNonAliasingAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterNdNonAliasingAdd[oT: oall](scope: Scope,
                              input: oT,
                              indices: ScatterNdNonAliasingAddTindices,
                              updates: oT,
                              T: DType): ScatterNdNonAliasingAdd[oT] {.header:"../../ops/math/math.h", importcpp:"ScatterNdNonAliasingAdd(*#, #, #, #, #)", constructor.}

proc scatterNdNonAliasingAdd*[oT: oall](scope: Scope,
                              input: oT,
                              indices: ScatterNdNonAliasingAddTindices,
                              updates: oT): ScatterNdNonAliasingAdd[oT] =
  return iiscatterNdNonAliasingAdd(scope,
                                   input,
                                   indices,
                                   updates,
                                   oT[].oTF)

converter scatterNdNonAliasingAddToOut*[oT: oall](op: ScatterNdNonAliasingAdd[oT]): oT {.inline.} = return op.output

type ScatterSubTindices* = oint32 | oint64

type ScatterSub*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"ScatterSub/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterSub[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterSubTindices,
                 updates: oT,
                 T: DType,
                 use_locking: bool): ScatterSub[oT] {.header:"../../ops/math/math.h", importcpp:"ScatterSub(*#, #, #, #, #, #)", constructor.}

proc scatterSub*[oT: oall](scope: Scope,
                 nref: oT,
                 indices: ScatterSubTindices,
                 updates: oT,
                 use_locking: bool = false): ScatterSub[oT] =
  return iiscatterSub(scope,
                      nref,
                      indices,
                      updates,
                      oT[].oTF,
                      use_locking)

converter scatterSubToOut*[oT: oall](op: ScatterSub[oT]): oT {.inline.} = return op.output

type SegmentMaxTindices* = oint32 | oint64

type SegmentMax*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SegmentMax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisegmentMax[oT: oall](scope: Scope,
                 data: oT,
                 segment_ids: SegmentMaxTindices,
                 T: DType): SegmentMax[oT] {.header:"../../ops/math/math.h", importcpp:"SegmentMax(*#, #, #, #)", constructor.}

proc segmentMax*[oT: oall](scope: Scope,
                 data: oT,
                 segment_ids: SegmentMaxTindices): SegmentMax[oT] =
  return iisegmentMax(scope,
                      data,
                      segment_ids,
                      oT[].oTF)

converter segmentMaxToOut*[oT: oall](op: SegmentMax[oT]): oT {.inline.} = return op.output

type SegmentMeanTindices* = oint32 | oint64

type SegmentMean*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SegmentMean/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisegmentMean[oT: oall](scope: Scope,
                  data: oT,
                  segment_ids: SegmentMeanTindices,
                  T: DType): SegmentMean[oT] {.header:"../../ops/math/math.h", importcpp:"SegmentMean(*#, #, #, #)", constructor.}

proc segmentMean*[oT: oall](scope: Scope,
                  data: oT,
                  segment_ids: SegmentMeanTindices): SegmentMean[oT] =
  return iisegmentMean(scope,
                       data,
                       segment_ids,
                       oT[].oTF)

converter segmentMeanToOut*[oT: oall](op: SegmentMean[oT]): oT {.inline.} = return op.output

type SegmentMinTindices* = oint32 | oint64

type SegmentMin*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SegmentMin/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisegmentMin[oT: oall](scope: Scope,
                 data: oT,
                 segment_ids: SegmentMinTindices,
                 T: DType): SegmentMin[oT] {.header:"../../ops/math/math.h", importcpp:"SegmentMin(*#, #, #, #)", constructor.}

proc segmentMin*[oT: oall](scope: Scope,
                 data: oT,
                 segment_ids: SegmentMinTindices): SegmentMin[oT] =
  return iisegmentMin(scope,
                      data,
                      segment_ids,
                      oT[].oTF)

converter segmentMinToOut*[oT: oall](op: SegmentMin[oT]): oT {.inline.} = return op.output

type SegmentProdTindices* = oint32 | oint64

type SegmentProd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SegmentProd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisegmentProd[oT: oall](scope: Scope,
                  data: oT,
                  segment_ids: SegmentProdTindices,
                  T: DType): SegmentProd[oT] {.header:"../../ops/math/math.h", importcpp:"SegmentProd(*#, #, #, #)", constructor.}

proc segmentProd*[oT: oall](scope: Scope,
                  data: oT,
                  segment_ids: SegmentProdTindices): SegmentProd[oT] =
  return iisegmentProd(scope,
                       data,
                       segment_ids,
                       oT[].oTF)

converter segmentProdToOut*[oT: oall](op: SegmentProd[oT]): oT {.inline.} = return op.output

type SegmentSumTindices* = oint32 | oint64

type SegmentSum*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SegmentSum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisegmentSum[oT: oall](scope: Scope,
                 data: oT,
                 segment_ids: SegmentSumTindices,
                 T: DType): SegmentSum[oT] {.header:"../../ops/math/math.h", importcpp:"SegmentSum(*#, #, #, #)", constructor.}

proc segmentSum*[oT: oall](scope: Scope,
                 data: oT,
                 segment_ids: SegmentSumTindices): SegmentSum[oT] =
  return iisegmentSum(scope,
                      data,
                      segment_ids,
                      oT[].oTF)

converter segmentSumToOut*[oT: oall](op: SegmentSum[oT]): oT {.inline.} = return op.output


type SelfAdjointEig*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SelfAdjointEig/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiselfAdjointEig[oT: oall](scope: Scope,
                     input: oT,
                     T: DType): SelfAdjointEig[oT] {.header:"../../ops/math/math.h", importcpp:"SelfAdjointEig(*#, #, #)", constructor.}

proc selfAdjointEig*[oT: oall](scope: Scope,
                     input: oT): SelfAdjointEig[oT] =
  return iiselfAdjointEig(scope,
                          input,
                          oT[].oTF)

converter selfAdjointEigToOut*[oT: oall](op: SelfAdjointEig[oT]): oT {.inline.} = return op.output


type Sign*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Sign/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisign[oT: oall](scope: Scope,
           x: oT,
           T: DType): Sign[oT] {.header:"../../ops/math/math.h", importcpp:"Sign(*#, #, #)", constructor.}

proc sign*[oT: oall](scope: Scope,
           x: oT): Sign[oT] =
  return iisign(scope,
                x,
                oT[].oTF)

converter signToOut*[oT: oall](op: Sign[oT]): oT {.inline.} = return op.output


type Sin*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Sin/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisin[oT: oall](scope: Scope,
          x: oT,
          T: DType): Sin[oT] {.header:"../../ops/math/math.h", importcpp:"Sin(*#, #, #)", constructor.}

proc sin*[oT: oall](scope: Scope,
          x: oT): Sin[oT] =
  return iisin(scope,
               x,
               oT[].oTF)

converter sinToOut*[oT: oall](op: Sin[oT]): oT {.inline.} = return op.output


type Sinh*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Sinh/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisinh[oT: oall](scope: Scope,
           x: oT,
           T: DType): Sinh[oT] {.header:"../../ops/math/math.h", importcpp:"Sinh(*#, #, #)", constructor.}

proc sinh*[oT: oall](scope: Scope,
           x: oT): Sinh[oT] =
  return iisinh(scope,
                x,
                oT[].oTF)

converter sinhToOut*[oT: oall](op: Sinh[oT]): oT {.inline.} = return op.output


type Softsign*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Softsign/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisoftsign[oT: oall](scope: Scope,
               features: oT,
               T: DType): Softsign[oT] {.header:"../../ops/math/math.h", importcpp:"Softsign(*#, #, #)", constructor.}

proc softsign*[oT: oall](scope: Scope,
               features: oT): Softsign[oT] =
  return iisoftsign(scope,
                    features,
                    oT[].oTF)

converter softsignToOut*[oT: oall](op: Softsign[oT]): oT {.inline.} = return op.output

type SparseAddT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64
type SparseAddTreal* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type SparseAdd* {.header:"../../ops/math/math.h", importcpp:"SparseAdd/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseAdd(scope: Scope,
                a_indices: oint64,
                a_values: SparseAddT,
                a_shape: oint64,
                b_indices: oint64,
                b_values: SparseAddT,
                b_shape: oint64,
                thresh: SparseAddTreal): SparseAdd {.header:"../../ops/math/math.h", importcpp:"SparseAdd(*#, #, #, #, #, #, #, #)", constructor.}

proc sparseAdd*(scope: Scope,
                a_indices: oint64,
                a_values: SparseAddT,
                a_shape: oint64,
                b_indices: oint64,
                b_values: SparseAddT,
                b_shape: oint64,
                thresh: SparseAddTreal): SparseAdd =
  return iisparseAdd(scope,
                     a_indices,
                     a_values,
                     a_shape,
                     b_indices,
                     b_values,
                     b_shape,
                     thresh)

converter sparseAddToOut*(op: SparseAdd): oint64 {.inline.} = return op.output


type SparseDenseCwiseMul*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseDenseCwiseMul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseDenseCwiseMul[oT: oall](scope: Scope,
                          sp_indices: oint64,
                          sp_values: oT,
                          sp_shape: oint64,
                          dense: oT,
                          T: DType): SparseDenseCwiseMul[oT] {.header:"../../ops/math/math.h", importcpp:"SparseDenseCwiseMul(*#, #, #, #, #, #)", constructor.}

proc sparseDenseCwiseMul*[oT: oall](scope: Scope,
                          sp_indices: oint64,
                          sp_values: oT,
                          sp_shape: oint64,
                          dense: oT): SparseDenseCwiseMul[oT] =
  return iisparseDenseCwiseMul(scope,
                               sp_indices,
                               sp_values,
                               sp_shape,
                               dense,
                               oT[].oTF)

converter sparseDenseCwiseMulToOut*[oT: oall](op: SparseDenseCwiseMul[oT]): oT {.inline.} = return op.output

type SparseMatMulTa* = ofloat | obfloat16
type SparseMatMulTb* = ofloat | obfloat16

type SparseMatMul* {.header:"../../ops/math/math.h", importcpp:"SparseMatMul/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iisparseMatMul(scope: Scope,
                   a: SparseMatMulTa,
                   b: SparseMatMulTb,
                   transpose_a: bool,
                   transpose_b: bool,
                   a_is_sparse: bool,
                   b_is_sparse: bool): SparseMatMul {.header:"../../ops/math/math.h", importcpp:"SparseMatMul(*#, #, #, #, #, #, #)", constructor.}

proc sparseMatMul*(scope: Scope,
                   a: SparseMatMulTa,
                   b: SparseMatMulTb,
                   transpose_a: bool = false,
                   transpose_b: bool = false,
                   a_is_sparse: bool = false,
                   b_is_sparse: bool = false): SparseMatMul =
  return iisparseMatMul(scope,
                        a,
                        b,
                        transpose_a,
                        transpose_b,
                        a_is_sparse,
                        b_is_sparse)

converter sparseMatMulToOut*(op: SparseMatMul): ofloat {.inline.} = return op.output

type SparseReduceMaxSparseT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | oint64 | obfloat16 | ouint16 | ohalf | ouint32 | ouint64

type SparseReduceMaxSparse* {.header:"../../ops/math/math.h", importcpp:"SparseReduceMaxSparse/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseReduceMaxSparse(scope: Scope,
                            input_indices: oint64,
                            input_values: SparseReduceMaxSparseT,
                            input_shape: oint64,
                            reduction_axes: oint32,
                            keep_dims: bool): SparseReduceMaxSparse {.header:"../../ops/math/math.h", importcpp:"SparseReduceMaxSparse(*#, #, #, #, #, #)", constructor.}

proc sparseReduceMaxSparse*(scope: Scope,
                            input_indices: oint64,
                            input_values: SparseReduceMaxSparseT,
                            input_shape: oint64,
                            reduction_axes: oint32,
                            keep_dims: bool = false): SparseReduceMaxSparse =
  return iisparseReduceMaxSparse(scope,
                                 input_indices,
                                 input_values,
                                 input_shape,
                                 reduction_axes,
                                 keep_dims)

converter sparseReduceMaxSparseToOut*(op: SparseReduceMaxSparse): oint64 {.inline.} = return op.output


type SparseReduceSum*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseReduceSum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseReduceSum[oT: oall](scope: Scope,
                      input_indices: oint64,
                      input_values: oT,
                      input_shape: oint64,
                      reduction_axes: oint32,
                      keep_dims: bool,
                      T: DType): SparseReduceSum[oT] {.header:"../../ops/math/math.h", importcpp:"SparseReduceSum(*#, #, #, #, #, #, #)", constructor.}

proc sparseReduceSum*[oT: oall](scope: Scope,
                      input_indices: oint64,
                      input_values: oT,
                      input_shape: oint64,
                      reduction_axes: oint32,
                      keep_dims: bool = false): SparseReduceSum[oT] =
  return iisparseReduceSum(scope,
                           input_indices,
                           input_values,
                           input_shape,
                           reduction_axes,
                           keep_dims,
                           oT[].oTF)

converter sparseReduceSumToOut*[oT: oall](op: SparseReduceSum[oT]): oT {.inline.} = return op.output

type SparseReduceSumSparseT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64

type SparseReduceSumSparse* {.header:"../../ops/math/math.h", importcpp:"SparseReduceSumSparse/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iisparseReduceSumSparse(scope: Scope,
                            input_indices: oint64,
                            input_values: SparseReduceSumSparseT,
                            input_shape: oint64,
                            reduction_axes: oint32,
                            keep_dims: bool): SparseReduceSumSparse {.header:"../../ops/math/math.h", importcpp:"SparseReduceSumSparse(*#, #, #, #, #, #)", constructor.}

proc sparseReduceSumSparse*(scope: Scope,
                            input_indices: oint64,
                            input_values: SparseReduceSumSparseT,
                            input_shape: oint64,
                            reduction_axes: oint32,
                            keep_dims: bool = false): SparseReduceSumSparse =
  return iisparseReduceSumSparse(scope,
                                 input_indices,
                                 input_values,
                                 input_shape,
                                 reduction_axes,
                                 keep_dims)

converter sparseReduceSumSparseToOut*(op: SparseReduceSumSparse): oint64 {.inline.} = return op.output

type SparseSegmentMeanTidx* = oint32 | oint64

type SparseSegmentMean*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentMean/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSegmentMean[oT: oall](scope: Scope,
                        data: oT,
                        indices: SparseSegmentMeanTidx,
                        segment_ids: oint32,
                        T: DType): SparseSegmentMean[oT] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentMean(*#, #, #, #, #)", constructor.}

proc sparseSegmentMean*[oT: oall](scope: Scope,
                        data: oT,
                        indices: SparseSegmentMeanTidx,
                        segment_ids: oint32): SparseSegmentMean[oT] =
  return iisparseSegmentMean(scope,
                             data,
                             indices,
                             segment_ids,
                             oT[].oTF)

converter sparseSegmentMeanToOut*[oT: oall](op: SparseSegmentMean[oT]): oT {.inline.} = return op.output

type SparseSegmentMeanGradTidx* = oint32 | oint64

type SparseSegmentMeanGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentMeanGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSegmentMeanGrad[oT: oall](scope: Scope,
                            grad: oT,
                            indices: SparseSegmentMeanGradTidx,
                            segment_ids: oint32,
                            output_dim0: oint32,
                            T: DType): SparseSegmentMeanGrad[oT] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentMeanGrad(*#, #, #, #, #, #)", constructor.}

proc sparseSegmentMeanGrad*[oT: oall](scope: Scope,
                            grad: oT,
                            indices: SparseSegmentMeanGradTidx,
                            segment_ids: oint32,
                            output_dim0: oint32): SparseSegmentMeanGrad[oT] =
  return iisparseSegmentMeanGrad(scope,
                                 grad,
                                 indices,
                                 segment_ids,
                                 output_dim0,
                                 oT[].oTF)

converter sparseSegmentMeanGradToOut*[oT: oall](op: SparseSegmentMeanGrad[oT]): oT {.inline.} = return op.output

type SparseSegmentMeanWithNumSegmentsTidx* = oint32 | oint64
type SparseSegmentMeanWithNumSegmentsTnumsegments* = oint32 | oint64

type SparseSegmentMeanWithNumSegments*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentMeanWithNumSegments/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSegmentMeanWithNumSegments[oT: oall](scope: Scope,
                                       data: oT,
                                       indices: SparseSegmentMeanWithNumSegmentsTidx,
                                       segment_ids: oint32,
                                       num_segments: SparseSegmentMeanWithNumSegmentsTnumsegments,
                                       T: DType): SparseSegmentMeanWithNumSegments[oT] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentMeanWithNumSegments(*#, #, #, #, #, #)", constructor.}

proc sparseSegmentMeanWithNumSegments*[oT: oall](scope: Scope,
                                       data: oT,
                                       indices: SparseSegmentMeanWithNumSegmentsTidx,
                                       segment_ids: oint32,
                                       num_segments: SparseSegmentMeanWithNumSegmentsTnumsegments): SparseSegmentMeanWithNumSegments[oT] =
  return iisparseSegmentMeanWithNumSegments(scope,
                                            data,
                                            indices,
                                            segment_ids,
                                            num_segments,
                                            oT[].oTF)

converter sparseSegmentMeanWithNumSegmentsToOut*[oT: oall](op: SparseSegmentMeanWithNumSegments[oT]): oT {.inline.} = return op.output

type SparseSegmentSqrtNTidx* = oint32 | oint64

type SparseSegmentSqrtN*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSqrtN/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSegmentSqrtN[oT: oall](scope: Scope,
                         data: oT,
                         indices: SparseSegmentSqrtNTidx,
                         segment_ids: oint32,
                         T: DType): SparseSegmentSqrtN[oT] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSqrtN(*#, #, #, #, #)", constructor.}

proc sparseSegmentSqrtN*[oT: oall](scope: Scope,
                         data: oT,
                         indices: SparseSegmentSqrtNTidx,
                         segment_ids: oint32): SparseSegmentSqrtN[oT] =
  return iisparseSegmentSqrtN(scope,
                              data,
                              indices,
                              segment_ids,
                              oT[].oTF)

converter sparseSegmentSqrtNToOut*[oT: oall](op: SparseSegmentSqrtN[oT]): oT {.inline.} = return op.output

type SparseSegmentSqrtNGradTidx* = oint32 | oint64

type SparseSegmentSqrtNGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSqrtNGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSegmentSqrtNGrad[oT: oall](scope: Scope,
                             grad: oT,
                             indices: SparseSegmentSqrtNGradTidx,
                             segment_ids: oint32,
                             output_dim0: oint32,
                             T: DType): SparseSegmentSqrtNGrad[oT] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSqrtNGrad(*#, #, #, #, #, #)", constructor.}

proc sparseSegmentSqrtNGrad*[oT: oall](scope: Scope,
                             grad: oT,
                             indices: SparseSegmentSqrtNGradTidx,
                             segment_ids: oint32,
                             output_dim0: oint32): SparseSegmentSqrtNGrad[oT] =
  return iisparseSegmentSqrtNGrad(scope,
                                  grad,
                                  indices,
                                  segment_ids,
                                  output_dim0,
                                  oT[].oTF)

converter sparseSegmentSqrtNGradToOut*[oT: oall](op: SparseSegmentSqrtNGrad[oT]): oT {.inline.} = return op.output

type SparseSegmentSqrtNWithNumSegmentsTidx* = oint32 | oint64
type SparseSegmentSqrtNWithNumSegmentsTnumsegments* = oint32 | oint64

type SparseSegmentSqrtNWithNumSegments*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSqrtNWithNumSegments/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSegmentSqrtNWithNumSegments[oT: oall](scope: Scope,
                                        data: oT,
                                        indices: SparseSegmentSqrtNWithNumSegmentsTidx,
                                        segment_ids: oint32,
                                        num_segments: SparseSegmentSqrtNWithNumSegmentsTnumsegments,
                                        T: DType): SparseSegmentSqrtNWithNumSegments[oT] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSqrtNWithNumSegments(*#, #, #, #, #, #)", constructor.}

proc sparseSegmentSqrtNWithNumSegments*[oT: oall](scope: Scope,
                                        data: oT,
                                        indices: SparseSegmentSqrtNWithNumSegmentsTidx,
                                        segment_ids: oint32,
                                        num_segments: SparseSegmentSqrtNWithNumSegmentsTnumsegments): SparseSegmentSqrtNWithNumSegments[oT] =
  return iisparseSegmentSqrtNWithNumSegments(scope,
                                             data,
                                             indices,
                                             segment_ids,
                                             num_segments,
                                             oT[].oTF)

converter sparseSegmentSqrtNWithNumSegmentsToOut*[oT: oall](op: SparseSegmentSqrtNWithNumSegments[oT]): oT {.inline.} = return op.output

type SparseSegmentSumTidx* = oint32 | oint64

type SparseSegmentSum*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSegmentSum[oT: oall](scope: Scope,
                       data: oT,
                       indices: SparseSegmentSumTidx,
                       segment_ids: oint32,
                       T: DType): SparseSegmentSum[oT] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSum(*#, #, #, #, #)", constructor.}

proc sparseSegmentSum*[oT: oall](scope: Scope,
                       data: oT,
                       indices: SparseSegmentSumTidx,
                       segment_ids: oint32): SparseSegmentSum[oT] =
  return iisparseSegmentSum(scope,
                            data,
                            indices,
                            segment_ids,
                            oT[].oTF)

converter sparseSegmentSumToOut*[oT: oall](op: SparseSegmentSum[oT]): oT {.inline.} = return op.output

type SparseSegmentSumWithNumSegmentsTidx* = oint32 | oint64
type SparseSegmentSumWithNumSegmentsTnumsegments* = oint32 | oint64

type SparseSegmentSumWithNumSegments*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSumWithNumSegments/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseSegmentSumWithNumSegments[oT: oall](scope: Scope,
                                      data: oT,
                                      indices: SparseSegmentSumWithNumSegmentsTidx,
                                      segment_ids: oint32,
                                      num_segments: SparseSegmentSumWithNumSegmentsTnumsegments,
                                      T: DType): SparseSegmentSumWithNumSegments[oT] {.header:"../../ops/math/math.h", importcpp:"SparseSegmentSumWithNumSegments(*#, #, #, #, #, #)", constructor.}

proc sparseSegmentSumWithNumSegments*[oT: oall](scope: Scope,
                                      data: oT,
                                      indices: SparseSegmentSumWithNumSegmentsTidx,
                                      segment_ids: oint32,
                                      num_segments: SparseSegmentSumWithNumSegmentsTnumsegments): SparseSegmentSumWithNumSegments[oT] =
  return iisparseSegmentSumWithNumSegments(scope,
                                           data,
                                           indices,
                                           segment_ids,
                                           num_segments,
                                           oT[].oTF)

converter sparseSegmentSumWithNumSegmentsToOut*[oT: oall](op: SparseSegmentSumWithNumSegments[oT]): oT {.inline.} = return op.output

type SparseTensorDenseAddTindices* = oint32 | oint64

type SparseTensorDenseAdd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseTensorDenseAdd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseTensorDenseAdd[oT: oall](scope: Scope,
                           a_indices: SparseTensorDenseAddTindices,
                           a_values: oT,
                           a_shape: SparseTensorDenseAddTindices,
                           b: oT,
                           T: DType): SparseTensorDenseAdd[oT] {.header:"../../ops/math/math.h", importcpp:"SparseTensorDenseAdd(*#, #, #, #, #, #)", constructor.}

proc sparseTensorDenseAdd*[oT: oall](scope: Scope,
                           a_indices: SparseTensorDenseAddTindices,
                           a_values: oT,
                           a_shape: SparseTensorDenseAddTindices,
                           b: oT): SparseTensorDenseAdd[oT] =
  return iisparseTensorDenseAdd(scope,
                                a_indices,
                                a_values,
                                a_shape,
                                b,
                                oT[].oTF)

converter sparseTensorDenseAddToOut*[oT: oall](op: SparseTensorDenseAdd[oT]): oT {.inline.} = return op.output

type SparseTensorDenseMatMulTindices* = oint32 | oint64

type SparseTensorDenseMatMul*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SparseTensorDenseMatMul/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisparseTensorDenseMatMul[oT: oall](scope: Scope,
                              a_indices: SparseTensorDenseMatMulTindices,
                              a_values: oT,
                              a_shape: oint64,
                              b: oT,
                              T: DType,
                              adjoint_b: bool,
                              adjoint_a: bool): SparseTensorDenseMatMul[oT] {.header:"../../ops/math/math.h", importcpp:"SparseTensorDenseMatMul(*#, #, #, #, #, #, #, #)", constructor.}

proc sparseTensorDenseMatMul*[oT: oall](scope: Scope,
                              a_indices: SparseTensorDenseMatMulTindices,
                              a_values: oT,
                              a_shape: oint64,
                              b: oT,
                              adjoint_b: bool = false,
                              adjoint_a: bool = false): SparseTensorDenseMatMul[oT] =
  return iisparseTensorDenseMatMul(scope,
                                   a_indices,
                                   a_values,
                                   a_shape,
                                   b,
                                   oT[].oTF,
                                   adjoint_b,
                                   adjoint_a)

converter sparseTensorDenseMatMulToOut*[oT: oall](op: SparseTensorDenseMatMul[oT]): oT {.inline.} = return op.output


type Sqrt*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Sqrt/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisqrt[oT: oall](scope: Scope,
           x: oT,
           T: DType): Sqrt[oT] {.header:"../../ops/math/math.h", importcpp:"Sqrt(*#, #, #)", constructor.}

proc sqrt*[oT: oall](scope: Scope,
           x: oT): Sqrt[oT] =
  return iisqrt(scope,
                x,
                oT[].oTF)

converter sqrtToOut*[oT: oall](op: Sqrt[oT]): oT {.inline.} = return op.output


type SqrtGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SqrtGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisqrtGrad[oT: oall](scope: Scope,
               y: oT,
               dy: oT,
               T: DType): SqrtGrad[oT] {.header:"../../ops/math/math.h", importcpp:"SqrtGrad(*#, #, #, #)", constructor.}

proc sqrtGrad*[oT: oall](scope: Scope,
               y: oT,
               dy: oT): SqrtGrad[oT] =
  return iisqrtGrad(scope,
                    y,
                    dy,
                    oT[].oTF)

converter sqrtGradToOut*[oT: oall](op: SqrtGrad[oT]): oT {.inline.} = return op.output


type Square*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Square/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisquare[oT: oall](scope: Scope,
             x: oT,
             T: DType): Square[oT] {.header:"../../ops/math/math.h", importcpp:"Square(*#, #, #)", constructor.}

proc square*[oT: oall](scope: Scope,
             x: oT): Square[oT] =
  return iisquare(scope,
                  x,
                  oT[].oTF)

converter squareToOut*[oT: oall](op: Square[oT]): oT {.inline.} = return op.output


type SquaredDifference*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SquaredDifference/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisquaredDifference[oT: oall](scope: Scope,
                        x: oT,
                        y: oT,
                        T: DType): SquaredDifference[oT] {.header:"../../ops/math/math.h", importcpp:"SquaredDifference(*#, #, #, #)", constructor.}

proc squaredDifference*[oT: oall](scope: Scope,
                        x: oT,
                        y: oT): SquaredDifference[oT] =
  return iisquaredDifference(scope,
                             x,
                             y,
                             oT[].oTF)

converter squaredDifferenceToOut*[oT: oall](op: SquaredDifference[oT]): oT {.inline.} = return op.output


type Sub*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Sub/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisub[oT: oall](scope: Scope,
          x: oT,
          y: oT,
          T: DType): Sub[oT] {.header:"../../ops/math/math.h", importcpp:"Sub(*#, #, #, #)", constructor.}

proc sub*[oT: oall](scope: Scope,
          x: oT,
          y: oT): Sub[oT] =
  return iisub(scope,
               x,
               y,
               oT[].oTF)

converter subToOut*[oT: oall](op: Sub[oT]): oT {.inline.} = return op.output

type SumTidx* = oint32 | oint64

type Sum*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Sum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisum[oT: oall](scope: Scope,
          input: oT,
          reduction_indices: SumTidx,
          keep_dims: bool,
          T: DType): Sum[oT] {.header:"../../ops/math/math.h", importcpp:"Sum(*#, #, #, #, #)", constructor.}

proc sum*[oT: oall](scope: Scope,
          input: oT,
          reduction_indices: SumTidx,
          keep_dims: bool = false): Sum[oT] =
  return iisum(scope,
               input,
               reduction_indices,
               keep_dims,
               oT[].oTF)

converter sumToOut*[oT: oall](op: Sum[oT]): oT {.inline.} = return op.output


type Svd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Svd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisvd[oT: oall](scope: Scope,
          input: oT,
          compute_uv: bool,
          full_matrices: bool,
          T: DType): Svd[oT] {.header:"../../ops/math/math.h", importcpp:"Svd(*#, #, #, #, #)", constructor.}

proc svd*[oT: oall](scope: Scope,
          input: oT,
          compute_uv: bool = true,
          full_matrices: bool = false): Svd[oT] =
  return iisvd(scope,
               input,
               compute_uv,
               full_matrices,
               oT[].oTF)

converter svdToOut*[oT: oall](op: Svd[oT]): oT {.inline.} = return op.output


type SymbolicGradient*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"SymbolicGradient/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iisymbolicGradient[oT: oall](scope: Scope,
                       input: olist[oall],
                       Tin: ArraySlice[DType],
                       Tout: ArraySlice[DType],
                       f: NameAttrList,
                       explicitT: type(oT)): SymbolicGradient[oT] {.header:"../../ops/math/math.h", importcpp:"SymbolicGradient(*#, #, #, #, #)", constructor.}

proc symbolicGradient*(scope: Scope,
                       input: olist[oall],
                       Tin: openArray[DType],
                       Tout: openArray[DType],
                       f: NameAttrList,
                       explicitT: type): auto =
  return iisymbolicGradient(scope,
                            input,
                            newArraySlice(Tin),
                            newArraySlice(Tout),
                            f,
                            explicitT)

converter symbolicGradientToOutList*[oT: oall](op: SymbolicGradient[oT]): olist[oT] {.inline.} = return op.output


type Tan*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Tan/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitan[oT: oall](scope: Scope,
          x: oT,
          T: DType): Tan[oT] {.header:"../../ops/math/math.h", importcpp:"Tan(*#, #, #)", constructor.}

proc tan*[oT: oall](scope: Scope,
          x: oT): Tan[oT] =
  return iitan(scope,
               x,
               oT[].oTF)

converter tanToOut*[oT: oall](op: Tan[oT]): oT {.inline.} = return op.output


type Tanh*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Tanh/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitanh[oT: oall](scope: Scope,
           x: oT,
           T: DType): Tanh[oT] {.header:"../../ops/math/math.h", importcpp:"Tanh(*#, #, #)", constructor.}

proc tanh*[oT: oall](scope: Scope,
           x: oT): Tanh[oT] =
  return iitanh(scope,
                x,
                oT[].oTF)

converter tanhToOut*[oT: oall](op: Tanh[oT]): oT {.inline.} = return op.output


type TanhGrad*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"TanhGrad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitanhGrad[oT: oall](scope: Scope,
               y: oT,
               dy: oT,
               T: DType): TanhGrad[oT] {.header:"../../ops/math/math.h", importcpp:"TanhGrad(*#, #, #, #)", constructor.}

proc tanhGrad*[oT: oall](scope: Scope,
               y: oT,
               dy: oT): TanhGrad[oT] =
  return iitanhGrad(scope,
                    y,
                    dy,
                    oT[].oTF)

converter tanhGradToOut*[oT: oall](op: TanhGrad[oT]): oT {.inline.} = return op.output

type TensorScatterSubTindices* = oint32 | oint64

type TensorScatterSub*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"TensorScatterSub/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitensorScatterSub[oT: oall](scope: Scope,
                       tensor: oT,
                       indices: TensorScatterSubTindices,
                       updates: oT,
                       T: DType): TensorScatterSub[oT] {.header:"../../ops/math/math.h", importcpp:"TensorScatterSub(*#, #, #, #, #)", constructor.}

proc tensorScatterSub*[oT: oall](scope: Scope,
                       tensor: oT,
                       indices: TensorScatterSubTindices,
                       updates: oT): TensorScatterSub[oT] =
  return iitensorScatterSub(scope,
                            tensor,
                            indices,
                            updates,
                            oT[].oTF)

converter tensorScatterSubToOut*[oT: oall](op: TensorScatterSub[oT]): oT {.inline.} = return op.output


type TopK*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"TopK/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitopK[oT: oall](scope: Scope,
           input: oT,
           k: int64,
           sorted: bool,
           T: DType): TopK[oT] {.header:"../../ops/math/math.h", importcpp:"TopK(*#, #, #, #, #)", constructor.}

proc topK*[oT: oall](scope: Scope,
           input: oT,
           k: int64 = 0.int,
           sorted: bool = true): TopK[oT] =
  return iitopK(scope,
                input,
                k,
                sorted,
                oT[].oTF)

converter topKToOut*[oT: oall](op: TopK[oT]): oT {.inline.} = return op.output


type TopKV2*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"TopKV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitopKV2[oT: oall](scope: Scope,
             input: oT,
             k: oint32,
             sorted: bool,
             T: DType): TopKV2[oT] {.header:"../../ops/math/math.h", importcpp:"TopKV2(*#, #, #, #, #)", constructor.}

proc topKV2*[oT: oall](scope: Scope,
             input: oT,
             k: oint32,
             sorted: bool = true): TopKV2[oT] =
  return iitopKV2(scope,
                  input,
                  k,
                  sorted,
                  oT[].oTF)

converter topKV2ToOut*[oT: oall](op: TopKV2[oT]): oT {.inline.} = return op.output

type UnsortedSegmentMaxTindices* = oint32 | oint64
type UnsortedSegmentMaxTnumsegments* = oint32 | oint64

type UnsortedSegmentMax*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"UnsortedSegmentMax/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiunsortedSegmentMax[oT: oall](scope: Scope,
                         data: oT,
                         segment_ids: UnsortedSegmentMaxTindices,
                         num_segments: UnsortedSegmentMaxTnumsegments,
                         T: DType): UnsortedSegmentMax[oT] {.header:"../../ops/math/math.h", importcpp:"UnsortedSegmentMax(*#, #, #, #, #)", constructor.}

proc unsortedSegmentMax*[oT: oall](scope: Scope,
                         data: oT,
                         segment_ids: UnsortedSegmentMaxTindices,
                         num_segments: UnsortedSegmentMaxTnumsegments): UnsortedSegmentMax[oT] =
  return iiunsortedSegmentMax(scope,
                              data,
                              segment_ids,
                              num_segments,
                              oT[].oTF)

converter unsortedSegmentMaxToOut*[oT: oall](op: UnsortedSegmentMax[oT]): oT {.inline.} = return op.output

type UnsortedSegmentMinTindices* = oint32 | oint64
type UnsortedSegmentMinTnumsegments* = oint32 | oint64

type UnsortedSegmentMin*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"UnsortedSegmentMin/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiunsortedSegmentMin[oT: oall](scope: Scope,
                         data: oT,
                         segment_ids: UnsortedSegmentMinTindices,
                         num_segments: UnsortedSegmentMinTnumsegments,
                         T: DType): UnsortedSegmentMin[oT] {.header:"../../ops/math/math.h", importcpp:"UnsortedSegmentMin(*#, #, #, #, #)", constructor.}

proc unsortedSegmentMin*[oT: oall](scope: Scope,
                         data: oT,
                         segment_ids: UnsortedSegmentMinTindices,
                         num_segments: UnsortedSegmentMinTnumsegments): UnsortedSegmentMin[oT] =
  return iiunsortedSegmentMin(scope,
                              data,
                              segment_ids,
                              num_segments,
                              oT[].oTF)

converter unsortedSegmentMinToOut*[oT: oall](op: UnsortedSegmentMin[oT]): oT {.inline.} = return op.output

type UnsortedSegmentProdTindices* = oint32 | oint64
type UnsortedSegmentProdTnumsegments* = oint32 | oint64

type UnsortedSegmentProd*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"UnsortedSegmentProd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiunsortedSegmentProd[oT: oall](scope: Scope,
                          data: oT,
                          segment_ids: UnsortedSegmentProdTindices,
                          num_segments: UnsortedSegmentProdTnumsegments,
                          T: DType): UnsortedSegmentProd[oT] {.header:"../../ops/math/math.h", importcpp:"UnsortedSegmentProd(*#, #, #, #, #)", constructor.}

proc unsortedSegmentProd*[oT: oall](scope: Scope,
                          data: oT,
                          segment_ids: UnsortedSegmentProdTindices,
                          num_segments: UnsortedSegmentProdTnumsegments): UnsortedSegmentProd[oT] =
  return iiunsortedSegmentProd(scope,
                               data,
                               segment_ids,
                               num_segments,
                               oT[].oTF)

converter unsortedSegmentProdToOut*[oT: oall](op: UnsortedSegmentProd[oT]): oT {.inline.} = return op.output

type UnsortedSegmentSumTindices* = oint32 | oint64
type UnsortedSegmentSumTnumsegments* = oint32 | oint64

type UnsortedSegmentSum*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"UnsortedSegmentSum/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiunsortedSegmentSum[oT: oall](scope: Scope,
                         data: oT,
                         segment_ids: UnsortedSegmentSumTindices,
                         num_segments: UnsortedSegmentSumTnumsegments,
                         T: DType): UnsortedSegmentSum[oT] {.header:"../../ops/math/math.h", importcpp:"UnsortedSegmentSum(*#, #, #, #, #)", constructor.}

proc unsortedSegmentSum*[oT: oall](scope: Scope,
                         data: oT,
                         segment_ids: UnsortedSegmentSumTindices,
                         num_segments: UnsortedSegmentSumTnumsegments): UnsortedSegmentSum[oT] =
  return iiunsortedSegmentSum(scope,
                              data,
                              segment_ids,
                              num_segments,
                              oT[].oTF)

converter unsortedSegmentSumToOut*[oT: oall](op: UnsortedSegmentSum[oT]): oT {.inline.} = return op.output

type UpperBoundT* = oall

type UpperBound*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"UpperBound/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiupperBound[oT: oall](scope: Scope,
                 sorted_inputs: UpperBoundT,
                 values: UpperBoundT,
                 out_type: DType,
                 explicitT: type(oT)): UpperBound[oT] {.header:"../../ops/math/math.h", importcpp:"UpperBound(*#, #, #, #)", constructor.}

proc upperBound*(scope: Scope,
                 sorted_inputs: UpperBoundT,
                 values: UpperBoundT,
                 out_type: type = oint32): auto =
  return iiupperBound(scope,
                      sorted_inputs,
                      values,
                      out_type[].oTF,
                      out_type)

converter upperBoundToOut*[oT: oall](op: UpperBound[oT]): oT {.inline.} = return op.output


type Xdivy*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Xdivy/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iixdivy[oT: oall](scope: Scope,
            x: oT,
            y: oT,
            T: DType): Xdivy[oT] {.header:"../../ops/math/math.h", importcpp:"Xdivy(*#, #, #, #)", constructor.}

proc xdivy*[oT: oall](scope: Scope,
            x: oT,
            y: oT): Xdivy[oT] =
  return iixdivy(scope,
                 x,
                 y,
                 oT[].oTF)

converter xdivyToOut*[oT: oall](op: Xdivy[oT]): oT {.inline.} = return op.output


type Xlogy*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Xlogy/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iixlogy[oT: oall](scope: Scope,
            x: oT,
            y: oT,
            T: DType): Xlogy[oT] {.header:"../../ops/math/math.h", importcpp:"Xlogy(*#, #, #, #)", constructor.}

proc xlogy*[oT: oall](scope: Scope,
            x: oT,
            y: oT): Xlogy[oT] =
  return iixlogy(scope,
                 x,
                 y,
                 oT[].oTF)

converter xlogyToOut*[oT: oall](op: Xlogy[oT]): oT {.inline.} = return op.output


type Zeta*[oT:oall] {.header:"../../ops/math/math.h", importcpp:"Zeta/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iizeta[oT: oall](scope: Scope,
           x: oT,
           q: oT,
           T: DType): Zeta[oT] {.header:"../../ops/math/math.h", importcpp:"Zeta(*#, #, #, #)", constructor.}

proc zeta*[oT: oall](scope: Scope,
           x: oT,
           q: oT): Zeta[oT] =
  return iizeta(scope,
                x,
                q,
                oT[].oTF)

converter zetaToOut*[oT: oall](op: Zeta[oT]): oT {.inline.} = return op.output

