import ../tensorflow/tensorflow
import os
import osproc

type Plot* = object
    script*: string

proc `+=`*(plt: var Plot, str: string) = 
    plt.script &= str & "\n"

proc newPlot*(): Plot = 
    var plt = Plot(script: "")
    plt += "import matplotlib.pyplot as plt"
    return plt

proc saveScript*(plt: var Plot, filename: string) =
    writeFile(filename, plt.script)

proc toPyString*(ten: Tensor): string =
    let sh = ten.shape
    let width = sh.dim_size(1)
    let height = sh.dim_size(2)
    let colors = sh.dim_size(3)
    let buf = ten.flat(0.float32)
    var str: string

    str &= "["
    for x in 0..width-1:
        str &= "["

        for y in 0..height-2:
            
            if colors > 1:
                str &= "["

                for color in 0..colors-1:
                    str &= $(buf[(height * x + y) * colors + color])

                    if color != colors-1: str &=  ", "

                str &= "]"
            else:
                str &= $(buf[height * x + y])


            if y != height-1: str &=  ", "

        str &= "]"

        if x != width-1: str &=  ", "

    str &= "]"
    return str

proc expandKwargs(kwargs: varargs[string]): string =
    var str: string

    for arg in kwargs: str &= ", " & arg

    return str

proc matshow*(plt: var Plot, ten: Tensor) =
    plt += "data = " & ten.toPyString
    plt += "plt.matshow(data)"

proc imshow*(plt: var Plot, ten: Tensor, kwargs: varargs[string]) =
    plt += "data = " & ten.toPyString 
    plt += "plt.imshow(data" & kwargs.expandKwargs & ")"

proc subplot*(plt: var Plot, nrows: int, ncols: int, index: int) =
    plt += "plt.subplot(" & $nrows & ", " & $ncols & ", " & $index & ")"

proc show*(plt: var Plot) =
    plt += "plt.show()"

proc run3*(plt: var Plot) =
    let filename = "./plotscript.py"
    plt.saveScript(filename)
    echo execProcess("python3 " & filename)
