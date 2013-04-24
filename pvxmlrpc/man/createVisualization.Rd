\name{createVisualization}
\alias{createVisualization}
\alias{createVisualizationGradient}
\alias{createVisualizationRule}
\title{
Create Visualization functions
}
\description{
Functions for creating visualizations on pgex expression files, both color gradients and color rules can be used to visualize data on pathways
}
\usage{
createVisualization(gexname, gsample, gcolors, gvalues, rsample, rcolors, rexprs, host="localhost", port="9000", gexpath=NA)
createVisualizationGradient(gexname, gsample, gcolors, gvalues, host="localhost", port="9000", gexpath=NA)
createVisualizationRule(gexname, rsample, rcolors, rexprs, host="localhost", port="9000", gexpath=NA)
}
\arguments{
 \item{gexname}{name of the gex file, which has the data to be visualized}
 \item{gsample}{name of the sample on which a colour gradient should be applied, for eg. 'Fold Change'}
 \item{gcolors}{name of colors for the color gradient, for eg. 'Blue,Red'}
 \item{gvalues}{Values to be paired with the colors of the color gradient, for eg. '-2,2'}
 \item{rsample}{name of the sample on which a color rule should be applied, for eg. 'P.Value'}
 \item{rcolors}{name of the color for the color rule, for eg. 'Green'}
 \item{rexprs}{the exprsessin to be used for the color rule, for eg. '<0.05'}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{gexpath}{folder in which the gex-file is stored(when no value is given, the "PathVisioRPC-Result" directory in the home folder is used)}
}
\note{
When applying more then one gradient or rule, the different gradient/rule values in the input string should be seperated by ";". 
Colors and values belonging to the same gradient should be seperated by "," and at least 2 colors and values are required.
}
\examples{
##create a .pgex file by importing data
\dontrun{importData("example",dataframe,"database")}

##now a visualisation rule can be applied to a pathway using the data from the dataset
\dontrun{createVisualizationRule("example","PValue","green","<0.05")}
##or a gradient
\dontrun{createVisualizationGradient("example","logFC","blue,white,red","-2,0,2")}
##or both
\dontrun{createVisualization("example","logFC","blue,white,red","-2,0,2","PValue","green","<0.05")}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans
}