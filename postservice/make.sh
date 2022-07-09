#!/bin/sh -ex

VERSION=$(head -n 1 version.txt)

exec docker build \
--build-arg "version=${VERSION}" \
-t "io7m/postservice:${VERSION}" .
