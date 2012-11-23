\name{calculatePathwayStats}
\alias{calculatePathwayStats}
\title{
Perform pathway statistics
}
\description{
Functions for performing over representation analysis on pathways
}
\usage{
calculatePathwayStats(pathdir, gexname, dbname, criteria, outputdir, host="localhost", port=9000)
}
\arguments{
 \item{pathdir}{name of the directory containing the pathways of interest}
 \item{gexname}{name of the gex file, which has the data to be analysed}
 \item{dbname}{name of the database file which is to be used for mapping the data to the data nodes}
 \item{criteria}{the criteria to be used to calculate the Z score, for eg: '[P.Value<0.05]'}
 \item{outputdir}{name of the directory where the results should be exported to}
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