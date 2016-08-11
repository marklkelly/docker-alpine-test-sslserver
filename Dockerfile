##########################################################################
# Image: marklkelly/testsslserver
# See: https://github.com/pornin/TestSSLServer/
##########################################################################
FROM frolvlad/alpine-mono

#Update certifcates and install wget
RUN apk update ca-certificates && apk add ca-certificates
RUN apk update && apk add wget

#Get TestSSLServer, unpack and compile
RUN wget -O TestSSLServer-master.gz https://codeload.github.com/pornin/TestSSLServer/tar.gz/master
RUN tar xvf TestSSLServer-master.gz
WORKDIR TestSSLServer-master
RUN sh build.sh


ENTRYPOINT ["mono", "/TestSSLServer-master/TestSSLServer.exe"]