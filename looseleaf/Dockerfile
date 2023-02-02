ARG version
ARG version_alpine
ARG version_jdk

FROM docker.io/library/alpine:$version_alpine
FROM docker.io/library/eclipse-temurin:$version_jdk

ENV PATH="/looseleaf/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/java/openjdk/bin"
ENV LOOSELEAF_HOME="/looseleaf"
ENV LOOSELEAF_PORT=20000

COPY looseleaf /looseleaf

LABEL "org.opencontainers.image.authors"="Mark Raynsford"
LABEL "org.opencontainers.image.description"="Minimalist transactional HTTP key/value store"
LABEL "org.opencontainers.image.licenses"="ISC"
LABEL "org.opencontainers.image.source"="https://www.github.com/io7m/looseleaf"
LABEL "org.opencontainers.image.title"="Looseleaf"
LABEL "org.opencontainers.image.url"="https://www.io7m.com/software/looseleaf"
LABEL "org.opencontainers.image.version"="$version"

VOLUME "/looseleaf/etc"
VOLUME "/looseleaf/var"

HEALTHCHECK CMD /usr/bin/wget -q -O - http://localhost:${LOOSELEAF_PORT}/health || exit 1

CMD ["/looseleaf/bin/looseleaf"]
