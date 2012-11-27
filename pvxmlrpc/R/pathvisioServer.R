pathvisioServer <- function(port=9000) {
  server = .jnew("org/pathvisio/xmlrpc/RpcServer")
  port = .jcall(server, "I", "startServer", as.integer(port))
  #paste("http://localhost:", port, "/", sep="") 
  port
}
