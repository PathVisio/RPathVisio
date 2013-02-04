addRNANode <- function(pathway, name, host="localhost", port=9000, ref="", comment="", commentSource="", dataId="", dataSource="", path=NA) {

  addDataNode(pathway, name, "RNA", host, port, ref, comment, commentSource, dataId, dataSource, path)
}