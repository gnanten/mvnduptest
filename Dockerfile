FROM centos
MAINTAINER Ajay
RUN cat /etc/*release
RUN mkdir /home/ajay
WORKDIR /home/ajay
COPY apache-tomcat-8.5.50/ apache-tomcat-8.5.50/
COPY jdk1.8.0_231/ jdk1.8.0_231/
RUN PATH=/home/ajay/jdk1.8.0_231/bin:/home/ajay/apache-tomcat-8.5.50/bin:$PATH
CMD ["/home/ajay/apache-tomcat-8.5.50/bin/catalina.sh","start"]
