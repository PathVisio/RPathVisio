\name{getParticipants}
\alias{getParticipatingGeneProducts}
\alias{getParticipatingMetabolites}
\alias{getParticipatingPathways}
\alias{getParticipatingProteins}
\alias{getParticipatingReactions}
\alias{getParticipatingRNAs}
\alias{getParticipatingUnknowns}
\title{
get Participants functions
}
\description{
Functions for extracting a list of data nodes or lines present in a pathway
}
\usage{
getParticipants(pathway,type,host="localhost",port=9000,path=NA)
getParticipatingGeneProducts(pathway,host="localhost",port=9000,path=NA)
getParticipatingMetabolites(pathway,host="localhost",port=9000,path=NA)
getParticipatingPathways(pathway,host="localhost",port=9000,path=NA)
getParticipatingProteins(pathway,host="localhost",port=9000,path=NA)
getParticipatingReactions(pathway,host="localhost",port=9000,path=NA)
getParticipatingRNAs(pathway,host="localhost",port=9000,path=NA)
getParticipatingUnknowns(pathway,host="localhost",port=9000,path=NA)
}
\arguments{
 \item{pathway}{name of the pathway in which to add the data node}
 \item{type}{type of data node or line, either "Pathway","Protein","Metabolite","RNA","GeneProduct", "Unknown" or "Line"}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{path}{folder in which the pathway file is stored on the local machine}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans

Maintainer: Anwesha Dutta <anwesha.dutta@maastrichtuniversity.nl>
<Egon Willighagen <egon.willighagen@gmail.com>
<C.Leemans@student.maastrichtuniversity.nl>
}