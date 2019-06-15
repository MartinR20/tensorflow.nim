import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iNoOp() {.header:std_ops, importcpp:"tensorflow::ops::NoOp()".}

proc NoOp() =
  iNoOp()

export NoOp