getParticipatingRNAs <- function(pathway,outputDir, host="localhost", port=9000) {
  
 getParticipants(pathway,"RNA",outputDir,host,port)
}
