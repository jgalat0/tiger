signature tigerliveness =
sig
  datatype igraph = IGRAPH of {graph : tigergraph.graph,
                              tnode : tigertemp.temp -> tigergraph.node,
                              gtemp : tigergraph.node -> tigertemp.temp,
                              moves : (tigergraph.node * tigergraph.node) list}

  val interferenceGraph : tigerflowgraph.flowgraph -> igraph * (tigergraph.node -> tigertemp.temp list)
  val liveAnalysis : tigerflowgraph.flowgraph -> ((tigergraph.node -> tigertemp.temp Splayset.set) * (tigergraph.node -> tigertemp.temp list))
  val show : igraph -> unit
  val showDot : igraph -> string -> unit
end
