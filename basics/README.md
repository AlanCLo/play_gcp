# The absolute basics of CLI

## Install
https://cloud.google.com/sdk/docs/install

```sh
brew install --cask google-cloud-sdk

### or ###

curl https://sdk.cloud.google.com | bash
```

## CLI

```sh
# Login
gcloud auth login

# List available projects
gcloud project list

# Set a default project
gcloud config set project <PROJECT_ID>
```