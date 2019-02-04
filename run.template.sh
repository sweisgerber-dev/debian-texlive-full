#!/usr/bin/env bash
HOSTNAME="debian-texlive-full"
HOST_PATH_1="/PATH/TO/latex/PROJECT_01"
DOCKER_PATH_1="/workspace"

docker run -ti \
    --hostname ${HOSTNAME} \
    --volume ${HOST_PATH_1}:${DOCKER_PATH_1} \
    debian-texlive-full:latest
