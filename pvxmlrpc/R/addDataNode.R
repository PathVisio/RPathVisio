addDataNode <- function(pathway, name, type, host="localhost", port=9000, ref="", comment="", dataId="", dataSource="", path=NA) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(name)) stop("You must provide a node name.");
  if (missing(type)) stop("You must provide a node type.");
  if (match(type, c("Metabolite","Protein","GeneProduct","RNA","Pathway"), 0) == 0) stop("Unknown type of node");
  if (is.na(path)) path = getwd();

  pwyPath = paste(path,"/",pathway,".gpml",sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  line <- xml.rpc(hostUrl, "PathVisio.addDataNode", pwyPath, name, type, ref, comment, commentSource, dataId, dataSource)
  graphId = unlist(strsplit(line," "))[4]
  list(pathway=pathway, name=name, graphId=graphId, ref=ref, comment=comment, commentSource=commentSource, dataId=dataId, dataSource=dataSource, path=path)

}
