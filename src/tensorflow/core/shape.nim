import
    ../utils/utils

## TensorShape related definitions
type
  TensorShape* {.header: tensorh,
                 importcpp: "tensorflow::PartialTensorShape".} = object
    ## Type used to construct shapes for Tensors. As the PartialTensorShape is intended for in the c++ API.
    ## The "real" TensorShape Type as exsists in the c++ API isn't implemented in this interface as I see no
    ## use for it. It is only casted into on the c++ level when a Tensor is constructed. 


proc ishape(dims: openArray[int], len: int, shape: TensorShape) {.header: tensorh,
                                                                           importcpp: "tensorflow::PartialTensorShape::MakePartialShape(#, #, &#)".}
  ## C++ Constructor Wrapper creating a new TensorShape.
  ##
  ## Args:
  ##  dims: Array of ints describing the dimensions of the Tensor.
  ##  len: Length of the dims Array.
  ##  shape: The Shape that is supposed to represent these dimensions.  

proc shape*(dims: openArray[int]): TensorShape =
  let tshape = TensorShape()
  ishape(dims, dims.len, tshape)
  return tshape

  ## TensorShape Constructor.
  ##
  ## Args:
  ##   dims: Array of ints describing the dimensions of the Tensor.
  ## Returns:
  ##   A new TensorShape with given dimensions.

proc toCPPStr(shape: TensorShape): cppstring {.header: "<sstream>",
                                             header: tensorh,
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

#proc `[]`*(shape: TensorShape, i: int): int {.importcpp:"#[#]".}

proc dim_size*(shape: TensorShape, i: int): int {.importcpp:"#.dim_size(#)".}

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
