getParticipatingGeneProducts <- function(pathway, host="localhost", port=9000, path=NA, outputDir=NA) {
  
 getParticipants(pathway,"GeneProduct",host,port,path,outputDir)

}
