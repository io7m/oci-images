#!/bin/sh -ex

VERSION=$(head -n 1 version.txt)
VERSION_ALPINE=$(head -n 1 version_alpine.txt)
VERSION_JDK=$(head -n 1 version_jdk.txt)

wget -c -O dist.zip "https://dlcdn.apache.org/activemq/activemq-artemis/${VERSION}/apache-artemis-${VERSION}-bin.zip"
wget -c -O dist.zip.asc "https://dlcdn.apache.org/activemq/activemq-artemis/${VERSION}/apache-artemis-${VERSION}-bin.zip.asc"

gpg --verify dist.zip.asc

unzip -o dist.zip

rm -rfv artemis

mv "apache-artemis-${VERSION}" artemis

exec docker build \
--build-arg "version=${VERSION}" \
--build-arg "version_alpine=${VERSION_ALPINE}" \
--build-arg "version_jdk=${VERSION_JDK}" \
--iidfile image-id.txt \
-t "io7m/artemis:${VERSION}" .
