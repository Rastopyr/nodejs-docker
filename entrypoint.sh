#!/bin/bash
set -e

CURRENT_DIR=$(pwd)

cp package.json /install
cd /install
npm config set registry http://registry.npmjs.org/ \
    && npm install --prod

cd ${CURRENT_DIR}

echo "Current directory: " $CURRENT_DIR

#echo "Installing app dependencies..."
#npm config set registry http://registry.npmjs.org
#npm install --prod


echo "Starting application..."
exec "$@"

