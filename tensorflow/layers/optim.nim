## The Optim type is the base type for all optimizers. If you would like to create your own just inherit from it
## and overload the make method as well as create a constructor. For now only the Adam optimizer is available
## but others are following.
##

import ../ops/ops
import ../core/core
import ./variable
{.hint[XDeclaredButNotUsed]:off.}

type Optim*[N: static[int]] = ref object of RootObj
    init*: array[N, OutList]

        ## The base type for all optimizers.

method `$`[N](optim: Optim[N]): string {.base.} = "Optim"

method make*[N](optim: Optim[N], root: Scope, vars: seq[TVariable]): (proc(rt: Scope, input: seq[TVariable], grads: OutList): OutList) {.base.} = 
    raise newException(ValueError, "Not Implemented. Please overload `make` for your optim")

    ## The make method is intended for all the setup of your optimizer that requires a scope and should
    ## be overloaded for all optimizers functions.

type Adadelta = ref object of Optim[0]
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

type Adagrad = ref object of Optim[0]
    lr*: float
    epsilon*: float
    decay*: float

proc newAdagrad*(lr = 0.01, epsilon = 1e-7, decay = 0.0): Adagrad =
    let adagrad = new Adagrad

    adagrad.lr = lr
    adagrad.epsilon = epsilon    
    adagrad.decay = decay

    return adagrad

type Adam = ref object of Optim[4]
    lr*: float
    beta1*: float
    beta2*: float
    epsilon*: float
    decay*: float
    amsgrad*: bool

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

method make(optim: Adam, root: Scope, vars: seq[TVariable]): (proc(rt: Scope, input: seq[TVariable], grads: OutList): OutList) = 
    let rootNamed = root.newSubScope("Adam_setup")

    let lr = rootNamed.Const(optim.lr, float32)
    let beta1 = rootNamed.Const(optim.beta1, float32)
    let beta2 = rootNamed.Const(optim.beta2, float32)
    let epsilon = rootNamed.Const(optim.epsilon, float32)

    var m: OutList
    var v: OutList
    var beta1Power: OutList
    var beta2Power: OutList

    for i in 0..vars.len-1:
        let currVar = vars[i]

        let im = rootNamed.newVariable(rootNamed.ZerosLike(currVar.vvar), currVar.shape, TF_FLOAT)
        let iv = rootNamed.newVariable(rootNamed.ZerosLike(currVar.vvar), currVar.shape, TF_FLOAT)
        let ibeta1Power = rootNamed.newVariable(rootNamed.Const(0.0, float32), newTensorShape([]), TF_FLOAT)
        let ibeta2Power = rootNamed.newVariable(rootNamed.Const(0.0, float32), newTensorShape([]), TF_FLOAT)

        m.add im.vvar
        v.add iv.vvar
        beta1Power.add ibeta1Power.vvar
        beta2Power.add ibeta2Power.vvar

        optim.init[0].add im.assign
        optim.init[1].add iv.assign
        optim.init[2].add ibeta1Power.assign
        optim.init[3].add ibeta2Power.assign

    return proc(rt: Scope, input: seq[TVariable], grads: OutList): OutList = 
                let rtNamed = rt.newSubScope("Adam")
                var outp: OutList
                for i in 0..input.len-1:
                    outp.add rtNamed.ApplyAdam(input[i].vvar, m[i], v[i], beta1Power[i], beta2Power[i], 
                                               lr, beta1, beta2, epsilon, grads[i])
                return outp


type RMSProp = ref object of Optim[0]
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

type SGD = ref object of Optim[0]
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

method make[N](optim: SGD, root: Scope, vars: seq[TVariable]): (proc(rt: Scope, input: seq[TVariable], grads: OutList): OutList) = 
    let rootNamed = root.newSubScope("SGD_setup")

    let lr = rootNamed.Const(optim.lr, float32) 

    return proc(rt: Scope, input: seq[TVariable], grads: OutList): OutList = 
                let rtNamed = rt.newSubScope("SGD")
                var outp: OutList

                for i in 0..N-1:
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