FROM centos
MAINTAINER Ajay
RUN cat /etc/*release
RUN mkdir /home/ajay
COPY /opt/apache-tomcat-8.5.50.tar.gz /home/ajay/
RUN tar -xzf /home/ajay/apache-tomcat-8.5.50.tar.gz
COPY /opt/apache-tomcat-8.5.50/conf/tomcat-users.xml /home/ajay/apache-tomcat-8.5.50/conf/tomcat-users.xml
COPY /opt/apache-tomcat-8.5.50/webapps/host-manager/META-INF/context.xml /home/ajay/apache-tomcat-8.5.50/webapps/host-manager/META-INF/context.xml
COPY /opt/apache-tomcat-8.5.50/webapps/manager/META-INF/context.xml /home/ajay/apache-tomcat-8.5.50/webapps/manager/META-INF/context.xml
RUN PATH=/home/ajay/apache-tomcat-8.5.50/bin:$PATH
CMD ["catalina.sh","start"]
