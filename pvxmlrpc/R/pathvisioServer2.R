pathvisioServer2 <- function(port=9000) {
  server = .jnew("org/pathvisio/xmlrpc/JavaServer")
  start = .jcall(server, "V", "main", c(port,""))
  paste("http://localhost:", port, "/", sep="") 
  port
}
