import 
    globals

from ../ops/nn/loss import 
    l2Loss, l2LossToOut

export 
    l2Loss, l2LossToOut
    
proc loss*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = "loss_" & $i
    let inname = metadata[model][i-1]["name"].to(string)

    let call = newNimNode(nnkCall)
    call.add command[1]
    call.add scope
    call.add ident inname

    for arg in command[2..^1]:
        call.add prgm.processInput(model, scope, arg, ident metadata[model][i-1]["dtype"].to(string))

    prgm.add newLetStmt(ident name, call)

    metadata[model].add %*{
                    "name": name,
                    "shape": metadata[model][i-1]["shape"],
                    "dtype": metadata[model][i-1]["dtype"],
                    "output": name
                   }
