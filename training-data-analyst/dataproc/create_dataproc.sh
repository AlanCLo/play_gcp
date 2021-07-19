#!/bin/bash

set -x

gcloud dataproc clusters create second-testcluster \
    --region australia-southeast1 \
    --zone australia-southeast1-c \
    --master-machine-type n1-standard-1 \
    --master-boot-disk-size 50 \
    --num-workers 2 \
    --worker-machine-type n1-standard-1 \
    --worker-boot-disk-size 50 
