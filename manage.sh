#!/usr/bin/env bash

TAGVER=0.0.1
IMAGENAME=nodejs-docker


function docker-build {
    . utils.sh build name=${IMAGENAME} tag=${TAGVER}
}


$@