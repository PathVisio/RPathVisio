createVisualizationGradient <- function(gexname, gsample, gcolors, gvalues, host="localhost", port="9000", gexpath=NA) {
  if (missing(gsample)) stop("You must provide the name of the sample to apply color gradient on.");
  if (missing(gcolors)) stop("You must provide 2 or 3 colors to use for gradient visualization.");
  if (missing(gvalues)) stop("You must provide 2 or 3 values to use for gradient visualization.");
  
  createVisualization(gexname,gsample,gcolors,gvalues,host=host,port=port,gexpath=gexpath)
}