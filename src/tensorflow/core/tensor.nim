import 
    ../utils/utils, shape, otypes, macros, complex

## Tensor related definitions
type
  Tensor*[T] {.header: memory,
               header: tensorh,
               importcpp: "tensorflow::Tensor*/*'0*/" .} = object
    ## The Tensor Type is really a shared pointer to a Tensor. This makes it a whole lot easier to work with because
    ## a Tensor constructed in one nim stackframe would be destructed at the end of that stackframe but it might have
    ## a use in a different stackframe therefore accessing freed memory and throwing a segfault. With a smart pointer 
    ## this can be avoided because it keeps the object alive as long the there is reference on it enabling the Tensor 
    ## to live across multiple stackframes.

converter tensorToAll*[T](ten: Tensor[T]): T {.importcpp:"tensorflow::Input(*#)".}

proc toValueCPPStr[T](ten: Tensor[T], len: int): cppstring {.importcpp: "#->SummarizeValue(#, true)".} 

  ## A Method to get a cppstring representation of the first 100 Values of the Tensor.
  ##
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   A new cppstring representing the first 100 Values of the Tensor.

proc toValueStr*[T](ten: Tensor[T], len: int) : string =
  return $toValueCPPStr(ten, len)

  ## A Method to get a string representation of the first 100 Values of the Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   A new string representing the first 100 Values of the Tensor.

proc shape*[T](ten: Tensor[T]) : TensorShape {.header: tensorh, 
                                         importcpp:"#->shape()".}

  ## A Method to get the shape of a Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   The Shape of the Tensor.

proc dtype*[T](ten: Tensor[T]) : DType {.header: tensorh, 
                                         importcpp:"#->dtype()".}

  ## A Method to get the dtype of a Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   The Dtype of the Tensor.

proc otype*[T](ten: Tensor[T]): typedesc {.compileTime.} = 
    return T

proc toDebugCPPStr[T](ten: Tensor[T]): cppstring {.importcpp: "#->DebugString()".} 

proc `$`*[T](ten: Tensor[T]) : string =
  return $toDebugCPPStr(ten)

  ## String conversion for Tensors.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on. 
  ## Returns:
  ##   A new string representing the Tensor.

proc slice*[T](ten: Tensor[T], start: int, stop: int): Tensor[T]
  {.header: tensorh,
    header: memory,
    importcpp:"#->Slice(#, #)".}

  ## A Method to get a slice of a Tensor along the first dimension.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   The slice along the first dimension.

proc delete*[T](x: T) {.importcpp: "(delete #)", nodecl.}

template finals(T: untyped) =
  proc final(x: ref Tensor[T]) = 
    delete x[]

finals oinvalid  
finals odouble
finals ofloat     
finals oint64     
finals oint32     
finals ouint8     
finals oint16     
finals oint8      
finals ostring    
finals obool      
finals ouint16    
finals ouint32    
finals ouint64    
finals ocomplex64 
finals ocomplex128
finals oqint8     
finals oquint8    
finals oqint32    
finals obfloat16  
finals oqint16    
finals oquint16   
finals ohalf      
finals oresource  
finals ovariant

proc gc*[T: oall](Ten: type Tensor[T]): ref Tensor[T] =
  var reften: ref Tensor[T]
  new(reften, final) 
  return reften

proc gc*[T](ten: Tensor[T]): ref Tensor[T] = 
  var reften: ref Tensor[T]
  new(reften, final) 
  reften[] = ten
  return reften

proc tensor*(dtype: DType, shape: TensorShape, T: type): Tensor[T] {.
  header: tensorh,
  importcpp: "[&](){ auto _dtype = #; auto _shape = #; tensorflow::TensorShape _tshape; tensorflow::PartialTensorShape(_shape).AsTensorShape(&_tshape); return new tensorflow::Tensor(_dtype, _tshape); }()".}

  ## Tensor Constructor.
  ## 
  ## Args:
  ##   dtype: The DType of a Tensor.
  ##   shape: The shape the Tensor is supposed to have.
  ## Returns:
  ##   A new Tensor with given dtype and shape.

proc tensor*(dtype: DType, shape: openArray[int], T: type): Tensor[T] =
  let sh = shape(shape)
  return tensor(dtype, sh, T)

  ## Convinience Tensor Constructor constructing a Tensorshape for you.
  ## 
  ## Args:
  ##   dtype: The DType of a Tensor.
  ##   shape: The shape the Tensor is supposed to have represented by an array.
  ## Returns:
  ##   A new Tensor with given dtype and shape.

type Allocator* {.importcpp:"tensorflow::Allocator".} = object

proc tensor*(alloc: ptr Allocator, dtype: DType, shape: TensorShape, T: type) : Tensor[T] {.
  header: tensorh,
  importcpp: """[&](){ 
    auto _alloc = #;
    auto _dtype = #; 
    auto _shape = #; 
    tensorflow::TensorShape _tshape; 
    _shape.AsTensorShape(&_tshape); 
    return new tensorflow::Tensor(_alloc, _dtype, _tshape); 
  }()""".}

  ## Tensor Constructor.
  ## 
  ## Args:
  ##   alloc: Allocator to use.
  ##   dtype: The DType of a Tensor.
  ##   shape: The shape the Tensor is supposed to have.
  ## Returns:
  ##   A new Tensor with given dtype and shape.

proc tensor*(alloc: ptr Allocator, dtype: DType, shape: openArray[int], T: type) : Tensor[T] =
  let sh = shape(shape)
  return tensor(alloc, dtype, sh, T)

  ## Convinience Tensor Constructor constructing a Tensorshape for you.
  ## 
  ## Args:
  ##   alloc: Allocator to use.
  ##   dtype: The DType of a Tensor.
  ##   shape: The shape the Tensor is supposed to have represented by an array.
  ## Returns:
  ##   A new Tensor with given dtype and shape.
  
proc num_elements*(sh: TensorShape): int {.importcpp:"#.num_elements()".}

  ## A proc that returns the product of all dimensions the shape is holding
  ## e.g: the total number of elements in a Tensor
  ## 
  ## Args:
  ##   sh: The shape it is applied on
  ## Returns:
  ##   The product of all dimensions

proc copyFrom*[T](to: Tensor[T], ffrom: Tensor[T], shape: TensorShape): bool {.importcpp:"#->CopyFrom(*#, #)".}

proc copy*[T](ten: Tensor[T]): Tensor[T] = 
    let sh = ten.shape
    var newTen = tensor(ten.dtype, sh)

    discard newTen.copyFrom(ten, ten.shape)

    return newTen

proc readBytes*(ten: Tensor[ouint8], file: string, start: int, len: static[int]) =
  var readFile: File

  if not readFile.open(file, fmRead): 
    raise newException(OSError, "Error opening file `" & file & "`!")

  readFile.setFilePos(start)

  var buf = ten.flat()
  
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
              header: tensorh,
              importcpp: "std::vector<tensorflow::Tensor>" .} = object
    ## The TensorVec Type is a wrapper around a std::vector of Tensors manly used for the output of a Session.

proc itensorVec(args: openArray[Tensor[oinvalid]], len: int) : TensorVec {.header: tensorh,
                                                                    header: vector,
                                                                    importcpp: "[&]() { std::vector<tensorflow::Tensor> vec; auto _args = #; auto _len = #; vec.resize(_len); for(int i = 0; i < _len; i++) vec.push_back(*_args[i]); return vec;} ()".}

  ## A private constructor for the TensorVec type copying the Tensors from an array of Tensors into a vector.
  ## 
  ## Args:
  ##   args: Array of Vectors.
  ##   len: Length of the Array.
  ## Returns:
  ##   A TensorVec with the given Tensors.

proc tensorVec*(args: varargs[Tensor[oinvalid]]) : TensorVec = 
  return itensorVec(args, args.len)

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

proc `[]`*(tensorVec: TensorVec, idx: cint) : Tensor[oinvalid] {.
  header: memory, 
  header: tensorh,
  importcpp: "new tensorflow::Tensor(#[#])".}

proc add*(tensorVec: TensorVec, ten: Tensor[oall]) {.importcpp: "#.push_back(*#)".}

proc insert*(tensorVec: TensorVec, pos: int, ten: Tensor[oall]) {.importcpp: "#.insert(#, *#)".}

iterator items*(tens: TensorVec): Tensor[oinvalid] =
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

proc `[]`*[T](data: ptr T, i: int): T {.importcpp:"(('0*)#)[#]".}

proc `[]=`*[T](data: ptr T, i: int, val: T) {.importcpp:"(('3*)#)[#] = #".}

proc idata[T](ten: Tensor[T], R: type): ptr R {.
  header: tensorh,
  importcpp:"#->flat<'2>().data()".}

proc data*[T](ten: Tensor[T]): auto =
  return ten.idata(T[].To)

proc data*(ten: Tensor[ocomplex64]): ptr complex.Complex32 {.
  header: tensorh,
  importcpp:"#->flat<tensorflow::complex64>().data()".}

proc data*(ten: Tensor[ocomplex128]): ptr complex.Complex64 {.
  header: tensorh,
  importcpp:"#->flat<tensorflow::complex128>().data()".}

proc data*(ten: Tensor[oqint8]): ptr qint8 {.
  header: tensorh,
  importcpp:"('0)#->flat<tensorflow::qint8>().data()".}

proc data*(ten: Tensor[oquint8]): ptr quint8 {.
  header: tensorh,
  importcpp:"('0)#->flat<tensorflow::quint8>().data()".}

proc data*(ten: Tensor[oqint16]): ptr qint16 {.
  header: tensorh,
  importcpp:"('0)#->flat<tensorflow::qint16>().data()".}

proc data*(ten: Tensor[oquint16]): ptr quint16 {.
  header: tensorh,
  importcpp:"('0)#->flat<tensorflow::quint16>().data()".}

proc data*(ten: Tensor[oqint32]): ptr qint32 {.
  header: tensorh,
  importcpp:"('0)#->flat<tensorflow::qint32>().data()".}

proc data*(ten: Tensor[ohalf]): ptr half {.
  header: tensorh,
  importcpp:"('0)#->flat<Eigen::half>().data()".}

