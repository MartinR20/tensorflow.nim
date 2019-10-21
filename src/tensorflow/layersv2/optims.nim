import 
    globals
    
from ../ops/nn/optim import
    applyAdam, applyAdamToOut

from ../ops/gradients import
    addSymbolicGradients

export
    applyAdam, applyAdamToOut,
    addSymbolicGradients

proc optim*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let gradCall = newNimNode(nnkCall)
    gradCall.add bracketExpr("newOutList", "oinvalid")
    var vars: seq[seq[NimNode]]
    var dtypes: seq[NimNode]

    for i, arg in command[1..^1]:
        vars.add newSeq[NimNode]()

        case arg.kind:
        of nnkCommand, nnkVarTy:
            for v in nonoptimVars[model]:
                vars[i].add v.name
                dtypes.add v.dtype
                gradCall.add newCall("anyToInvalid", v.name)

        of nnkIdent:
            for v in optimVars[model]:
                if v.name.strVal.fromTo(0, '_') == $arg:
                    vars[i].add v.name
                    dtypes.add v.dtype

        of nnkLiterals, nnkBracket:
            vars[i].add arg
        else:
            discard

    let grads = ident "grads"
    prgm.add newNimNode(nnkVarSection).add(newIdentDefs(grads, bracketExpr("olist", "oinvalid")))

    let gradvars = newNimNode(nnkCall)
    gradvars.add ident "addSymbolicGradients"
    gradvars.add scope
    
    var cdown = 1
    while i >= cdown:
        if metadata[model][i-cdown].hasKey("output"):
            gradvars.add ident metadata[model][i-cdown]["name"].to(string)
            break

        cdown += 1

    gradvars.add gradCall
    gradvars.add grads 

    prgm.add gradvars
    
    metadata[model].add %*{
                            "name": "optim_" & $i,
                            "shape": metadata[model][i-1]["shape"],
                            "dtype": metadata[model][i-1]["dtype"],
                            "optim": []
                          }

    for a in 0..vars[0].len-1:
        let call = newNimNode(nnkCall)
        call.add command[1][0]
        call.add scope

        for b in 0..command.len-2:
            if vars[b].len > 1:
                call.add vars[b][a]
            elif vars[b].len == 1:
                call.add prgm.processInput(model, scope, vars[b][0], dtypes[a])

        call.add newCall(newNimNode(nnkBracketExpr).add(ident "invalidToAny").add(dtypes[a]),
                            newNimNode(nnkBracketExpr).add(grads).add(newLit a))

        let name = "optim_" & $i & "_" & $a
        prgm.add newLetStmt(ident name, call)

        metadata[model][i]["optim"].add newJString name
