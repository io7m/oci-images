ARG version
ARG version_alpine
ARG version_jdk

FROM docker.io/library/alpine:$version_alpine
FROM docker.io/library/eclipse-temurin:$version_jdk

ENV PATH="/mesquida/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/java/openjdk/bin"
ENV MESQUIDA_HOME="/mesquida"

COPY mesquida /mesquida

LABEL "org.opencontainers.image.authors"="Mark Raynsford"
LABEL "org.opencontainers.image.description"="Live stream announcement system."
LABEL "org.opencontainers.image.licenses"="ISC"
LABEL "org.opencontainers.image.source"="https://www.github.com/io7m/mesquida"
LABEL "org.opencontainers.image.title"="Mesquida"
LABEL "org.opencontainers.image.url"="https://www.io7m.com/software/mesquida"
LABEL "org.opencontainers.image.version"="$version"

VOLUME "/mesquida/etc"
VOLUME "/mesquida/var"

CMD ["/mesquida/bin/mesquida"]
