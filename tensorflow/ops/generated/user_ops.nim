import ../../core/core
import ../../utils/utils
import ./structs
import options
{.hint[XDeclaredButNotUsed]:off.}

proc iFact(root: Scope): Out {.header:std_ops, importcpp:"tensorflow::ops::Fact(*@)".}
proc Fact(root: Scope): Out =
  iFact(root)

export Fact