addProteinNode <- function(pathway, name, host="localhost", port=9000, author="Anonymous", organism="", path=NA) {

  addDataNode(pathway, name, "Protein", host, port, author, organism, path)
}