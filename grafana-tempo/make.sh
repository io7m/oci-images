#!/bin/sh -ex

VERSION=$(head -n 1 version.txt)

wget -c -O "tempo_${VERSION}_linux_amd64.tar.gz" "https://github.com/grafana/tempo/releases/download/v${VERSION}/tempo_${VERSION}_linux_amd64.tar.gz"
wget -c -O checksums "https://github.com/grafana/tempo/releases/download/v${VERSION}/SHA256SUMS"

sha256sum --ignore-missing -c checksums

mv "tempo_${VERSION}_linux_amd64.tar.gz" "dist.tar.gz"

mkdir -p tempo/bin
mkdir -p tempo/etc
mkdir -p tempo/var

tar -x -f "dist.tar.gz" --one-top-level=tempo/bin

exec podman build \
--build-arg "version=${VERSION}" \
--iidfile image-id.txt \
-t "quay.io/io7mcom/grafana-tempo:${VERSION}" .
