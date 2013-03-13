calculatePathwayStats <- function(gexname, dbname, criteria, host="localhost", port=9000, pwypath=NA, gexpath=NA, dbpath=NA, outputdir=NA) {
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (missing(criteria)) stop("You must provide a criteria to use to calculate Z score.");
  if (is.na(pwypath)) pwypath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");	
  if (is.na(gexpath)) gexpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");	
  if (is.na(dbpath)) dbpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(outputdir)) outputdir = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");

  gexexts = c(".pgex","")
  dbexts = c(".bridge","",".pgdb")
  for (ext in gexexts) {
    g = paste(gexpath,"/",gexname,ext,sep="")
    if (file.exists(g)) gex = g
  }
  for (ext in dbexts) {
    d = paste(dbpath,"/",dbname,ext,sep="")
    if (file.exists(d)) db = d
  } 
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.calculatePathwayStatistics", pwypath, gex, db, criteria, outputdir)
}
