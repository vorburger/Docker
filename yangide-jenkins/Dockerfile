FROM jenkins
# TODO jenkins:alpine ?  
MAINTAINER Michael Vorburger <vorburger@redhat.com>

USER root
ADD http://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz /usr/share/
RUN cd /usr/share/ ; tar xvzf apache-maven-3.3.9-bin.tar.gz
RUN rm /usr/share/apache-maven-3.3.9-bin.tar.gz
RUN ln -s /usr/share/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn
USER jenkins

COPY jobs/yangide/config.xml /usr/share/jenkins/ref/jobs/yangide/config.xml
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

# broke again ;( due to a weird Jenkins hudson.remoting.RequestAbortedException: java.io.StreamCorruptedException: invalid stream header: 0A0A0A0A
# COPY integrationtest.sh /usr/share/jenkins/integrationtest.sh
# RUN /usr/share/jenkins/integrationtest.sh
