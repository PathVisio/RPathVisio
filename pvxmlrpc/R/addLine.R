addLine <- function(pathway, name, startNode, endNode, startAnnotation="", endAnnotation="Arrow", lineID=" ", linesource="", host="localhost", port=9000, path=NA) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(name)) stop("You must provide a line name.");
  if (missing(startNode)) stop("You must provide a start node.");
  if (missing(endNode)) stop("You must provide a end node.");
  if (is.na(path)) path = getwd();

  pwyPath = paste(path,"/",pathway,".gpml",sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")

  xml.rpc(hostUrl, "PathVisio.addLine", pwyPath, name, startNode, endNode, startAnnotation, endAnnotation, lineID, linesource, path)
}
