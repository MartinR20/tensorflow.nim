import
    ../utils/utils, otypes

type
  Operation*[T: oall] {.header: gradients,
                        importcpp: "tensorflow::Operation/*'0*/".} = object
 
proc num_inputs*[T](op: Operation[T]): int {.importcpp:"#.num_inputs()".}

proc input_type*[T](op: Operation[T], o: int): DType {.importcpp:"#.input_type(#)".}

proc input*[T](op: Operation[T], i: int): T {.importcpp:"#.input(#)".}

proc inputs*[T](op: Operation[T], rng: HSlice[int, int]): olist[T] =
  var inputs: olist[oinvalid]
  
  for i in rng:
    inputs.add op.input(i)

  return inputs

proc inputs*[T](op: Operation[T]): olist[T] =
  var inputs: olist[oinvalid]
  
  for i in 0..op.num_inputs-1:
    inputs.add op.input(i)

  return inputs

proc num_outputs*[T](op: Operation[T]): int {.importcpp:"#.num_outputs()".}

proc output_type*[T](op: Operation[T], o: int): DType {.importcpp:"#.output_type(#)".}

proc output*[T](op: Operation[T], i: int): T {.importcpp:"#.output(#)".}

proc outputs*[T](op: Operation[T], rng: HSlice[int, int]): olist[T] =
  var outputs: olist[T]
  
  for i in rng:
    outputs.add op.output(i)

  return outputs

proc outputs*[T](op: Operation[T]): olist[T] =
  var outputs: olist[T]
  
  for i in 0..op.num_outputs-1:
    outputs.add op.output(i)

  return outputs

proc op*(o: oall): Operation[oall] {.importcpp:"#.op()".}

type Node* {.importcpp:"tensorflow::Node".} = object

proc node*[T](o: Operation[T]): ptr Node {.importcpp:"#.node()".}

type NameAttrList* {.importcpp:"tensorflow::NameAttrList".} = object
