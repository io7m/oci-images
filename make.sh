#!/bin/sh -ex

for p in $(cat projects.txt)
do
  ./make-one.sh "${p}"
done
