import macros

proc newDiscardStmt*(arg: NimNode): NimNode =
  let disc = newNimNode(nnkDiscardStmt)
  return disc.add(arg)

proc newReturnStmt*(arg: NimNode): NimNode =
  let ret = newNimNode(nnkReturnStmt)
  return ret.add(arg)

proc newEqual*(left: NimNode, right: NimNode): NimNode =
  let ret = newNimNode(nnkExprEqExpr)
  ret.add(left)
  ret.add(right)
  return ret

proc newBracketExpr*(left: NimNode, right: NimNode): NimNode =
  let ret = newNimNode(nnkBracketExpr)
  ret.add(left)
  ret.add(right)
  return ret

proc newVarTuple*(left: varargs[NimNode], right: NimNode): NimNode {.compileTime.} =
  let n = newNimNode(nnkVarTuple)
  n.add left 
  n.add newEmptyNode()
  n.add right
  return n

proc newMultiLet*(left: varargs[NimNode], right: NimNode): NimNode {.compileTime.} =
  let l = newNimNode(nnkLetSection)

  let n = newNimNode(nnkVarTuple)
  n.add left 
  n.add newEmptyNode()
  n.add right

  l.add n
  return l