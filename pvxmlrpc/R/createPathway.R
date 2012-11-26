createPathway <- function(name, host="localhost", port=9000, author="Anonymous", organism="") {
  if (missing(name)) stop("You must provide a pathway name.");

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.createPathway", author, name, organism)
}
