importData <- function(name, dataframe, dbname, host="localhost", port=9000, filepath=NA, dbpath=NA, outputdir=NA, row.names=TRUE, source=NA) {
  if (missing(name)) stop("You must provide a name for the pgex file")
  if (missing(dataframe)) stop("You must provide a table.");
  if (missing(dbname)) stop("You must provide the name of the database to use for mapping the data.");
  if (is.na(filepath)) filepath = temdir();
  if (row.names) {
    dataframe <- cbind(rownames(dataframe),dataframe)
    colnames(dataframe)[1] <- "ID"
  }
  hostUrl=paste("http://",host,":",port,sep="")
# if there's no source given, have bridgedb guess the source
  if (is.na(source)) {
    firstid = dataframe[1,1]
    list <- getMatchingSources(as.character(firstid))
    if (is.na(list[1])) stop("identifier pattern not recognized")
# if there's just a single system code possible, use that system code
# but if there are more, stop and return the possible source's
# when the list is empty, report an error
    if (length(list)==1) {
    source = getSystemCode(list[1])
    } else if (!class(list) == "try-error") {
      strlist = paste(list,collapse=(", "))
      stop(paste("Unable to detect source, possible source's are:",strlist))
    }
    else stop("Incorrect data frame, unable to match identifiers to a source");
  }
# else try if source contains the full name 
  else {
    tryname = getSystemCode(source)
    if (!is.na(tryname)) source = tryname;
  }
# check if the system code is set correctly
  res = getFullName(source)
  if (is.na(res)) stop ("Invalid source");
  l = ncol(dataframe)
  scnum = l + 1
  dataframe["System Code"] <- source
  dataframe = dataframe[,c(1,scnum,2:l)]
  file = paste(filepath,"/",name,".txt",sep="")
  write.table(dataframe,file,sep="\t",row.names=FALSE,quote=FALSE)
  importDataByFile(name,dbname,host=host,port=port,filepath=filepath, dbpath=dbpath, outputdir=outputdir)
}