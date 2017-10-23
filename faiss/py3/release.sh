#!/usr/bin/env bash

export ORG="bluelens"
export IMAGE="faiss:ubuntu16-py3"

docker login

docker build -t $IMAGE .
docker tag $IMAGE $ORG/$IMAGE
docker push $ORG/$IMAGE
