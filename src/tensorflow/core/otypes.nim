import
    ../utils/utils, tables, macros, complex

export complex

type oinvalid*     {.header: std_ops, importcpp:"tensorflow::Output".} = object
type odouble*      {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ofloat*       {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oint64*       {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oint32*       {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ouint8*       {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oint16*       {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oint8*        {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ostring*      {.header: std_ops, importcpp:"tensorflow::Output".} = object
type obool*        {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ouint16*      {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ouint32*      {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ouint64*      {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ocomplex64*   {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ocomplex128*  {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oqint8*       {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oquint8*      {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oqint32*      {.header: std_ops, importcpp:"tensorflow::Output".} = object
type obfloat16*    {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oqint16*      {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oquint16*     {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ohalf*        {.header: std_ops, importcpp:"tensorflow::Output".} = object
type oresource*    {.header: std_ops, importcpp:"tensorflow::Output".} = object
type ovariant*     {.header: std_ops, importcpp:"tensorflow::Output".} = object

type oany* = odouble | ofloat | oint64 | oint32 | ouint8 | oint16 | oint8 | ostring | 
              obool | ouint16 | ouint32 | ouint64 | ocomplex64 | ocomplex128 | oqint8 | oquint8 |
              oqint32 | obfloat16 | oqint16 | oquint16 | ohalf | oresource | ovariant

type oall* = oinvalid | odouble | ofloat | oint64 | oint32 | ouint8 | oint16 | oint8 | ostring | 
              obool | ouint16 | ouint32 | ouint64 | ocomplex64 | ocomplex128 | oqint8 | oquint8 |
              oqint32 | obfloat16 | oqint16 | oquint16 | ohalf | oresource | ovariant

#converter invalidToAny*(o: oinvalid): oany {.importcpp:"#".}
proc invalidToAny*[T:oall](o: oinvalid): T {.importcpp:"#".}

converter anyToInvalid*(o: oall): oinvalid {.importcpp:"#".}

type qint8*   = int8
type quint8*  = uint8
type qint16*  = int16
type quint16* = uint16
type qint32*  = int32
type half*    = uint16

type bfloat16_t* {.header: tensorh, importcpp:"tensorflow::bfloat16".} = object

proc bfloat16*(f: SomeFloat): bfloat16_t {.
  header: tensorh,
  importcpp:"tensorflow::bfloat16::truncate_to_bfloat16(#)".}

proc `[]=`[T](data: ptr T, i: int, val: T) {.importcpp:"(('3*)#)[#] = #".}
  
proc to_uint16(bf: bfloat16_t): uint16 {.importcpp:"(tensorflow::uint16)#".}

proc to_float*(bf: bfloat16_t): float32 =
  result = 0
  let p = cast[ptr uint16](addr(result))
  p[1] = bf.to_uint16

proc `$`*(f: bfloat16_t): string =
  result = $f.to_float

type
  DType* {.header: client_session, importcpp: "tensorflow::DataType".} = enum 
    DT_INVALID = 0, DT_FLOAT = 1, DT_DOUBLE = 2, DT_INT32 = 3, ##  Int32 tensors are always in 'host' memory.
    DT_UINT8 = 4, DT_INT16 = 5, DT_INT8 = 6, DT_STRING = 7, DT_COMPLEX64 = 8, ##  Single-precision complex
    DT_INT64 = 9, DT_BOOL = 10, DT_QINT8 = 11, ##  Quantized int8
    DT_QUINT8 = 12,             ##  Quantized uint8
    DT_QINT32 = 13,             ##  Quantized int32
    DT_BFLOAT16 = 14,           ##  Float32 truncated to 16 bits.  Only for cast ops.
    DT_QINT16 = 15,             ##  Quantized int16
    DT_QUINT16 = 16,            ##  Quantized uint16
    DT_UINT16 = 17, DT_COMPLEX128 = 18, ##  Double-precision complex
    DT_HALF = 19, DT_RESOURCE = 20, DT_VARIANT = 21, DT_UINT32 = 22, DT_UINT64 = 23 

    # An Enum holding the integers corresponding to the Tensorflow DataTypes.

const
  DT_COMPLEX* = DT_COMPLEX64

template To*(x: type int8): untyped =
  oint8
template To*(x: type int16): untyped =
  oint16
template To*(x: type int32): untyped =
  oint32
template To*(x: type int64): untyped =
  oint64
template To*(x: type uint8): untyped =
  ouint8
template To*(x: type uint16): untyped =
  ouint16
template To*(x: type uint32): untyped =
  ouint32
template To*(x: type uint64): untyped =
  ouint64
template To*(x: type float32): untyped =
  ofloat
template To*(x: type float64): untyped =
  odouble
template To*(x: type bool): untyped =
  obool
template To*(x: type cppstring): untyped =
  ostring
template To*(x: type Complex32): untyped =
  ocomplex64
template To*(x: type Complex64): untyped =
  ocomplex128
template To*(x: type qint8): untyped =
  oqint8
template To*(x: type quint8): untyped =
  oquint8
template To*(x: type qint32): untyped =
  oqint32
template To*(x: type bfloat16_t): untyped =
  obfloat16
template To*(x: type qint16): untyped =
  oqint16
template To*(x: type quint16): untyped =
  oquint16
template To*(x: type half): untyped =
  ohalf

  # takes a type and returns the corresponding otype

template To*(x: type oint8): untyped =
  int8
template To*(x: type oint16): untyped =
  int16
template To*(x: type oint32): untyped =
  int32
template To*(x: type oint64): untyped =
  int64
template To*(x: type ouint8): untyped =
  uint8
template To*(x: type ouint16): untyped =
  uint16
template To*(x: type ouint32): untyped =
  uint32
template To*(x: type ouint64): untyped =
  uint64
template To*(x: type ofloat): untyped =
  float32
template To*(x: type odouble): untyped =
  float64
template To*(x: type obool): untyped =
  bool
template To*(x: type ostring): untyped =
  cppstring
template To*(x: type ocomplex64): untyped =
  Complex32
template To*(x: type ocomplex128): untyped =
  Complex64
template To*(x: type oqint8): untyped =
  qint8
template To*(x: type oquint8): untyped =
  quint8
template To*(x: type oqint32): untyped =
  qint32
template To*(x: type obfloat16): untyped =
  bfloat16_t
template To*(x: type oqint16): untyped =
  qint16
template To*(x: type oquint16): untyped =
  quint16
template To*(x: type ohalf): untyped =
  half

  # takes an otype and returns the corresponding type

macro TFo*(x: static(DType)): typedesc =
  case x:
  of DT_INT8:
    result = ident "oint8"
  of DT_INT16:
    result = ident "oint16"
  of DT_INT32:
    result = ident "oint32"
  of DT_INT64:
    result = ident "oint64"
  of DT_UINT8:
    result = ident "ouint8"
  of DT_UINT16:
    result = ident "ouint16"
  of DT_UINT32:
    result = ident "ouint32"
  of DT_UINT64:
    result = ident "ouint64"
  of DT_FLOAT:
    result = ident "ofloat"
  of DT_DOUBLE:
    result = ident "odouble"
  of DT_BOOL:
    result = ident "obool"
  of DT_STRING:
    result = ident "ostring"
  of DT_COMPLEX64:
    result = ident "ocomplex64"
  of DT_COMPLEX128:
    result = ident "ocomplex128"
  of DT_QINT8:
    result = ident "oqint8"
  of DT_QUINT8:
    result = ident "oquint8"
  of DT_QINT32:
    result = ident "oqint32"
  of DT_BFLOAT16:
    result = ident "obfloat16"
  of DT_QINT16:
    result = ident "oqint16"
  of DT_QUINT16:
    result = ident "oquint16"
  of DT_HALF:
    result = ident "ohalf"
  of DT_INVALID:
    result = ident "oinvalid"
  of DT_RESOURCE:
    result = ident "oresource"
  of DT_VARIANT:
    result = ident "ovariant"

template oTF*(x: type oint8): untyped =
  DT_INT8
template oTF*(x: type oint16): untyped =
  DT_INT16
template oTF*(x: type oint32): untyped =
  DT_INT32
template oTF*(x: type oint64): untyped =
  DT_INT64
template oTF*(x: type ouint8): untyped =
  DT_UINT8
template oTF*(x: type ouint16): untyped =
  DT_UINT16
template oTF*(x: type ouint32): untyped =
  DT_UINT32
template oTF*(x: type ouint64): untyped =
  DT_UINT64
template oTF*(x: type ofloat): untyped =
  DT_FLOAT
template oTF*(x: type odouble): untyped =
  DT_DOUBLE
template oTF*(x: type obool): untyped =
  DT_BOOL
template oTF*(x: type ostring): untyped =
  DT_STRING
template oTF*(x: type ocomplex64): untyped =
  DT_COMPLEX64
template oTF*(x: type ocomplex128): untyped =
  DT_COMPLEX128
template oTF*(x: type oqint8): untyped =
  DT_QINT8
template oTF*(x: type oquint8): untyped =
  DT_QUINT8
template oTF*(x: type oqint32): untyped =
  DT_QINT32
template oTF*(x: type obfloat16): untyped =
  DT_BFLOAT16
template oTF*(x: type oqint16): untyped =
  DT_QINT16
template oTF*(x: type oquint16): untyped =
  DT_QUINT16
template oTF*(x: type ohalf): untyped =
  DT_HALF
template oTF*(x: type oinvalid): untyped =
  DT_INVALID
template oTF*(x: type oresource): untyped =
  DT_RESOURCE
template oTF*(x: type ovariant): untyped =
  DT_VARIANT
  
type Out*     {.header: std_ops, importcpp:"tensorflow::Output".} = object
type InList*     {.header: std_ops, importcpp:"tensorflow::InputList".} = object
type OutList*     {.header: std_ops, importcpp:"tensorflow::OutputList".} = object

proc iname(o: oall): cppstring {.importcpp:"#.name()".}

proc name*(o: oall): string =
  return $o.iname()
    
proc dtype*(o: oall): DType {.importcpp:"#.type()".}
  
proc index*(o: oall): int {.importcpp:"#.index()".}

type olist*[oall] {.header: std_ops, importcpp:"tensorflow::OutputList/*'0*/".} = object

proc invalidToAny*[T:oall](o: olist[oinvalid]): olist[T] {.importcpp:"#".}

converter anyToInvalid*(o: olist[oall]): olist[oinvalid] {.importcpp:"#".}

proc inewOutList(outs: openArray[oall], len: int): olist[oinvalid] {.
  header:std_ops, 
  header:vector,
  importcpp:"[&]() { auto _args = (tensorflow::Output*)&#[0]; int _len = #; std::vector<tensorflow::Output> _vec(_args, _args + _len); return _vec; }()".}

  ## A private constructor for the OutList type copying the Out objects from an array into an OutList.
  ## 
  ## Args:
  ##   outs: Array of Out objects.
  ##   len: Length of the Array.
  ## Returns:
  ##   An OutList with the given Out objects.

proc inewOutList(): olist[oinvalid] {.importcpp:"tensorflow::OutputList()".}

proc newOutList*[T: oall](outs: varargs[T]): olist[oinvalid] =
  if outs.len != 0:
    return inewOutList(outs, outs.len)
  else:
    return inewOutList()

  ## Constructor for the OutList type copying the Out objects from an array into an OutList.
  ## 
  ## Args:
  ##   outs: Array of Out objects.
  ## Returns:
  ##   An OutList with the given Out objects.

proc `[]`*(outs: olist[oall], idx: int): oall {.importcpp:"#[#]".}

proc `[]=`*(outs: olist[oall], idx: int, val: oall) {.importcpp:"#[#] = #".}

proc len*(outs: olist[oall]): int {.importcpp:"#.size()".}

  ## Method to get the size of an OutList.
  ## 
  ## Args:
  ##   outs: The OutList it is applied on.
  ## Returns:
  ##   The size of the OutList object.

proc add*(outs: olist[oall], outVal: oall) {.importcpp:"#.push_back(#)".}

  ## Proc to append to an OutList.
  ## 
  ## Args:
  ##   outs: The OutList it is applied on.
  ##   outVal: Output you want to append.

iterator items*(outs: olist[oall]): oall =
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

iterator zip*(l1: olist[oall], l2: olist[oall]): (oall, oall) =
  let len = min(l1.len, l2.len)
  var i = 0
  while i <= len-1:
    yield (l1[i], l2[i])
    inc i

template dt_switch*(statement: untyped, T: untyped, body: untyped) =
  case statement:
  of DT_INT8:
    type T = oint8
    body
  of DT_INT16:
    type T = oint16
    body
  of DT_INT32:
    type T = oint32
    body
  of DT_INT64:
    type T = oint64
    body
  of DT_UINT8:
    type T = ouint8
    body
  of DT_UINT16:
    type T = ouint16
    body
  of DT_UINT32:
    type T = ouint32
    body
  of DT_UINT64:
    type T = ouint64
    body
  of DT_FLOAT:
    type T = ofloat
    body
  of DT_DOUBLE:
    type T = odouble
    body
  of DT_BOOL:
    type T = obool
    body
  of DT_STRING:
    type T = ostring
    body
  of DT_COMPLEX64:
    type T = ocomplex64
    body
  of DT_COMPLEX128:
    type T = ocomplex128
    body
  of DT_QINT8:
    type T = oqint8
    body
  of DT_QUINT8:
    type T = oquint8
    body
  of DT_QINT32:
    type T = oqint32
    body
  of DT_BFLOAT16:
    type T = obfloat16
    body
  of DT_QINT16:
    type T = oqint16
    body
  of DT_QUINT16:
    type T = oquint16
    body
  of DT_HALF:
    type T = ohalf
    body
  of DT_INVALID:
    type T = oinvalid
    body
  of DT_RESOURCE:
    type T = oresource
    body
  of DT_VARIANT:
    type T = ovariant
    body
  