getParticipants <- function(pathway, type, host="localhost", port=9000) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(type)) stop("You must provide which participants you wants; i.e GeneProduct, Protein, Metabolite or Reactions/Interactions.");

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.exportPathway", name, type)
}
