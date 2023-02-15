ARG version
ARG version_alpine
ARG version_jdk

FROM docker.io/library/alpine:$version_alpine
FROM docker.io/library/eclipse-temurin:$version_jdk

ENV PATH="/chione/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/java/openjdk/bin"

LABEL "org.opencontainers.image.authors"="Mark Raynsford"
LABEL "org.opencontainers.image.description"="Opinionated Artemis build."
LABEL "org.opencontainers.image.licenses"="ISC"
LABEL "org.opencontainers.image.source"="https://www.github.com/io7m/chione"
LABEL "org.opencontainers.image.title"="Chione"
LABEL "org.opencontainers.image.url"="https://www.github.com/io7m/chione"
LABEL "org.opencontainers.image.version"="$version"

COPY chione     /chione/bin/chione
COPY chione.jar /chione/lib/chione.jar

VOLUME "/chione/etc"
VOLUME "/chione/var"

CMD ["/chione/bin/chione"]
