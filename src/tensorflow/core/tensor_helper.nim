import 
    tensor, buffers, macros, otypes, ../utils

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
  when arr.len != 0:
    getShapeHelper(arr, shape)
  return shape

  ## A recursive method for finding the diminensions of an array.
  ## 
  ## Args:
  ##   arr: The array you want to find the dimensions from.
  ## Returns:
  ##   The dimensions of the given array.

proc prod(s: openArray[int]): int =
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

proc getShape(x: NimNode, shape: var seq[int]) {.compileTime.} =
    case x.kind:
    of nnkBracketExpr:
        shape.add (x[1][2].intVal + 1).int
        getShape(x[2], shape)
    of nnkSym:
        return
    else:
        raise newException(ValueError, "Failed traversing AST.")

macro getShape(x: untyped): untyped =
    var shape: seq[int]
    x.getType.getShape(shape)
    return newLit(shape)

proc getBaseType(x: NimNode, T: var NimNode) {.compileTime.} =
    case x.kind:
    of nnkBracketExpr:
        if $x[0] == "typeDesc":
            getBaseType(x[1], T)
        elif $x[0] == "array":
            getBaseType(x[2], T)
        else: 
            raise newException(ValueError, "Failed traversing AST.")
    of nnkSym:
        T = x
        return
    else:
        raise newException(ValueError, "Failed traversing AST.")
    
macro getBaseType(x: untyped): untyped =
    var T: NimNode
    x.getType.getBaseType(T)
    return T

proc asPtr[N,T](arr: array[N,T]): pointer {.importcpp:"&#[0]".}

proc flat_idx_cast[N,T](arr: array[N,T], i: int, R: type): R {.importcpp:"((('0*)#)[#])".}

macro `[]`*(x: typedesc): untyped = 
  let impl = x.getTypeInst[^1].getImpl
  
  if impl.kind == nnkNilLit:
    return x.getTypeInst[^1]

  case impl[2].kind:
  of nnkDotExpr:
    return impl[2]
  else:
    return x.getTypeInst[^1]

proc tensor*[N,T](data: array[N,T], OT: static[typedesc]): auto =
    let shape = data.getShape
    let DT = OT.oTF
    
    type bT = T.getBaseType
    type oT = OT.To

    let ten = tensor(DT, shape, OT)

    when $(bT[][]) == $(oT[]):
        var dptr = data.asPtr
        copyMem(ten.data, dptr, (prod(shape)) * sizeof(oT))
    else:
        for i in 0..prod(shape)-1:
            ten.data[i] = data.flat_idx_cast(i, oT)  

    return ten

proc tensor*[T: SomeNumber](data: T, OT: static[typedesc]): auto =
    let DT = OT.oTF
    
    let ten = tensor(DT, [], OT)
    ten.data[0] = (OT.To)(data)

    return ten

proc tensor*(data: string, OT: type = static(string)): auto =
    let ten = tensor(DT_STRING, [], ostring)

    ten.data[0] = newCPPString data

    return ten
