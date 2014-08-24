#!/bin/bash

# source the constants file
DIR="$( cd "$( dirname "$0" )" && pwd )"
. $DIR/constants.sh

# grab image name from the first argument
IMAGE_NAME=$1

# build docker image
docker build -t $IMAGE_NAME:$VERSION .