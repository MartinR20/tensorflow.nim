import ./wrapper,
       strutils

proc make_shared(T: static[string], args: varargs[string], move = true): static[string] =
    var ret = "std::make_shared<" & T & ">("

    if move:
        ret &= "std::move(" & args.join(", ") & ")"
    else:
        ret &= args.join(", ")
        
    ret &= ")"
    return ret

proc shared(T: static[string]): static[string] =
    return "std::shared_ptr<" & T & ">"

const WrapperT = "tensorflow::register_op::OpDefBuilderWrapper<true>"

type OpDefBuilderWrapper {.importcpp: shared(WrapperT), header:op.} = object

proc opDefBuilderWrapper(name: cstring): OpDefBuilderWrapper {.
    importcpp: make_shared(WrapperT, "#", false)
.}

proc Input(wrapper: OpDefBuilderWrapper, def: cstring): OpDefBuilderWrapper {.
    importcpp: make_shared(WrapperT, "#->Input(#)")
.}

proc Output(wrapper: OpDefBuilderWrapper, def: cstring): OpDefBuilderWrapper{.
    importcpp: make_shared(WrapperT, "#->Output(#)")
.}

proc Register(wrapper: OpDefBuilderWrapper) {.
    importcpp:"""auto _b = #;
    tensorflow::OpRegistry::Global()->Register(
      [_b](tensorflow::OpRegistrationData* op_reg_data) -> tensorflow::Status {
        return _b->builder().Finalize(op_reg_data);
      });
    """
.}

when isMainModule:
    import ../../core/core

    var builder = opDefBuilderWrapper("ZeroOut")
    builder = builder.Input("to_zero: int32")
    builder = builder.Output("zeroed: int32")
    builder.Register()

    var opdef: ptr OpDef
    let scope = newRootScope()
    scope.getOpDef("ZeroOut", addr(opdef))
    
    for input in opdef.inputs:
        echo input.name






