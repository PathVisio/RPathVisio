visualizeData <- function(pathway, gexname, dbname, host="localhost", port=9000, pwypath=NA, gexpath=NA, dbpath=NA, outputdir="") {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (is.na(pwypath)) pwypath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(gexpath)) gexpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(dbpath)) dbpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(unlist(strsplit(gexname,"\\."))[2])) gexname = paste(gexname,".pgex",sep="");
  if (is.na(unlist(strsplit(dbname,"\\."))[2])) dbname = paste(dbname,".bridge",sep="");
 
  pwy = paste(pwypath,"/",pathway,".gpml",sep="")
  gex = paste(gexpath,"/",gexname,sep="")
  db = paste(dbpath,"/",dbname,sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.visualizeData", pwy, gex, db, outputdir)
}


