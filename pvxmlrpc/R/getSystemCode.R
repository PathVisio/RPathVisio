getSystemCode <- function(name, host="localhost", port=9000){
  if(missing(name)) stop("You must provide the full name of the source")
  
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.getSystemCode", name)
}
  