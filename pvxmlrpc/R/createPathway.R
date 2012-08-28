createPathway <- function(name, host="localhost", port=9000, author="Anonymous") {
  if (missing(name)) stop("You must provide a pathway name.");

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.createPathway", author, name)
}
