FROM centos
MAINTAINER Ajay
RUN cat /etc/*release
WORKDIR /opt
COPY apache-tomcat-8.5.50/ apache-tomcat-8.5.50/
COPY jdk1.8.0_231/ jdk1.8.0_231/
ENV PATH=/opt/jdk1.8.0_231/bin:/opt/apache-tomcat-8.5.50/bin:${PATH}
ENV JAVA_HOME=/opt/jdk1.8.0_231/bin
CMD ["sh","/opt/apache-tomcat-8.5.50/bin/catalina.sh","start"]
