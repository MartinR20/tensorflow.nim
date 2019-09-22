import macros
import ./core
import tables

{.experimental: "dynamicBindSym".}
proc iwith(scope: NimNode, x: NimNode) {.compileTime.} =
    case x.kind:
    of nnkCall:
        case x[0].kind:
        of nnkIdent:
            for overload in bindSym(x[0], brForceOpen)[0..^1]:
                for i, arg in overload.getImpl.params[1..^1]:
                    if arg[1].kind == nnkSym and $arg[1] == "Scope":
                        x.insert(i+1, scope) 
        of nnkDotExpr:
            for overload in bindSym(x[0][1], brForceOpen)[0..^1]:
                for i, arg in overload.getImpl.params[1..^1]:
                    if arg[1].kind == nnkSym and $arg[1] == "Scope":
                        x.insert(i+1, scope) 
        else:
            raise newException(ValueError, "The type of function call you are using is not supported!")
    else:
        for i in 0..x.len-1:
            iwith(scope, x[i])
            
            if x[i].kind == nnkDotExpr and reversedict.hasKey($x[i][1]):
                x[i] = newCall("nconst", scope, newCall("tensor", x[i][0], x[i][1]))

macro iwith*(scope: Scope, x: untyped): untyped =
    iwith(scope, x)
    return x
