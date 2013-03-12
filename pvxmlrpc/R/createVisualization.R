createVisualization <- function(gexname, gsample="", gcolors="", gvalues="", rsample="", rcolors="", rexprs="", host="localhost", port="9000", gexpath=NA) {
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if ((gsample=="" | gcolors=="" | gvalues=="")
     && (rsample=="" | rcolors=="" | rexprs=="")) 
     stop("You must either provide a complete set of gradient values or a complete set of color rules.");
  if (is.na(gexpath)) gexpath = paste(path.expand("~"),"/PathVisioRPC-Results",sep="");
  if (is.na(unlist(strsplit(gexname,"\\."))[2])) gexname = paste(gexname,".pgex",sep="");
 
  gex = paste(gexpath,"/",gexname, sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathVisio.createVisualization", gex, gsample, gcolors, gvalues, rsample, rcolors, rexprs)
}