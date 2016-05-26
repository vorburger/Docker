Dockerfile with ready made build environment for OpenDaylight, based on Fedora.

   docker build -t vorburger/opendaylight-build-fedora .

   docker run --rm vorburger/opendaylight-build-fedora /bin/bash -c "git clone https://git.opendaylight.org/gerrit/p/yangtools.git; cd yangtools; mvn install"


