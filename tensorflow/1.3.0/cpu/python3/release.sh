#!/usr/bin/env bash

export ORG="bluelens"
export IMAGE="tensorflow"
export TAG="1.3.0-py3"

docker login

docker build -t $IMAGE:$TAG .
docker tag $IMAGE:$TAG $ORG/$IMAGE:$TAG
docker push $ORG/$IMAGE:$TAG
