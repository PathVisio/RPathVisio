getParticipatingGeneProducts <- function(pathway, host="localhost", port=9000, path=NA, outputdir=NA) {
  
 getParticipants(pathway,"GeneProduct",host,port,path,outputdir)

}
