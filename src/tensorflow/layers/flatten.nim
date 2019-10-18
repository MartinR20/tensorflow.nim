import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Flatten[T] = ref object of Layer[T]

method `$`[T](layer: Flatten[T]): string = "Flatten"

method make[T](layer: Flatten[T], root: Scope, shape: var seq[int]): proc(rt: Scope, input: oall): oall = 
    var flatsize = 1

    for s in shape[1..^1]:
        flatsize *= s

    shape = @[shape[0], flatsize]

    var flatten: array[0..1, int] 
    flatten[0] = shape[0]
    flatten[1] = flatsize

    return proc(rt: Scope, input: oall): oall = 
            return rt.reshape(input, rt.nconst(flatten, oint32))

proc newFlatten*[T](model: var seq[Layer]) =
    var flatten = new Flatten[T]
    model.add(flatten)

export Flatten,
       `$`,
       newFlatten,
       make
