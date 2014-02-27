R package for PathVisioRPC
===============================

The rPathVisio package enables the use of the pathway analysis tool PathVisio(http://www.pathvisio.org/) and the 
wealth of Wikipathways(http://wikipathways.org/index.php/WikiPathways) pathways in the R enironment. This package
wraps xml.rpc() calls made to the PathVisioRPC Server, which is an XML-RPC based implementation of PathVisio, into 
 an R API that hides more of the technologies of XML-RPC. The package also sets a number of typical defaults 
and performs some argument validation in order to simplify usage and provide better feedback to the user.

There are two packages, one containing the PathVisioRPC archive, and one containing the methods. This is a common 
approach on CRAN, as the jar archive is less likely to change is the wrapping methods.

To check and build a package run:

    R CMD check pvxmlrpclibs
    R CMD build pvxmlrpclibs
    R CMD INSTALL pvxmlrpclibs_1.x.y.tar.gz
    
    R CMD check pvxmlrpc
    R CMD build pvxmlrpc

To create the vignette:

    rm -f ./pvxmlrpc/inst/doc/tutorial.pdf; R CMD build pvxmlrpc; tar xvf pvxmlrpc_1.0.1.tar.gz pvxmlrpc/inst/doc/tutorial.pdf


Dependencies
============

The pvxmlrpc package depends on the XMLRPC package. It can be installed from
BioConductor with:

    source("http://bioconductor.org/biocLite.R")
    biocLite("XMLRPC")
