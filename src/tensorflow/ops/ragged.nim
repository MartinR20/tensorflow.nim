import ../core

{.compile:"ragged/ragged.cc".}

type RaggedRangeT* = obfloat16 | ofloat | odouble | oint32 | oint64

type RaggedRange* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/ragged/ragged.h", importcpp:"RaggedRange/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiraggedRange(scope: Scope,
                  starts: RaggedRangeT,
                  limits: RaggedRangeT,
                  deltas: RaggedRangeT): RaggedRange {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/ragged/ragged.h", importcpp:"RaggedRange(*#, #, #, #)", constructor.}

proc raggedRange*(scope: Scope,
                  starts: RaggedRangeT,
                  limits: RaggedRangeT,
                  deltas: RaggedRangeT): RaggedRange =
  return iiraggedRange(scope,
                       starts,
                       limits,
                       deltas)

converter raggedRangeToOut*(op: RaggedRange): oint64 {.inline.} = return op.output

type RaggedTensorToSparseT* = oall

type RaggedTensorToSparse* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/ragged/ragged.h", importcpp:"RaggedTensorToSparse/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiraggedTensorToSparse(scope: Scope,
                           rt_nested_splits: oint64,
                           rt_dense_values: RaggedTensorToSparseT,
                           RAGGED_RANK: int64): RaggedTensorToSparse {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/ragged/ragged.h", importcpp:"RaggedTensorToSparse(*#, #, #, #)", constructor.}

proc raggedTensorToSparse*(scope: Scope,
                           rt_nested_splits: oint64,
                           rt_dense_values: RaggedTensorToSparseT,
                           RAGGED_RANK: int64 = 0.int): RaggedTensorToSparse =
  return iiraggedTensorToSparse(scope,
                                rt_nested_splits,
                                rt_dense_values,
                                RAGGED_RANK)

converter raggedTensorToSparseToOut*(op: RaggedTensorToSparse): oint64 {.inline.} = return op.output

