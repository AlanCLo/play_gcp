#!/bin/sh

set -x

gcloud dataproc jobs list --cluster second-testcluster --region australia-southeast1

echo "then do something like: gcloud dataproc jobs wait 499971e69b1e4c5d9338b36a8a499892"
