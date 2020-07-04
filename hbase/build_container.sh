#!/bin/bash

set -x

if [ "$#" -ne 1 ]; then
  echo "Pass version as argument"
  exit 1
fi

# $1=2.2.5

if [ ! -f hbase-$1-bin.tar.gz ]; then
  curl -LO "https://archive.apache.org/dist/hbase/$1/hbase-$1-bin.tar.gz"
fi
tar xfz hbase-$1-bin.tar.gz
if [ -d hbase ]; then
  rm -r hbase
fi
mv hbase-$1 hbase

echo "Building docker hbase version: $1"
export DOCKER_BUILDKIT=1
docker build . --tag rda3mon/hbase:$1 -f Dockerfile
if [ -d hbase ]; then
  rm -r hbase
fi
