import
    ../utils/utils, scope

type
  Status* {.importcpp:"tensorflow::Status".} = object

proc updateStatus*(scope: Scope, s: Status) {.importcpp:"#->UpdateStatus(#)".}

  ## Update the status on this scope.
  ## Note: The status object is shared between all children of this scope.
  ## If the resulting status is not Status::OK() and exit_on_error_ is set on
  ## this scope, this function exits by calling LOG(FATAL).

proc status*(scope: Scope): Status {.importcpp:"#->status()".}

  ## Get the status of the given Scope.

proc ok*(): Status {.header: std_ops,
                    importcpp: "tensorflow::Status::OK()".}

proc logStatus*(scope: Scope) {.importcpp:"LOG(INFO) << #->status().ToString()".}

proc logStatus*(status: Status) {.importcpp:"LOG(INFO) << #.ToString()".}

proc ierrorMsg(status: Status): cppstring {.importcpp:"#.error_message()".}

proc errorMsg*(status: Status): string =
  return $status.ierrorMsg

proc `$`*(status: Status): string =
  return status.errorMsg

proc ok*(status: Status): bool {.
  header: std_ops,
  importcpp: "#.ok()".}

proc code*(status: Status): int {.importcpp:"#.code()".}

proc error*(status: Status) = 
  if not status.ok(): 
      raise newException(ValueError, status.errorMsg)

proc check*(rt: Scope) = 
  if not rt.ok(): 
      rt.logStatus
      quit(1)
