## The Optim type is the base type for all optimizers. If you would like to create your own just inherit from it
## and overload the make method as well as create a constructor. For now only the Adam optimizer is available
## but others are following.
##

import options
import ../ops/ops
import ../core/core
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Optim* = ref object of RootObj

        ## The base type for all optimizers.

method make*(optim: Optim, root: Scope): (proc(rt: Scope, input: seq[Variable], grads: OutList): OutList) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your optim")

    ## The make method is intended for all the setup of your optimizer that requires a scope and should
    ## be overloaded for all optimizers functions.

type Adadelta = ref object of Optim
    lr*: float
    rho*: float
    epsilon*: float
    decay*: float

proc newAdadelta*(lr, rho, epsilon, decay = none(float)): Adadelta =
    let adadelta = new Adadelta

    if lr.isSome:
        adadelta.lr = lr.get()
    else:
        adadelta.lr = 1.0

    if rho.isSome:
        adadelta.rho = rho.get()
    else:
        adadelta.rho = 0.95

    if epsilon.isSome:
        adadelta.epsilon = epsilon.get()    
    else:
        adadelta.epsilon = 1e-07

    if decay.isSome:
        adadelta.decay = decay.get()
    else:
        adadelta.decay = 0.0

    return adadelta

type Adagrad = ref object of Optim
    lr*: float
    epsilon*: float
    decay*: float

proc newAdagrad*(lr, epsilon, decay = none(float)): Adagrad =
    let adagrad = new Adagrad

    if lr.isSome:
        adagrad.lr = lr.get()
    else:
        adagrad.lr = 0.01

    if epsilon.isSome:
        adagrad.epsilon = epsilon.get()    
    else:
        adagrad.epsilon = 1e-07

    if decay.isSome:
        adagrad.decay = decay.get()
    else:
        adagrad.decay = 0.0

    return adagrad


type Adam = ref object of Optim
    lr*: float
    beta1*: float
    beta2*: float
    epsilon*: float
    decay*: float
    amsgrad*: bool
    m*: seq[Out]
    v*: seq[Out]

proc newAdam*(lr, beta1, beta2, epsilon, decay = none(float), amsgrad = none(bool)): Adam =
    let adam = new Adam

    if lr.isSome:
        adam.lr = lr.get()
    else:
        adam.lr = 0.001

    if beta1.isSome:
        adam.beta1 = beta1.get()
    else:
        adam.beta1 = 0.9

    if beta2.isSome:
        adam.beta2 = beta2.get()
    else:
        adam.beta2 = 0.999

    if epsilon.isSome:
        adam.epsilon = epsilon.get()    
    else:
        adam.epsilon = 1e-07

    if decay.isSome:
        adam.decay = decay.get()
    else:
        adam.decay = 0.0

    if amsgrad.isSome:
        adam.amsgrad = amsgrad.get()
    else:
        adam.amsgrad = false

    return adam

method make(optim: Adam, root: Scope): (proc(rt: Scope, input: seq[Variable], grads: OutList): OutList) = 
    let beta1Power = root.Const(optim.beta1)
    let beta2Power = root.Const(optim.beta2)
    let lr = root.Const(optim.lr)
    let beta1 = root.Const(1.0)
    let beta2 = root.Const(1.0)
    let epsilon = root.Const(optim.epsilon)

    return proc(rt: Scope, input: seq[Variable], grads: OutList): OutList = 
                var outps: seq[Out]

                for i in 0..input.len-1:
                    let currVar = input[i]

                    if optim.m.len == i:
                        optim.m.add(rt.newVariable(rt.ZerosLike(currVar.vvar), currVar.shape, TF_FLOAT).vvar)
                        optim.v.add(rt.newVariable(rt.ZerosLike(currVar.vvar), currVar.shape, TF_FLOAT).vvar)

                    outps.add(rt.ApplyAdam(currVar.vvar, optim.m[i], optim.v[i], beta1Power, beta2Power, 
                                           lr, beta1, beta2, epsilon, grads[i]))
                
                return newOutList(outps)

type RMSProp = ref object of Optim
    lr*: float
    rho*: float
    epsilon*: float
    decay*: float

proc newRMSProp*(lr, rho, epsilon, decay = none(float)): RMSProp =
    let rmsprop = new RMSProp

    if lr.isSome:
        rmsprop.lr = lr.get()
    else:
        rmsprop.lr = 0.001

    if rho.isSome:
        rmsprop.rho = rho.get()
    else:
        rmsprop.rho = 0.9

    if epsilon.isSome:
        rmsprop.epsilon = epsilon.get()    
    else:
        rmsprop.epsilon = 1e-07

    if decay.isSome:
        rmsprop.decay = decay.get()
    else:
        rmsprop.decay = 0.0

    return rmsprop


type SGD = ref object of Optim
    lr*: float
    momentum*: float
    decay*: float
    nesterov*: bool

proc newSGD*(lr, momentum, decay = none(float), nesterov = none(bool)): SGD = 
    let sgd = new SGD

    if lr.isSome:
        sgd.lr = lr.get()
    else:
        sgd.lr = 0.01

    if momentum.isSome:
        sgd.momentum = momentum.get()
    else:
        sgd.momentum = 0.0

    if decay.isSome:
        sgd.decay = decay.get()    
    else:
        sgd.decay = 0.0

    if nesterov.isSome:
        sgd.nesterov = nesterov.get()
    else:
        sgd.nesterov = false

    return sgd

export Optim,
       Adadelta,
       newAdadelta,
       Adagrad,
       newAdagrad,
       Adam,
       newAdam,
       RMSProp,
       newRMSProp,
       SGD,
       newSGD,
       make