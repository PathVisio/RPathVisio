\name{pathvisioServer}
\alias{pathvisioServer}
\title{
pathvisio Server function
}
\description{
Function for hosting a server which enables the link between R and the pathvisioRpc Jar file
}
\usage{
pathvisioServer(port=9000)
}
\arguments{
 \item{port}{communication port on which PathVisioRPC can be contacted}
}
\examples{
#start a server on port 8080
\dontrun{pathvisioServer(8080)}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans
}