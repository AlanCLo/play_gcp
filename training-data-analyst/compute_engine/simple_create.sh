#!/bin/bash

DEFAULT_NAME="instance-1"

if [ ! -z "$1" ]; then
    NAME="$1"
else
    NAME="$DEFAULT_NAME"
fi

echo $NAME

set -x
gcloud compute instances create "$NAME" --zone australia-southeast1-c
