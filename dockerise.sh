#!/usr/bin/env bash
set -e
docker login -u star2star -p $DOCKER_PASSWORD
docker build -t star2star/cicd-demo:$BUILD_NUMBER .
docker push star2star/cicd-demo:$BUILD_NUMBER
