\name{createPathway}
\alias{createPathway}
\title{
Create Pathway function
}
\description{
Function for creating a new pathway file
}
\usage{
createPathway(name,host="localhost",port=9000,author="Anonymous",organism="",path=NA)
}
\arguments{
 \item{name}{name the pathway}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{author}{creator of the pathway}
 \item{organism}{organism in which the pathway can be found}
 \item{path}{folder in which the pathway file is stored on the local machine}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans
}