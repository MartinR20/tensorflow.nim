import
    ../utils/utils, scope, otypes, tensor, ops, status

## Session related definitions
type
  Session* {.header: memory,
             header: client_session,
             importcpp: "std::shared_ptr<tensorflow::ClientSession>".} = object

    ## The Session Type is a wrapper around the c++ ClientSession which is the part where the actual computation happens. 
    ## It is represented through a shared pointer here because it has no default constructor and therefore cannot be declared
    ## like:
    ##   ClientSession foo;
    ## which is excatly what the nim compiler does.

proc newSession*(scope: Scope): Session {.header: memory,
                                          header: client_session,
                                          importcpp: "std::make_shared<tensorflow::ClientSession>(*#)".}

  ## Constructor for the Session type.
  ## 
  ## Args:
  ##   scope: The Scope from which a Sessino shall be created.
  ## Returns:
  ##   A Session object that can be run to perform the Computations.

type 
  FeedDict* {.header:"<unordered_map>",
              importcpp:"std::unordered_map<tensorflow::Output, tensorflow::Input::Initializer, tensorflow::OutputHash>".} = object

    ## A map linking a Out from a Placeholder op to an actual tensor.

proc `[]=`*[T: oall](feed: FeedDict, placeholder: T, ten: Tensor[T]) {.importcpp:"#.insert({#, *#})".}

proc clear*(feed: FeedDict) {.importcpp:"#.clear()".}

  ## Remove all items from the dict.

proc runSession*(sess: Session, feed: FeedDict, graph: oall, operation: Operation[oall], outputs: TensorVec): Status {.
  header: client_session,
  importcpp: "(*#).Run((tensorflow::ClientSession::FeedType)#, {#}, {#}, &#)".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   operation: Interface to run an operation without an output
  ##   outputs: A TensorVec holding the result of the computations.


proc runSession*(sess: Session, feed: FeedDict, graph: oall, outputs: TensorVec): Status {.
  header: client_session,
  importcpp: "(*#).Run((tensorflow::ClientSession::FeedType)#, {#}, &#)".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, graph: oall, outputs: TensorVec): Status {.
  header: client_session,
  importcpp: "(*#).Run({#}, &#)".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, feed: FeedDict, graph: olist[oall], operation: Operation[oall], outputs: TensorVec): Status {.
  header: client_session,
  importcpp: "(*#).Run((tensorflow::ClientSession::FeedType)#, #, {#}, &#)".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   operation: Interface to run an operation without an output
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, feed: FeedDict, graph: olist[oall], outputs: TensorVec): Status {.
  header: client_session,
  importcpp: "(*#).Run((tensorflow::ClientSession::FeedType)#, #, &#)".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, graph: olist[oall], outputs: TensorVec): Status {.
  header: client_session,
  importcpp: "(*#).Run(#, &#)".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   outputs: A TensorVec holding the result of the computations.

proc runSession*(sess: Session, feed: FeedDict, graph: olist[oall] | oall, operation: Operation[oall]): TensorVec =
  var outputs: TensorVec
  sess.runSession(feed, graph, operation, outputs).error
  return outputs

proc runSession*(sess: Session, feed: FeedDict, graph: olist[oall] | oall): TensorVec =
  var outputs: TensorVec
  sess.runSession(feed, graph, outputs).error
  return outputs

proc runSession*(sess: Session, graph: olist[oall] | oall): TensorVec =
  var outputs: TensorVec
  sess.runSession(graph, outputs).error
  return outputs

proc runSessionVoid*(sess: Session, feed: FeedDict, graph: oall, operation: Operation[oall]): Status {.
  header: client_session,
  importcpp: "(*#).Run((tensorflow::ClientSession::FeedType)#, {#}, {#}, nullptr)".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   operation: Interface to run an operation without an output

proc runSessionVoid*(sess: Session, feed: FeedDict, graph: oall): Status {.
  header: client_session,
  importcpp: "#->Run((tensorflow::ClientSession::FeedType)#, {#}, nullptr)".}

  ## A Method to run computations previously definied without returning the output.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.

proc runSessionVoid*(sess: Session, graph: oall): Status {.
  header: client_session,
  importcpp: "#->Run({#}, nullptr)".}

  ## A Method to run computations previously definied without returning the output.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   graph: The Out/ OutList representing the computations that should be performed.

proc runSessionVoid*(sess: Session, feed: FeedDict, graph: olist[oall], operation: Operation[oall]): Status {.
  header: client_session,
  importcpp: "(*#).Run((tensorflow::ClientSession::FeedType)#, #, {#}, nullptr)".}

  ## A Method to run computations previously definied.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.
  ##   operation: Interface to run an operation without an output

proc runSessionVoid*(sess: Session, feed: FeedDict, graph: olist[oall]): Status {.
  header: client_session,
  importcpp: "#->Run((tensorflow::ClientSession::FeedType)#, #, nullptr)".}

  ## A Method to run computations previously definied without returning the output.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   feed: The FeedDict linking Out and Tensor.
  ##   graph: The Out/ OutList representing the computations that should be performed.

proc runSessionVoid*(sess: Session, graph: olist[oall]): Status {.
  header: client_session,
  importcpp: "#->Run(#, nullptr)".}

  ## A Method to run computations previously definied without returning the output.
  ## 
  ## Args:
  ##   sess: The Session returned from the current Scope.
  ##   graph: The Out/ OutList representing the computations that should be performed.
