# FROM java:openjdk-8-jdk
FROM maven:3.3.3-jdk-8 
MAINTAINER Michael Vorburger <mike@vorburger.ch>

# Workaround for https://github.com/docker/docker/issues/9299
ENV TERM xterm

ENV ANT_VERSION 1.9.6
ENV ANT_HOME /usr/share/ant

RUN curl -fsSL http://www.eu.apache.org/dist/ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && ls -l /usr/share \
  && mv /usr/share/apache-ant-$ANT_VERSION /usr/share/ant \
  && ln -s /usr/share/ant/bin/ant /usr/bin/ant

COPY selftest/* /build/
RUN cd /build && ./selftest.sh && rm -rf /build

