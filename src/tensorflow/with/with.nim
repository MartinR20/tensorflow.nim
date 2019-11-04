import 
    macros, ../core, tables,
    ../ops/make/conversions,
    strutils

from ../ops/gen import 
    nconst

{.experimental: "dynamicBindSym".}

proc insert(scope: NimNode, x: NimNode, overloads: NimNode) {.compileTime.} =
    for overload in overloads:
        let impl = overload.getImpl

        if impl.kind in RoutineNodes:
            let params = impl.params[1..^1]
           
            var max = params.len
            var lower = max

            for i in 1..max-1:
                if params[i][2].kind != nnkEmpty and params[i-1][2].kind == nnkEmpty:
                    lower = i
                    break

            if x.kind == nnkInfix:
                max += 1
            
            var argRng = lower..max

            if x.len in argRng:
                for i, arg in params:
                    if arg[1].kind == nnkSym and $arg[1] == "Scope":
                        # if x.kind == nnkDotExpr:
                        #     x.insert(i, scope)
                        #     x[1 - i] = newCall(x[2], x[1 - i])
                        #     x.del(2)
                        # else:
                        #     x.insert(i+1, scope)
                        x.insert(i+1, scope)
                        return

proc `..`(x: NimNode, y: string): NimNode =
    result = newNimNode(nnkDotExpr)
                .add(x)
                .add(ident y)

proc to_otype(x: NimNode, scope: NimNode): NimNode = 
    case $x[^1]:
    of "oinvalid":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oinvalid")).."output"
    of "odouble":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "odouble")).."output"
    of "ofloat":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ofloat")).."output"
    of "oint64":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oint64")).."output"
    of "oint32":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oint32")).."output"
    of "ouint8":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ouint8")).."output"
    of "oint16":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oint16")).."output"
    of "oint8":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oint8")).."output"
    of "ostring":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ostring")).."output"
    of "obool":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "obool")).."output"
    of "ouint16":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ouint16")).."output"
    of "ouint32":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ouint32")).."output"
    of "ouint64":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ouint64")).."output"
    of "ocomplex64":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ocomplex64")).."output"
    of "ocomplex128":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ocomplex128")).."output"
    of "oqint8":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oqint8")).."output"
    of "oquint8":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oquint8")).."output"
    of "oqint32":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oqint32")).."output"
    of "obfloat16":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "obfloat16")).."output"
    of "oqint16":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oqint16")).."output"
    of "oquint16":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oquint16")).."output"
    of "ohalf":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ohalf")).."output"
    of "oresource":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "oresource")).."output"
    of "ovariant":
        result = newCall("nconst", scope, newCall("tensor", x[0], ident "ovariant")).."output"

proc iwith(scope: NimNode, x: NimNode) {.compileTime.} =
    case x.kind:
    of nnkCallKinds: 
        case x[0].kind:
        of nnkIdent:
            insert(scope, x, bindSym(x[0], brForceOpen))
        of nnkSym:
            insert(scope, x, newStmtList(x[0]))
        of nnkBracketExpr:
            insert(scope, x, bindSym(x[0][0], brForceOpen))
        of nnkOpenSymChoice:
            insert(scope, x, x[0])
        else:
            discard

        # case x[^1].kind:
        # of nnkDotExpr:
        #     case x[^1][1].kind:
        #     of nnkOpenSymChoice:
        #         insert(scope, x, x[^1][1])
        #     of nnkSym:
        #         insert(scope, x, newStmtList(x[^1][1]))
        #     else:
        #         echo repr x
        #         insert(scope, x, bindSym(x[^1][1], brForceOpen))
        # else:
        #     discard
    else:
        discard

    for i in 0..x.len-1:
        case x[i].kind:
        of nnkDotExpr:
            case x[i][^1].kind:
            of nnkIdent, nnkSym:
                let res = to_otype(x[i], scope)

                if res == nil:
                    iwith(scope, x[i])
                else:
                    x[i] = res                   

            else:
                iwith(scope, x[i])
        else:
            iwith(scope, x[i])
        
macro with(scope: Scope, x: untyped): untyped =
    case scope.kind:
    of nnkCall:
        let sym = genSym(nskLet, "genscope")
        let s = newLetStmt(sym, scope)
        iwith(sym, x)
        result = newStmtList(s, x)
    else:
        iwith(scope, x)
        result = x
