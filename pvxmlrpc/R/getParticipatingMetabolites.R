getParticipatingMetabolites <- function(pathway,outputDir, host="localhost", port=9000,path=NA) {
  
 getParticipants(pathway,"Metabolite",host,port,path)
}
