addPathwayNode <- function(pathway, name, host="localhost", port=9000, dataId="", dataSource="", path=NA) {

  addDataNode(pathway, name, "Pathway", host, port, dataId, dataSource, path)
}