PathVisioRPC is now published!

Please cite:
Bohler, Anwesha, et al. “Automatically visualise and analyse data on pathways using PathVisioRPC from any programming environment.” BMC bioinformatics 16.1 (2015): 267. doi:[10.1186/s12859-015-0708-8](https://doi.org/10.1186/s12859-015-0708-8)


R package for PathVisioRPC
===============================

The rPathVisio package enables the use of the pathway analysis tool [PathVisio](http://www.pathvisio.org/) and the 
wealth of [WikiPathways](http://wikipathways.org/index.php/WikiPathways) pathways in the R enironment. This package
wraps `xml.rpc()` calls made to the PathVisioRPC Server, which is an XML-RPC based implementation of PathVisio, into 
 an R API that hides more of the technologies of XML-RPC. The package also sets a number of typical defaults 
and performs some argument validation in order to simplify usage and provide better feedback to the user.

There are two packages, one containing the PathVisioRPC archive, and one containing the methods. This is a common 
approach on CRAN, as the jar archive is less likely to change is the wrapping methods.

To check and build a package run:

    R CMD check RPathVisio
    R CMD build RPathVisio
    R CMD INSTALL RPathVisio_x.y.z.tar.gz

Dependencies
============

The pvxmlrpc package depends on the XMLRPC package. It can be installed from
BioConductor with:

    source("http://bioconductor.org/biocLite.R")
    biocLite("XMLRPC")

It also depends on the R package for BridgeDb, available from:

    https://github.com/BiGCAT-UM/bridgedb-r
    
And from BioConductor:

    https://bioconductor.org/packages/release/bioc/html/BridgeDbR.html

