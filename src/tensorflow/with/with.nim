import macros,
       ../core,
       tables
{.experimental: "dynamicBindSym".}

proc newDerefExpr(node: NimNode): NimNode {.compileTime.} =
    var n = newNimNode(nnkDerefExpr)
    n.add(node)
    return n  

proc insert(scope: NimNode, x: NimNode, overloads: NimNode) {.compileTime.} =
    for overload in overloads:
        let impl = overload.getImpl

        if impl.kind == nnkProcDef:
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

            if x.len in argRng or (x[0].kind == nnkDotExpr and x[0].len in argRng):
                for i, arg in params:
                    if arg[1].kind == nnkSym and $arg[1] == "Scope":
                        if x[0].kind == nnkDotExpr:
                            x.insert(i, scope)
                        else:    
                            x.insert(i+1, scope)
                        return

proc iwith(scope: NimNode, x: NimNode) {.compileTime.} =
    case x.kind:
    of nnkCall:  
        case x[0].kind:
        of nnkIdent:
            insert(scope, x, bindSym(x[0], brForceOpen))
        of nnkDotExpr:
            insert(scope, x, bindSym(x[0][1], brForceOpen))
        of nnkSym:
            insert(scope, x, newStmtList(x[0]))
        of nnkBracketExpr:
            insert(scope, x, bindSym(x[0][0], brForceOpen))
        of nnkOpenSymChoice:
            insert(scope, x, x[0])
        else:
            discard
    of nnkInfix:
        case x[0].kind:
        of nnkOpenSymChoice:
            insert(scope, x, x[0])
        else:
            insert(scope, x, bindSym(x[0], brForceOpen))
    else:
        discard

    for i in 0..x.len-1:
        iwith(scope, x[i])
        
        if x[i].kind == nnkDotExpr and reversedict.hasKey($x[i][1]):
            x[i] = newCall("nconst", scope, newDerefExpr(newCall("gc", newCall("tensor", x[i][0], x[i][1]))))

macro with(scope: Scope, x: untyped): untyped =
    case scope.kind:
    of nnkCall:
        let sym = genSym(nskLet, "genscope")
        let s = newLetStmt(sym, scope)
        iwith(sym, x)
        return newStmtList(s, x)
    else:
        iwith(scope, x)
        return x
