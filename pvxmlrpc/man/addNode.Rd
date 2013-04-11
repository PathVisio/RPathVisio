\name{addDataNode}
\alias{addDataNode}
\alias{addPathwayNode}
\alias{addProteinNode}
\alias{addMetaboliteNode}
\alias{addRNANode}
\alias{addGeneProductNode}
\title{
Add data node functions
}
\description{
Functions for adding different types of data nodes to a pathway.
}
\usage{
addDataNode(pathway,name,type,host="localhost",port=9000,dataId="",dataSource="",path=NA)
addPathwayNode(pathway,name,host="localhost",port=9000,dataId="",dataSource="",path=NA)
addRNANode(pathway,name,host="localhost",port=9000,dataId="",dataSource="",path=NA)
addMetaboliteNode(pathway,name,host="localhost",port=9000,dataId="",dataSource="",path=NA)
addProteinNode(pathway,name,host="localhost",port=9000,dataId="",dataSource="",path=NA)
addGeneProductNode(pathway,name,host="localhost",port=9000,dataId="",dataSource="",path=NA)
}
\arguments{
 \item{pathway}{name of the pathway in which to add the data node}
 \item{name}{name of the data node}
 \item{type}{type of data node, either "Pathway","Protein","Metabolite","RNA","GeneProduct" or "Unknown"}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{dataId}{unique identifier belonging to the element represented by the data node(not the data node itself)}
 \item{dataSource}{the source of the identifier given as the dataId)}
 \item{path}{directory path in wich the pathway is situated}
}
\value{
 \item{pathway}{the name of the pathway in which the data node is placed}
 \item{name}{the name of the data node}
 \item{type}{type of data node}
 \item{graphId}{unique identifier belonging to the specific data node(not the element represented by it)}
 \item{dataId}{unique identifier belonging to the element represented by the data node(not the data node itself)}
 \item{dataSource}{the source of the dataId identifier)}
}
\note{
graphId is currently retrieved by splitting the line which is returned from PathVisio-RPC.
This is not a nice way of doing that, and in the future this might prove a problem.
But as of now it's the only way to return the graphID.
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans

Maintainer: Anwesha Dutta <anwesha.dutta@maastrichtuniversity.nl>
<Egon Willighagen <egon.willighagen@gmail.com>
<C.Leemans@student.maastrichtuniversity.nl>
}