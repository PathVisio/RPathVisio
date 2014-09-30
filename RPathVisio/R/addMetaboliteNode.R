addMetaboliteNode <- function(pathway, name, host="localhost", port=9000, dataId="", dataSource="", path=NA) {

  addDataNode(pathway, name, "Metabolite", host, port, dataId, dataSource, path)
}