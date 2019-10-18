import 
    ../utils/utils, tensor

type 
  cArray[T] {.importcpp:"'0*".} = object

proc new[T](carray: cArray[T], len: int) {.importcpp: "# = new '*1[#]".}

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
    buffer.new(size) # doesn't have to be deleted because gtl will take care of that

    for i in 0..size-1:
      buffer[i] = newCPPString(slice[i])

    return newArraySlice(buffer, size)

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