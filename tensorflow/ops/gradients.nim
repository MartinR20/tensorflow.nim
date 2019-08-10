import ../core/core,
       ../utils/utils,
       ./newop/newop,
       ./generated/generated,
       ./custom_ops,
       sequtils

{.emit:"""
#include "tensorflow/core/framework/op.h"  
#include "tensorflow/core/framework/shape_inference.h"
#include "tensorflow/core/framework/op_kernel.h"
#include "tensorflow/cc/framework/scope.h"
#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/tensor_shape.h"
#include "tensorflow/core/framework/types.h"

using namespace tensorflow;

class ConcatOffset {
 public:
  ConcatOffset(const ::tensorflow::Scope& scope, ::tensorflow::Input concat_dim,
             ::tensorflow::InputList shape);
  ::tensorflow::Output operator[](size_t index) const { return offset[index]; }


  Operation operation;
  ::tensorflow::OutputList offset;
};

ConcatOffset::ConcatOffset(const ::tensorflow::Scope& scope,
                           ::tensorflow::Input concat_dim,
                           ::tensorflow::InputList shape) {
  if (!scope.ok()) return;
  auto _concat_dim = ::tensorflow::ops::AsNodeOut(scope, concat_dim);
  if (!scope.ok()) return;
  auto _shape = ::tensorflow::ops::AsNodeOutList(scope, shape);
  if (!scope.ok()) return;
  ::tensorflow::Node* ret;
  const auto unique_name = scope.GetUniqueNameForOp("ConcatOffset");
  auto builder = ::tensorflow::NodeBuilder(unique_name, "ConcatOffset")
                     .Input(_concat_dim)
                     .Input(_shape)
  ;
  scope.UpdateBuilder(&builder);
  scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
  if (!scope.ok()) return;
  scope.UpdateStatus(scope.DoShapeInference(ret));
  this->operation = Operation(ret);
  for (int32 i = 0; i < ret->num_outputs(); ++i)
    this->offset.push_back(Output(ret, i));
}
""".}

proc ConcatOffset(scope: Scope, concat_dim: Out, shape: OutList): OutList {.importcpp:"ConcatOffset(*#, #, #).offset".}
#proc Stack(scope: Scope, list: OutList, axis: Out): Out {.importcpp:"tensorflow::ops::Stack(*#, #, #)".}

proc ConcatV2(scope: Scope, op: Operation, gradInputs: OutList, gradOutputs: ptr OutList): Status {.grad.} =
    let input_len = op.num_inputs()
    
    if input_len == 2:
        gradOutputs[] = gradInputs
        return scope.status
    
    let concat_dim = op.inputs[input_len - 1]
    let inputs = op.inputs(0..input_len-2)
    
    with scope:
        let non_neg_concat_dim = concat_dim %% Rank(inputs[0])

    var sizes: OutList

    for input in inputs:
        sizes.add scope.Shape(input)

    #if sizes.len > 16:
    #    let sliceBegin = newOutList(non_neg_concat_dim, scope.Const(0, int32))
    #    
    #    with scope:
    #        let squeezed = Squeeze(
    #                    Slice(
    #                        Stack(sizes, Const(1, int32)), 
    #                        Concat(sliceBegin, Const(0, int32)), 
    #                        Const([1, -1], int32)
    #                    ))
    #    
    #        gradOutputs[] = Split(gradInputs[0], squeezed, non_neg_concat_dim)
    #else:
    let offset = scope.ConcatOffset(non_neg_concat_dim, sizes)

    var out_grads: OutList
        
    for (begin, size) in zip(offset, sizes):
        with scope:
            let slice = Slice(gradInputs[0], 
                              begin, 
                              size)
        out_grads.add(slice)
    
    gradOutputs[] = out_grads
    
    gradOutputs[].add(Out())
    
    return scope.status()
  