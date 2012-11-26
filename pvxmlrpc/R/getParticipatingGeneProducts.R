getParticipatingGeneProducts <- function(pathway, host="localhost", port=9000) {
  if (missing(pathway)) stop("You must provide a pathway name.");
 
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.exportPathway", name, "GeneProduct")
}
