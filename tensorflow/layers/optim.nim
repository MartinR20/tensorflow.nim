## The Optim type is the base type for all optimizers. If you would like to create your own just inherit from it
## and overload the make method as well as create a constructor. For now only the Adam optimizer is available
## but others are following.
##

import ../ops/ops
import ../core/core
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Optim* = ref object of RootObj
    init*: seq[seq[Out]]

        ## The base type for all optimizers.

method `$`(optim: Optim): string {.base.} = "Optim"

method make*(optim: Optim, root: Scope, vars: seq[Variable]): (proc(rt: Scope, input: seq[Variable], grads: OutList): seq[Out]) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your optim")

    ## The make method is intended for all the setup of your optimizer that requires a scope and should
    ## be overloaded for all optimizers functions.

type Adadelta = ref object of Optim
    lr*: float
    rho*: float
    epsilon*: float
    decay*: float

proc newAdadelta*(lr = 1.0, rho = 0.95, epsilon = 1e-7, decay = 0.0): Adadelta =
    let adadelta = new Adadelta

    adadelta.lr = lr
    adadelta.rho = rho
    adadelta.epsilon = epsilon    
    adadelta.decay = decay

    return adadelta

type Adagrad = ref object of Optim
    lr*: float
    epsilon*: float
    decay*: float

proc newAdagrad*(lr = 0.01, epsilon = 1e-7, decay = 0.0): Adagrad =
    let adagrad = new Adagrad

    adagrad.lr = lr
    adagrad.epsilon = epsilon    
    adagrad.decay = decay

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
    l*: seq[Out]
    beta1Power: seq[Out]
    beta2Power: seq[Out]

proc newAdam*(lr = 1e-4, beta1 = 0.9, beta2 = 0.99, epsilon = 10e-8, decay = 0.0, amsgrad = false): Adam =
    let adam = new Adam

    adam.lr = lr
    adam.beta1 = beta1
    adam.beta2 = beta2
    adam.epsilon = epsilon    
    adam.decay = decay
    adam.amsgrad = amsgrad

    return adam

method `$`(optim: Adam): string = "Adam(lr: " & $optim.lr & ", beta1: " & $optim.beta1 & ", beta2: " & $optim.beta2 & ")"

method make(optim: Adam, root: Scope, vars: seq[Variable]): (proc(rt: Scope, input: seq[Variable], grads: OutList): seq[Out]) = 
    let rootNamed = root.newSubScope("Adam_setup")

    let beta1 = rootNamed.Const(optim.beta1, float32)
    let beta2 = rootNamed.Const(optim.beta2, float32)
    let epsilon = rootNamed.Const(optim.epsilon, float32)

    for _ in 0..4: optim.init.add newSeq[Out]()

    for v in vars:
        let currVar = v

        let mInit = rootNamed.newVariable(rootNamed.ZerosLike(currVar.vvar), currVar.shape, TF_FLOAT)
        let vInit = rootNamed.newVariable(rootNamed.ZerosLike(currVar.vvar), currVar.shape, TF_FLOAT)
        let l = rootNamed.newVariable(rootNamed.Const(optim.lr, float32), newTensorShape([]), TF_FLOAT)
        let beta1Power = rootNamed.newVariable(rootNamed.Const(0.0, float32), newTensorShape([]), TF_FLOAT)
        let beta2Power = rootNamed.newVariable(rootNamed.Const(0.0, float32), newTensorShape([]), TF_FLOAT)

        optim.m.add(mInit.vvar)
        optim.v.add(vInit.vvar)
        optim.l.add(l.vvar)
        optim.beta1Power.add(beta1Power.vvar)
        optim.beta2Power.add(beta2Power.vvar)

        optim.init[0].add(mInit.assign)
        optim.init[1].add(vInit.assign)
        optim.init[2].add(l.assign)
        optim.init[3].add(beta1Power.assign)
        optim.init[4].add(beta2Power.assign)

    return proc(rt: Scope, input: seq[Variable], grads: OutList): seq[Out] = 
                let rtNamed = rt.newSubScope("Adam")
                var outp: seq[Out]
                for i in 0..input.len-1:
                    outp.add rtNamed.ApplyAdam(input[i].vvar, optim.m[i], optim.v[i], optim.beta1Power[i], optim.beta2Power[i], 
                                               optim.l[i], beta1, beta2, epsilon, grads[i])
                return outp
    #[
    return proc(rt: Scope, input: seq[Variable], grads: OutList): seq[Out] = 
                let rtNamed = rt.newSubScope("Adam")
                var outp: seq[Out]
                for i in 0..input.len-1:
                    
    
                return outp
    ]#


type RMSProp = ref object of Optim
    lr*: float
    rho*: float
    epsilon*: float
    decay*: float

proc newRMSProp*(lr = 0.001, rho = 0.9, epsilon = 1e-7, decay = 0.0): RMSProp =
    let rmsprop = new RMSProp

    rmsprop.lr = lr
    rmsprop.rho = rho
    rmsprop.epsilon = epsilon    
    rmsprop.decay = decay

    return rmsprop


type SGD = ref object of Optim
    lr*: float
    momentum*: float
    decay*: float
    nesterov*: bool

proc newSGD*(lr = 0.01, momentum = 0.0, decay = 0.0, nesterov = false): SGD = 
    let sgd = new SGD

    sgd.lr = lr
    sgd.momentum = momentum
    sgd.decay = decay
    sgd.nesterov = nesterov

    return sgd


method `$`(optim: SGD): string = "SGD(lr: " & $optim.lr & ")"

method make(optim: SGD, root: Scope, vars: seq[Variable]): (proc(rt: Scope, input: seq[Variable], grads: OutList): seq[Out]) = 
    let rootNamed = root.newSubScope("SGD_setup")

    let lr = rootNamed.Const(optim.lr, float32) 

    return proc(rt: Scope, input: seq[Variable], grads: OutList): seq[Out] = 
                let rtNamed = rt.newSubScope("SGD")
                var outp: seq[Out]

                for i in 0..input.len-1:
                    outp.add rtNamed.ApplyGradientDescent(input[i].vvar, lr, grads[i])

                return outp

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