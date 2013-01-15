removeByGraphId <- function(pathway, graphId, host="localhost", port=9000, path=NA) {
 if (missing(pathway)) stop("You must provide a pathway name.");
 if (missing(graphId)) stop("You must provide a graph identifier.");
 if (is.na(path)) path = getwd();
 
 pwyPath = paste(path,"/", pathway, ".gpml", sep="")
 hostUrl = paste("http://", host, ":", port,"/", sep="")
 xml.rpc(hostUrl, "PathVisio.removeElementById", pwyPath, graphId, path)
}