createVisualizationRule <- function(gexname, rsample, rcolors, rexprs, host="localhost", port="9000", gexpath=NA) {
  if (missing(rsample)) stop("You must provide the name of the sample to apply color rule on.");
  if (missing(rcolors)) stop("You must provide the colors to use for each of the color rules.");
  if (missing(rexprs)) stop("You must provide the expression rule to use for each of the samples.");
  
  createVisualization(gexname,rsample=rsample,rcolors=rcolors,rexprs=rexprs,host=host,port=port,gexpath=gexpath)
}