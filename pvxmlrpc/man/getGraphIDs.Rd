\name{getGraphIDs}
\alias{getGraphIDs}
\title{
Graph identifier search option
}
\description{
Get all the graph identifiers of the data nodes with the name given
}
\usage{
getGraphIDs(pathway,name,host="localhost",port=9000,path=NA)
}
\arguments{
 \item{pathway}{name the pathway}
 \item{name}{name of the data nodes to retrieve the graph Id from}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{path}{folder in which the pathway file is stored}
}
\value{
 list of graph identifiers with the same name as the input
}
\examples{
#get the graphId's of the data nodes called "ACE" in the "ACE Inhibitor" Pathway
\dontrun{getGraphId("ACE Inhibitor", "ACE")}
}
\author{
Christ Leemans
}