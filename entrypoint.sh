#!/bin/bash
set -e

CURRENT_DIR=$(pwd)

echo "Current directory: " $CURRENT_DIR

echo "Starting application..."
exec "$@"

