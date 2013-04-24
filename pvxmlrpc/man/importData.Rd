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
importData(name, dataframe, dbname, host="localhost", port=9000, filepath=NA, dbpath=NA, outputdir=NA, row.names=TRUE, source=NA) 
importDataByFile(filename, dbname, host="localhost", port=9000, filepath=NA, dbpath=NA, outputdir=NA)
}
\arguments{
 \item{name}{name for the pgex file created}
 \item{dataframe}{Data frame with the data for the pgex file}
 \item{filename}{name of the data file (if there's no "." in the name, ".txt" is used as file extension)}
 \item{dbname}{name of the database file (if there's no "." in the name, ".bridge" is used as file extension)}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{filepath}{folder in which the tab delimited file is stored}
 \item{dbpath}{folder in which the database file is stored}
 \item{outputdir}{folder in which the results are saved}
 \item{row.names}{boolean expression, if "TRUE" the rownames in the dataframe will be seen as the identifier column, if "FALSE" the first column is seen as the identifier column}
 \item{source}{the datasource of the identifiers used, both the full name and the system code can be used}
}
\examples{
# import the dataframe object called dataframe and give the file the name "data" using the "Hs_Derby.bridge" database file and the source of the identifiers is "GeneWiki"
\dontrun{importData("data",dataframe,"Hs_Derby",source="Gene Wiki")}

# import a file called "data.txt"
\dontrun{importData("data.txt","Hs_Derby")}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans
}