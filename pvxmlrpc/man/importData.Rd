\name{importData}
\alias{importData}
\alias{importDataByFile}
\title{
Import a data file.
}
\description{
Import a data frame or tab delimited data file into PathVisioRPC and create a pgex file.
}
\usage{
importData(name,table, dbname, host="localhost", port=9000, dbpath=NA, outputdir=NA) 
importDataByFile(filename, dbname, host="localhost", port=9000, filepath=NA, dbpath=NA, outputdir=NA)
}
\arguments{
 \item{name}{name for the pgex file created}
 \item{table}{Data frame with the data for the pgex file}
 \item{filename}{name of the data file (if there's no "." in the name, ".txt" is used as file extension)}
 \item{dbname}{name of the database file (if there's no "." in the name, ".bridge" is used as file extension)}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{filepath}{folder in which the tab delimited file is stored}
 \item{dbpath}{folder in which the database file is stored}
 \item{outputdir}{folder in which the results are saved}
}
\author{
Christ Leemans
}