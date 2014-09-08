plotWikipathway <- function(pathwayID, host="localhost", port=9000) {
  if (missing(pathwayID)) stop("You must provide a WikiPathways pathway ID, like WP85.");

  hostUrl = paste("http://", host, ":", port, "/", sep="")  
  img = readPNG(
   base64Decode(
     xml.rpc(hostUrl,"PathVisio.exportPathwayByteFromURI", pathwayID, "png",
       .convert=function(x) { xmlValue(getNodeSet(xmlParse(x),"//base64")[[1]]) }
     ), 
     "raw"
   )
 )
 grid.raster(img)
}

