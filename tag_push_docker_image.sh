#!/bin/bash

# source the constants file
DIR="$( cd "$( dirname "$0" )" && pwd )"
. $DIR/constants.sh

# grab image name from the first argument
IMAGE_NAME=$1

# tag image as latest and push to the registry
docker tag $IMAGE_NAME:$VERSION $IMAGE_NAME:latest
docker push $IMAGE_NAME