calculatePathwayStats <- function(gexname, dbname, criteria, host="localhost", port=9000, pwypath=NA, gexpath=NA, dbpath=NA, outputdir=NA) {
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (missing(criteria)) stop("You must provide a criteria to use to calculate Z score.");
  if (is.na(pwypath)) pwypath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");	
  if (is.na(gexpath)) gexpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");	
  if (is.na(dbpath)) dbpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(outputdir)) outputdir = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(unlist(strsplit(gexname,"\\."))[2])) gexname = paste(gexname,".pgex",sep="");
  if (is.na(unlist(strsplit(dbname,"\\."))[2])) dbname = paste(dbname,".bridge",sep="");

  gex = paste(gexpath,"/",gexname,sep="")
  db = paste(dbpath,"/",dbname,sep="") 
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.calculatePathwayStatistics", pwypath, gex, db, criteria, outputdir)
}
