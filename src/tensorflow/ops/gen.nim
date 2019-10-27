import ../core

{.compile:"gen/gen.cc".}


type Assign*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Assign/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiassign[oT: oall](scope: Scope,
             nref: oT,
             value: oT,
             T: DType,
             validate_shape: bool,
             use_locking: bool): Assign[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Assign(*#, #, #, #, #, #)", constructor.}

proc assign*[oT: oall](scope: Scope,
             nref: oT,
             value: oT,
             validate_shape: bool = true,
             use_locking: bool = true): Assign[oT] =
  return iiassign(scope,
                  nref,
                  value,
                  oT.oTF,
                  validate_shape,
                  use_locking)

converter assignToOut*[oT: oall](op: Assign[oT]): oT {.inline.} = return op.output

type BatchToSpaceTidx* = oint32 | oint64

type BatchToSpace*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"BatchToSpace/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibatchToSpace[oT: oall](scope: Scope,
                   input: oT,
                   crops: BatchToSpaceTidx,
                   T: DType,
                   block_size: int64): BatchToSpace[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"BatchToSpace(*#, #, #, #, #)", constructor.}

proc batchToSpace*[oT: oall](scope: Scope,
                   input: oT,
                   crops: BatchToSpaceTidx,
                   block_size: int64 = 0.int): BatchToSpace[oT] =
  return iibatchToSpace(scope,
                        input,
                        crops,
                        oT.oTF,
                        block_size)

converter batchToSpaceToOut*[oT: oall](op: BatchToSpace[oT]): oT {.inline.} = return op.output

type BitcastT* = obfloat16 | ohalf | ofloat | odouble | oint64 | oint32 | ouint8 | ouint16 | ouint32 | ouint64 | oint8 | oint16 | ocomplex64 | ocomplex128 | oqint8 | oquint8 | oqint16 | oquint16 | oqint32

type Bitcast*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Bitcast/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibitcast[oT: oall](scope: Scope,
              input: BitcastT,
              ntype: DType,
              explicitT: type(oT)): Bitcast[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Bitcast(*#, #, #)", constructor.}

proc bitcast*(scope: Scope,
              input: BitcastT,
              ntype: type = oinvalid): auto =
  return iibitcast(scope,
                   input,
                   ntype.oTF,
                   ntype)

converter bitcastToOut*[oT: oall](op: Bitcast[oT]): oT {.inline.} = return op.output


type BroadcastArgs*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"BroadcastArgs/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibroadcastArgs[oT: oall](scope: Scope,
                    s0: oT,
                    s1: oT,
                    T: DType): BroadcastArgs[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"BroadcastArgs(*#, #, #, #)", constructor.}

proc broadcastArgs*[oT: oall](scope: Scope,
                    s0: oT,
                    s1: oT): BroadcastArgs[oT] =
  return iibroadcastArgs(scope,
                         s0,
                         s1,
                         oT.oTF)

converter broadcastArgsToOut*[oT: oall](op: BroadcastArgs[oT]): oT {.inline.} = return op.output


type BroadcastGradientArgs*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"BroadcastGradientArgs/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibroadcastGradientArgs[oT: oall](scope: Scope,
                            s0: oT,
                            s1: oT,
                            T: DType): BroadcastGradientArgs[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"BroadcastGradientArgs(*#, #, #, #)", constructor.}

proc broadcastGradientArgs*[oT: oall](scope: Scope,
                            s0: oT,
                            s1: oT): BroadcastGradientArgs[oT] =
  return iibroadcastGradientArgs(scope,
                                 s0,
                                 s1,
                                 oT.oTF)

converter broadcastGradientArgsToOut*[oT: oall](op: BroadcastGradientArgs[oT]): oT {.inline.} = return op.output

type BroadcastToTidx* = oint32 | oint64

type BroadcastTo*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"BroadcastTo/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iibroadcastTo[oT: oall](scope: Scope,
                  input: oT,
                  shape: BroadcastToTidx,
                  T: DType): BroadcastTo[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"BroadcastTo(*#, #, #, #)", constructor.}

proc broadcastTo*[oT: oall](scope: Scope,
                  input: oT,
                  shape: BroadcastToTidx): BroadcastTo[oT] =
  return iibroadcastTo(scope,
                       input,
                       shape,
                       oT.oTF)

converter broadcastToToOut*[oT: oall](op: BroadcastTo[oT]): oT {.inline.} = return op.output


type ClipByValue*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ClipByValue/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiclipByValue[oT: oall](scope: Scope,
                  t: oT,
                  clip_value_min: oT,
                  clip_value_max: oT,
                  T: DType): ClipByValue[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ClipByValue(*#, #, #, #, #)", constructor.}

proc clipByValue*[oT: oall](scope: Scope,
                  t: oT,
                  clip_value_min: oT,
                  clip_value_max: oT): ClipByValue[oT] =
  return iiclipByValue(scope,
                       t,
                       clip_value_min,
                       clip_value_max,
                       oT.oTF)

converter clipByValueToOut*[oT: oall](op: ClipByValue[oT]): oT {.inline.} = return op.output


type Concat*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Concat/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconcat[oT: oall](scope: Scope,
             concat_dim: oint32,
             values: olist[oT],
             T: DType): Concat[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Concat(*#, #, #, #)", constructor.}

proc concat*[oT: oall](scope: Scope,
             concat_dim: oint32,
             values: olist[oT]): Concat[oT] =
  return iiconcat(scope,
                  concat_dim,
                  values,
                  oT.oTF)

converter concatToOut*[oT: oall](op: Concat[oT]): oT {.inline.} = return op.output


type ConcatOffset* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ConcatOffset/*'0*/".} = object
  operation*: Operation[oint32]
  output*: olist[oint32]

proc iiconcatOffset(scope: Scope,
                   concat_dim: oint32,
                   shape: olist[oint32]): ConcatOffset {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ConcatOffset(*#, #, #)", constructor.}

proc concatOffset*(scope: Scope,
                   concat_dim: oint32,
                   shape: olist[oint32]): ConcatOffset =
  return iiconcatOffset(scope,
                        concat_dim,
                        shape)

converter concatOffsetToOutList*(op: ConcatOffset): olist[oint32] {.inline.} = return op.output

type ConcatV2Tidx* = oint32 | oint64

type ConcatV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ConcatV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiconcatV2[oT: oall](scope: Scope,
               values: olist[oT],
               axis: ConcatV2Tidx,
               T: DType): ConcatV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ConcatV2(*#, #, #, #)", constructor.}

proc concatV2*[oT: oall](scope: Scope,
               values: olist[oT],
               axis: ConcatV2Tidx): ConcatV2[oT] =
  return iiconcatV2(scope,
                    values,
                    axis,
                    oT.oTF)

converter concatV2ToOut*[oT: oall](op: ConcatV2[oT]): oT {.inline.} = return op.output


type Const*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Const/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iinconst[oT: oall](scope: Scope,
             value: Tensor[oT],
             dtype: DType): Const[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Const(*#, *#, #)", constructor.}

proc nconst*[oT: oall](scope: Scope,
             value: Tensor[oT]): Const[oT] =
  return iinconst(scope,
                  value,
                  oT.oTF)

converter nconstToOut*[oT: oall](op: Const[oT]): oT {.inline.} = return op.output


type DynamicPartition*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"DynamicPartition/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidynamicPartition[oT: oall](scope: Scope,
                       data: oT,
                       partitions: oint32,
                       num_partitions: int64,
                       T: DType): DynamicPartition[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"DynamicPartition(*#, #, #, #, #)", constructor.}

proc dynamicPartition*[oT: oall](scope: Scope,
                       data: oT,
                       partitions: oint32,
                       num_partitions: int64 = 0.int): DynamicPartition[oT] =
  return iidynamicPartition(scope,
                            data,
                            partitions,
                            num_partitions,
                            oT.oTF)

converter dynamicPartitionToOut*[oT: oall](op: DynamicPartition[oT]): oT {.inline.} = return op.output


type DynamicStitch*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"DynamicStitch/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iidynamicStitch[oT: oall](scope: Scope,
                    indices: olist[oint32],
                    data: olist[oT],
                    T: DType): DynamicStitch[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"DynamicStitch(*#, #, #, #)", constructor.}

proc dynamicStitch*[oT: oall](scope: Scope,
                    indices: olist[oint32],
                    data: olist[oT]): DynamicStitch[oT] =
  return iidynamicStitch(scope,
                         indices,
                         data,
                         oT.oTF)

converter dynamicStitchToOut*[oT: oall](op: DynamicStitch[oT]): oT {.inline.} = return op.output

type EditDistanceT* = oall

type EditDistance* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"EditDistance/*'0*/".} = object
  operation*: Operation[ofloat]
  output*: ofloat

proc iieditDistance(scope: Scope,
                   hypothesis_indices: oint64,
                   hypothesis_values: EditDistanceT,
                   hypothesis_shape: oint64,
                   truth_indices: oint64,
                   truth_values: EditDistanceT,
                   truth_shape: oint64,
                   normalize: bool): EditDistance {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"EditDistance(*#, #, #, #, #, #, #, #)", constructor.}

proc editDistance*(scope: Scope,
                   hypothesis_indices: oint64,
                   hypothesis_values: EditDistanceT,
                   hypothesis_shape: oint64,
                   truth_indices: oint64,
                   truth_values: EditDistanceT,
                   truth_shape: oint64,
                   normalize: bool = true): EditDistance =
  return iieditDistance(scope,
                        hypothesis_indices,
                        hypothesis_values,
                        hypothesis_shape,
                        truth_indices,
                        truth_values,
                        truth_shape,
                        normalize)

converter editDistanceToOut*(op: EditDistance): ofloat {.inline.} = return op.output


type Empty*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Empty/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiempty[oT: oall](scope: Scope,
            shape: oint32,
            dtype: DType,
            init: bool,
            explicitT: type(oT)): Empty[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Empty(*#, #, #, #)", constructor.}

proc empty*(scope: Scope,
            shape: oint32,
            dtype: type = oinvalid,
            init: bool = false): auto =
  return iiempty(scope,
                 shape,
                 dtype.oTF,
                 init,
                 dtype)

converter emptyToOut*[oT: oall](op: Empty[oT]): oT {.inline.} = return op.output


type EnsureShape*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"EnsureShape/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiensureShape[oT: oall](scope: Scope,
                  input: oT,
                  shape: TensorShape,
                  T: DType): EnsureShape[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"EnsureShape(*#, #, #, #)", constructor.}

proc ensureShape*[oT: oall](scope: Scope,
                  input: oT,
                  shape: TensorShape = [].shape): EnsureShape[oT] =
  return iiensureShape(scope,
                       input,
                       shape,
                       oT.oTF)

converter ensureShapeToOut*[oT: oall](op: EnsureShape[oT]): oT {.inline.} = return op.output

type ExpandDimsTdim* = oint32 | oint64

type ExpandDims*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ExpandDims/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiexpandDims[oT: oall](scope: Scope,
                 input: oT,
                 dim: ExpandDimsTdim,
                 T: DType): ExpandDims[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ExpandDims(*#, #, #, #)", constructor.}

proc expandDims*[oT: oall](scope: Scope,
                 input: oT,
                 dim: ExpandDimsTdim): ExpandDims[oT] =
  return iiexpandDims(scope,
                      input,
                      dim,
                      oT.oTF)

converter expandDimsToOut*[oT: oall](op: ExpandDims[oT]): oT {.inline.} = return op.output


type ExtractVolumePatches*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ExtractVolumePatches/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiextractVolumePatches[oT: oall](scope: Scope,
                           input: oT,
                           ksizes: ArraySlice[int],
                           strides: ArraySlice[int],
                           padding: cstring,
                           T: DType): ExtractVolumePatches[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ExtractVolumePatches(*#, #, #, #, tensorflow::string(#), #)", constructor.}

proc extractVolumePatches*[oT: oall](scope: Scope,
                           input: oT,
                           ksizes: openArray[int],
                           strides: openArray[int],
                           padding: cstring): ExtractVolumePatches[oT] =
  return iiextractVolumePatches(scope,
                                input,
                                newArraySlice(ksizes),
                                newArraySlice(strides),
                                padding,
                                oT.oTF)

converter extractVolumePatchesToOut*[oT: oall](op: ExtractVolumePatches[oT]): oT {.inline.} = return op.output

type Fillindex_type* = oint32 | oint64

type Fill*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Fill/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iifill[oT: oall](scope: Scope,
           dims: Fillindex_type,
           value: oT,
           T: DType): Fill[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Fill(*#, #, #, #)", constructor.}

proc fill*[oT: oall](scope: Scope,
           dims: Fillindex_type,
           value: oT): Fill[oT] =
  return iifill(scope,
                dims,
                value,
                oT.oTF)

converter fillToOut*[oT: oall](op: Fill[oT]): oT {.inline.} = return op.output

type GatherTindices* = oint32 | oint64

type Gather*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Gather/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iigather[oT: oall](scope: Scope,
             params: oT,
             indices: GatherTindices,
             validate_indices: bool,
             Tparams: DType): Gather[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Gather(*#, #, #, #, #)", constructor.}

proc gather*[oT: oall](scope: Scope,
             params: oT,
             indices: GatherTindices,
             validate_indices: bool = true): Gather[oT] =
  return iigather(scope,
                  params,
                  indices,
                  validate_indices,
                  oT.oTF)

converter gatherToOut*[oT: oall](op: Gather[oT]): oT {.inline.} = return op.output

type GatherNdTindices* = oint32 | oint64

type GatherNd*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"GatherNd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iigatherNd[oT: oall](scope: Scope,
               params: oT,
               indices: GatherNdTindices,
               Tparams: DType): GatherNd[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"GatherNd(*#, #, #, #)", constructor.}

proc gatherNd*[oT: oall](scope: Scope,
               params: oT,
               indices: GatherNdTindices): GatherNd[oT] =
  return iigatherNd(scope,
                    params,
                    indices,
                    oT.oTF)

converter gatherNdToOut*[oT: oall](op: GatherNd[oT]): oT {.inline.} = return op.output


type GuaranteeConst*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"GuaranteeConst/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiguaranteeConst[oT: oall](scope: Scope,
                     input: oT,
                     T: DType): GuaranteeConst[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"GuaranteeConst(*#, #, #)", constructor.}

proc guaranteeConst*[oT: oall](scope: Scope,
                     input: oT): GuaranteeConst[oT] =
  return iiguaranteeConst(scope,
                          input,
                          oT.oTF)

converter guaranteeConstToOut*[oT: oall](op: GuaranteeConst[oT]): oT {.inline.} = return op.output

type HistogramFixedWidthT* = oint32 | oint64 | ofloat | odouble

type HistogramFixedWidth*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"HistogramFixedWidth/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iihistogramFixedWidth[oT: oall](scope: Scope,
                          values: HistogramFixedWidthT,
                          value_range: HistogramFixedWidthT,
                          nbins: oint32,
                          dtype: DType,
                          explicitT: type(oT)): HistogramFixedWidth[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"HistogramFixedWidth(*#, #, #, #, #)", constructor.}

proc histogramFixedWidth*(scope: Scope,
                          values: HistogramFixedWidthT,
                          value_range: HistogramFixedWidthT,
                          nbins: oint32,
                          dtype: type = oint32): auto =
  return iihistogramFixedWidth(scope,
                               values,
                               value_range,
                               nbins,
                               dtype.oTF,
                               dtype)

converter histogramFixedWidthToOut*[oT: oall](op: HistogramFixedWidth[oT]): oT {.inline.} = return op.output


type Identity*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Identity/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiidentity[oT: oall](scope: Scope,
               input: oT,
               T: DType): Identity[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Identity(*#, #, #)", constructor.}

proc identity*[oT: oall](scope: Scope,
               input: oT): Identity[oT] =
  return iiidentity(scope,
                    input,
                    oT.oTF)

converter identityToOut*[oT: oall](op: Identity[oT]): oT {.inline.} = return op.output


type IdentityN*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"IdentityN/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iiidentityN[oT: oall](scope: Scope,
                input: olist[oT],
                T: ArraySlice[DType]): IdentityN[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"IdentityN(*#, #, #)", constructor.}

proc identityN*[oT: oall](scope: Scope,
                input: olist[oT],
                T: openArray[DType]): IdentityN[oT] =
  return iiidentityN(scope,
                     input,
                     newArraySlice(T))

converter identityNToOutList*[oT: oall](op: IdentityN[oT]): olist[oT] {.inline.} = return op.output


type OnesLike*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"OnesLike/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iionesLike[oT: oall](scope: Scope,
               x: oT,
               T: DType): OnesLike[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"OnesLike(*#, #, #)", constructor.}

proc onesLike*[oT: oall](scope: Scope,
               x: oT): OnesLike[oT] =
  return iionesLike(scope,
                    x,
                    oT.oTF)

converter onesLikeToOut*[oT: oall](op: OnesLike[oT]): oT {.inline.} = return op.output

type PadTpaddings* = oint32 | oint64

type Pad*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Pad/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iipad[oT: oall](scope: Scope,
          input: oT,
          paddings: PadTpaddings,
          T: DType): Pad[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Pad(*#, #, #, #)", constructor.}

proc pad*[oT: oall](scope: Scope,
          input: oT,
          paddings: PadTpaddings): Pad[oT] =
  return iipad(scope,
               input,
               paddings,
               oT.oTF)

converter padToOut*[oT: oall](op: Pad[oT]): oT {.inline.} = return op.output


type Placeholder*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Placeholder/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiplaceholder[oT: oall](scope: Scope,
                  dtype: DType,
                  shape: TensorShape,
                  explicitT: type(oT)): Placeholder[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Placeholder(*#, #, #)", constructor.}

proc placeholder*(scope: Scope,
                  dtype: type = oinvalid,
                  shape: TensorShape = [].shape): auto =
  return iiplaceholder(scope,
                       dtype.oTF,
                       shape,
                       dtype)

converter placeholderToOut*[oT: oall](op: Placeholder[oT]): oT {.inline.} = return op.output


type Print*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Print/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiprint[oT: oall](scope: Scope,
            input: oT,
            data: olist[oall],
            U: ArraySlice[DType],
            message: cstring,
            T: DType,
            first_n: int64,
            summarize: int64): Print[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Print(*#, #, #, #, tensorflow::string(#), #, #, #)", constructor.}

proc print*[oT: oall](scope: Scope,
            input: oT,
            data: olist[oall],
            U: openArray[DType],
            message: cstring,
            first_n: int64 = -1.int,
            summarize: int64 = 3.int): Print[oT] =
  return iiprint(scope,
                 input,
                 data,
                 newArraySlice(U),
                 message,
                 oT.oTF,
                 first_n,
                 summarize)

converter printToOut*[oT: oall](op: Print[oT]): oT {.inline.} = return op.output


type Range*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Range/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirange[oT: oall](scope: Scope,
            start: oT,
            limit: oT,
            delta: oT,
            Tidx: DType): Range[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Range(*#, #, #, #, #)", constructor.}

proc range*[oT: oall](scope: Scope,
            start: oT,
            limit: oT,
            delta: oT): Range[oT] =
  return iirange(scope,
                 start,
                 limit,
                 delta,
                 oT.oTF)

converter rangeToOut*[oT: oall](op: Range[oT]): oT {.inline.} = return op.output

type RankT* = oall

type Rank* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Rank/*'0*/".} = object
  operation*: Operation[oint32]
  output*: oint32

proc iirank(scope: Scope,
           input: RankT): Rank {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Rank(*#, #)", constructor.}

proc rank*(scope: Scope,
           input: RankT): Rank =
  return iirank(scope,
                input)

converter rankToOut*(op: Rank): oint32 {.inline.} = return op.output


type RealDiv*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"RealDiv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iirealDiv[oT: oall](scope: Scope,
              x: oT,
              y: oT,
              T: DType): RealDiv[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"RealDiv(*#, #, #, #)", constructor.}

proc realDiv*[oT: oall](scope: Scope,
              x: oT,
              y: oT): RealDiv[oT] =
  return iirealDiv(scope,
                   x,
                   y,
                   oT.oTF)

converter realDivToOut*[oT: oall](op: RealDiv[oT]): oT {.inline.} = return op.output

type ReshapeTshape* = oint32 | oint64

type Reshape*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Reshape/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireshape[oT: oall](scope: Scope,
              tensor: oT,
              shape: ReshapeTshape,
              T: DType): Reshape[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Reshape(*#, #, #, #)", constructor.}

proc reshape*[oT: oall](scope: Scope,
              tensor: oT,
              shape: ReshapeTshape): Reshape[oT] =
  return iireshape(scope,
                   tensor,
                   shape,
                   oT.oTF)

converter reshapeToOut*[oT: oall](op: Reshape[oT]): oT {.inline.} = return op.output


type Reverse*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Reverse/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iireverse[oT: oall](scope: Scope,
              tensor: oT,
              dims: obool,
              T: DType): Reverse[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Reverse(*#, #, #, #)", constructor.}

proc reverse*[oT: oall](scope: Scope,
              tensor: oT,
              dims: obool): Reverse[oT] =
  return iireverse(scope,
                   tensor,
                   dims,
                   oT.oTF)

converter reverseToOut*[oT: oall](op: Reverse[oT]): oT {.inline.} = return op.output

type RollTaxis* = oint32 | oint64
type RollTshift* = oint32 | oint64

type Roll*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Roll/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiroll[oT: oall](scope: Scope,
           input: oT,
           shift: RollTshift,
           axis: RollTaxis,
           T: DType): Roll[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Roll(*#, #, #, #, #)", constructor.}

proc roll*[oT: oall](scope: Scope,
           input: oT,
           shift: RollTshift,
           axis: RollTaxis): Roll[oT] =
  return iiroll(scope,
                input,
                shift,
                axis,
                oT.oTF)

converter rollToOut*[oT: oall](op: Roll[oT]): oT {.inline.} = return op.output

type ScatterNdTindices* = oint32 | oint64

type ScatterNd*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ScatterNd/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiscatterNd[oT: oall](scope: Scope,
                indices: ScatterNdTindices,
                updates: oT,
                shape: ScatterNdTindices,
                T: DType): ScatterNd[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ScatterNd(*#, #, #, #, #)", constructor.}

proc scatterNd*[oT: oall](scope: Scope,
                indices: ScatterNdTindices,
                updates: oT,
                shape: ScatterNdTindices): ScatterNd[oT] =
  return iiscatterNd(scope,
                     indices,
                     updates,
                     shape,
                     oT.oTF)

converter scatterNdToOut*[oT: oall](op: ScatterNd[oT]): oT {.inline.} = return op.output

type ShapeT* = oall

type Shape*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Shape/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iishape[oT: oall](scope: Scope,
            input: ShapeT,
            out_type: DType,
            explicitT: type(oT)): Shape[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Shape(*#, #, #)", constructor.}

proc shape*(scope: Scope,
            input: ShapeT,
            out_type: type = oint32): auto =
  return iishape(scope,
                 input,
                 out_type.oTF,
                 out_type)

converter shapeToOut*[oT: oall](op: Shape[oT]): oT {.inline.} = return op.output

type ShapeNT* = oall

type ShapeN*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ShapeN/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iishapeN[oT: oall](scope: Scope,
             input: olist[ShapeNT],
             out_type: DType,
             explicitT: type(oT)): ShapeN[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ShapeN(*#, #, #)", constructor.}

proc shapeN*(scope: Scope,
             input: olist[ShapeNT],
             out_type: type = oint32): auto =
  return iishapeN(scope,
                  input,
                  out_type.oTF,
                  out_type)

converter shapeNToOutList*[oT: oall](op: ShapeN[oT]): olist[oT] {.inline.} = return op.output

type SizeT* = oall

type Size*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Size/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisize[oT: oall](scope: Scope,
           input: SizeT,
           out_type: DType,
           explicitT: type(oT)): Size[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Size(*#, #, #)", constructor.}

proc size*(scope: Scope,
           input: SizeT,
           out_type: type = oint32): auto =
  return iisize(scope,
                input,
                out_type.oTF,
                out_type)

converter sizeToOut*[oT: oall](op: Size[oT]): oT {.inline.} = return op.output

type SliceIndex* = oint32 | oint64

type Slice*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Slice/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iislice[oT: oall](scope: Scope,
            input: oT,
            begin: SliceIndex,
            size: SliceIndex,
            T: DType): Slice[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Slice(*#, #, #, #, #)", constructor.}

proc slice*[oT: oall](scope: Scope,
            input: oT,
            begin: SliceIndex,
            size: SliceIndex): Slice[oT] =
  return iislice(scope,
                 input,
                 begin,
                 size,
                 oT.oTF)

converter sliceToOut*[oT: oall](op: Slice[oT]): oT {.inline.} = return op.output

type SpaceToBatchTpaddings* = oint32 | oint64

type SpaceToBatch*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"SpaceToBatch/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iispaceToBatch[oT: oall](scope: Scope,
                   input: oT,
                   paddings: SpaceToBatchTpaddings,
                   T: DType,
                   block_size: int64): SpaceToBatch[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"SpaceToBatch(*#, #, #, #, #)", constructor.}

proc spaceToBatch*[oT: oall](scope: Scope,
                   input: oT,
                   paddings: SpaceToBatchTpaddings,
                   block_size: int64 = 0.int): SpaceToBatch[oT] =
  return iispaceToBatch(scope,
                        input,
                        paddings,
                        oT.oTF,
                        block_size)

converter spaceToBatchToOut*[oT: oall](op: SpaceToBatch[oT]): oT {.inline.} = return op.output

type SpaceToBatchNDTblock_shape* = oint32 | oint64
type SpaceToBatchNDTpaddings* = oint32 | oint64

type SpaceToBatchND*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"SpaceToBatchND/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iispaceToBatchND[oT: oall](scope: Scope,
                     input: oT,
                     block_shape: SpaceToBatchNDTblock_shape,
                     paddings: SpaceToBatchNDTpaddings,
                     T: DType): SpaceToBatchND[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"SpaceToBatchND(*#, #, #, #, #)", constructor.}

proc spaceToBatchND*[oT: oall](scope: Scope,
                     input: oT,
                     block_shape: SpaceToBatchNDTblock_shape,
                     paddings: SpaceToBatchNDTpaddings): SpaceToBatchND[oT] =
  return iispaceToBatchND(scope,
                          input,
                          block_shape,
                          paddings,
                          oT.oTF)

converter spaceToBatchNDToOut*[oT: oall](op: SpaceToBatchND[oT]): oT {.inline.} = return op.output


type Split*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Split/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisplit[oT: oall](scope: Scope,
            split_dim: oint32,
            value: oT,
            num_split: int64,
            T: DType): Split[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Split(*#, #, #, #, #)", constructor.}

proc split*[oT: oall](scope: Scope,
            split_dim: oint32,
            value: oT,
            num_split: int64 = 0.int): Split[oT] =
  return iisplit(scope,
                 split_dim,
                 value,
                 num_split,
                 oT.oTF)

converter splitToOut*[oT: oall](op: Split[oT]): oT {.inline.} = return op.output


type Squeeze*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Squeeze/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iisqueeze[oT: oall](scope: Scope,
              input: oT,
              squeeze_dims: ArraySlice[int],
              T: DType): Squeeze[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Squeeze(*#, #, #, #)", constructor.}

proc squeeze*[oT: oall](scope: Scope,
              input: oT,
              squeeze_dims: openArray[int]): Squeeze[oT] =
  return iisqueeze(scope,
                   input,
                   newArraySlice(squeeze_dims),
                   oT.oTF)

converter squeezeToOut*[oT: oall](op: Squeeze[oT]): oT {.inline.} = return op.output


type Stack* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Stack/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iistack(scope: Scope,
            stack_name: cstring,
            elem_type: DType): Stack {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Stack(*#, tensorflow::string(#), #)", constructor.}

proc stack*(scope: Scope,
            stack_name: cstring,
            elem_type: type oall = oinvalid): Stack =
  return iistack(scope,
                 stack_name,
                 elem_type.oTF)

converter stackToOut*(op: Stack): ostring {.inline.} = return op.output

type StridedSliceIndex* = oint32 | oint64

type StridedSlice*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"StridedSlice/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iistridedSlice[oT: oall](scope: Scope,
                   input: oT,
                   begin: StridedSliceIndex,
                   nend: StridedSliceIndex,
                   strides: StridedSliceIndex,
                   T: DType,
                   shrink_axis_mask: int64,
                   begin_mask: int64,
                   end_mask: int64,
                   ellipsis_mask: int64,
                   new_axis_mask: int64): StridedSlice[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"StridedSlice(*#, #, #, #, #, #, #, #, #, #, #)", constructor.}

proc stridedSlice*[oT: oall](scope: Scope,
                   input: oT,
                   begin: StridedSliceIndex,
                   nend: StridedSliceIndex,
                   strides: StridedSliceIndex,
                   shrink_axis_mask: int64 = 0.int,
                   begin_mask: int64 = 0.int,
                   end_mask: int64 = 0.int,
                   ellipsis_mask: int64 = 0.int,
                   new_axis_mask: int64 = 0.int): StridedSlice[oT] =
  return iistridedSlice(scope,
                        input,
                        begin,
                        nend,
                        strides,
                        oT.oTF,
                        shrink_axis_mask,
                        begin_mask,
                        end_mask,
                        ellipsis_mask,
                        new_axis_mask)

converter stridedSliceToOut*[oT: oall](op: StridedSlice[oT]): oT {.inline.} = return op.output

type TileTmultiples* = oint32 | oint64

type Tile*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Tile/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitile[oT: oall](scope: Scope,
           input: oT,
           multiples: TileTmultiples,
           T: DType): Tile[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Tile(*#, #, #, #)", constructor.}

proc tile*[oT: oall](scope: Scope,
           input: oT,
           multiples: TileTmultiples): Tile[oT] =
  return iitile(scope,
                input,
                multiples,
                oT.oTF)

converter tileToOut*[oT: oall](op: Tile[oT]): oT {.inline.} = return op.output


type Timestamp* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Timestamp/*'0*/".} = object
  operation*: Operation[odouble]
  output*: odouble

proc iitimestamp(scope: Scope): Timestamp {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Timestamp(*#)", constructor.}

proc timestamp*(scope: Scope): Timestamp =
  return iitimestamp(scope)

converter timestampToOut*(op: Timestamp): odouble {.inline.} = return op.output

type TransposeTperm* = oint32 | oint64

type Transpose*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Transpose/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitranspose[oT: oall](scope: Scope,
                x: oT,
                perm: TransposeTperm,
                T: DType): Transpose[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Transpose(*#, #, #, #)", constructor.}

proc transpose*[oT: oall](scope: Scope,
                x: oT,
                perm: TransposeTperm): Transpose[oT] =
  return iitranspose(scope,
                     x,
                     perm,
                     oT.oTF)

converter transposeToOut*[oT: oall](op: Transpose[oT]): oT {.inline.} = return op.output


type TruncateDiv*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"TruncateDiv/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitruncateDiv[oT: oall](scope: Scope,
                  x: oT,
                  y: oT,
                  T: DType): TruncateDiv[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"TruncateDiv(*#, #, #, #)", constructor.}

proc truncateDiv*[oT: oall](scope: Scope,
                  x: oT,
                  y: oT): TruncateDiv[oT] =
  return iitruncateDiv(scope,
                       x,
                       y,
                       oT.oTF)

converter truncateDivToOut*[oT: oall](op: TruncateDiv[oT]): oT {.inline.} = return op.output


type TruncateMod*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"TruncateMod/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iitruncateMod[oT: oall](scope: Scope,
                  x: oT,
                  y: oT,
                  T: DType): TruncateMod[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"TruncateMod(*#, #, #, #)", constructor.}

proc truncateMod*[oT: oall](scope: Scope,
                  x: oT,
                  y: oT): TruncateMod[oT] =
  return iitruncateMod(scope,
                       x,
                       y,
                       oT.oTF)

converter truncateModToOut*[oT: oall](op: TruncateMod[oT]): oT {.inline.} = return op.output


type Unique*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Unique/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiunique[oT: oall](scope: Scope,
             x: oT,
             T: DType,
             out_idx: DType): Unique[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Unique(*#, #, #, #)", constructor.}

proc unique*[oT: oall](scope: Scope,
             x: oT,
             out_idx: type(oint32) | type(oint64) = oint32): Unique[oT] =
  return iiunique(scope,
                  x,
                  oT.oTF,
                  oT.oTF)

converter uniqueToOut*[oT: oall](op: Unique[oT]): oT {.inline.} = return op.output


type UniqueWithCounts*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"UniqueWithCounts/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiuniqueWithCounts[oT: oall](scope: Scope,
                       x: oT,
                       T: DType,
                       out_idx: DType): UniqueWithCounts[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"UniqueWithCounts(*#, #, #, #)", constructor.}

proc uniqueWithCounts*[oT: oall](scope: Scope,
                       x: oT,
                       out_idx: type(oint32) | type(oint64) = oint32): UniqueWithCounts[oT] =
  return iiuniqueWithCounts(scope,
                            x,
                            oT.oTF,
                            oT.oTF)

converter uniqueWithCountsToOut*[oT: oall](op: UniqueWithCounts[oT]): oT {.inline.} = return op.output


type UnravelIndex*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"UnravelIndex/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iiunravelIndex[oT: oall](scope: Scope,
                   indices: oT,
                   dims: oT,
                   Tidx: DType): UnravelIndex[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"UnravelIndex(*#, #, #, #)", constructor.}

proc unravelIndex*[oT: oall](scope: Scope,
                   indices: oT,
                   dims: oT): UnravelIndex[oT] =
  return iiunravelIndex(scope,
                        indices,
                        dims,
                        oT.oTF)

converter unravelIndexToOut*[oT: oall](op: UnravelIndex[oT]): oT {.inline.} = return op.output


type Variable*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Variable/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iivariable[oT: oall](scope: Scope,
               container: cstring,
               shared_name: cstring,
               shape: TensorShape,
               dtype: DType,
               explicitT: type(oT)): Variable[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Variable(*#, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc variable*(scope: Scope,
               container: cstring,
               shared_name: cstring,
               shape: TensorShape = [].shape,
               dtype: type = oinvalid): auto =
  return iivariable(scope,
                    container,
                    shared_name,
                    shape,
                    dtype.oTF,
                    dtype)

converter variableToOut*[oT: oall](op: Variable[oT]): oT {.inline.} = return op.output


type VariableV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"VariableV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iivariableV2[oT: oall](scope: Scope,
                 container: cstring,
                 shared_name: cstring,
                 shape: TensorShape,
                 dtype: DType,
                 explicitT: type(oT)): VariableV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"VariableV2(*#, tensorflow::string(#), tensorflow::string(#), #, #)", constructor.}

proc variableV2*(scope: Scope,
                 container: cstring,
                 shared_name: cstring,
                 shape: TensorShape = [].shape,
                 dtype: type = oinvalid): auto =
  return iivariableV2(scope,
                      container,
                      shared_name,
                      shape,
                      dtype.oTF,
                      dtype)

converter variableV2ToOut*[oT: oall](op: VariableV2[oT]): oT {.inline.} = return op.output

type WhereT* = ofloat | odouble | oint32 | ouint8 | oint16 | oint8 | ocomplex64 | oint64 | oqint8 | oquint8 | oqint32 | obfloat16 | ouint16 | ocomplex128 | ohalf | ouint32 | ouint64 | obool

type Where* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Where/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iiwhere(scope: Scope,
            input: WhereT): Where {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"Where(*#, #)", constructor.}

proc where*(scope: Scope,
            input: WhereT): Where =
  return iiwhere(scope,
                 input)

converter whereToOut*(op: Where): oint64 {.inline.} = return op.output


type While*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"While/*'0*/".} = object
  operation*: Operation[oT]
  output*: olist[oT]

proc iinwhile[oT: oall](scope: Scope,
             input: olist[oT],
             T: ArraySlice[DType],
             cond: NameAttrList,
             body: NameAttrList,
             output_shapes: ArraySlice[TensorShape]): While[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"While(*#, #, #, #, #, #)", constructor.}

proc nwhile*[oT: oall](scope: Scope,
             input: olist[oT],
             T: openArray[DType],
             cond: NameAttrList,
             body: NameAttrList,
             output_shapes: openArray[TensorShape]): While[oT] =
  return iinwhile(scope,
                  input,
                  newArraySlice(T),
                  cond,
                  body,
                  newArraySlice(output_shapes))

converter nwhileToOutList*[oT: oall](op: While[oT]): olist[oT] {.inline.} = return op.output


type ZerosLike*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ZerosLike/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iizerosLike[oT: oall](scope: Scope,
                x: oT,
                T: DType): ZerosLike[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/gen/gen.h", importcpp:"ZerosLike(*#, #, #)", constructor.}

proc zerosLike*[oT: oall](scope: Scope,
                x: oT): ZerosLike[oT] =
  return iizerosLike(scope,
                     x,
                     oT.oTF)

converter zerosLikeToOut*[oT: oall](op: ZerosLike[oT]): oT {.inline.} = return op.output

