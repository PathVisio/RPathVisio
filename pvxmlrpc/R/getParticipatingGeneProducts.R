getParticipatingGeneProducts <- function(pathway,outputDir, host="localhost", port=9000) {
  
 getParticipants(pathway,"GeneProduct",outputDir,host,port)

}
