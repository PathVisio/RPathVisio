getParticipatingMetabolites <- function(pathway,outputDir, host="localhost", port=9000,path=NA, outputdir=NA) {
  
 getParticipants(pathway,"Metabolite",host,port,path,outputdir)
}
