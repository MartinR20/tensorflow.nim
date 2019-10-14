## The Inline and InlineJoin Layer are made to give you the opportuinity of adding custom operations not in
## the layers api. 
##
## In case of the Inline Layer you pass a procedure with the given signature `proc(rt: Scope, input: Out): Out`.
## The rt value is the current scope and the input value is the output from the last layer. So to perform an 
## easy multiplication you would do something like the following:
##
## .. code:: nim
##
##    var proto: seq[Layer] = @[]
##
##    # multiply the input by a transposed version of itself
##    proto.newInline(proc(rt: Scope, input: Out): Out = 
##                         return rt.MatMul(rt.Transpose(input), input) )
##
## The InlineJoin Layer in contrast expects a procedure with the following signature `proc(rt: Scope, input: OutList): Out`
## and is used to make custom join operations. Let's now say you would like to create your own version of the
## concat layer then it might look like this:
##
## .. code:: nim
##
##    var proto: seq[Layer] = @[]
##
##    #..some branches
##
##    # concatonate the results of the branches along the fist axis
##    proto.newInlineJoin(proc(rt: Scope, input: OutList): Out = 
##                             return rt.Concat(input, rt.Const(1, int32)) )

import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Inline[T] = ref object of Layer[T]
    ffunc: proc(rt: Scope, input: oall): oall

method `$`[T](layer: Inline[T]): string = "Inline"

method make[T](layer: Inline[T], root: Scope, shape: var seq[int]): proc(rt: Scope, input: oall): oall = 
    return layer.ffunc

proc newInline*[T](model: var seq[Layer], inlineFunc: proc(rt: Scope, input: oall): oall) =
    var inline = new Inline[T]
    
    inline.ffunc = inlineFunc

    model.add(inline)


type InlineJoin[T] = ref object of Layer[T]
    ffunc: proc(rt: Scope, input: olist[oall]): oall

method `$`[T](layer: InlineJoin[T]): string = "InlineJoin"

method makeJoin[T](layer: InlineJoin[T], root: Scope, shape: var seq[seq[int]]): proc(rt: Scope, input: olist[oall]): oall = 
    shape = @[shape[0]]
    return layer.ffunc

method isJoin*[T](layer: InlineJoin[T]): bool = true

proc newInlineJoin*[T](model: var seq[Layer], inlineFunc: proc(rt: Scope, input: olist[oall]): oall) =
    var inlineJoin = new InlineJoin[T]
    
    inlineJoin.ffunc = inlineFunc
    
    model.add(inlineJoin)

export Inline,
       InlineJoin,
       `$`,
       newInline,
       newInlineJoin,
       make
