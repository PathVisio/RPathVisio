\name{addLine}
\alias{addLine}
\alias{addMim}
\title{
Add Line functions
}
\description{
Functions for connecting data nodes with different types of Lines in a pathway
}
\usage{
addLine(pathway,name,startNode,endNode,startAnnotation="",endAnnotation="Arrow",lineID="",linesource="",host="localhost",port=9000,path=NA)
addMim(pathway,name,startNode,endNode,type,lineID="",linesource="",host="localhost",port=9000,path=NA)
}
\arguments{
 \item{pathway}{name of the pathway in which to add the data node}
 \item{name}{name of the Line}
 \item{startNode}{name of the data node to start the Line}
 \item{endNode}{name of the data node to end the line}
 \item{startAnnotation}{type of line-end to start from}
 \item{endAnnotation}{type of line-end to end the line}
 \item{lineID}{unique id for the line}
 \item{lineSource}{data source of the line}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{path}{folder in which the pathway file is stored on the local machine}
 \item{type}{type of mim interaction}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans

Maintainer: Anwesha Dutta <anwesha.dutta@maastrichtuniversity.nl>
<Egon Willighagen <egon.willighagen@gmail.com>
<C.Leemans@student.maastrichtuniversity.nl>
}