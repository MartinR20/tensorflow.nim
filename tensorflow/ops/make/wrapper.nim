import 
    ../../core/core, ../../utils/utils

const op* = "tensorflow/core/framework/op.h"

type OpDef* {.header:op , importcpp:"const tensorflow::OpDef".} = object

proc igetOpDef(scope: Scope, name: cppstring, opdef: ptr ptr OpDef) {.importcpp:"#->graph()->flib_def().LookUpOpDef(#, #)".}

proc getOpDef*(scope: Scope, name: string, opdef: ptr ptr OpDef) = scope.igetOpDef(newCPPString(name), opdef)

proc iname(opdef: OpDef): cppstring {.importcpp:"#.name()".}

proc name*(opdef: OpDef): string = return $opdef.iname

type MutOpDef* {.header:op , importcpp:"tensorflow::OpDef".} = object

proc nomut*(opdef: MutOpDef): Opdef {.importcpp:"#".}


type OpDefArgDef* {.header:op , importcpp:"tensorflow::OpDef_ArgDef".} = object

proc input_arg*(opdef: ptr OpDef, i: int): OpDefArgDef {.importcpp:"#->input_arg(#)".}

proc input_arg_size*(opdef: ptr OpDef): int {.importcpp:"#->input_arg_size()".}

iterator inputs*(opdef: ptr OpDef): OpDefArgDef =
    var c = 0
    while c != opdef.input_arg_size():
        yield opdef.input_arg(c)
        inc(c)

proc output_arg*(opdef: ptr OpDef, i: int): OpDefArgDef {.importcpp:"#->output_arg(#)".}

proc output_arg_size*(opdef: ptr OpDef): int {.importcpp:"#->output_arg_size()".}

proc iname(opdef: OpDefArgDef): cppstring {.importcpp:"#.name()".}

proc name*(opdef: OpDefArgDef): string = return $opdef.iname

proc type*(opdef: OpDefArgDef): DType {.importcpp:"#.type()".}

proc itype_attr(opdef: OpDefArgDef): cppstring {.importcpp:"#.type_attr()".}

proc type_attr*(opdef: OpDefArgDef): string = return $opdef.itype_attr

proc itype_list_attr(opdef: OpDefArgDef): cppstring {.importcpp:"#.type_list_attr()".}

proc type_list_attr*(opdef: OpDefArgDef): string = return $opdef.itype_list_attr

proc inumber_attr(opdef: OpDefArgDef): cppstring {.importcpp:"#.number_attr()".}

proc number_attr*(opdef: OpDefArgDef): string = return $opdef.inumber_attr


type OpDefAttrDef* {.header:op , importcpp:"tensorflow::OpDef_AttrDef".} = object

proc attr*(opdef: ptr OpDef, i: int): OpDefAttrDef {.importcpp:"#->attr()[#]".}

proc attr_size*(opdef: ptr OpDef): int {.importcpp:"#->attr_size()".}

iterator attrs*(opdef: ptr OpDef): OpDefAttrDef =
    var c = 0
    while c != opdef.attr_size():
        yield opdef.attr(c)
        inc(c)

proc iname(opdef: OpDefAttrDef): cppstring {.importcpp:"#.name()".}

proc name*(opdef: OpDefAttrDef): string = return $opdef.iname

proc itype(opdef: OpDefAttrDef): cppstring {.importcpp:"#.type()".}

proc type*(opdef: OpDefAttrDef): string = return $opdef.itype


type AttrValue* {.header:op , importcpp:"tensorflow::AttrValue".} = object

proc allowed_values*(opdef: OpDefAttrDef): AttrValue {.importcpp:"#.allowed_values()".} 

proc default_value*(attr: OpDefAttrDef): AttrValue {.importcpp:"#.default_value()".} 

proc b*(attr: AttrValue): bool {.importcpp:"#.b()".}

proc listb*(attr: AttrValue, i: int): bool {.importcpp:"#.list().b()[#]".}

proc lenb*(attr: AttrValue): int {.importcpp:"#.list().b_size()".}

proc f*(attr: AttrValue): float {.importcpp:"#.f()".}

proc listf*(attr: AttrValue, i: int): float {.importcpp:"#.list().f()[#]".}

proc lenf*(attr: AttrValue): int {.importcpp:"#.list().f_size()".}

proc fn*(attr: AttrValue): NameAttrList {.importcpp:"#.func()".}

proc listfn*(attr: AttrValue, i: int): NameAttrList {.importcpp:"#.list().func()[#]".}

proc lenfn*(attr: AttrValue): int {.importcpp:"#.list().func_size()".}

proc i*(attr: AttrValue): int {.importcpp:"#.i()".}

proc listi*(attr: AttrValue, i: int): int {.importcpp:"#.list().i()[#]".}

proc leni*(attr: AttrValue): int {.importcpp:"#.list().i_size()".}

proc cs(attr: AttrValue): cppstring {.importcpp:"#.s()".}

proc s*(attr: AttrValue): string = return $attr.cs

proc ilists*(attr: AttrValue, i: int): cppstring {.importcpp:"#.list().s()[#]".}

proc lists*(attr: AttrValue, i: int): string = return $attr.ilists(i)

proc lens*(attr: AttrValue): int {.importcpp:"#.list().s_size()".}

proc shape*(attr: AttrValue): TensorShape {.importcpp:"#.shape()".}

proc listshape*(attr: AttrValue, i: int): TensorShape {.importcpp:"#.list().shape()[#]".}

proc lenshape*(attr: AttrValue): int {.importcpp:"#.list().shape_size()".}

proc itensor*(attr: AttrValue): Tensor[oinvalid] {.importcpp:"[&](){ auto _ten = new tensorflow::Tensor(); _ten->FromProto(#.tensor()); return _ten; }()".}

proc tensor*(attr: AttrValue): ref Tensor[oinvalid] = 
    var ten = new Tensor[oinvalid]
    ten[] = itensor(attr)
    return ten

proc ilisttensor*(attr: AttrValue, i: int): Tensor[oinvalid] {.importcpp:"[&](){ auto _ten = new tensorflow::Tensor(); _ten->FromProto(#.list().tensor()[#]); return _ten; }()".}

proc listtensor*(attr: AttrValue, i: int): ref Tensor[oinvalid] = 
    var ten = new Tensor[oinvalid]
    ten[] = ilisttensor(attr, i)
    return ten

proc lentensor*(attr: AttrValue): int {.importcpp:"#.list().tensor_size()".}

proc type*(attr: AttrValue): DType {.importcpp:"#.type()".}

proc listtype*(attr: AttrValue, i: int): DType {.importcpp:"(tensorflow::DataType)#.list().type()[#]".}

proc lentype*(attr: AttrValue): int {.importcpp:"#.list().type_size()".}


type AttrSlice* {.importcpp:"tensorflow::AttrSlice", header:"tensorflow/core/framework/node_def_util.h".} = object

proc attrs*(n: Node): AttrSlice {.importcpp:"#.attrs()".}

proc `[]`*(slice: AttrSlice, attrname: cppstring): AttrValue {.importcpp:"*(#.Find(#))".}

proc `[]`*(slice: AttrSlice, attrname: string): AttrValue =
    return slice[newCPPString(attrname)]

type vector*[T] {.header:"<vector>", importcpp:"std::vector".} = object

proc reserve*[T](vec: vector[T], len: int) {.importcpp:"#.reserve(#)".} 

proc add*[T](vec: vector[T], item: T) {.importcpp:"#.emplace_back(#)".} 

proc `[]`*[T](vec: vector[T], i: int): T {.importcpp:"#[#]".}

proc len*[T](vec: vector[T]): int {.importcpp:"#.size()".}

iterator items*[T](vec: vector[T]): T =
    var c = 0
    while c < vec.len:
        yield vec[c]
        inc(c)
