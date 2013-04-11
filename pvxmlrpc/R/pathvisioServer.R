pathvisioServer <- function(port=9000) {
  #first look if the port is available
  testPort=try(.jnew("java/net/ServerSocket",as.integer(port)),silent=TRUE)
  if(class(testPort)=="try-error") stop("ERROR: Address already in use")
  #close the port that was just opened
  .jcall(testPort,"V","close")

  #start the jar file with the port as variable
  jar = paste(.path.package("pvxmlrpclibs"),"/java/PathVisioRPC.jar",sep="")
  start = system(paste("java -jar",jar,port,"> /dev/null"),wait=FALSE)
  
  #and wait for the port to open
  succes=FALSE
  while(!succes) {
    hostUrl = paste("http://localhost:",port,"/",sep="")
    test = try(xml.rpc(hostUrl,"PathVisio.test"))
    succes=!class(test)=="try-error"
  }
  #server = .jnew("org/pathvisio/xmlrpc/JavaServer")
  #start = .jcall(server, "V", "main", c(port,""))
  #paste("http://localhost:", port, "/", sep="") 
  port
}
