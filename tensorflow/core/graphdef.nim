import 
    scope

type 
  GraphDef* {.importcpp:"tensorflow::GraphDef".} = object

    ## Type that holds the representation of the computation graph.

proc itoGraphDef(rt: Scope, graph: GraphDef) {.importcpp:"#->ToGraphDef(&#)".}

proc toGraphDef*(rt: Scope): GraphDef =
  var graph: GraphDef
  rt.itoGraphDef(graph)
  return graph

  ## Get a graphdef from a Scope.
