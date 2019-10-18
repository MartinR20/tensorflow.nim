## The core module implements all the necessary ground work needed to construct a computation graph interface
## with and manipulate tensors. 

import 
    core/buffers, core/graphdef, core/ops, core/otypes, 
    core/scope, core/session, core/shape, core/status, 
    core/summary, core/tensor, core/tensor_helper

export 
    buffers, graphdef, ops, otypes, scope, session,
    shape, status, summary, tensor, tensor_helper