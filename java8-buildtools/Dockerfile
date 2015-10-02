FROM java:openjdk-8-jdk
MAINTAINER Michael Vorburger <mike@vorburger.ch>

# Workaround for https://github.com/docker/docker/issues/9299
ENV TERM xterm

COPY selftest/* /build/
RUN cd /build && rm *.class && ls -l /build && pwd && /build/selftest.sh && rm -rf /build

