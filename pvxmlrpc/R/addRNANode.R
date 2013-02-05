addRNANode <- function(pathway, name, host="localhost", port=9000, ref="", comment="", dataId="", dataSource="", path=NA) {

  addDataNode(pathway, name, "RNA", host, port, ref, comment, dataId, dataSource, path)
}