## This is the base Layer type everything else inherits from. It defines how all layers behave by the
## supplied methods.
##
## Example:
##
## .. code:: nim
##
##    type AddValue = ref object of Layer
##        value: float
##    
##    method `$`(layer: AddValue): string = "AddValue"
##    
##    method make(layer: AddValue, root: Scope): proc(rt: Scope, input: Out): Out = 
##        # in this context use root as Scope
##        # this is only the setup context preparing your computation
##        let value = root.Const(addvalue.value)
##    
##        return proc(rt: Scope, input: Out): Out = 
##                    # here use rt as Scope
##                    # this is the proc that will be used in the fit/eval methods
##                    return rt.Add(input, value)
##    
##    proc newAddOne*(model: var seq[Layer], value: float) =
##        var addvalue = new AddValue
##        
##        addvalue.value = value
##    
##        model.add(value)

import sequtils
import ../ops/ops
import ../core/core
import ./loss
import ./optim
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Layer* = ref object of RootObj
    ## Base Layer to inherit from when creating a new Layer. If your layer contains trainable 
    ## Variables append them to the train sequence.

    train*: seq[Variable]

method `$`*(layer: Layer): string {.base.} = "Layer"

    ## String conversion method to give your Layer a string representation when the model is printed.

method make*(layer: Layer, root: Scope): (proc(rt: Scope, input: Out): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your Layer")

    ## The make method is intended for all the setup of your layer like creating variables or 
    ## doing operations that require a scope. This method should be overloaded for all non JoinLayers.

method makeJoin*(layer: Layer, root: Scope): (proc(rt: Scope, input: OutList): Out) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `makeJoin` for your Layer or use a Joinfunction when branching")

    ## The makeJoin method is intended for all the setup of your JoinLayer that requires a scope. 
    ## This method should be overloaded for all JoinLayers.

method isBranch(layer: Layer): bool {.base.} = false

    ## The isBranch method indicates wether a layer is a branch layer.

method isJoin*(layer: Layer): bool {.base.} = false

    ## The isJoin method is now required to be overloaded for every custom JoinLayer. This will change in the
    ## future so that this method becomes obsolete and there will instead exsist a JoinLayer to inherit from.

method getBranchSwitch(layer: Layer): bool {.base.} = 
    raise newException(ValueError, "Trying to call `getBranchSwitch` for none branchlayer")

    ## The getBranchSwitch method indicates wether a branch layer opens or closes a branch.

proc makeBranch(branches: seq[seq[proc(rt: Scope, input: Out): Out]], 
                          joinFunc: proc(rt: Scope, input: OutList): Out): proc(rt: Scope, input: Out): Out{.closure.} =

                    return proc(rt: Scope, input: Out): Out{.closure.} =
                            var branchOut: seq[Out]

                            for branch in branches:
                                var outp = branch[0](rt, input)

                                for f in branch[1..^1]:
                                    outp = rt.f(outp)

                                branchOut.add(outp)

                            return joinFunc(rt, newOutList(branchOut))

    ## a mini compile method for branches

proc compile*(layers: seq[Layer], root: Scope, loss: Loss, optim: Optim): (proc(rt: Scope, X, Y: Out): OutList, proc(rt: Scope, X: Out): Out) = 
    var funcs: seq[proc(rt: Scope, input: Out): Out]
    var branchFuncs: seq[seq[proc(rt: Scope, input: Out): Out]]
    var start: seq[int] # stack to track index in branchFuncs
    var vars: seq[Variable]

    for layer in layers:

        if isBranch(layer):
            let switch = getBranchSwitch(layer)
            
            if switch:
                branchFuncs.add(@[])

                start.add(branchFuncs.len)
            else:
                start.delete(start.len-1, start.len-1)

        else:
            var ffunc: proc(rt: Scope, input: Out): Out

            if isJoin(layer):
                var a = 0
                if start.len != 0: a = start[^1]

                var b = branchFuncs.len-1

                ffunc = branchFuncs[a..b].makeBranch(layer.makeJoin(root))
                branchFuncs.delete(a, b)

            else:
                ffunc = layer.make(root)

            if start.len > 0:
                branchFuncs[^1].add(ffunc)
            else:
                funcs.add(ffunc)

        vars = vars.concat(layer.train)  

    proc eval(rt: Scope, X: Out): Out{.closure.} =
        var outp = funcs[0](rt, X)

        for f in funcs[1..^1]:
            outp = rt.f(outp)

        return outp

    if vars.len == 0:
        echo "Warning: No Layer with trainable Variables added to model fit method only a dummy!"

        proc fit(rt: Scope, X, Y: Out): OutList{.closure.} = 
            raise newException(ValueError, "Attempted to use unusable dummy method!")

        return (fit, eval)
    
    else:
        let varsAsOutList = newOutList(vars.map(proc(vvar: Variable): Out = vvar.vvar))
        let opt = optim.make(root)
        let lloss = loss.make(root)

        proc fit(rt: Scope, X, Y: Out): OutList{.closure.} =
            var outp = eval(rt, X)

            outp = lloss(rt, outp, Y)

            var grads: OutList
            rt.addSymbolicGradients(outp, varsAsOutList, grads)

            let update = opt(rt, vars, grads)
            var output: seq[Out]

            for i in 0..update.size()-1:
                output.add(rt.Assign(vars[i].vvar, update[i]))

            return newOutList(output)

        return (fit,eval)

    ## The compile procedure is the function that turns your model into an actual sequence of operations and returns
    ## a fit and eval method to train your model and afterward evaluate its performence. Beware this interface will
    ## recieve drastic changes.
    ##
    ## Example:
    ##
    ## .. code:: nim
    ##
    ##    var proto: seq[Layer] = @[]
    ##
    ##    proto.newDense(10, 10)
    ##    proto.newActivation(Softmax)
    ##    
    ##    let rt = newRootScope()
    ##    let (fit,eval) = proto.compile(rt, newMSE(), newAdam())
    ##

export Layer,
       `$`,
       compile