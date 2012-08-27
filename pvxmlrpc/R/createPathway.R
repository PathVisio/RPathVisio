createPathway <- function(name=NULL, host="localhost", port=9000, author="Anonymous") {
  if (is.null(name)) error("You must provide a pathway name.");

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.createPathway", author, name)
}
