import ../utils/utils
import sequtils
import typeinfo
{.hint[XDeclaredButNotUsed]:off.}

## TensorShape related definitions

type
  TensorShape* {.header: tensor,
                 importcpp: "tensorflow::PartialTensorShape" .} = object


proc inewTensorShape(dims: openArray[int], len: int, shape: TensorShape) {.header: tensor,
                                                                           importcpp: "tensorflow::PartialTensorShape::MakePartialShape(#, #, &#)".}

proc newTensorShape(dims: openArray[int]): TensorShape =
  let tshape = TensorShape()
  inewTensorShape(dims, dims.len, tshape)
  return tshape

proc toCPPStr(ten: TensorShape): cppstring {.header: "<sstream>",
                                             header: tensor,
                                             importcpp: "[&]() {std::stringstream s; s << #; return s.str(); }()".}

proc `$`*(ten: TensorShape) : string = 
  var cppstr = toCPPStr(ten)
  var cstr = newString(cppstr.size())

  copyMem(addr(cstr[0]), cppstr.c_str(), cppstr.size())

  return cstr

type
  DType* {.header: client_session, importcpp: "tensorflow::DataType".} = enum 
    TF_FLOAT = 1, TF_DOUBLE = 2, TF_INT32 = 3, ##  Int32 tensors are always in 'host' memory.
    TF_UINT8 = 4, TF_INT16 = 5, TF_INT8 = 6, TF_STRING = 7, TF_COMPLEX64 = 8, ##  Single-precision complex
    TF_INT64 = 9, TF_BOOL = 10, TF_QINT8 = 11, ##  Quantized int8
    TF_QUINT8 = 12,             ##  Quantized uint8
    TF_QINT32 = 13,             ##  Quantized int32
    TF_BFLOAT16 = 14,           ##  Float32 truncated to 16 bits.  Only for cast ops.
    TF_QINT16 = 15,             ##  Quantized int16
    TF_QUINT16 = 16,            ##  Quantized uint16
    TF_UINT16 = 17, TF_COMPLEX128 = 18, ##  Double-precision complex
    TF_HALF = 19, TF_RESOURCE = 20, TF_VARIANT = 21, TF_UINT32 = 22, TF_UINT64 = 23 

const
  TF_COMPLEX = TF_COMPLEX64

## Tensor related definitions
type
  Tensor* {.header: memory,
            header: tensor,
            importcpp: "std::shared_ptr<tensorflow::Tensor>" .} = object

proc toCPPStr(ten: Tensor): cppstring {.header: "<sstream>",
                                        importcpp: "[&]() {std::stringstream s; s << #->DebugString(); return s.str(); }()" .} 

proc toValueCPPStr(ten: Tensor): cppstring {.header: "<sstream>",
                                             importcpp: "[&]() {std::stringstream s; s << #->SummarizeValue(100, true); return s.str(); }()" .} 


proc `$`*(ten: Tensor) : string =
  var cppstr = toCPPStr(ten)
  var cstr = newString(cppstr.size())

  copyMem(addr(cstr[0]), cppstr.c_str(), cppstr.size())

  return cstr

proc toValueStr*(ten: Tensor) : string =
  var cppstr = toValueCPPStr(ten)
  var cstr = newString(cppstr.size())

  copyMem(addr(cstr[0]), cppstr.c_str(), cppstr.size())

  return cstr

proc copyF*[T](ten: Tensor, arr: ptr T, len:int, offset:int) {.importcpp:"auto tmp = #; double* a = (double*)#; auto eigen_ten = tmp->flat<float>().data(); for(int j = #; j > (#-1); j--) eigen_ten[j] = (float)a[j]".}

proc copyI*[T](ten: Tensor, arr: ptr T, len:int, offset:int) {.importcpp:"auto tmp = #; int64_t* a = (int64_t*)#; auto eigen_ten = tmp->flat<int>().data(); for(int j = #; j > (#-1); j--) eigen_ten[j] = (int)a[j]".}


proc shape*(ten: Tensor) : TensorShape {.header: tensor, 
                                         importcpp:"#->shape()".}

proc newTensor*(dtype: DType, shape: TensorShape) : Tensor {.header: tensor,
                                                             importcpp: "[&](){ auto _dtype = #; auto _shape = #; tensorflow::TensorShape _tshape; _shape.AsTensorShape(&_tshape); return std::make_shared<tensorflow::Tensor>(_dtype, _tshape); }()".}

proc newTensor*(dtype: DType, shape: openArray[int]) : Tensor =
  let sh = newTensorShape(shape)
  return newTensor(dtype, sh)

proc `$@`*[N,T](arr: array[N,T]): Tensor = 
  return newTensor(arr)

proc getShapeHelper[T](x:T, shape: var seq[int]) = 
  return

proc getShapeHelper[N,T](arr: array[N,T], shape: var seq[int]) = 
  shape.add(arr.len)
  getShapeHelper(arr[0], shape)

proc getShape[N,T](arr: array[N,T]) : seq[int] = 
  var shape: seq[int] = @[]
  getShapeHelper(arr, shape)
  return shape

proc prod*(s: seq[int]): int =
  var res: int = 1
  for it in s:
    res *= it
  return res

proc getAnyKind[T](x: var T): AnyKind = 
  return x.toAny.kind

proc getAnyKind[N,T](arr: var array[N,T]): AnyKind = 
  return getAnyKind(arr[0])

proc newTensor*[N,T](arr: array[N,T]) : Tensor =
  let sh = getShape(arr)
  var ten: Tensor 
  var forkind = arr
  let kind = getAnyKind(forkind)

  if kind == akFloat:
    ten = newTensor(TF_FLOAT, sh) 
    ten.copyF(unsafeAddr(arr[0]), prod(sh) - 1, 0)
  
  elif kind == akInt: 
    ten = newTensor(TF_INT32, sh) 
    ten.copyI(unsafeAddr(arr[0]), prod(sh) - 1, 0)
  
  else: raise newException(OSError, "Type not supported!")
  
  return ten

# TODO: clean up this hack
proc newTensor(s: int) : Tensor {.header: memory,
                                  header: tensor,
                                  importcpp: "[&](){ auto _x = std::make_shared<tensorflow::Tensor>(tensorflow::DT_INT32, tensorflow::TensorShape()); _x->scalar<int>()(0) = (int)#; return _x; }()".}

proc newTensor(s: float) : Tensor {.header: memory,
                                    header: tensor,
                                    importcpp: "[&](){ auto _x = std::make_shared<tensorflow::Tensor>(tensorflow::DT_FLOAT, tensorflow::TensorShape()); _x->scalar<float>()(0) = (float)#; return _x; }()".}


## TensorVec related definitions
type
  TensorVec* {.header: vector,
              header: tensor,
              importcpp: "std::vector<tensorflow::Tensor>" .} = object

proc inewTensorVec(args: openArray[Tensor], len: int) : TensorVec {.header: tensor,
                                                                    header: vector,
                                                                    importcpp: "[&]() { std::vector<tensorflow::Tensor> vec; auto _args = #; auto _len = #; vec.resize(_len); for(int i = 0; i < _len; i++) vec.push_back(*_args[i]); return vec;} ()".}

proc newTensorVec*(args: varargs[Tensor]) : TensorVec = 
  return inewTensorVec(args, args.len)

proc size(tensorVec: TensorVec) : int {.importcpp: "#.size()".}

proc idx(tensorVec: TensorVec, idx: cint) : Tensor {.header: memory, 
                                                     header: tensor,
                                                     importcpp: "std::make_shared<tensorflow::Tensor>(std::move(#[#]))".}

proc `[]`*(tensorVec: TensorVec, idx: cint) : Tensor = 
  return tensorVec.idx(idx)


## Output related definitions
type
  Out* {.header: std_ops,
         importcpp: "tensorflow::Output".} = object

## Output related definitions
type
  OutList* {.header: std_ops,
             importcpp: "tensorflow::OutputList".} = object

proc newOutList(outs: openArray[Out], len: int): OutList {.header:std_ops, 
                                                           header:vector,
                                                           importcpp:"[&]() { auto _args = (tensorflow::Output*)&#[0]; int _len = #; std::vector<tensorflow::Output> _vec(_args, _args + _len); return _vec; }()".}

proc newOutList(outs: varargs[Out]): OutList =
  return newOutList(outs, outs.len)

proc `[]`(outs: OutList, idx: int): Out {.importcpp:"#[#]".}
 
proc size(outs: OutList): int {.importcpp:"#.size()".}

iterator items(outs: OutList): Out =
  var i = 0
  while i <= outs.size()-1:
    yield outs[i]
    inc i

## Output related definitions
type
  InList* {.header: std_ops,
            header: memory,
            importcpp: "std::shared_ptr<tensorflow::InputList>".} = object

proc newInList(tens: openArray[Tensor], len: int): InList {.header:std_ops, 
                                                            header:vector,
                                                            header:memory,
                                                            importcpp:"[&]() { auto _args = #; int _len = #; std::vector<tensorflow::Input> _vec; for(int i = 0; i < _len; i++) _vec.emplace_back(tensorflow::Input(*_args[i])); return std::make_shared<tensorflow::InputList>(_vec); }()".}

proc newInList(tens: varargs[Tensor]): InList =
  return newInList(tens, tens.len)

## Scope related definitions
type
  Scope* {.header: memory,
           header: client_session,
           importcpp: "std::shared_ptr<tensorflow::Scope>".} = object

proc newRootScope*(): Scope {.header: client_session,
                              header: memory,
                              importcpp: "std::make_shared<tensorflow::Scope>(std::move(tensorflow::Scope::NewRootScope()))".}

proc ok*(root: Scope) : bool {.importcpp: "#->ok()".}

## Session related definitions
type
  Session {.header: memory,
            header: client_session,
            importcpp: "std::shared_ptr<tensorflow::ClientSession>".} = object

proc inewSession(root: Scope): Session {.header: memory,
                                         header: client_session,
                                         importcpp: "std::make_shared<tensorflow::ClientSession>(*#)".}

proc irunSession(sess: Session, graph: Out, outputs: TensorVec) {.header: client_session,
                                                                  importcpp: "TF_CHECK_OK((*#).Run({#}, &#))".}

proc irunSession(sess: Session, graph: OutList, outputs: TensorVec) {.header: client_session,
                                                                      importcpp: "TF_CHECK_OK((*#).Run(#, &#))".}

proc runSession*(root:Scope, graph: Out) : TensorVec =
  var outputs: TensorVec

  irunSession(inewSession(root), graph, outputs)

  return outputs

proc runSession*(root:Scope, graph: OutList) : TensorVec =
  var outputs: TensorVec

  irunSession(inewSession(root), graph, outputs)

  return outputs

## ArraySlice related definitions

#[
  ArraySlice is a wrapper around the tensorflow::gtl::ArraySlice class
  which itself is a wrapper around the absl::Span type from the abseil C++ Library. 

  This particular wrapper should work with every type except for the Tensor type because
  with the curret Version interfacing with C++ Methods would be pretty dirty due the fact
  that the Tensor type exposed by this library only is a pointer to a C++ Tensor. Now given
  the fact that it is not needed right now it probably will not be implemented soon.

  For implemention details see:
  https://github.com/abseil/abseil-cpp/blob/master/absl/types/span.h
]#
type
  ArraySlice*{.header: tensor,
               importcpp: "tensorflow::gtl::ArraySlice<'0>".}[T] = object

#[
  C++ Constructor Wrapper using a hack because the imported template argument is 
  transformed to the whole type plus the template argument instead of only the template
  argument. (meaning: tensorflow::gtl::ArraySlice<float> instead of float)
]#
proc inewArraySlice[T](data: openArray[T], len: int): ArraySlice[T] {.header: tensor,
                                                                      importcpp: "'0(#, #)".}

#[
  Constructor exposed to nim interface rasing an exception when called with the Tensor type due 
  the reason described in the type definition.
]#
proc newArraySlice*[T](data: openArray[T]): ArraySlice[T] = 
  if data is openArray[Tensor]:
    raise newException(Exception, "DataType Tensor is not allowed for ArraySlice!")

  return inewArraySlice(data, data.len)

proc `[]`*[T](slice: ArraySlice[T], idx: int): T {.importcpp: "#[#]".}

proc size*[T](slice: ArraySlice[T]): int {.importcpp: "#.size()".}

proc newArraySlice*[cppstring](sliceString: ArraySlice[string]): ArraySlice[cppstring] = 
  var buffer: seq[cppstring] = @[]

  for i in 0..sliceString.size()-1: 
    buffer.add(newCPPString(sliceString[i]))
  
  let sliceCPPStr = newArraySlice(buffer)

  return sliceCPPStr

export TensorShape,
       newTensorShape,
       `$`,
       DType,
       Tensor,
       newTensor,
       shape,
       TensorVec,
       size,
       `[]`,
       Out,
       OutList,
       newOutList,
       InList,
       newInList,
       Scope,
       newRootScope,
       runSession,
       ArraySlice,
       newArraySlice,
       `$@`
