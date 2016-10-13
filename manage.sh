#!/usr/bin/env bash

TAGVER=0.0.1
IMAGENAME=nodejs-docker


function docker-build {
    . utils.sh build name=${IMAGENAME} tag=${TAGVER}
}

function docker-publish {
    docker-build
    . utils.sh publish name=${IMAGENAME} tag=${TAGVER} imageid=${builded_image_id}
}

$@