getParticipatingMetabolites <- function(pathway, host="localhost", port=9000,path=NA, outputdir=NA) {
  
 getParticipants(pathway,"Metabolite",host,port,path,outputdir)
}
