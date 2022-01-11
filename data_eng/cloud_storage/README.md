# cloud storage

"Object storage for companies of all sizes. Store any amount of data. Retrieve it as often as you’d like"

Features

- Different cost tiers
  - Standard "hot
  - Nearline (30+ days, backup and long-tail multimedia content)
  - Coldline storage (low cost, 90+ days, DR)
  - Archive Storage (lowest cost, 365+ days, Archives)

- Redundancy options
- 

Playing around with cloud storage and gsutils

THINGS TO DO:
* Make some buckets with different properties/configs. Walk through the `gsutil` help and make notes/demos

---


## Uniform bucket-level access

Basically *"Go IAM"*

```
gsutil mb -b on gs://...
```

Default off. When enabled, ONLY allows IAM based access. ACL is switched off.

What happens:

* All ACL access (set, read, modify) for bucket/object fail with 400
* JSON API requests return empty ACL lists in response
* Some `gsutil` commands will fail:
  * `cp -p`, `mv -p` and `rsync -p` when source or destination bucket is uniform. (because -p is preserve ACL)
  * `acl` and `defacl` because they are ACL
* Individual object ownership no longer exist
  * Access is revoked
  * Request for bucket and object metadata won't have `owner` field
* At creation, buckets receive spealised IAM roles: roles/viewer, roles/editor, roles/owner
  * If you convert an existing bucket, you have to add these roles yourself

When do use Uniform bucket-level access?

* It is now the recommended way to use Cloud Storage
* Not if you have legacy ACL-based apps
* Not if: the uploader of an has full control of that object but less access to other objects in the same bucket
* Not if you use the XML API

