calculatePathwayStats <- function(pathdir, gexname, dbname, criteria, outputdir, host="localhost", port=9000) {
  if (missing(pathdir)) stop("You must provide a folder containing pathways.");
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (missing(criteria)) stop("You must provide a criteria to use to calculate Z score.");
  if (missing(outputdir)) stop("You must provide a folder to which the results will be stored.");

 
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.calculatePathwayStats", pathdir, gexname, dbname, criteria, outputdir)
}
