visualizeData <- function(pathway, gexname, dbname, host="localhost", port=9000, path=NA) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (is.na(path)) path = getwd();
 
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.visualizeData", pathway, gexname, dbname,path)
}


