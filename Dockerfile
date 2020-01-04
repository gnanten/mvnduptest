FROM centos
MAINTAINER Ajay
RUN cat /etc/*release
RUN mkdir /home/ajay
WORKDIR /home/ajay
COPY apache-tomcat-8.5.50 /home/ajay/
CMD ["sh","/home/ajay/apache-tomcat-8.5.50/bin/catalina.sh","start"]
