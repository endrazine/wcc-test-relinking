#!/bin/bash

docker buildx build --load . -t wcc:14.04 -f Dockerfile.14.04

docker buildx build --load . -f Dockerfile-16.04 -t wcc:16.04 --build-arg VERSION=16.04
docker buildx build --load . -f Dockerfile-18.04 -t wcc:18.04 --build-arg VERSION=18.04
docker buildx build --load . -f Dockerfile-20.04 -t wcc:20.04 --build-arg VERSION=20.04
docker buildx build --load . -t wcc:22.04 --build-arg VERSION=22.04
docker buildx build --load . -t wcc:24.04 --build-arg VERSION=24.04
docker buildx build --load . -f Dockerfile-26.04 -t wcc:26.04 --build-arg VERSION=26.04
docker buildx build --load . -f Dockerfile-26.10 -t wcc:26.10 --build-arg VERSION=26.10

docker build . -t wcc:alpine-test -f Dockerfile-alpine
