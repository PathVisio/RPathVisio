getParticipants <- function(pathway, type, host="localhost", port=9000, path=NA, outputdir=NA) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(type)) stop("You must provide which participants you wants; i.e GeneProduct, Protein, Metabolite or Reactions/Interactions.");
  if (is.na(path)) path = getwd();
  if (is.na(outputdir)) outputdir = getwd();

  pwyPath = paste(path, "/", pathway, ".gpml", sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.getPathwayParticipants", pwyPath, type, outputdir)
}
