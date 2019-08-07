## The core module implements all the necessary ground work needed to construct a computation graph interface
## with and manipulate tensors. 

import ../utils/utils
import sequtils
import typetraits
import tables
import macros
import complex
#import complex
{.hint[XDeclaredButNotUsed]:off.}

## TensorShape related definitions
type
  TensorShape* {.header: tensor,
                 importcpp: "tensorflow::PartialTensorShape".} = object
    ## Type used to construct shapes for Tensors. As the PartialTensorShape is intended for in the c++ API.
    ## The "real" TensorShape Type as exsists in the c++ API isn't implemented in this interface as I see no
    ## use for it. It is only casted into on the c++ level when a Tensor is constructed. 


proc inewTensorShape(dims: openArray[int], len: int, shape: TensorShape) {.header: tensor,
                                                                           importcpp: "tensorflow::PartialTensorShape::MakePartialShape(#, #, &#)".}
  ## C++ Constructor Wrapper creating a new TensorShape.
  ##
  ## Args:
  ##  dims: Array of ints describing the dimensions of the Tensor.
  ##  len: Length of the dims Array.
  ##  shape: The Shape that is supposed to represent these dimensions.  

proc newTensorShape*(dims: openArray[int]): TensorShape =
  let tshape = TensorShape()
  inewTensorShape(dims, dims.len, tshape)
  return tshape

  ## TensorShape Constructor.
  ##
  ## Args:
  ##   dims: Array of ints describing the dimensions of the Tensor.
  ## Returns:
  ##   A new TensorShape with given dimensions.

proc toCPPStr(shape: TensorShape): cppstring {.header: "<sstream>",
                                             header: tensor,
                                             importcpp: "[&]() {std::stringstream s; s << #; return s.str(); }()".}

  ## A Method to get a cppstring representation of the TensorShape.
  ## 
  ## Args:
  ##   shape: The TensorShape it is applied on.
  ## Returns:
  ##   A new cppstring representing of the TensorShape.

proc `$`*(shape: TensorShape) : string = 
  var cppstr = toCPPStr(shape)
  var cstr = newString(cppstr.len())

  copyMem(addr(cstr[0]), cppstr.c_str(), cppstr.len())

  return cstr

  ## String conversion for TensorShapes.
  ## 
  ## Args:
  ##   shape: The TensorShape it is applied on. 
  ## Returns:
  ##   A new cppstring representing of the TensorShape.

proc `[]`*(shape: TensorShape, i: int32): int32 {.importcpp:"#[#]".}

proc dim_size*(shape: TensorShape, i: int32): int32 {.importcpp:"#.dim_size(#)".}

  ## Gets the size of the provided dimension.
  ## 
  ## Args:
  ##   shape: The TensorShape it is applied on. 
  ##   i: dimension index.
  ## Returns:
  ##   The size of the dimension.

proc dims*(shape: TensorShape): int {.importcpp:"#.dims()".}

  ## Gets the number of dimensions aka the rank.
  ## 
  ## Args:
  ##   shape: The TensorShape it is applied on. 
  ## Returns:
  ##   The number of dimensions.

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

    # An Enum holding the integers corresponding to the Tensorflow DataTypes.

const
  TF_COMPLEX = TF_COMPLEX64

const typeLookUp* = {
  "float"                    : TF_DOUBLE,
  "float32"                  : TF_FLOAT,
  "float64"                  : TF_DOUBLE, 
  "int"                      : TF_INT64,
  "int32"                    : TF_INT32,
  "uint8"                    : TF_UINT8,
  "int16"                    : TF_INT16,
  "int8"                     : TF_INT8, 
  "cppstring"                : TF_STRING, 
  "Complex[system.float64]"  : TF_COMPLEX64,
  "int64"                    : TF_INT64, 
  "bool"                     : TF_BOOL, 
  "uint16"                   : TF_UINT16, 
  "uint32"                   : TF_UINT32,
  "uint64"                   : TF_UINT64
  #TF_COMPLEX128, 
  #TF_QINT8, 
  #TF_QUINT8,           
  #TF_QINT32,           
  #TF_BFLOAT16,         .
  #TF_QINT16,           
  #TF_QUINT16,          
  #TF_HALF, 
  #TF_RESOURCE, 
  #TF_VARIANT,
}.toTable

const typeLookUpReverse* = {
  TF_DOUBLE    : "float",     
  TF_FLOAT     : "float32",  
  TF_DOUBLE    : "float64",   
  TF_INT64     : "int",  
  TF_INT32     : "int32",  
  TF_UINT8     : "uint8",  
  TF_INT16     : "int16",  
  TF_INT8      : "int8",  
  TF_STRING    : "cppstring",   
  TF_COMPLEX64 : "Complex[system.float64]",  
  TF_INT64     : "int64",   
  TF_BOOL      : "bool",   
  TF_UINT16    : "uint16",   
  TF_UINT32    : "uint32",   
  TF_UINT64    : "uint64"                 
  #TF_COMPLEX128, 
  #TF_QINT8, 
  #TF_QUINT8,           
  #TF_QINT32,           
  #TF_BFLOAT16,         .
  #TF_QINT16,           
  #TF_QUINT16,          
  #TF_HALF, 
  #TF_RESOURCE, 
  #TF_VARIANT,
}.toTable

proc tf(dtype: typedesc): DType =
    return typeLookUp[dtype.name]

## Tensor related definitions
type
  Tensor* {.header: memory,
            header: tensor,
            importcpp: "std::shared_ptr<tensorflow::Tensor>" .} = object
    ## The Tensor Type is really a shared pointer to a Tensor. This makes it a whole lot easier to work with because
    ## a Tensor constructed in one nim stackframe would be destructed at the end of that stackframe but it might have
    ## a use in a different stackframe therefore accessing freed memory and throwing a segfault. With a smart pointer 
    ## this can be avoided because it keeps the object alive as long the there is reference on it enabling the Tensor 
    ## to live across multiple stackframes.

proc toValueCPPStr(ten: Tensor, len: int): cppstring 
  {.header: "<sstream>",
  importcpp: "[&]() {std::stringstream s; s << #->SummarizeValue(#, true); return s.str(); }()" .} 

  ## A Method to get a cppstring representation of the first 100 Values of the Tensor.
  ##
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   A new cppstring representing the first 100 Values of the Tensor.

proc toValueStr*(ten: Tensor, len: int) : string =
  var cppstr = toValueCPPStr(ten, len)
  var cstr = newString(cppstr.len())

  copyMem(addr(cstr[0]), cppstr.c_str(), cppstr.len())

  return cstr

  ## A Method to get a string representation of the first 100 Values of the Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   A new string representing the first 100 Values of the Tensor.

proc shape*(ten: Tensor) : TensorShape {.header: tensor, 
                                         importcpp:"#->shape()".}

  ## A Method to get the shape of a Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   The Shape of the Tensor.

proc dtype*(ten: Tensor) : DType {.header: tensor, 
                                   importcpp:"#->dtype()".}

  ## A Method to get the dtype of a Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   The Dtype of the Tensor.


proc `$`*(ten: Tensor) : string =
  return "Tensor<type: " & $typeLookUpReverse[ten.dtype()] &
          " shape: " & $ten.shape &
          " values: " & ten.toValueStr(1) & ">"

  ## String conversion for Tensors.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on. 
  ## Returns:
  ##   A new string representing the Tensor.

proc slice*(ten: Tensor, start: int, stop: int): Tensor 
  {.header: tensor,
    header: memory,
    importcpp:"std::make_shared<tensorflow::Tensor>(std::move(#->Slice(#, #)))".}

  ## A Method to get the dtype of a Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   The Dtype of the Tensor.

proc newTensor*(dtype: DType, shape: TensorShape) : Tensor {.header: tensor,
                                                             importcpp: "[&](){ auto _dtype = #; auto _shape = #; tensorflow::TensorShape _tshape; _shape.AsTensorShape(&_tshape); return std::make_shared<tensorflow::Tensor>(_dtype, _tshape); }()".}

  ## Tensor Constructor.
  ## 
  ## Args:
  ##   dtype: The DType of a Tensor.
  ##   shape: The shape the Tensor is supposed to have.
  ## Returns:
  ##   A new Tensor with given dtype and shape.

proc newTensor*(dtype: DType, shape: openArray[int]) : Tensor =
  let sh = newTensorShape(shape)
  return newTensor(dtype, sh)

  ## Convinience Tensor Constructor constructing a Tensorshape for you.
  ## 
  ## Args:
  ##   dtype: The DType of a Tensor.
  ##   shape: The shape the Tensor is supposed to have represented by an array.
  ## Returns:
  ##   A new Tensor with given dtype and shape.

proc `$@`*[N,T](arr: array[N,T]): Tensor = 
  return newTensor(arr)

  ## Shorthand for creating a Tensor from an array.
  ## 
  ## Args:
  ##   arr: The array that should be converted to a Tensor.
  ## Returns:
  ##   A new Tensor with the given data.

proc getShapeHelper[T](x:T, shape: var seq[int]) = 
  return

  ## A recursive method for finding the diminensions of an array. This is the last function call stopping the
  ## recursion when it is not an array anymore but a value instead.
  ## 
  ## Args:
  ##   x: A value.
  ##   shape: A sequence to which dimensions are appended.

proc getShapeHelper[N,T](arr: array[N,T], shape: var seq[int]) = 
  shape.add(arr.len)
  getShapeHelper(arr[0], shape)

  ## A recursive method for finding the diminensions of an array.
  ##   
  ## Args:
  ##   arr: The array you want to find the dimensions from.
  ##   shape: A sequence to which dimensions are appended.

proc getShape[N,T](arr: array[N,T]) : seq[int] = 
  var shape: seq[int] = @[]
  getShapeHelper(arr, shape)
  return shape

  ## A recursive method for finding the diminensions of an array.
  ## 
  ## Args:
  ##   arr: The array you want to find the dimensions from.
  ## Returns:
  ##   The dimensions of the given array.

proc prod(s: seq[int]): int =
  var res: int = 1
  for it in s:
    res *= it
  return res

  ## A method for getting the product of a sequence.
  ## 
  ## Args:
  ##   s: The sequence you want to get the product from.
  ## Returns:
  ##   The product of the given sequence.

proc getBaseEl[T](arr: T): T = arr

  ## A recursive method for getting the base type of an Array. This is the last function call stopping the
  ## recursion when it is not an array anymore but a value instead.
  ## 
  ## Args:
  ##   x: A value.
  ## Returns:
  ##   The type of the value.

proc getBaseEl[N,T](arr: array[N,T]): auto = 
  return getBaseEl(arr[0])

  ## A recursive method for getting the base element with the base type of an Array. 
  ## ([[[[0,0],[1,1]]]], array[0..0, array[0..0, array[0..1, array[0..1, int]]]] -> 0 int)
  ## 
  ## Args:
  ##   arr: The array you want the base type from.
  ## Returns:
  ##   The base type of the array.

## Flat related definitions
type
  Flat*[T] {.header: tensor,
             importcpp: "std::shared_ptr<tensorflow::TTypes<'0>::Flat>".} = object
    ## The Flat Type is a way of accessing the underlying memory of a tensor as flat buffer without any dimensionality.

proc flat*[T](ten: Tensor, x:T): Flat[T] {.header:tensor,
                                           importcpp:"std::make_shared<tensorflow::TTypes<'2>::Flat>(std::move(#->flat<'2>()))".}

  ## A method returning the flat buffer of a Tensor with the given type.
  ## 
  ## Args:
  ##   flat: A Flat variable to initalize.
  ##   ten: The tensor it is applied on.
  ## Returns:
  ##   A new Flat object "referencing" the data of the Tensor.

proc len*[T](flat: Flat[T]): int {.importcpp:"#->size()".}

  ## Size method to get the number of elements in the Flat object.
  ## 
  ## Args:
  ##   flat: The Flat object it is applied on.
  ## Returns:
  ##   The number of elements.

proc asPtr*[T](flat: Flat[T]): ptr T {.importcpp:"#->data()".}

  ## Proc converting the Flat type to raw buffer.
  ## 
  ## Args:
  ##   flat: The Flat object it is applied on.
  ## Returns:
  ##   A pointer to the Flat buffer memory.

proc `[]`*[T](flat: Flat[T], i: int): T {.importcpp:"(*#)(#)".}

proc `[]=`*[T](flat: Flat[T], i: int, val: T) {.importcpp:"(*#)(#) = #".}

proc mean*[T](flat: Flat[T]) : T = 
  let size = flat.len()
  var sum: T = 0

  for i in 0..size-1:
    sum += flat[i]

  return sum / size.T 

  ## Calculates the mean of all elements in the buffer.
  ## 
  ## Args:
  ##   flat: The Flat object it is applied on.
  ## Returns:
  ##   Returns the mean.

## Matrix related definitions
type
  Matrix*[T] {.header: tensor,
               importcpp: "std::shared_ptr<tensorflow::TTypes<'0>::Matrix>".} = object
    ## The Matrx Type is a way of accessing the underlying memory of a tensor as a Matirx.


proc matrix*[T](ten: Tensor, x:T): Matrix[T] {.importcpp:"std::make_shared<tensorflow::TTypes<'2>::Matrix>(std::move(#->matrix<'2>()))".}

  ## A method returning the Matrix from a Tensor with the given type.
  ## 
  ## Args:
  ##   mat: A Matrix variable to initalize.
  ##   ten: The tensor it is applied on.
  ## Returns:
  ##   A new Flat object "referencing" the data of the Tensor.

proc `[]`*[T](flat: Matrix[T], i: int, j: int): T {.importcpp:"(*#)(#, #)".}

proc `[]=`*[T](flat: Matrix[T], i: int, j: int, val: T) {.importcpp:"(*#)(#, #) = #".}


## Scalar related definitions
type
  Scalar*[T] {.header: tensor,
               importcpp: "std::shared_ptr<tensorflow::TTypes<'0>::Scalar>".} = object
    ## The Scalar Type is a way of accessing the underlying memory of a tensor as a Scalar.

proc scalar*[T](ten: Tensor, x:T): Scalar[T] {.importcpp:"std::make_shared<tensorflow::TTypes<'2>::Scalar>(std::move(#->scalar<'2>()))".}

  ## A method returning the Scalar from a Tensor with the given type.
  ## 
  ## Args:
  ##   scal: A Scalar variable to initalize.
  ##   ten: The tensor it is applied on.
  ## Returns:
  ##   A new Scalar object "referencing" the data of the Tensor.

proc set*[T](flat: Scalar[T], val: T) {.importcpp:"(*#)(0) = #".}

proc get*[T](flat: Scalar[T]): T {.importcpp:"(*#)(0)".}

#[
## TensorMap related definitions
type
  TensorMap*[T, N] {.header: tensor,
                  importcpp: "tensorflow::TTypes<'0, '1>::Matirx".} = object
    ## The TensorMap Type is a way of accessing the underlying memory of a tensor as a tensor.

proc tensorMap*[T, N](map: TensorMap[T, N], ten: Tensor) {.importcpp:"# = #->tensor<'0, '1>()".}

  ## A method returning the TensorMap from a Tensor with the given type.
  ## 
  ## Args:
  ##   map: A TensorMap variable to initalize.
  ##   ten: The tensor it is applied on.
  ## Returns:
  ##   A new TensorMap object "referencing" the data of the Tensor.

proc `[]`*[T, N](map: TensorMap[T, N], idxs: varargs[int]): T {.importcpp:"[](){ auto _map = #; auto _idxs = #; std::array<Eigen::DenseIndex, '1> _idx; std::copy(std::begin(_idxs), std::end(_idxs), _idx.begin()); return _map->(_idx); }()".}

proc `[]=`*[T, N](map: TensorMap[T, N], idxs: varargs[int], val: T) {.importcpp:"auto _map = #; auto _idxs = #; std::array<Eigen::DenseIndex, '1> _idx; std::copy(std::begin(_idxs), std::end(_idxs), _idx.begin()); _map->(_idx) = #;".}
]#

type 
  cArray[T] {.importcpp:"'0*".} = object

proc newCArray[T, TT](carray: cArray[T], len: int, x: TT) {.importcpp: "# = new '3[#]".}

proc cArrayFromNim[T,N,TT](c: cArray[T], nim: array[N, TT]) {.importcpp:"# = ('1)#".}

proc `[]`[T](arr: cArray[T], i: int): T {.importcpp:"#[#]".}

proc `[]=`[T](arr: cArray[T], i: int, val: T) {.importcpp:"#[#] = #".}

proc ttype(node: NimNode): NimNode {.compileTime.} =
  case node[^1].kind:
  of nnkBracketExpr:
    return node[^1].ttype
  else:
    return node[^1]

macro ttype(x: typedesc): typedesc =
  let node = x.getType

  case node[^1].kind:
  of nnkBracketExpr:
    return node.ttype
  else:
    return node[^1]

proc newTensor*[N,M](arr: array[N,M], T: type): Tensor =
  if typeLookUp.hasKey(T.name):
    let sh = getShape(arr)
    let ten = newTensor(T.tf, sh) 

    when T.name == "cppstring":
      var buf = flat[cppstring](ten, newCPPString(" "))
    else:
      var buf = flat[T](ten, 0)

    var baseElPtr: cArray[M.ttype]
    cArrayFromNim(baseElPtr, arr)

    # copy incomming data
    for i in 0..prod(sh)-1:
      buf[i] = baseElPtr[i].T
      
    return ten

  else: raise newException(OSError, "Type not supported!")

  ## Convinience Tensor Constructor copying data from an array into a Tensor and converting the data to the given type. 
  ## 
  ## Args:
  ##   arr: The array a Tensor should be constructed from.
  ##   T: The type the Tensor should have.
  ## Returns:
  ##   A new Tensor with the given data.

proc newTensor*[N,T](arr: array[N,T]): Tensor =
  if typeLookUp.hasKey(T.ttype.name):
    let sh = getShape(arr)
    let ten = newTensor(T.ttype.tf, sh) 

    when T.ttype.name == "cppstring":
      var buf = flat[cppstring](ten, newCPPString(" "))
    else:
      var buf = flat[T.ttype](ten, 0)

    var baseElPtr: cArray[T.ttype]
    cArrayFromNim(baseElPtr, arr)

    # copy incomming data
    for i in 0..prod(sh)-1:
      buf[i] = baseElPtr[i]

    return ten

  else: raise newException(OSError, "Type not supported!")

  ## Convinience Tensor Constructor copying data from an array into a Tensor. 
  ## 
  ## Args:
  ##   arr: The array a Tensor should be constructed from.
  ## Returns:
  ##   A new Tensor with the given data.

proc newTensor*(scal: string): Tensor =
  let ten = newTensor(cppstring.tf, []) 

  scalar[cppstring](ten, newCPPString("")).set(newCPPString(scal))

  return ten

  ## Convinience Tensor Constructor to create a string tensor. 
  ## 
  ## Args:
  ##   scal: A string scalar.
  ## Returns:
  ##   A new Tensor with the given string scalar.

proc newTensor*[N](scal: N, T: type): Tensor =
  if typeLookUp.hasKey(T.name):
    let ten = newTensor(T.tf, []) 

    scalar[T](ten, 0).set(scal.T)

    return ten

  else: raise newException(OSError, "Type not supported!")

  ## Convinience Tensor Constructor copying the given scalar into a Tensor and converting it to the given type. 
  ## 
  ## Args:
  ##   scal: The array a Tensor should be constructed from.
  ##   T: Type to convert to.
  ## Returns:
  ##   A new Tensor with the given data.

proc newTensor*[T](scal: T): Tensor =
  if typeLookUp.hasKey(T.name):
    let ten = newTensor(T.tf, []) 

    scalar[T](ten, 0).set(scal.T)

    return ten

  else: raise newException(OSError, "Type not supported!")

  ## Convinience Tensor Constructor copying the given scalar into a Tensor. 
  ## 
  ## Args:
  ##   scal: The array a Tensor should be constructed from.
  ## Returns:
  ##   A new Tensor with the given data.

proc readBytes*(ten: Tensor, file: string, start: int, len: static[int]) =
  var readFile: File

  if not readFile.open(file, fmRead): 
    raise newException(OSError, "Error opening file `" & file & "`!")

  readFile.setFilePos(start)

  var buf = flat[uint8](ten, 0).asPtr()
  
  echo "read " & $readFile.readBuffer(buf, len) & "b"

  ## Proc to read a byte file directly into the underlying databuffer of a Tensor. 
  ## 
  ## Args:
  ##   ten: The tensor to write to.
  ##   file: The name of the file to read.
  ##   start: The position to start reading from.
  ##   len: The number of bytes to read.
  ## Returns:
  ##   A new Tensor holding the files content.

## TensorVec related definitions
type
  TensorVec* {.header: vector,
              header: tensor,
              importcpp: "std::vector<tensorflow::Tensor>" .} = object
    ## The TensorVec Type is a wrapper around a std::vector of Tensors manly used for the output of a Session.

proc inewTensorVec(args: openArray[Tensor], len: int) : TensorVec {.header: tensor,
                                                                    header: vector,
                                                                    importcpp: "[&]() { std::vector<tensorflow::Tensor> vec; auto _args = #; auto _len = #; vec.resize(_len); for(int i = 0; i < _len; i++) vec.push_back(*_args[i]); return vec;} ()".}

  ## A private constructor for the TensorVec type copying the Tensors from an array of Tensors into a vector.
  ## 
  ## Args:
  ##   args: Array of Vectors.
  ##   len: Length of the Array.
  ## Returns:
  ##   A TensorVec with the given Tensors.

proc newTensorVec*(args: varargs[Tensor]) : TensorVec = 
  return inewTensorVec(args, args.len)

  ## Constructor for the TensorVec type copying the Tensors from an array of Tensors into a vector.
  ## 
  ## Args:
  ##   args: Array of Vectors.
  ## Returns:
  ##   A TensorVec with the given Tensors.

proc len*(tensorVec: TensorVec) : int {.importcpp: "#.size()".}

  ## Method to get the size of a TensorVec.
  ## 
  ## Args:
  ##   tensorVec: The TensorVec it is applied on.
  ## Returns:
  ##   The size of the TensorVec object.

proc `[]`*(tensorVec: TensorVec, idx: cint) : Tensor {.header: memory, 
                                                       header: tensor,
                                                       importcpp: "std::make_shared<tensorflow::Tensor>(std::move(#[#]))".}

proc add*(tensorVec: TensorVec, ten: Tensor) {.importcpp: "#.push(*#)".}

proc insert*(tensorVec: TensorVec, pos: int, ten: Tensor) {.importcpp: "#.insert(#, *#)".}

iterator items*(tens: TensorVec): Tensor =
  var i: cint = 0
  while i <= tens.len()-1:
    yield tens[i]
    inc i

  ## Iterator over the Tensor objects a TensorVec is holding.
  ## 
  ## Args:
  ##   tens: The TensorVec it is applied on.
  ## Returns:
  ##   The Tensor objects one by one.

## Output related definitions
type
  Out* {.header: std_ops,
         importcpp: "tensorflow::Output".} = object
    ## The Out Type is a pure wrapper around the c++ Output type.

## OutList related definitions
type
  OutList* {.header: std_ops,
             importcpp: "tensorflow::OutputList".} = object
    ## The OutList Type is a wrapper around the c++ OutputList type which itself is basically a vector of Out objects.

proc inewOutList(outs: openArray[Out], len: int): OutList {.header:std_ops, 
                                                            header:vector,
                                                            importcpp:"[&]() { auto _args = (tensorflow::Output*)&#[0]; int _len = #; std::vector<tensorflow::Output> _vec(_args, _args + _len); return _vec; }()".}

  ## A private constructor for the OutList type copying the Out objects from an array into an OutList.
  ## 
  ## Args:
  ##   outs: Array of Out objects.
  ##   len: Length of the Array.
  ## Returns:
  ##   An OutList with the given Out objects.

proc newOutList*(outs: varargs[Out]): OutList =
  return inewOutList(outs, outs.len)

  ## Constructor for the OutList type copying the Out objects from an array into an OutList.
  ## 
  ## Args:
  ##   outs: Array of Out objects.
  ## Returns:
  ##   An OutList with the given Out objects.

proc `[]`*(outs: OutList, idx: int): Out {.importcpp:"#[#]".}

proc `[]=`*(outs: OutList, idx: int, val: Out) {.importcpp:"#[#] = #".}

proc len*(outs: OutList): int {.importcpp:"#.size()".}

  ## Method to get the size of an OutList.
  ## 
  ## Args:
  ##   outs: The OutList it is applied on.
  ## Returns:
  ##   The size of the OutList object.

proc add*(outs: OutList, outVal: Out) {.importcpp:"#.push_back(#)".}

  ## Proc to append to an OutList.
  ## 
  ## Args:
  ##   outs: The OutList it is applied on.
  ##   outVal: Output you want to append.

iterator items*(outs: OutList): Out =
  var i = 0
  while i <= outs.len()-1:
    yield outs[i]
    inc i

  ## Iterator over the Out objects an OutList is holding.
  ## 
  ## Args:
  ##   outs: The OutList it is applied on.
  ## Returns:
  ##   The Out objects one by one.

## InList related definitions
type
  InList* {.header: std_ops,
            header: memory,
            importcpp: "std::shared_ptr<tensorflow::InputList>".} = object

    ## The InList Type is a wrapper around the c++ InputList type which itself is basically a vector of Input objects.
    ## It is represented through a shared pointer here because it has no default constructor and therefore cannot be declared
    ## like:
    ##   InputList foo;
    ## which is excatly what the nim compiler does.

proc inewInList(tens: openArray[Tensor], len: int): InList {.header:std_ops, 
                                                             header:vector,
                                                             header:memory,
                                                             importcpp:"[&]() { auto _args = #; int _len = #; std::vector<tensorflow::Input> _vec; for(int i = 0; i < _len; i++) _vec.emplace_back(tensorflow::Input(*_args[i])); return std::make_shared<tensorflow::InputList>(_vec); }()".}

  ## A private constructor for the InList type copying the Tensor objects from an array as Inputs into an InList.
  ## 
  ## Args:
  ##   tens: Array of Tensor objects.
  ##   len: Length of the array.
  ## Returns:
  ##   An InList with the given Tensors objects.

proc newInList*(tens: varargs[Tensor]): InList =
  return inewInList(tens, tens.len)

  ## Constructor for the InList type copying the Tensor objects from an array as Inputs into an InList.
  ## 
  ## Args:
  ##   tens: Array of Tensor objects.
  ## Returns:
  ##   An InList with the given Tensors objects.

type
  Operation {.header: gradients,
              importcpp: "tensorflow::Operation".} = object

proc num_inputs(op: Operation): int {.importcpp:"#.num_inputs()".}

proc input_type(op: Operation, o: int): core.DType {.importcpp:"#.input_type(#)".}

proc input(op: Operation, i: int): Out {.importcpp:"#.input(#)".}

proc inputs(op: Operation, rng: HSlice[int, int]): OutList =
  var inputs: OutList
  
  for i in rng:
    inputs.add op.input(i)

  return inputs

proc num_outputs(op: Operation): int {.importcpp:"#.num_outputs()".}

proc output_type(op: Operation, o: int): core.DType {.importcpp:"#.output_type(#)".}

proc output(op: Operation, i: int): Out {.importcpp:"#.output(#)".}

proc outputs(op: Operation, rng: HSlice[int, int]): OutList =
  var outputs: OutList
  
  for i in rng:
    outputs.add op.output(i)

  return outputs

## ArraySlice related definitions

type
  ArraySlice*{.header: tensor,
               importcpp: "tensorflow::gtl::ArraySlice<'0>".}[T] = object

    ## ArraySlice is a wrapper around the tensorflow::gtl::ArraySlice class
    ## which itself is a wrapper around the absl::Span type from the abseil C++ Library. 
    ## 
    ## This particular wrapper should work with every type except for the Tensor type because
    ## with the curret Version interfacing with C++ Methods would be pretty dirty due the fact
    ## that the Tensor type exposed by this library only is a pointer to a C++ Tensor. Now given
    ## the fact that it is not needed right now it probably will not be implemented soon.
    ## 
    ## For implemention details see:
    ## https://github.com/abseil/abseil-cpp/blob/master/absl/types/span.h

proc inewArraySlice[T](data: openArray[T], len: int): ArraySlice[T] {.header: tensor,
                                                                      importcpp: "'0(#, #)".}

  ## C++ Constructor Wrapper using a hack because the imported template argument is 
  ## transformed to the whole type plus the template argument instead of only the template
  ## argument. (meaning: tensorflow::gtl::ArraySlice<float> instead of float)

proc newArraySlice*[T](data: openArray[T]): ArraySlice[T] = 
  if data is openArray[Tensor]:
    raise newException(Exception, "DataType Tensor is not allowed for ArraySlice!")

  return inewArraySlice(data, data.len)

  ## Constructor exposed to nim interface.
  ## 
  ## Args:
  ##   data: An array holding the data for the ArraySlice.
  ## Returns:
  ##   A new ArraySlice using the given data.
  ## Raises:
  ##   ValueError: when called with the Tensor type due the reason described in the type definition.

proc newArraySlice*[T](data: cArray[T], len: int): ArraySlice[T] {.importcpp:"'0(#, #)".}

proc `[]`*[T](slice: ArraySlice[T], idx: int): T {.importcpp: "#[#]".}

proc len*[T](slice: ArraySlice[T]): int {.importcpp: "#.size()".}

  ## Size method to get the number of elements.
  ## 
  ## Args:
  ##   slice: The ArraySlice it is applied on.
  ## Returns:
  ##   The number of elements.

proc asPtr*[T](slice: ArraySlice[T]): ptr T {.importcpp:"#.pointer()".}

proc `$`*[T](slice: ArraySlice[T]): string =
  var str = "["
  let sz = slice.len()

  for i in 0..sz-2:
    str &= $slice[i] & ", "

  str &= $slice[sz-1] & "]"
  return str

  ## Method for string conversion.
  ## 
  ## Args:
  ##   slice: The ArraySlice it is applied on.
  ## Returns:
  ##   A Stringrepresentation of the ArraySlice.

proc newArraySlice*[cppstring](slice: ArraySlice[string]): ArraySlice[cppstring] = 
    let size = slice.len
    var buffer: cArray[cppstring] 
    buffer.newCArray(size, newCPPString(""))

    for i in 0..size-1:
      buffer[i] = newCPPString(slice[i])

    return newArraySlice(buffer, size)
#[
  {.header: "<algorithm>",
    importcpp:"""
    [&](){    
      auto _slice = #; 
      int _len = _slice.size(); 

      std::vector<std::string> _buffer;
      _buffer.reserve(_len);
      
      for(int i = 0; i < _len; i++) {
        int size = _slice[i]->len;
        _buffer[i].reserve(size);
        std::copy_n((char*)(&_slice[i][0]), size, &_buffer[i][0]);
      } 

      return tensorflow::gtl::ArraySlice<std::string>(_buffer);
    }()
  """
  .}
]#
  ## Method for converting an ArraySlice[string] to an ArraySlice[cppstring].
  ## 
  ## Args:
  ##   slice: The ArraySlice[string] it is applied on.
  ## Returns:
  ##   A new ArraySlice[cppstring] holding the data from the input ArraySlice[string].

## Scope related definitions
type
  Scope* {.header: memory,
           header: client_session,
           importcpp: "std::shared_ptr<tensorflow::Scope>".} = object

    ## The Scope Type is a wrapper around the c++ Scope which is basically the "region" (with its computation graph) where the 
    ## operations exsist. It is represented through a shared pointer here because it has no default constructor and therefore
    ## cannot be declared like:
    ##   Scope foo;
    ## which is excatly what the nim compiler does.

proc newRootScope*(): Scope {.header: client_session,
                              header: memory,
                              importcpp: "std::make_shared<tensorflow::Scope>(std::move(tensorflow::Scope::NewRootScope()))".}

  ## Constructor for the Scope type creating a new RootScope.
  ## 
  ## Returns:
  ##   A Scope object representing the new RootScope.

proc ok*(scope: Scope) : bool {.importcpp: "#->ok()".}

  ## Method to check if an error occured in the context of a Scope object.
  ## 
  ## Args:
  ##   scope: The Scope that should be checked.
  ## Returns:
  ##   Wether an error occured in the given Scope.

proc inewSubScope(rt: Scope, name: cppstring): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->NewSubScope(#)))".}

proc newSubScope*(rt: Scope, name: string): Scope =
  return rt.inewSubScope(newCPPString(name))

  ## Returns a Subscope with the given name.
  ## This is useful for visualization in tensorboard.

proc iwithOpName(rt: Scope, name: cppstring): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->WithOpName(#)))".}

proc withOpName*(rt: Scope, name: string): Scope =
  return rt.iwithOpName(newCPPString(name))

  ## Returns a scope applying the given name to all ops.

proc withControlDependencies(rt: Scope, control_dep: ArraySlice[Operation] | Out): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->WithControlDependencies(#)))".}

  ## Return a new scope. All ops created within the returned scope will have as
  ## control dependencies the union of operations in the control_deps vector
  ## and the control dependencies of the current scope.

proc withNoControlDependencies(rt: Scope): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->WithNoControlDependencies()))".}

  ## Return a new scope. All ops created within the returned scope will have no
  ## control dependencies on other operations.

proc iwithDevice(rt: Scope, device: cppstring): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->WithDevice(#)))".}

proc withDevice*(rt: Scope, device: string): Scope =
  return rt.iwithDevice(newCPPString(device))

  ## Returns a scope using the given device.

proc iwithAssignedDevice(rt: Scope, assignedDevice: cppstring): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->WithAssignedDevice(#)))".}

proc withAssignedDevice(rt: Scope, assignedDevice: string): Scope =
  return rt.iwithAssignedDevice(newCPPString(assignedDevice))
  
  ## Returns a new scope.  All ops created within the returned scope will have
  ## their assigned device set to `assigned_device`.

proc iwithXlaCluster(scope: Scope, xla_cluster: cppstring): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->WithXlaCluster(#)))".}

proc withXlaCluster(scope: Scope, xla_cluster: string): Scope =
  return scope.iwithXlaCluster(newCPPString(xla_cluster))
  
  ## Returns a new scope.  All ops created within the returned scope will have
  ## their _XlaCluster attribute set to `xla_cluster`.

proc colocateWith(scope: Scope, op: Operation | Out): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->ColocateWith(#)))".}
  
  ## Return a new scope. All ops created within the returned scope will be
  ## co-located on the device where op is placed.
  ## NOTE: This function is intended to be use internal libraries only for
  ## controlling placement of ops on to devices. Public use is not encouraged
  ## because the implementation of device placement is subject to change.

proc clearColocation(scope: Scope): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->ClearColocation(#)))".}
  
  ## Clear all colocation constraints.

proc exitOnError(scope: Scope): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->ExitOnError(#)))".}
  
  ## Return a new scope. The op-constructor functions taking the returned scope
  ## as the scope argument will exit as soon as an error is detected, instead
  ## of setting the status on the scope.

proc iwithKernelLabel(scope: Scope, kernel_label: cppstring): Scope {.importcpp:"std::make_shared<tensorflow::Scope>(std::move(#->WithKernelLabel(#)))".}

proc withKernelLabel(scope: Scope, kernel_label: string): Scope =
  return scope.iwithKernelLabel(newCPPString(kernel_label))
  
  ## Return a new scope. All ops created with the new scope will have
  ## kernel_label as the value for their '_kernel' attribute;

proc igetUniqueNameForOp(scope: Scope, default_name: cppstring): cppstring {.importcpp:"#->GetUniqueNameForOp(#)".}

proc getUniqueNameForOp(scope: Scope, default_name: string): string =
  return $scope.igetUniqueNameForOp(newCPPString(default_name))

  ## Return a unique name, using default_name if an op name has not been
  ## specified.

type
  Status* {.importcpp:"tensorflow::Status".} = object

proc updateStatus(scope: Scope, s: Status) {.importcpp:"#->UpdateStatus(#)".}

  ## Update the status on this scope.
  ## Note: The status object is shared between all children of this scope.
  ## If the resulting status is not Status::OK() and exit_on_error_ is set on
  ## this scope, this function exits by calling LOG(FATAL).

proc status(scope: Scope): Status {.importcpp:"#->status()".}

  ## Get the status of the given Scope.

proc ok(): Status {.header: std_ops,
                    importcpp: "tensorflow::Status::OK()".}

type 
  GraphDef* {.importcpp:"tensorflow::GraphDef".} = object

    ## Type that holds the representation of the computation graph.

proc itoGraphDef(rt: Scope, graph: GraphDef) {.importcpp:"#->ToGraphDef(&#)".}

proc toGraphDef*(rt: Scope): GraphDef =
  var graph: GraphDef
  rt.itoGraphDef(graph)
  return graph

  ## Get a graphdef from a Scope.

## Session related definitions
type
  Session* {.header: memory,
             header: client_session,
             importcpp: "std::shared_ptr<tensorflow::ClientSession>".} = object

    ## The Session Type is a wrapper around the c++ ClientSession which is the part where the actual computation happens. 
    ## It is represented through a shared pointer here because it has no default constructor and therefore cannot be declared
    ## like:
    ##   ClientSession foo;
    ## which is excatly what the nim compiler does.

proc newSession*(scope: Scope): Session {.header: memory,
                                          header: client_session,
                                          importcpp: "std::make_shared<tensorflow::ClientSession>(*#)".}

  ## Constructor for the Session type.
  ## 
  ## Args:
  ##   scope: The Scope from which a Sessino shall be created.
  ## Returns:
  ##   A Session object that can be run to perform the Computations.

## Gradient Related definitions
proc addSymbolicGradients*(root: Scope, outputs, inputs, gradOutputs: OutList) {.header:gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, #, #, &#))".}

  ## Method for getting the gradient of a sequence of operations applied to the inputs.
  ## 
  ## Args:
  ##   root: The current Scope object.
  ##   outputs: A list of outputs or single output containing the relevant ends of the compution graph.
  ##   inputs: A list of outputs or single output containing the variables a gradient should be computed for.
  ##   gradOutputs: A list of outputs containing the computed gradients.

proc addSymbolicGradients*(root: Scope, outputs: Out, inputs, gradOutputs: OutList) {.header:gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, {#}, #, &#))".}

proc addSymbolicGradients*(root: Scope, outputs, inputs: Out, gradOutputs: OutList) {.header:gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, {#}, {#}, &#))".}

type 
  SummaryWriter* {.header:memory,
                   header:writer,
                   importcpp:"std::shared_ptr<tensorflow::EventsWriter>".} = object

    ## A Object used to log your outputs to a Tensorboard readable file.

proc inewSummaryWriter(dir: cppstring): SummaryWriter {.header:memory,
                                                        header:writer,
                                                        importcpp:"std::make_shared<tensorflow::EventsWriter>(#)".}

proc newSummaryWriter*(dir: string): SummaryWriter = inewSummaryWriter(newCPPString(dir))

  ## creates a new SummaryWriter writing to the given directory

proc write_grapdef*(summaryWriter: SummaryWriter, grah: GraphDef) {.header:writer,
                                                                   importcpp:"tensorflow::Event event; auto _writer = #; event.set_graph_def(#.SerializeAsString()); _writer->WriteEvent(event);".}

  ## writes the given GraphDef to the logs.

proc iwrite_scalar(summaryWriter: SummaryWriter, wall_time: float64, step: int64, tag: cppstring, value: float32) {.header:writer,
                                                                                                                    importcpp:"tensorflow::Event event; auto _writer = #; event.set_wall_time(#); event.set_step(#); tensorflow::Summary::Value* summ_val = event.mutable_summary()->add_value(); summ_val->set_tag(#); summ_val->set_simple_value(#); _writer->WriteEvent(event);".}

proc write_scalar*(summaryWriter: SummaryWriter, wall_time: float64, step: int64, tag: string, value: float32) =
  iwrite_scalar(summaryWriter, wall_time, step, newCPPString(tag), value)

  ## Writes a Scalar to the logs.
  ## 
  ## Args:
  ##   summaryWriter: The SummaryWriter it is applied on.
  ##   wall_time: Time it is written at.
  ##   step: The step it was written at.
  ##   tag: The name of the scalar.
  ##   value: The value of the scalar.

type 
  FeedDict* {.header:"<unordered_map>",
              importcpp:"std::unordered_map<tensorflow::Output, tensorflow::Input::Initializer, tensorflow::OutputHash>".} = object

    ## A map linking a Out from a Placeholder op to an actual tensor.

proc `[]=`*(feed: FeedDict, placeholder: Out, ten: Tensor) {.importcpp:"#.insert({#, *#})".}

proc clear*(feed: FeedDict) {.importcpp:"#.clear()".}

  ## Remove all items from the dict.

proc runSession*(sess: Session, feed: FeedDict, graph: Out, outputs: TensorVec) {.header: client_session,
                                                                                importcpp: "TF_CHECK_OK((*#).Run((tensorflow::ClientSession::FeedType)#, {#}, &#))".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, graph: Out, outputs: TensorVec) {.header: client_session,
                                                                  importcpp: "TF_CHECK_OK((*#).Run({#}, &#))".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, feed: FeedDict, graph: OutList, outputs: TensorVec) {.header: client_session,
                                                                                     importcpp: "TF_CHECK_OK((*#).Run((tensorflow::ClientSession::FeedType)#, #, &#))".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, graph: OutList, outputs: TensorVec) {.header: client_session,
                                                                      importcpp: "TF_CHECK_OK((*#).Run(#, &#))".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, feed: FeedDict, graph: OutList | Out): TensorVec =
  var outputs: TensorVec
  sess.runSession(graph, feed, outputs)
  return outputs

proc runSession*(sess: Session, graph: OutList | Out): TensorVec =
  var outputs: TensorVec
  sess.runSession(graph, outputs)
  return outputs

proc runSessionVoid*(sess: Session, feed: FeedDict, graph: Out) {.header: client_session,
                                                                 importcpp: "TF_CHECK_OK(#->Run((tensorflow::ClientSession::FeedType)#, {#}, nullptr))".}

  ## A Method to run computations previously definied without returning the output.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.

proc runSessionVoid*(sess: Session, graph: Out) {.header: client_session,
                                                 importcpp: "TF_CHECK_OK(#->Run({#}, nullptr))".}

  ## A Method to run computations previously definied without returning the output.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   graph: The Out/ OutList representing the computations that should be performed.

proc runSessionVoid*(sess: Session, feed: FeedDict, graph: OutList) {.header: client_session,
                                                                     importcpp: "TF_CHECK_OK(#->Run((tensorflow::ClientSession::FeedType)#, #, nullptr))".}

  ## A Method to run computations previously definied without returning the output.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.

proc runSessionVoid*(sess: Session, graph: OutList) {.header: client_session,
                                                    importcpp: "TF_CHECK_OK(#->Run(#, nullptr))".}

  ## A Method to run computations previously definied without returning the output.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   graph: The Out/ OutList representing the computations that should be performed.

export TensorShape,
       newTensorShape,
       dim_size,
       dims,
       `$`,
       DType,
       Tensor,
       newTensor,
       shape,
       dtype,
       Flat,
       flat,
       mean,
       Matrix,
       matrix,
       Scalar,
       scalar,
       set,
       get,
       #TensorMap,
       #tensorMap,
       `[]=`,
       TensorVec,
       len,
       add,
       insert,
       `[]`,
       Out,
       OutList,
       newOutList,
       InList,
       newInList,
       Operation,
       num_inputs,
       input_type,
       input,
       inputs,
       num_outputs,
       output_type,
       output,
       outputs,
       Scope,
       newRootScope,
       newSession,
       runSession,
       runSessionVoid,
       newSubScope,
       withOpName,
       withControlDependencies,
       withNoControlDependencies,
       withDevice,
       withAssignedDevice,
       withXlaCluster,
       colocateWith,
       clearColocation,
       exitOnError,
       withKernelLabel,
       getUniqueNameForOp,
       Status,
       updateStatus,
       status,
       ok,
       ArraySlice,
       newArraySlice,
       `$@`,
       addSymbolicGradients,
       GraphDef,
       toGraphDef,
       SummaryWriter,
       newSummaryWriter,
       write_grapdef,
       write_scalar,
       typeLookUp,
       typeLookUpReverse,
       tf,
       FeedDict,
       clear
