#!/bin/bash

#set -x

FILENAME=$(basename $1 | tr -d [_\\-:])
DIRNAME=$(dirname $1)
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mv "$1" "${DIRNAME}/${DATE}_${FILENAME}"
