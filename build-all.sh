#!/bin/bash

docker buildx build --load . -t wcc:14.04 -f Dockerfile.14.04

docker buildx build --load . -t wcc:16.04 --build-arg VERSION=16.04
docker buildx build --load . -t wcc:18.04 --build-arg VERSION=18.04
docker buildx build --load . -t wcc:20.04 --build-arg VERSION=20.04
docker buildx build --load . -t wcc:22.04 --build-arg VERSION=22.04
docker buildx build --load . -t wcc:24.04 --build-arg VERSION=24.04

docker build . -t wcc:alpine-test -f Dockerfile-alpine
