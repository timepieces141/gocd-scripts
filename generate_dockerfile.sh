#!/bin/bash

# exit on any error
set -e

# first argument is the path to the dockerfile.template
TEMPLATE=$1
if [ ! -f "$TEMPLATE" ]; then
	echo "Template file given either doesn't exist or is not a file"
	exit 1
fi
shift

# VERSION is always handled by this script, the value sourced by constants.sh
 DIR="$( cd "$( dirname "$0" )" && pwd )"
.  $DIR/constants.sh

# copy template locally as "Dockerfile"
cp $TEMPLATE Dockerfile

# perform version sed
echo "Changing the Version of the Dockerfile to $VERSION"
sed -i "s/<<VERSION>>/$VERSION/g" Dockerfile

# loop through the rest of the replacement pairs and perform the sed operation
while [ "$1" != "" ]; do
	# double escape forward slashes
	ESCAPED="${1//\//\\/}"
	echo "Changing <<${ESCAPED%=*}>> to ${ESCAPED#*=}"
	sed -i "s/<<${ESCAPED%=*}>>/${ESCAPED#*=}/g" Dockerfile
	shift
done
