FROM ubuntu:latest
LABEL maintainer_name:Venkatesh
LABEL maintainer_version:1.0
RUN apt-get update && apt-get install tomcat:latest  
WORKDIR /usr/local/tomcat
EXPOSE 8081
CMD ["catalina.sh", "run"]
