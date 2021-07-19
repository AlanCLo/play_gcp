# cloud storage

Playing around with cloud storage and gsutils

```
### Remember:
### gcloud auth login

# make bucket
gsutil mb -l australia-southeast2 gs://alanlo-cli-1
gsutil ls

# upload file
gsutil cp test.jpg gs://alanlo-cli-1/ 
gsutil ls gs://alanlo-cli-1/

# download file
gsutil cp gs://alanlo-cli-1/test.jpg download.jpg
ls

# rename file in bucket
gsutil mv gs://alanlo-cli-1/test.jpg gs://alanlo-cli-1/test2.jpg
gsutil ls gs://alanlo-cli-1/

# remove file from bucket
gsutil rm gs://alanlo-cli-1/test2.jpg
gsutil ls gs://alanlo-cli-1/

# remove bucket
gsutil rb gs://alanlo-cli-1
gsutil ls
```
