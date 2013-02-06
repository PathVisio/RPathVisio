\name{visualizeData}
\alias{visualizeData}
\title{
Visualize Data functions
}
\description{
Functions for adding visualizations on data nodes of a pathway
}
\usage{
visualizeData(pathway, gexname, dbname, host="localhost", port=9000, path=NA)
}
\arguments{
 \item{pathway}{name of the pathway on which to visualize data}
 \item{gexname}{name of the gex file, which has the data to be visualized}
 \item{dbname}{name of the database file which is to be used for mapping the data to the data nodes}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{path}{folder in which the pathway file is stored}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans

Maintainer: Anwesha Dutta <anwesha.dutta@maastrichtuniversity.nl>
<Egon Willighagen <egon.willighagen@gmail.com>
<C.Leemans@student.maastrichtuniversity.nl>
}