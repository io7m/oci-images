#!/bin/sh -ex

VERSION=$(head -n 1 version.txt)

wget -c -O dist.zip "https://repo1.maven.org/maven2/com/io7m/idstore/com.io7m.idstore.server.main/${VERSION}/com.io7m.idstore.server.main-${VERSION}-distribution.zip"
wget -c -O dist.zip.asc "https://repo1.maven.org/maven2/com/io7m/idstore/com.io7m.idstore.server.main/${VERSION}/com.io7m.idstore.server.main-${VERSION}-distribution.zip.asc"
gpg --verify dist.zip.asc
unzip -o dist.zip

exec docker build \
--build-arg "version=${VERSION}" \
-t "io7m/idstore:${VERSION}" .
