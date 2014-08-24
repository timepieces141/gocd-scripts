#!/bin/bash

# This file serves to provide constants needed across all the scripts. Mainly
# this is to povide the current spiral and sprint, which are used as the major
# and minor version, respectively, when constructing the semantic version
# string.

CURRENT_SPIRAL=3
CURRENT_SPRINT=3
VERSION="$CURRENT_SPIRAL.$CURRENT_SPRINT.$GO_PIPELINE_COUNTER"