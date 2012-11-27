createPathway <- function(name, host="localhost", port=9000, author="Anonymous", organism="", path=NA) {
  if (missing(name)) stop("You must provide a pathway name.");
  if (is.na(path)) path = getwd();

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.createPathway", name, author, organism)
}
