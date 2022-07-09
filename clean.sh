#!/bin/sh -ex

for p in $(cat projects.txt)
do
  ./clean-one.sh "${p}"
done
