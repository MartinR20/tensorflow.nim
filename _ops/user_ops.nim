import ../core/core.nim
import ../utils/utils.nim

proc Fact(root: Scope) {.header:std_ops, importcpp:"tensorflow::ops::Fact(*@)".}
