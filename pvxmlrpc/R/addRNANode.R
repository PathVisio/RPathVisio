addRNANode <- function(pathway, name, host="localhost", port=9000, author="Anonymous", organism="", path=NA) {


  addDataNode(pathway, name, "RNA", host, port, author, organism, path)
}