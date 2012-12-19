exportPathway <- function(pathway, type, outputDir, host="localhost", port=9000) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(type)) stop("You must provide what type of output you want.");
  if (missing(outputDir)) stop("You must provide an output directory.");
  if (match(type, c("png","svg","pdf"), 0) == 0) stop("This type of export is unavailable");

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.exportPathway", pathway, type, outputDir)
}
