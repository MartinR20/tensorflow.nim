import options
import ../ops/ops
import ../core/core
import ./layer
{.hint[XDeclaredButNotUsed]:off.}

type Branch* = ref object of Layer
    switch: bool

method `$`*(layer: Branch): string = "Branch()"

method make(layer: Branch, root: Scope): proc(rt: Scope, input: Out): Out = 
    raise newException(ValueError, "Yout not supposed to call `make` on a branch Layer")

method isBranch(layer: Branch): bool = true

method getBranchSwitch(layer: Branch): bool = return layer.switch

proc newBranch(model: var seq[Layer]) =
    var branch = new Branch
    
    branch.switch = true
    
    model.add(branch)


type EndBranch* = ref object of Layer
    switch: bool

method `$`*(layer: EndBranch): string = "EndBranch()"

method make(layer: EndBranch, root: Scope): proc(rt: Scope, input: Out): Out = 
    raise newException(ValueError, "Yout not supposed to call `make` on a branch Layer")

method isBranch(layer: EndBranch): bool = true

method getBranchSwitch(layer: EndBranch): bool = return layer.switch

proc newEndBranch(model: var seq[Layer]) =
    var endbranch = new EndBranch
    
    endbranch.switch = false
    
    model.add(endbranch)

export Branch,
       EndBranch,
       `$`,
       newBranch,
       newEndBranch,
       make
