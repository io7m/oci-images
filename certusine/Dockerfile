ARG version
ARG version_alpine
ARG version_jdk

FROM docker.io/library/alpine:$version_alpine
FROM docker.io/library/eclipse-temurin:$version_jdk

ENV PATH="/certusine/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/java/openjdk/bin"
ENV CERTUSINE_HOME="/certusine"

COPY certusine /certusine

LABEL "org.opencontainers.image.authors"="Mark Raynsford"
LABEL "org.opencontainers.image.description"="ACME Client"
LABEL "org.opencontainers.image.licenses"="ISC"
LABEL "org.opencontainers.image.source"="https://www.github.com/io7m/certusine"
LABEL "org.opencontainers.image.title"="Certusine"
LABEL "org.opencontainers.image.url"="https://www.io7m.com/software/certusine"
LABEL "org.opencontainers.image.version"="$version"

VOLUME "/certusine/etc"
VOLUME "/certusine/var"

CMD ["/certusine/bin/certusine"]
