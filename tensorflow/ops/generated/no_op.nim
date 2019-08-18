import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iNoOp(): Operation {.header:std_ops, importcpp:"tensorflow::ops::NoOp().operation".}

proc NoOp(): Operation =
  iNoOp()

export NoOp