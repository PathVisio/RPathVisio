pathvisioServer <- function(port=9000) {
  .jcall(
    "org/pathvisio/xmlrpc/JavaServer",
    "V", "main", c()
  )
}
