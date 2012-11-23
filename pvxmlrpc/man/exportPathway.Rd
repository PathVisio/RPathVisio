\name{exportPathway}
\alias{exportPathway}
\alias{exportPathwayasPng}
\alias{exportPathwayasSvg}
\alias{exportPathwayasPdf}
\title{
Export Pathway functions
}
\description{
Functions for exporting pathways in various formats
}
\usage{
exportPathway(pathway, type, host="localhost", port=9000)
exportPathwayasPng(pathway, host="localhost", port=9000)
exportPathwayasPdf(pathway, host="localhost", port=9000)
exportPathwayasSvg(pathway, host="localhost", port=9000)
}
\arguments{
 \item{pathway}{name of the pathway on which to visualize data}
 \item{type}{name of the format you want the pathway to be exported in; formats allowed are 'pdf', 'png', 'svg'}
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