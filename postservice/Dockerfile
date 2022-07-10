ARG version

FROM docker.io/library/alpine:3.16.0

ENV PATH="/sbin:/bin:/usr/sbin:/usr/bin"

LABEL "org.opencontainers.image.authors"="Mark Raynsford"
LABEL "org.opencontainers.image.description"="A mail appliance with Postfix, Dovecot, and OpenDKIM"
LABEL "org.opencontainers.image.licenses"="ISC"
LABEL "org.opencontainers.image.source"="https://www.github.com/io7m/oci-images"
LABEL "org.opencontainers.image.title"="Postservice"
LABEL "org.opencontainers.image.url"="https://www.io7m.com/software/oci-images"
LABEL "org.opencontainers.image.version"="$version"

RUN apk update

RUN apk add ca-certificates-bundle
RUN apk add dovecot
RUN apk add opendkim
RUN apk add postfix
RUN apk add runit
RUN apk add supercronic

RUN mkdir /mail

COPY etc/crontab /etc/crontab
COPY service /var/service
COPY mail/bin /mail/bin

RUN ln -sf /var/service /service
RUN rm /etc/ssl/dovecot/server.key

VOLUME "/mail/etc"
VOLUME "/mail/log"
VOLUME "/mail/home"

HEALTHCHECK \
  --interval=30s \
  --timeout=5s \
  --start-period=5s \
  --retries=3 \
  CMD "/mail/bin/healthcheck"

ENTRYPOINT ["/sbin/runsvdir", "/service"]
