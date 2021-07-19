#!/bin/bash

set -x

# Expand (change state to) this absolute value of 2 instances
gcloud dataproc clusters update second-testcluster --num-secondary-workers 2

# Change state to zero instances
# gcloud dataproc clusters update second-testcluster --num-secondary-workers 0
