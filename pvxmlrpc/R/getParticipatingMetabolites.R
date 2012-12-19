getParticipatingMetabolites <- function(pathway,outputDir, host="localhost", port=9000) {
  
 getParticipants(pathway,"Metabolite",outputDir,host,port)
}
