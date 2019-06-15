import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iFact(root: Scope) {.header:std_ops, importcpp:"tensorflow::ops::Fact(*@)".}
proc Fact(root: Scope) =
  iFact(root)

export Fact