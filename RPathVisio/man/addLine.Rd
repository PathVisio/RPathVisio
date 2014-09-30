\name{addLine}
\alias{addLine}
\alias{addMim}
\title{
Add Line functions
}
\description{
Functions for connecting data nodes with different types of Lines in a pathway. 
}
\usage{
addLine(pathway,name,startNode,endNode,startAnnotation="",endAnnotation="Arrow",host="localhost",port=9000,path=NA)
addMim(pathway,name,startNode,endNode,type,host="localhost",port=9000,path=NA)
}
\arguments{
 \item{pathway}{name of the pathway in which to add the data node}
 \item{name}{name of the Line}
 \item{startNode}{name of the data node to start the Line}
 \item{endNode}{name of the data node to end the line}
 \item{startAnnotation}{type of line-end to start from}
 \item{endAnnotation}{type of line-end to end the line}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{path}{folder in which the pathway file is stored on the local machine}
 \item{type}{type of mim interaction}
}
\value{
 \item{pathway}{the name of the pathway in which the line was placed}
 \item{name}{the name of the line}
 \item{graphId}{unique identifier belonging to the specific line}
 \item{startNode}{name of the data node the line starts}
 \item{endNode}{name of the data node the line ends}
 \item{startAnnotation}{type of line-end at the start of the line}
 \item{endAnnotation}{type of line-end at the end of the line}
}
\note{
graphId is currently retrieved by splitting the line which is returned from PathVisio-RPC.
This is not a nice way of doing that, and in the future this might prove a problem.
But as of now it's the only way to return the graphID.
}
\examples{
\dontshow{pathvisioServer()}
## create a pathway and 2 datanodes
pwy<- createPathway("ACE inhibitor")
m <- addMetaboliteNode(pwy$name,"Angiotensin II")
gp <- addGeneProductNode(pwy$name,"AGTR1")

##add a line with simple arrow
arrow <- addLine(pwy$name,"line",m$name,gp$name)

}
\author{
Anwesha Bohler
Egon Willighagen
Christ Leemans
}
