#!/bin/bash

# Test auth
if ! gsutil ls > /dev/null 2>&1; then
    echo "I don't think you are logged in. Try: "
    echo "> gcloud auth login"
    exit
fi

if [ -z "$(gcloud config get-value project)" ]; then
    echo "This script runs off default project"
    echo "Default project is not set. Try:"
    echo "> gcloud config set project <PROJECT_ID>"
    exit
fi

set -x 

# make bucket
gsutil mb -l australia-southeast2 gs://alanlo-cli-1
gsutil ls

# upload file
gsutil cp test.jpg gs://alanlo-cli-1/ 
gsutil ls gs://alanlo-cli-1/

# download file
gsutil cp gs://alanlo-cli-1/test.jpg download.jpg
ls
rm download.jpg

# rename file in bucket
gsutil mv gs://alanlo-cli-1/test.jpg gs://alanlo-cli-1/test2.jpg
gsutil ls gs://alanlo-cli-1/

# remove file from bucket
gsutil rm gs://alanlo-cli-1/test2.jpg
gsutil ls gs://alanlo-cli-1/

# remove bucket
gsutil rb gs://alanlo-cli-1
gsutil ls
