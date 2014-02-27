pathvisioServer <- function(port=9000) {
  ##work around, otherwise the driver can't be found.
  .jnew("org/apache/derby/jdbc/EmbeddedDriver")

  server = .jnew("org/pathvisio/xmlrpc/JavaServer")
  start = .jcall(server, "V", "main", c(port,""))
  paste("http://localhost:", port, "/", sep="") 
  port
}
