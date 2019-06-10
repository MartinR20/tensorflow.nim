import c_api

proc Placeholder(graph: ptr TF_Graph, s: ptr TF_Status, name: cstring): ptr TF_Operation =
    let desc = TF_NewOperation(graph, "Placeholder", name)

    TF_SetAttrType(desc, "dtype", TF_FLOAT);

    return TF_FinishOperation(desc, s);

proc Const(graph: ptr TF_Graph, s: ptr TF_Status, values: ptr TF_Tensor, name: cstring): ptr TF_Operation =
    let desc = TF_NewOperation(graph, "Const", name)

    TF_SetAttrTensor(desc, "value", values, s)

    if (TF_GetCode(s) != TF_OK):
      raise newException(OSError, "Couldn't bind tensor Placeholder!")

    TF_SetAttrType(desc, "dtype", TF_FLOAT)

    return  TF_FinishOperation(desc, s)


echo TF_VERSION()

let s = TF_NewStatus()
let graph = TF_NewGraph()

let feed1 = Placeholder(graph, s, "feed1")

let feed2 = Placeholder(graph, s, "feed2")

let di: clonglong = 2
let dim = unsafeAddr di

let dtype_val: cfloat = 0.0 
let values: array[0..3, cfloat] = [dtype_val, 1.0, 1.0, 0.0]
let value_ptr = unsafeAddr values

let deallocator_ag: cint = 0
let deallocator_arg: pointer = unsafeAddr deallocator_ag

let ten = TF_NewTensor(TF_FLOAT, dim, 2, value_ptr, 4, proc(data: pointer; len: csize; arg: pointer) = discard data, deallocator_arg)

let constant = Const(graph, s, ten, "const1")

let desc = TF_NewOperation(graph, "AddN", "add")

let inputs = [(feed1, 0), (constant, 0)]
TF_AddInputList(desc, inputs, 2)
