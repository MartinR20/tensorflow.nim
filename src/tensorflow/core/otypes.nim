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
proc invalidToAny*[T:oany](o: oinvalid): T {.importcpp:"#".}

converter anyToInvalid*(o: oany): oinvalid {.importcpp:"#".}

const dict* = { 
    "int"           : "oint64"       , 
    "int8"          : "oint8"       , 
    "int16"         : "oint16"      , 
    "int32"         : "oint32"      , 
    "int64"         : "oint64"      , 
    "uint"          : "ouint64"     , 
    "uint8"         : "ouint8"      , 
    "uint16"        : "ouint16"     ,  
    "uint32"        : "ouint32"     ,  
    "uint64"        : "ouint64"     ,  
    "float"         : "odouble"     ,  
    "float32"       : "ofloat"      , 
    "float64"       : "odouble"     ,  
    "bool"          : "obool"       ,
    "char"          : "ouint8"      , 
    "cppstring"     : "ostring"     ,  
    "Complex32"     : "ocomplex64"  ,  
    "Complex64"     : "ocomplex128" ,  
    "qint8"         : "oqint8"      ,  
    "quint8"        : "oquint8"     ,  
    "qint32"        : "oqint32"     ,  
    "bfloat16_t"    : "obfloat16"   ,  
    "qint16"        : "oqint16"     ,  
    "quint16"       : "oquint16"    ,  
    "half"          : "ohalf"       
}.toOrderedTable

const reversedict* = { 
    "oint8"       : "int8"        , 
    "oint16"      : "int16"       , 
    "oint32"      : "int32"       , 
    "oint64"      : "int64"       , 
    "ouint8"      : "uint8"       , 
    "ouint16"     : "uint16"      ,  
    "ouint32"     : "uint32"      ,  
    "ouint64"     : "uint64"      ,  
    "ofloat"      : "float32"     , 
    "odouble"     : "float64"     ,  
    "obool"       : "bool"        ,
    "ostring"     : "cppstring"   ,  
    "ocomplex64"  : "Complex32"   ,   
    "ocomplex128" : "Complex64"   ,  
    "oqint8"      : "qint8"       ,  
    "oquint8"     : "quint8"      ,  
    "oqint32"     : "qint32"      ,  
    "obfloat16"   : "bfloat16_t"  ,  
    "oqint16"     : "qint16"      ,  
    "oquint16"    : "quint16"     ,  
    "ohalf"       : "half"       
}.toOrderedTable

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
  DT_COMPLEX = DT_COMPLEX64

const tfdict* = { 
    "oinvalid"    : DT_INVALID    ,
    "oresource"   : DT_RESOURCE   ,
    "ovariant"    : DT_VARIANT    ,
    "oint8"       : DT_INT8       , 
    "oint16"      : DT_INT16      , 
    "oint32"      : DT_INT32      , 
    "oint64"      : DT_INT64      , 
    "ouint8"      : DT_UINT8      , 
    "ouint16"     : DT_UINT16     ,  
    "ouint32"     : DT_UINT32     ,  
    "ouint64"     : DT_UINT64     ,  
    "ofloat"      : DT_FLOAT      , 
    "odouble"     : DT_DOUBLE     ,  
    "obool"       : DT_BOOL       ,
    "ostring"     : DT_STRING     ,  
    "ocomplex64"  : DT_COMPLEX64  ,  
    "ocomplex128" : DT_COMPLEX128 ,  
    "oqint8"      : DT_QINT8      ,  
    "oquint8"     : DT_QUINT8     ,  
    "oqint32"     : DT_QINT32     ,  
    "obfloat16"   : DT_BFLOAT16   ,  
    "oqint16"     : DT_QINT16     ,  
    "oquint16"    : DT_QUINT16    ,  
    "ohalf"       : DT_HALF       
}.toOrderedTable

const reversetfdict* = { 
    DT_INVALID    : "oinvalid"    ,
    DT_RESOURCE   : "oresource"   ,
    DT_VARIANT    : "ovariant"    ,
    DT_INT8       : "oint8"       , 
    DT_INT16      : "oint16"      , 
    DT_INT32      : "oint32"      , 
    DT_INT64      : "oint64"      , 
    DT_UINT8      : "ouint8"      , 
    DT_UINT16     : "ouint16"     ,  
    DT_UINT32     : "ouint32"     ,  
    DT_UINT64     : "ouint64"     ,  
    DT_FLOAT      : "ofloat"      , 
    DT_DOUBLE     : "odouble"     ,  
    DT_BOOL       : "obool"       ,
    DT_STRING     : "ostring"     ,  
    DT_COMPLEX64  : "ocomplex64"  ,  
    DT_COMPLEX128 : "ocomplex128" ,  
    DT_QINT8      : "oqint8"      ,  
    DT_QUINT8     : "oquint8"     ,  
    DT_QINT32     : "oqint32"     ,  
    DT_BFLOAT16   : "obfloat16"   ,  
    DT_QINT16     : "oqint16"     ,  
    DT_QUINT16    : "oquint16"    ,  
    DT_HALF       : "ohalf"       
}.toOrderedTable

macro oT*(x: untyped): untyped =
    if not dict.hasKey($x):
        var types = ""

        for key in dict.keys:
            types &= key & ", "

        types = types[0..^3]

        raise newException(ValueError, "Type " & $x & " not supported. Use one of [" & types & "]")

    return ident(dict[$x])

  # takes a type and returns the corresponding otype

macro To*(x: untyped): untyped =
    if not reversedict.hasKey($x):
        var types = ""

        for key in reversedict.keys:
            types &= key & ", "

        types = types[0..^3]

        raise newException(ValueError, "Type " & $x & " not supported. Use one of [" & types & "]")

    return ident(reversedict[$x])

  # takes an otype and returns the corresponding type

macro oTF*(x: untyped): untyped = 
    if not tfdict.hasKey($x):
        var types = ""

        for key in tfdict.keys:
            types &= key & ", "

        types = types[0..^3]

        raise newException(ValueError, "Type " & $x & " not supported. Use one of [" & types & "]")

    return newLit(tfdict[$x])

macro TFo*(x: static[DType]): untyped = 
  if not reversetfdict.hasKey(x):
      var types = ""

      for key in reversetfdict.keys:
          types &= $key & ", "

      types = types[0..^3]

      raise newException(ValueError, "Type " & $x & " not supported. Use one of [" & types & "]")

  return newLit(reversetfdict[x])

type Out*     {.header: std_ops, importcpp:"tensorflow::Output".} = object
type InList*     {.header: std_ops, importcpp:"tensorflow::InputList".} = object
type OutList*     {.header: std_ops, importcpp:"tensorflow::OutputList".} = object

proc iname(o: oall): cppstring {.importcpp:"#.name()".}

proc name*(o: oall): string =
  return $o.iname()
    
proc dtype(o: oall): DType {.importcpp:"#.type()".}
  
proc index(o: oall): int {.importcpp:"#.index()".}

type olist*[oall] {.header: std_ops, importcpp:"tensorflow::OutputList/*'0*/".} = object

proc invalidToAny*[T:oany](o: olist[oinvalid]): olist[T] {.importcpp:"#".}

converter anyToInvalid*(o: olist[oany]): olist[oinvalid] {.importcpp:"#".}

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
  
proc uint16(bf: bfloat16_t): uint16 {.importcpp:"(tensorflow::uint16)#".}

proc float*(bf: bfloat16_t): float32 =
  result = 0
  let p = cast[ptr uint16](addr(result))
  p[1] = bf.uint16

proc `$`*(f: bfloat16_t): string =
  result = $f.float