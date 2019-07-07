## The core module implements all the necessary ground work needed to construct a computation graph interface
## with and manipulate tensors. 

import ../utils/utils
import sequtils
import typeinfo
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
  var cstr = newString(cppstr.size())

  copyMem(addr(cstr[0]), cppstr.c_str(), cppstr.size())

  return cstr

  ## String conversion for TensorShapes.
  ## 
  ## Args:
  ##   shape: The TensorShape it is applied on. 
  ## Returns:
  ##   A new cppstring representing of the TensorShape.

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


proc toCPPStr(ten: Tensor): cppstring {.header: "<sstream>",
                                        importcpp: "[&]() {std::stringstream s; s << #->DebugString(); return s.str(); }()" .} 

  ## A Method to get a cppstring representation of the Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   A new cppstring representing of the Tensor.

proc toValueCPPStr(ten: Tensor): cppstring {.header: "<sstream>",
                                             importcpp: "[&]() {std::stringstream s; s << #->SummarizeValue(100, true); return s.str(); }()" .} 

  ## A Method to get a cppstring representation of the first 100 Values of the Tensor.
  ##
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   A new cppstring representing the first 100 Values of the Tensor.

proc `$`*(ten: Tensor) : string =
  var cppstr = toCPPStr(ten)
  var cstr = newString(cppstr.size())

  copyMem(addr(cstr[0]), cppstr.c_str(), cppstr.size())

  return cstr

  ## String conversion for Tensors.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on. 
  ## Returns:
  ##   A new string representing the Tensor.

proc toValueStr*(ten: Tensor) : string =
  var cppstr = toValueCPPStr(ten)
  var cstr = newString(cppstr.size())

  copyMem(addr(cstr[0]), cppstr.c_str(), cppstr.size())

  return cstr

  ## A Method to get a string representation of the first 100 Values of the Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   A new string representing the first 100 Values of the Tensor.

proc copyF[T](ten: Tensor, arr: ptr T, len:int, offset:int) {.importcpp:"auto tmp = #; double* a = (double*)#; auto eigen_ten = tmp->flat<float>().data(); for(int j = #; j > (#-1); j--) eigen_ten[j] = (float)a[j]".}

  ## A Method to copy data into a float Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ##   arr: A pointer to the data buffer that should be copied.
  ##   len: The length of the data buffer.
  ##   offset: An offset that specifies how much data from the start should not be copied.

proc copyI[T](ten: Tensor, arr: ptr T, len:int, offset:int) {.importcpp:"auto tmp = #; int64_t* a = (int64_t*)#; auto eigen_ten = tmp->flat<int>().data(); for(int j = #; j > (#-1); j--) eigen_ten[j] = (int)a[j]".}
  
  ## A Method to copy data into an integer Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ##   arr: A pointer to the data buffer that should be copied.
  ##   len: The length of the data buffer.
  ##   offset: An offset that specifies how much data from the start should not be copied.

proc shape*(ten: Tensor) : TensorShape {.header: tensor, 
                                         importcpp:"#->shape()".}

  ## A Method to get the shape of a Tensor.
  ## 
  ## Args:
  ##   ten: The Tensor it is applied on.
  ## Returns:
  ##   The Shape of the Tensor.

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

proc getAnyKind[T](x: var T): AnyKind = 
  return x.toAny.kind

  ## A recursive method for getting the base type of an Array. This is the last function call stopping the
  ## recursion when it is not an array anymore but a value instead.
  ## 
  ## Args:
  ##   x: A value.
  ## Returns:
  ##   The type of the value.

proc getAnyKind[N,T](arr: var array[N,T]): AnyKind = 
  return getAnyKind(arr[0])

  ## A recursive method for getting the base type of an Array.
  ## 
  ## Args:
  ##   arr: The array you want the base type from.
  ## Returns:
  ##   The base type of the array.

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

  ## Convinience Tensor Constructor constructing a Tensor from a data array. This method for now just suports the
  ## float and int type. These get converted to int32 and float32 types on the c++ level.
  ## 
  ## Args:
  ##   arr: The array a Tensor should be constructed from.
  ## Returns:
  ##   A new Tensor with the given data.

# TODO: clean up this hack
proc newTensor*(s: int) : Tensor {.header: memory,
                                  header: tensor,
                                  importcpp: "[&](){ auto _x = std::make_shared<tensorflow::Tensor>(tensorflow::DT_INT32, tensorflow::TensorShape()); _x->scalar<int>()(0) = (int)#; return _x; }()".}

  ## Tensor Constructor for integer scalar values.
  ## 
  ## Args:
  ##   s: The scalar value for the Tensor.
  ## Returns:
  ##   A new scalar Tensor with given value.

proc newTensor*(s: float) : Tensor {.header: memory,
                                    header: tensor,
                                    importcpp: "[&](){ auto _x = std::make_shared<tensorflow::Tensor>(tensorflow::DT_FLOAT, tensorflow::TensorShape()); _x->scalar<float>()(0) = (float)#; return _x; }()".}

  ## Tensor Constructor for float scalar values.
  ## 
  ## Args:
  ##   s: The scalar value for the Tensor.
  ## Returns:
  ##   A new scalar Tensor with given value.

## Flat related definitions
type
  Flat*[T] {.header: tensor,
          importcpp: "tensorflow::TTypes<'0, 1>::Flat".} = object
    ## The Flat Type is a way of accessing the underlying memory of a tensor as flat buffer without any dimensionality.

proc flat*(ten: Tensor, T: type): Flat[T] {.importcpp:"#->flat<'2>()".}

  ## A method returning the flat buffer of a Tensor with the given type.
  ## 
  ## Args:
  ##   ten: The tensor it is applied on.
  ##   T: The type the returned Flat object should have.
  ## Returns:
  ##   A new Flat object "referencing" the data of the Tensor.

proc size*[T](flat: Flat[T]): int {.importcpp:"#.size()".}

  ## Size method to get the number of elements in the Flat object.
  ## 
  ## Args:
  ##   flat: The Flat object it is applied on.
  ## Returns:
  ##   The number of elements.

proc `[]`*[T](flat: Flat[T], i: int): T {.importcpp:"#(#)".}

proc `[]=`*[T](flat: Flat[T], i: int, val: T) {.importcpp:"#(#) = #".}

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

proc size*(tensorVec: TensorVec) : int {.importcpp: "#.size()".}

  ## Method to get the size of a TensorVec.
  ## 
  ## Args:
  ##   tensorVec: The TensorVec it is applied on.
  ## Returns:
  ##   The size of the TensorVec object.

proc `[]`*(tensorVec: TensorVec, idx: cint) : Tensor {.header: memory, 
                                                       header: tensor,
                                                       importcpp: "std::make_shared<tensorflow::Tensor>(std::move(#[#]))".}


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
 
proc size*(outs: OutList): int {.importcpp:"#.size()".}

  ## Method to get the size of an OutList.
  ## 
  ## Args:
  ##   outs: The OutList it is applied on.
  ## Returns:
  ##   The size of the OutList object.

iterator items*(outs: OutList): Out =
  var i = 0
  while i <= outs.size()-1:
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

proc inewSession(scope: Scope): Session {.header: memory,
                                         header: client_session,
                                         importcpp: "std::make_shared<tensorflow::ClientSession>(*#)".}

  ## Constructor for the Session type.
  ## 
  ## Args:
  ##   scope: The Scope from which a Sessino shall be created.
  ## Returns:
  ##   A Session object that can be run to perform the Computations.

proc irunSession(sess: Session, graph: Out, outputs: TensorVec) {.header: client_session,
                                                                  importcpp: "TF_CHECK_OK((*#).Run({#}, &#))".}

  ## A private Method to run a Session.
  ## 
  ## Args:
  ##   sess: That should be used to run computations.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A not constructed TensorVec holding the result after the computations.

proc irunSession(sess: Session, graph: OutList, outputs: TensorVec) {.header: client_session,
                                                                      importcpp: "TF_CHECK_OK((*#).Run(#, &#))".}

proc runSession*(scope:Scope, graph: Out) : TensorVec =
  var outputs: TensorVec

  irunSession(inewSession(scope), graph, outputs)

  return outputs

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   scope: The current Scope object under which the operations where definied.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ## Returns:
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(scope:Scope, graph: OutList) : TensorVec =
  var outputs: TensorVec

  irunSession(inewSession(scope), graph, outputs)

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

proc `[]`*[T](slice: ArraySlice[T], idx: int): T {.importcpp: "#[#]".}

proc size*[T](slice: ArraySlice[T]): int {.importcpp: "#.size()".}

  ## Size method to get the number of elements.
  ## 
  ## Args:
  ##   slice: The ArraySlice it is applied on.
  ## Returns:
  ##   The number of elements.

proc `$`*[T](slice: ArraySlice[T]): string =
  var str = "["
  let sz = slice.size()

  for i in 0..sz-2:
    str &= $slice[i] & ", "

  str &= $slice[sz-1] & "]"
  str

  ## Method for string conversion.
  ## 
  ## Args:
  ##   slice: The ArraySlice it is applied on.
  ## Returns:
  ##   A Stringrepresentation of the ArraySlice.

proc newArraySlice*[cppstring](slice: ArraySlice[string]): ArraySlice[cppstring] = 
  var buffer: seq[cppstring] = @[]

  for i in 0..slice.size()-1: 
    buffer.add(newCPPString(slice[i]))
  
  let sliceCPPStr = newArraySlice(buffer)

  return sliceCPPStr

  ## Method for converting an ArraySlice[string] to an ArraySlice[cppstring].
  ## 
  ## Args:
  ##   slice: The ArraySlice[string] it is applied on.
  ## Returns:
  ##   A new ArraySlice[cppstring] holding the data from the input ArraySlice[string].

## Gradient Related definitions
proc addSymbolicGradients*(root: Scope, outputs, inputs, gradOutputs: OutList) {.header:gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, #, #, &#))".}

  ## Method for getting the gradient of a sequence of operations applied to the inputs.
  ## 
  ## Args:
  ##   root: The current Scope object.
  ##   outputs: A list of outputs or single output containing the relevant ends of the compution graph.
  ##   inputs: A list of outputs or single output containing the variables a gradient should be computed for.
  ##   gradOutputs: A list of outputs containing the computed gradients.

proc addSymbolicGradients(root: Scope, outputs: Out, inputs, gradOutputs: OutList) {.header:gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, {#}, #, &#))".}

proc addSymbolicGradients(root: Scope, outputs, inputs: Out, gradOutputs: OutList) {.header:gradients, importcpp:"TF_CHECK_OK(tensorflow::AddSymbolicGradients(*#, {#}, {#}, &#))".}

export TensorShape,
       newTensorShape,
       `$`,
       DType,
       Tensor,
       newTensor,
       shape,
       Flat,
       flat,
       `[]=`,
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
       `$@`,
       addSymbolicGradients
