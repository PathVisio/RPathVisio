R package for PathVisio XML-RPC
===============================

This package wraps xml.rpc() calls into more an R API that hides more of
the technologies of XML-RPC, and focuses on the handling of pathways. It
also sets a number of typical defaults and performs some argument validation
in order to provide better feedback to the user.

There are two packages, one containing the PathVisio-RPC archive, and one
containing the methods. This is a common approach on CRAN, as the jar
archive is less likely to change is the wrapping methods.

To check and build a package run:

R CMD check pvxmlrpclibs
R CMD build pvxmlrpclibs
R CMD INSTALL pvxmlrpclibs_1.x.y.tar.gz

R CMD check pvxmlrpc
R CMD build pvxmlrpc

