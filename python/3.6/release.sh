#!/usr/bin/env bash

export ORG="bluelens"
export IMAGE="tensorflowpython:3.6"

docker login

docker build -t $IMAGE .
docker tag $IMAGE $ORG/$IMAGE
docker push $ORG/$IMAGE
