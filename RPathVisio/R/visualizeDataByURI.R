visualizeDataByURI <- function(uri, gexname, dbname, host="localhost", port=9000, pwypath=NA, gexpath=NA, dbpath=NA, outputdir=NA) {
  if (missing(uri)) stop("You must provide WikiPathway ID for the pathway");
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (is.na(gexpath)) gexpath = getwd();
  if (is.na(dbpath)) dbpath = getwd();
  if (is.na(outputdir)) outputdir = getwd();
 
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
  xml.rpc(hostUrl, "PathVisio.visualizeDataByURI", uri, gex, db, outputdir)
}