ARG version
ARG version_alpine
ARG version_jdk

FROM docker.io/library/alpine:$version_alpine
FROM docker.io/library/eclipse-temurin:$version_jdk

ENV PATH="/idstore/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/java/openjdk/bin"
ENV IDSTORE_SERVER_HOME="/idstore"
ENV IDSTORE_SERVER_LOG_DIRECTORY="${IDSTORE_SERVER_HOME}/var/log"

COPY idstore /idstore

LABEL "org.opencontainers.image.authors"="Mark Raynsford"
LABEL "org.opencontainers.image.description"="Identity server"
LABEL "org.opencontainers.image.licenses"="ISC"
LABEL "org.opencontainers.image.source"="https://www.github.com/io7m/idstore"
LABEL "org.opencontainers.image.title"="Idstore"
LABEL "org.opencontainers.image.url"="https://www.io7m.com/software/idstore"
LABEL "org.opencontainers.image.version"="$version"

VOLUME "/idstore/etc"
VOLUME "/idstore/var"

CMD ["/idstore/bin/idstore"]
