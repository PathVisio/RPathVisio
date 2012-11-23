\name{createVisualization}
\alias{createVisualization}
\title{
Create Visualization functions
}
\description{
Functions for creating visualizations, color gradients and rules according to which the data would be represented on pathways
}
\usage{
createVisualization(gexname, gsample, gcolors, gvalues, rsample, rcolors, rexprs, host="localhost", port=9000)
}
\arguments{
 \item{gexname}{name of the gex file, which has the data to be visualized}
  \item{gsample}{name of the sample on which a colour gradient should be applied, for eg. 'Fold Change'}
 \item{gcolors}{name of colors for the color gradient, for eg. 'Blue,Red'}
 \item{gvalues}{Values to be paired with the colors of the color gradient, for eg. '-2,2'}
 \item{rsample}{name of the sample on which a color rule should be applied, for eg. 'P.Value'}
 \item{rcolors}{name of the color for the color rule, for eg. 'Green'}
 \item{rexprs}{the exprsessin to be used for the color rule, for eg. '[P.Value<0.05]'}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans

Maintainer: Anwesha Dutta <anwesha.dutta@maastrichtuniversity.nl>
<Egon Willighagen <egon.willighagen@gmail.com>
<C.Leemans@student.maastrichtuniversity.nl>
}