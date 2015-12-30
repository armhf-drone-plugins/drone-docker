# Docker image for the docker plugin
#
#     docker build --rm=true -t armhfplugins/drone-docker .

FROM armhfbuild/docker:1.9.1-dind

RUN ln -s /usr/local/bin/docker /usr/bin/docker

ADD drone-docker /go/bin/
VOLUME /var/lib/docker
ENTRYPOINT ["/go/bin/drone-docker"]
