# Cloud Composer

Managed Airflow.

Executes DAGs (Directed Acyclic Graphs)

* Workflow is a collection of tasks with dependencies
* DAGS are stored in Cloud Storage
* Supports custom plugins for oeprations, hooks and interfaces
* Can use python dependencies (packages)
* Behind the scenes, runs kubernetes.
  * Tenant project:
    * CLoud SQL
    * Frontend
    * Metadata
  * Customer project resources
    * Cloud Storage
    * Kubernetes Engine - deploy airflow scheduler, worker nodes and CeleryExecuter
    * Redis, with stateful sets for persistence so that a container can restart easily

Use case:

* For ELT/ETL


# CLI

```sh
gcloud composer ...
```