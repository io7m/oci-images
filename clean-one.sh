#!/bin/sh -ex

fatal()
{
  echo "fatal: $1" 1>&2
  exit 1
}

if [ $# -ne 1 ]
then
  echo "usage: project" 1>&2
  exit 1
fi

PROJECT="$1"
shift

cd "${PROJECT}" ||
  fatal "could not switch to ${PROJECT}"

FILES=$(cat clean.txt)

if [ ! -z "${FILES}" ]
then
  rm -rv ${FILES}
fi
