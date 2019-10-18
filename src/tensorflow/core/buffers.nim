import 
    ../utils/utils, tensor, macros, otypes, complex

## Flat related definitions
type
  Flat*[T] {.header: tensorh,
             importcpp: "std::shared_ptr<tensorflow::TTypes<'0>::Flat>".} = object
    ## The Flat Type is a way of accessing the underlying memory of a tensor as flat buffer without any dimensionality.

proc iflat*[T](ten: Tensor[T], R: type): Flat[R] {.
    header: tensorh,
    importcpp:"std::make_shared<tensorflow::TTypes<'*0>::Flat>(std::move(#->flat<'*0>()))".}

  ## A method returning the flat buffer of a Tensor with the given type.
  ## 
  ## Args:
  ##   flat: A Flat variable to initalize.
  ##   ten: The tensor it is applied on.
  ## Returns:
  ##   A new Flat object "referencing" the data of the Tensor.

proc flat*[T](ten: Tensor[T]): auto =
  return ten.iflat(T[].To)

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
  Matrix*[T] {.header: tensorh,
               importcpp: "std::shared_ptr<tensorflow::TTypes<'0>::Matrix>".} = object
    ## The Matrx Type is a way of accessing the underlying memory of a tensor as a Matirx.


proc matrix*[T](ten: Tensor[T]): Matrix[T] {.importcpp:"std::make_shared<tensorflow::TTypes<'*0>::Matrix>(std::move(#->matrix<'*0>()))".}

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
  Scalar*[T] {.header: tensorh,
               importcpp: "std::shared_ptr<tensorflow::TTypes<'0>::Scalar>".} = object
    ## The Scalar Type is a way of accessing the underlying memory of a tensor as a Scalar.

proc scalar*[T](ten: Tensor[T]): Scalar[T] {.importcpp:"std::make_shared<tensorflow::TTypes<'*0>::Scalar>(std::move(#->scalar<'*0>()))".}

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
  TensorMap*[T, N] {.header: tensorh,
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


## ArraySlice related definitions

type
  ArraySlice*{.header: tensorh,
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

proc inewArraySlice[T](data: openArray[T], len: int): ArraySlice[T] {.header: tensorh,
                                                                      importcpp: "'0(#, #)".}

  ## C++ Constructor Wrapper using a hack because the imported template argument is 
  ## transformed to the whole type plus the template argument instead of only the template
  ## argument. (meaning: tensorhflow::gtl::ArraySlice<float> instead of float)

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

iterator items*[T](slice: ArraySlice[T]): T =
  var i: cint = 0
  while i <= slice.len()-1:
    yield slice[i]
    inc i