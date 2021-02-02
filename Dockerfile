FROM tomcat
MAINTAINER guru guru@guru.com
WORKDIR /usr/local/tomcat/webapps
RUN mkdir hello
WORKDIR hello
COPY myapp .
# entire directory content will be copied to hello directory
EXPOSE 8080

#not going to use cmd / entrypoint for parent process because tomcat already have its own PP to start tomcat webapp server
