getGraphIDs <- function(pathway, name, host="localhost", port="9000", path=NA){
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(name)) stop("You must provide the name of the element");
  if (is.na(path)) path = getwd();

  pwyPath = paste(path,"/",pathway,".gpml",sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl,"PathVisio.getGraphIDs",pwyPath,name)
}