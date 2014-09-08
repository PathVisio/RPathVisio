getParticipatingRNAs <- function(pathway,host="localhost", port=9000, path=NA, outputdir=NA) {
  
 getParticipants(pathway,"RNA",host,port,path,outputdir)
}
