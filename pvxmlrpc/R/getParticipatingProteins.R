getParticipatingProteins <- function(pathway,host="localhost", port=9000, path=NA, outputDir=NA) {
  
 getParticipants(pathway,"Protein",host,port,path,outputDir)
}
