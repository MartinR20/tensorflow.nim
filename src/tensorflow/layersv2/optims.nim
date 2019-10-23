import 
    globals
    
from strutils import 
    replace
    
# TODO: applyAdagradDA, applyAdagradDAToOut
# TODO: applyFrtl, applyFrtlToOut

from ../ops/nn/optim import
    applyAdam, applyAdamToOut,
    applyAdaMax, applyAdaMaxToOut,
    applyAdadelta, applyAdadeltaToOut,
    applyAdagrad, applyAdagradToOut,
    applyCenteredRMSProp, applyCenteredRMSPropToOut,
    applyGradientDescent, applyGradientDescentToOut,
    applyProximalAdagrad, applyProximalAdagradToOut,
    applyProximalGradientDescent, applyProximalGradientDescentToOut,
    applyRMSProp, applyRMSPropToOut

from ../ops/gradients import
    addSymbolicGradients

export
    applyAdam, applyAdamToOut,
    applyAdaMax, applyAdaMaxToOut,
    applyAdadelta, applyAdadeltaToOut,
    applyAdagrad, applyAdagradToOut,
    applyCenteredRMSProp, applyCenteredRMSPropToOut,
    applyGradientDescent, applyGradientDescentToOut,
    applyProximalAdagrad, applyProximalAdagradToOut,
    applyProximalGradientDescent, applyProximalGradientDescentToOut,
    applyRMSProp, applyRMSPropToOut,
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
                if v.name.strVal.fromTo(0, '_') == ($arg).replace('_', 'u'):
                    vars[i].add v.name
                    dtypes.add v.dtype

        of nnkLiterals, nnkBracket:
            vars[i].add arg
        else:
            discard

    let grads = ident unique_name("grads", model, i)
    prgm.add newNimNode(nnkVarSection).add(newIdentDefs(grads, bracketExpr("olist", "oinvalid")))

    let gradvars = newNimNode(nnkCall)
    gradvars.add ident "addSymbolicGradients"
    gradvars.add scope
    
    firstmatch model, "output", idx:
        gradvars.add ident metadata[model][idx]["name"].to(string)

    gradvars.add gradCall
    gradvars.add grads 

    prgm.add gradvars
    
    metadata[model].add %*{
                            "name": unique_name("optim", model, i),
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

        let name = unique_name("optim", model, i) & "_" & $a
        prgm.add newLetStmt(ident name, call)

        metadata[model][i]["optim"].add newJString name
