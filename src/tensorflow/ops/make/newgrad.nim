import 
  macros, ../make/makeutils
{.hint[XDeclaredButNotUsed]:off.}

const gradInclude = "\"\"#include \"tensorflow/cc/framework/grad_op_registry.h\" \n" &
                        "#include \"tensorflow/cc/framework/gradients.h\" \n\"\""

var grad_included {.compileTime.} = false

macro grad*(op: untyped, x: untyped): untyped =
  let processedName = firstCharToUpper($op)
  let exportName = processedName & "Grad"

  addPragma(x, newColonExpr(
                newIdentNode("exportc"),
                newStrLitNode(exportName)
              )
            )

  let fun = newStmtList(
    x,
    parseStmt("{.emit:\"tensorflow::Status " & exportName & "_(const tensorflow::Scope &s, " &
                        "const tensorflow::Operation &p, " &
                        "const std::vector<tensorflow::Output> &i, " & 
                        "std::vector<tensorflow::Output> *o)" & 
                        "{ return " & exportName & "(std::make_shared<tensorflow::Scope>(std::move(s)),p,i,o); }\".}"),
    parseStmt("{.emit:\"REGISTER_GRADIENT_OP(\\\"" & processedName & "\\\", " & exportName & "_);\".}")
  )

  if not grad_included:
    insert(fun, 0, parseStmt("{.emit:\"" & gradInclude & "\".}"))
    grad_included = true

  return fun

macro nograd(x: untyped): untyped =
  let register = parseStmt("{.emit:\"REGISTER_NO_GRADIENT_OP(\\\"" & $name(x) & "\\\");\".}")

  if not grad_included:
    let res = newStmtList(
      parseStmt("{.emit:\"" & gradInclude & "\".}")[0],
      register[0]
    )

    grad_included = true

    return res
  
  else:
    return register

export grad,
       nograd
