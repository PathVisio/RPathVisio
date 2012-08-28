addDataNode <- function(pathway, name, type, host="localhost", port=9000) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(name)) stop("You must provide a node name.");
  if (missing(type)) stop("You must provide a node type.");

  stopifnot(match(type, c("Metabolite"), 0) == 1)

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.addDataNode", pathway, name, type)
}
