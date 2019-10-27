import ../core

{.compile:"audio/audio.cc".}


type DecodeWav* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/audio/audio.h", importcpp:"DecodeWav/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iidecodeWav(scope: Scope,
                contents: ostring,
                desired_channels: int64,
                desired_samples: int64): DecodeWav {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/audio/audio.h", importcpp:"DecodeWav(*#, #, #, #)", constructor.}

proc decodeWav*(scope: Scope,
                contents: ostring,
                desired_channels: int64 = -1.int,
                desired_samples: int64 = -1.int): DecodeWav =
  return iidecodeWav(scope,
                     contents,
                     desired_channels,
                     desired_samples)

converter decodeWavToOut*(op: DecodeWav): ofloat {.inline.} = return op.output


type EncodeWav* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/audio/audio.h", importcpp:"EncodeWav/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iiencodeWav(scope: Scope,
                audio: ofloat,
                sample_rate: oint32): EncodeWav {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/audio/audio.h", importcpp:"EncodeWav(*#, #, #)", constructor.}

proc encodeWav*(scope: Scope,
                audio: ofloat,
                sample_rate: oint32): EncodeWav =
  return iiencodeWav(scope,
                     audio,
                     sample_rate)

converter encodeWavToOut*(op: EncodeWav): ostring {.inline.} = return op.output

