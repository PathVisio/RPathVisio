addProteinNode <- function(pathway, name, host="localhost", port=9000, dataId="", dataSource="", path=NA) {

  addDataNode(pathway, name, "Protein", host, port, dataId, dataSource, path)
}