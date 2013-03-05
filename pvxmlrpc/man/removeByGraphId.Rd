\name{removeByGraphId}
\alias{removeByGraphId}
\title{
remove data node by graph identifier
}
\description{
removes the data node carrying the unique graph identifier given
}
\usage{
removeByGraphId(pathway,graphId,host="localhost",port=9000,path=NA)
}
\arguments{
 \item{pathway}{name the pathway}
 \item{graphId}{Graph Identifier of the data node that needs to be removed}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{path}{folder in which the pathway file is stored}
}
\author{
Christ Leemans
}