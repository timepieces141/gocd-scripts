#!/bin/bash

# source the constants file
DIR="$( cd "$( dirname "$0" )" && pwd )"
. $DIR/constants.sh

# using maven versions plugin, set the version
echo "Setting pom.xml to version $VERSION"
mvn versions:set -DnewVersion=$VERSION
