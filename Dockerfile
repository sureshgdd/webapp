FROM ubuntu:18.04
MAINTAINER gaddamidisuresh.1994@gmail.com
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat/
RUN apt update 
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.tar.gz   /opt/tomcat
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.64/* /opt/tomcat/.
RUN apt install openjdk-8-jdk -y
COPY /var/lib/jenkins/workspace/webapp/target/Example-0.0.1-SNAPSHOT.war /opt/tomcat/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/startup.sh","run"]
