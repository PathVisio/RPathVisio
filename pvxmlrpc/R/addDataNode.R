addDataNode <- function(pathway, name, type, host="localhost", port=9000) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(name)) stop("You must provide a node name.");
  if (missing(type)) stop("You must provide a node type.");
  if (match(type, c("Metabolite","Protein","GeneProduct","RNA","Pathway"), 0) == 0) stop("Unknown type of node");

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.addDataNode", pathway, name, type)
}
