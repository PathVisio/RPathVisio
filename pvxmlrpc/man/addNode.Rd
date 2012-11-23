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
Functions for adding different types of data nodes to a pathway
}
\usage{
addDataNode(pathway,name,type,host="localhost",port=9000)
addPathwayNode(pathway,name,host="localhost",port=9000)
addRNANode(pathway,name,host="localhost",port=9000)
addMetaboliteNode(pathway,name,host="localhost",port=9000)
addProteinNode(pathway,name,host="localhost",port=9000)
addGeneProductNode(pathway,name,host="localhost",port=9000)
}
\arguments{
 \item{pathway}{name of the pathway in which to add the data node}
 \item{name}{name of the data node}
 \item{type}{type of data node, either "Pathway","Protein","Metabolite","RNA","GeneProduct" or "Unknown"}
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