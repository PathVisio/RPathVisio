addMim <- function(pathway, name, startNode, endNode, type, host="localhost", port=9000, path=NA) {

  if (match(type, c(
    "catalysis",
    "necessary-stimulation",
    "binding",
    "conversion",
    "stimulation", 
    "modification",
    "inhibition",
    "cleavage",
    "covalent-bond",
    "branching-left",
    "branching-right",
    "transcription-translation",
    "gap"), 0) == 0) stop("Unknown MIM type");
  
  endAnnotation = paste("mim-",type,sep="")

  addLine(pathway, name, startNode, endNode, "", endAnnotation, host, port, path)
}
