createVisualization <- function(gexname, gsample="", gcolors="", gvalues="", rsample="", rcolors="", rexprs="", host="localhost", port="9000", gexpath=NA) {
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if ((gsample=="" | gcolors=="" | gvalues=="")
     && (rsample=="" | rcolors=="" | rexprs=="")) 
     stop("You must either provide a complete set of gradient values or a complete set of color rules.");
  if (is.na(gexpath)) gexpath = getwd();
 
  exts = c("",".pgex")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  for (ext in exts) {
    g = paste(gexpath,"/",gexname,ext,sep="")
    if (file.exists(g)) gex = g
  }
  rexprs = paste("[",unlist(strsplit(rsample,";")),"]",unlist(strsplit(rexprs,";")),sep="",collapse=";")
  xml.rpc(hostUrl,"PathVisio.createVisualization", gex, gsample, gcolors, gvalues, rsample, rcolors, rexprs)
}