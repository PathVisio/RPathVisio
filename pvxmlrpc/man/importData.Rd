\name{importData}
\alias{importData}
\title{
Import a data file.
}
\description{
Import a tab delimited data file and create a pgex file.
}
\usage{
importData(dataname, dbname, host="localhost", port=9000, datapath=NA, dbpath=NA, outputdir=NA)
}
\arguments{
 \item{dataname}{name of the data file (if there's no "." in the name, ".txt" is used as file extension)}
 \item{dbname}{name of the database file (if there's no "." in the name, ".bridge" is used as file extension)}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{datapath}{folder in which the data file is stored}
 \item{dbpath}{folder in which the database file is stored}
 \item{outputdir}{folder in which the results are saved}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans

Maintainer: Anwesha Dutta <anwesha.dutta@maastrichtuniversity.nl>
<Egon Willighagen <egon.willighagen@gmail.com>
<C.Leemans@student.maastrichtuniversity.nl>
}