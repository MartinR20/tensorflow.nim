import options
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Inline* = ref object of Layer
    ffunc: proc(rt: Scope, input: Out): Out

method `$`*(layer: Inline): string = "Inline"

method make(layer: Inline, root: Scope): proc(rt: Scope, input: Out): Out = 
    return layer.ffunc

proc newInline(model: var seq[Layer], inlineFunc: proc(rt: Scope, input: Out): Out) =
    var inline = new Inline
    
    inline.ffunc = inlineFunc

    model.add(inline)

export Inline,
       `$`,
       newInline,
       make
