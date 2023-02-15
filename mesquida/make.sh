#!/bin/sh -ex

VERSION=$(head -n 1 version.txt)
VERSION_ALPINE=$(head -n 1 version_alpine.txt)
VERSION_JDK=$(head -n 1 version_jdk.txt)

wget -c -O dist.zip "https://repo1.maven.org/maven2/com/io7m/mesquida/com.io7m.mesquida/${VERSION}/com.io7m.mesquida-${VERSION}-distribution.zip"
wget -c -O dist.zip.asc "https://repo1.maven.org/maven2/com/io7m/mesquida/com.io7m.mesquida/${VERSION}/com.io7m.mesquida-${VERSION}-distribution.zip.asc"
gpg --verify dist.zip.asc
unzip -o dist.zip

exec docker build \
--build-arg "version=${VERSION}" \
--build-arg "version_alpine=${VERSION_ALPINE}" \
--build-arg "version_jdk=${VERSION_JDK}" \
--iidfile image-id.txt \
-t "io7m/mesquida:${VERSION}" .
