addLine <- function(pathway, name, startNode, endNode, startAnnotation="", endAnnotation="Arrow", host="localhost", port=9000, path=NA) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(name)) stop("You must provide a line name.");
  if (missing(startNode)) stop("You must provide a start node.");
  if (missing(endNode)) stop("You must provide a end node.");
  if (is.na(path)) path = getwd();

  pwyPath = paste(path,"/",pathway,".gpml",sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  line = xml.rpc(hostUrl, "PathVisio.addLine", pwyPath, name, startNode, endNode, startAnnotation, endAnnotation)
  graphId = unlist(strsplit(line," "))[4]
  list(pathway=pathway,name=name,graphId=graphId,startNode=startNode,endNode=endNode,startAnnotation=startAnnotation,path=path)
}
