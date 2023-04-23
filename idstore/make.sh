#!/bin/sh -ex

VERSION=$(head -n 1 version.txt)
VERSION_ALPINE=$(head -n 1 version_alpine.txt)
VERSION_JDK=$(head -n 1 version_jdk.txt)

wget -c -O dist.zip "https://repo1.maven.org/maven2/com/io7m/idstore/com.io7m.idstore.server.main/${VERSION}/com.io7m.idstore.server.main-${VERSION}-distribution.zip"
wget -c -O dist.zip.asc "https://repo1.maven.org/maven2/com/io7m/idstore/com.io7m.idstore.server.main/${VERSION}/com.io7m.idstore.server.main-${VERSION}-distribution.zip.asc"
gpg --verify dist.zip.asc
unzip -o dist.zip

exec docker build \
--build-arg "version=${VERSION}" \
--build-arg "version_alpine=${VERSION_ALPINE}" \
--build-arg "version_jdk=${VERSION_JDK}" \
-t "io7m/idstore:${VERSION}" .
