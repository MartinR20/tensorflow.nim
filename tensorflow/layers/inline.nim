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

type Inline = ref object of Layer
    ffunc: proc(rt: Scope, input: Out): Out

method `$`(layer: Inline): string = "Inline"

method make(layer: Inline, root: Scope): proc(rt: Scope, input: Out): Out = 
    return layer.ffunc

proc newInline*(model: var seq[Layer], inlineFunc: proc(rt: Scope, input: Out): Out) =
    var inline = new Inline
    
    inline.ffunc = inlineFunc

    model.add(inline)


type InlineJoin = ref object of Layer
    ffunc: proc(rt: Scope, input: OutList): Out

method `$`(layer: InlineJoin): string = "InlineJoin"

method makeJoin(layer: InlineJoin, root: Scope): proc(rt: Scope, input: OutList): Out = 
    return layer.ffunc

method isJoin*(layer: InlineJoin): bool = true

proc newInlineJoin*(model: var seq[Layer], inlineFunc: proc(rt: Scope, input: OutList): Out) =
    var inlineJoin = new InlineJoin
    
    inlineJoin.ffunc = inlineFunc

    model.add(inlineJoin)

export Inline,
       InlineJoin,
       `$`,
       newInline,
       newInlineJoin,
       make
