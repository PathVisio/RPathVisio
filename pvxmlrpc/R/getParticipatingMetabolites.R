getParticipatingMetabolites <- function(pathway,outputDir, host="localhost", port=9000,path=NA, outputDir=NA) {
  
 getParticipants(pathway,"Metabolite",host,port,path,outputDir)
}
