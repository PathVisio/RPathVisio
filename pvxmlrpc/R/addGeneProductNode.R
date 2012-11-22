addGeneProductNode <- function(pathway, name, host="localhost", port=9000) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(name)) stop("You must provide a gene product name.");

  addDataNode(pathway, name, "GeneProduct", host, port)
}