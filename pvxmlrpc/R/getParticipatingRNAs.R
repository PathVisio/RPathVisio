getParticipatingRNAs <- function(pathway,host="localhost", port=9000, path=NA, outputDir=NA) {
  
 getParticipants(pathway,"RNA",host,port,path,outputDir)
}
