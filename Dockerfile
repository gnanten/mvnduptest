FROM centos
MAINTAINER Ajay
RUN cat /etc/*release
RUN mkdir /home/ajay
COPY apache-tomcat-8.5.50 /home/ajay/
RUN PATH=/home/ajay/apache-tomcat-8.5.50/bin:$PATH
CMD ["catalina.sh","start"]
