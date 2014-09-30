getParticipatingProteins <- function(pathway,host="localhost", port=9000, path=NA, outputdir=NA) {
  
 getParticipants(pathway,"Protein",host,port,path,outputdir)
}
