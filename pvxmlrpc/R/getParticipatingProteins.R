getParticipatingProteins <- function(pathway,outputDir, host="localhost", port=9000) {
  
 getParticipants(pathway,"Protein",outputDir,host,port)
}
