#!/bin/sh -ex

VERSION=$(head -n 1 version.txt)
VERSION_ALPINE=$(head -n 1 version_alpine.txt)
VERSION_CURL=$(head -n 1 version_curl.txt)

wget -c -O dist.tar.gz "https://github.com/aler9/rtsp-simple-server/releases/download/${VERSION}/rtsp-simple-server_${VERSION}_linux_amd64.tar.gz"
tar xvf dist.tar.gz

exec docker build \
--build-arg "version=${VERSION}" \
--build-arg "version_alpine=${VERSION_ALPINE}" \
--build-arg "version_curl=${VERSION_CURL}" \
--iidfile image-id.txt \
-t "io7m/rtsp-server:${VERSION}" .
