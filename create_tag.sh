#!/bin/bash

# source the constants file
DIR="$( cd "$( dirname "$0" )" && pwd )"
. $DIR/constants.sh

# create the tag
echo "Tagging as $VERSION"
git tag $VERSION
