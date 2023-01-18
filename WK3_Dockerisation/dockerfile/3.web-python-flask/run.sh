#!/bin/bash
set -e

cd "$(dirname "$0")"
docker network create -d bridge --subnet 172.25.0.0/16 mynet
echo "Building image ..."
docker build -t jr/web-citymatcher .

echo
echo "Running container ..."
echo "Please open http://localhost?city=au to search cities whose name contains 'au'."
docker run  --network mynet --network-alias citymatcher --name citymatcher -d --rm -p 80:80 jr/web-citymatcher
