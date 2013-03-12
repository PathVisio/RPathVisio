importDataByFile <- function(filename, dbname, host="localhost", port=9000, filepath=NA, dbpath=NA, outputdir=NA) {
  if (missing(filename)) stop("You must provide the name of a tab delimited data file.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (is.na(filepath)) filepath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(dbpath)) dbpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(outputdir)) outputdir = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");

  fexts = c(".txt","",".csv")
  dbexts = c(".bridge","",".pgdb")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  for (fext in fexts) {
    f = paste(filepath,"/",filename,fext,sep="")
    if (file.exists(f)) file = f
  }
  for (dbext in dbexts) {
    d = paste(dbpath,"/",dbname,dbext,sep="")
    if (file.exists(d)) db = d
  }
  if(is.na(file)) stop("expression file not found")
  if(is.na(db)) stop("database file not found")
  xml.rpc(hostUrl,"PathVisio.importData",file,db,outputdir)
}