#!/bin/bash
set -e

CURRENT_DIR=$(pwd)

echo "Current directory: " $CURRENT_DIR

#echo "Installing app dependencies..."
#npm config set registry http://registry.npmjs.org
#npm install --prod

while : ; do
    echo 'Holding container...'
    sleep 10s
done


echo "Starting application..."
exec "$@"

