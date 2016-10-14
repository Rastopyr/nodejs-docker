#!/bin/bash
set -e

CURRENT_DIR=$(pwd)

echo "Current directory: " $CURRENT_DIR

#echo "Installing app dependencies..."
#npm config set registry http://registry.npmjs.org
#npm install --prod


echo "Starting application..."
exec "$@"

