ARG version
ARG version_alpine
ARG version_curl

FROM docker.io/library/alpine:$version_alpine
FROM curlimages/curl:$version_curl

ENV PATH="/sbin:/bin:/usr/sbin:/usr/bin"

COPY rtsp-simple-server /rtsp-simple-server

LABEL "org.opencontainers.image.authors"="Mark Raynsford"
LABEL "org.opencontainers.image.description"="RTSP server."
LABEL "org.opencontainers.image.title"="rtsp-server"
LABEL "org.opencontainers.image.version"="$version"

CMD ["/rtsp-simple-server"]
