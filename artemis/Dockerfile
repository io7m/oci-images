ARG version
ARG version_alpine
ARG version_jdk

FROM docker.io/library/alpine:$version_alpine
FROM docker.io/library/eclipse-temurin:$version_jdk

ENV PATH="/broker/bin:/artemis/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/java/openjdk/bin"
ENV ARTEMIS_HOME="/artemis"
ENV ARTEMIS_BROKER_HOME="/broker"

LABEL "org.opencontainers.image.authors"="Mark Raynsford"
LABEL "org.opencontainers.image.description"="Apache Artemis message broker."
LABEL "org.opencontainers.image.licenses"="ISC"
LABEL "org.opencontainers.image.source"="https://github.com/apache/activemq-artemis"
LABEL "org.opencontainers.image.title"="Apache Artemis"
LABEL "org.opencontainers.image.url"="https://github.com/apache/activemq-artemis"
LABEL "org.opencontainers.image.version"="$version"

COPY artemis /artemis

RUN /artemis/bin/artemis create \
    --user artemis \
    --password artemis \
    --require-login \
    /broker

VOLUME "/broker/log"
VOLUME "/broker/data"
VOLUME "/broker/etc"

CMD ["/broker/bin/artemis", "run"]
