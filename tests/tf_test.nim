#TODO: query I and L flags on compilation
#TODO: automatically add to linker path /home/notroot/.local/lib/python3.6/site-packages/tensorflow
#TODO: automatically install c api https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.13.1.tar.gz

{.passC: "-I/home/notroot/.local/lib/python3.6/site-packages/tensorflow/include -D_GLIBCXX_USE_CXX11_ABI=0".}
{.passL: "-L/home/notroot/.local/lib/python3.6/site-packages/tensorflow -ltensorflow_framework -ltensorflow".}

const 
  op = "<tensorflow/core/framework/op.h>"
  op_kernel = "<tensorflow/core/framework/op_kernel.h>"
  shape_inference = "<tensorflow/core/framework/shape_inference.h>"
  types = "<tensorflow/core/framework/types.h>"

type
  Tensor {.header: op_kernel,
          importcpp: "tensorflow::Tensor".} = object
  
  OpDefBuilderWrapper {.header: op,
                      importcpp: "tensorflow::register_op::OpDefBuilderWrapper<true>*".} = object
    
  InferenceContext {.header: shape_inference,
                    importcpp: "tensorflow::shape_inference::InferenceContext".} = object

  ShapeHandle {.header: shape_inference,
              importcpp: "tensorflow::shape_inference::ShapeHandle".} = object

  OpKernelContext {.header: op_kernel,
                  importcpp: "tensorflow::OpKernelContext".} = object

  Scope {.header: op,
          importcpp: "tensorflow::Scope".} = object

proc REGISTER_OP(name: cstring): OpDefBuilderWrapper {.header: op, 
                                                      importcpp: "&tensorflow::register_op::OpDefBuilderWrapper<SHOULD_REGISTER_OP(@)>(@)".}
  
proc Input(this: OpDefBuilderWrapper, name: cstring): OpDefBuilderWrapper {.header: op
                                                                          importcpp: "&(#)->Input(#)".}

proc Output(this: OpDefBuilderWrapper, name: cstring): OpDefBuilderWrapper {.header: op
                                                                            importcpp: "&(#)->Output(#)".}

proc SetShapeFn(this: OpDefBuilderWrapper, fn: proc): OpDefBuilderWrapper {.header: op,
                                                                          importcpp: "&(#)->SetShapeFn([](::tensorflow::shape_inference::InferenceContext* c){#(c); return tensorflow::Status::OK();})".}

proc set_output(c: ptr InferenceContext, a: cint, b: ShapeHandle) {.header: shape_inference,
                                                                  importcpp: "tensorflow::shape_inference::InferenceContext::set_output".}

proc input(c: ptr InferenceContext, a: cint): ShapeHandle {.header: shape_inference,
                                                          importcpp: "tensorflow::shape_inference::InferenceContext::input".}

#[
static: 
  const class = "ZeroOut"

proc RegisterComputeOp(fn: proc)  {.header: op_kernel,
                                   importcpp: """
                  using namespace tensorflow;

                  class """ & class & """Op : public OpKernel {
                  public:
                      explicit """ & class & """Op(OpKernelConstruction* context) : OpKernel(context) {}

                      void Compute(OpKernelContext* context) override {
                        #(context);
                      }
                  };
                  
                  REGISTER_KERNEL_BUILDER(Name("""" & class & """").Device(DEVICE_CPU), """ & class & """Op);
                """.} 
]#

proc floatTensor(): Tensor {.header: op_kernel,
                           importcpp: "tensorflow::Tensor()".} 

proc NewRootScope(): Scope {.header: op,
                             importcpp: "tensorflow::Scope::NewRootScope()",
                             constructor.}


let x = Tensor()

#[
proc fn(c: ptr InferenceContext) = c.set_output(0, c.input(0))

discard REGISTER_OP(class)
          .Input("to_zero: int32")
          .Output("zeroed: int32")
          .SetShapeFn(fn) 


proc compute_fn(context: ptr OpKernelContext) = echo "xx"

RegisterComputeOp(compute_fn)
]#

proc ZeroOutOp(input: Tensor): Tensor =
  return Tensor() # {.emit "ZeroOutOp.zero_out", input, ";".}

let scope = NewRootScope()
