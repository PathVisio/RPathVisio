exportPathway <- function(pathway, type, host="localhost", port=9000, path=NA, outputdir=NA) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(type)) stop("You must provide what type of output you want.");
  if (match(type, c("png","svg","pdf"), 0) == 0) stop("This type of export is unavailable");
  if (is.na(path)) path = getwd();
  if (is.na(outputdir)) outputdir = getwd();

  pwyPath = paste(path,"/",pathway,".gpml",sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.exportPathway", pwyPath, type, outputdir)
}
