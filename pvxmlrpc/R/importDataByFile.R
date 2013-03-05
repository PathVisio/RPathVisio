importDataByFile <- function(filename, dbname, host="localhost", port=9000, filepath=NA, dbpath=NA, outputdir=NA) {
  if (missing(filename)) stop("You must provide the name of a tab delimited data file.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (is.na(filepath)) filepath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(dbpath)) dbpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(outputdir)) outputdir = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(unlist(strsplit(filename,"\\."))[2])) filename = paste(filename,".txt",sep="");
  if (is.na(unlist(strsplit(dbname,"\\."))[2])) dbname = paste(dbname,".bridge",sep="");
 
  file = paste(filepath,"/",filename,sep="")
  db = paste(dbpath,"/",dbname,sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.importData", file, db, outputdir)
}