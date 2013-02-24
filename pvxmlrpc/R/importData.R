importData <- function(dataname, dbname, host="localhost", port=9000, datapath=NA, dbpath=NA, outputdir=NA) {
  if (missing(dataname)) stop("You must provide the name of a tab delimited data file.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (is.na(datapath)) datapath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(dbpath)) dbpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(outputdir)) outputdir = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(unlist(strsplit(dataname,"\\."))[2])) dataname = paste(dataname,".txt",sep="");
  if (is.na(unlist(strsplit(dbname,"\\."))[2])) dbname = paste(dbname,".bridge",sep="");
 
  data = paste(datapath,"/",dataname,sep="")
  db = paste(dbpath,"/",dbname,sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.importData", data, db, outputdir)
}