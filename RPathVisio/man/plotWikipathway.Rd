\name{plotWikipathway}
\alias{plotWikipathway}
\title{
Plot a pathway from WikiPathways
}
\description{
Functions to plot a pathway from WikiPathways.org.
}
\usage{
plotWikipathway(pathwayID, host="localhost", port=9000)
}
\arguments{
 \item{pathwayID}{ID of the pathway to plot, such as WP85}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
}
\examples{
#plot the human "ACE Inhibitor" pathway(WP554)
plotWikipathway("WP554")
}
\author{
Egon Willighagen
}
