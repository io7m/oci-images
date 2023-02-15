#!/bin/sh -ex

VERSION=$(head -n 1 version.txt)
VERSION_ALPINE=$(head -n 1 version_alpine.txt)
VERSION_JDK=$(head -n 1 version_jdk.txt)

wget -O chione.jar "https://repo1.maven.org/maven2/com/io7m/chione/com.io7m.chione/${VERSION}/com.io7m.chione-${VERSION}-main.jar"
wget -O chione.jar.asc "https://repo1.maven.org/maven2/com/io7m/chione/com.io7m.chione/${VERSION}/com.io7m.chione-${VERSION}-main.jar.asc"

gpg --verify chione.jar.asc

exec docker build \
--build-arg "version=${VERSION}" \
--build-arg "version_alpine=${VERSION_ALPINE}" \
--build-arg "version_jdk=${VERSION_JDK}" \
--iidfile image-id.txt \
-t "io7m/chione:${VERSION}" .
