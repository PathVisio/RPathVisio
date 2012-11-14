exportPathway <- function(name, host="localhost", port=9000, type="png") {
  if (missing(name)) stop("You must provide a pathway name.");

  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.exportPathway", name, type)
}
