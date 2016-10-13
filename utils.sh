#!/usr/bin/env bash

echo "Image Version: "$TAGVER
echo "Image Name: "$IMAGENAME

function build {
    local dockerfile name tag # reset named parameters first
    local "${@}"
    local current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    echo 'Name function parameters: '${@}
    echo 'Current script path: '${current_dir}
    echo 'Current path: '${PWD}
    if [ -Z ${dockerfile} ]; then
        dockerfile=Dockerfile
    fi
    if [ -f ${current_dir}/entrypoint.sh ]; then
        chmod -c a+rwx ${current_dir}/entrypoint.sh
    fi
    if [ -f ${current_dir}/build.log ]; then
        rm ${current_dir}/build.log
    fi
    echo "Building Docker ${name}:${tag}"
    docker build -t ${name}:${tag} -f ${current_dir}/${dockerfile} . | tee build.log || exit 1
    builded_image_id=$(tail -1 build.log | awk '{print $3;}')
    echo ${builded_image_id}
}


$@
