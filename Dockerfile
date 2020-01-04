FROM centos
MAINTAINER Ajay
RUN cat /etc/*release
RUN mkdir /home/ajay
WORKDIR /home/ajay
COPY apache-tomcat-8.5.50/ apache-tomcat-8.5.50/
CMD ["sh","/home/ajay/apache-tomcat-8.5.50/bin/catalina.sh","start"]
