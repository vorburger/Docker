FROM fedora
MAINTAINER Michael Vorburger <vorburger@redhat.com>

# Inspired by https://github.com/fedora-cloud/Fedora-Dockerfiles/blob/master/java-openjdk-8/Dockerfile

RUN dnf -y update && dnf clean all
RUN dnf -y install procps-ng tar gzip java java-devel && dnf clean all
ENV JAVA_HOME /usr/lib/jvm/java-openjdk


# Inspired by https://github.com/sonatype/docker-nexus/blob/master/oss/Dockerfile

ENV NEXUS_VERSION 2.13.0-01
ENV RUN_AS_USER root
RUN mkdir -p /opt/sonatype/nexus \
  && curl --fail --silent --location --retry 3 \
    https://download.sonatype.com/nexus/oss/nexus-${NEXUS_VERSION}-bundle.tar.gz \
  | gunzip \
  | tar x -C /tmp nexus-${NEXUS_VERSION} \
  && mv /tmp/nexus-${NEXUS_VERSION}/* /opt/sonatype/nexus/ \
  && rm -rf /tmp/nexus-${NEXUS_VERSION}

EXPOSE 8081

CMD /opt/sonatype/nexus/bin/nexus console

