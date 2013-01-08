getParticipatingRNAs <- function(pathway,host="localhost", port=9000, path=NA) {
  
 getParticipants(pathway,"RNA",host,port,path)
}
