addGeneProductNode <- function(pathway, name, host="localhost", port=9000, ref="", comment="", dataId="", dataSource="", path=NA) { 

  addDataNode(pathway, name, "GeneProduct", host, port, ref, comment, dataId, dataSource, path)
}