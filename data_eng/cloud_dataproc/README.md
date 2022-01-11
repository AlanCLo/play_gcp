# Cloud Dataproc

"Dataproc is a fully managed and highly scalable service for running Apache Spark, Apache Flink, Presto, and 30+ open source tools and frameworks. Use Dataproc for data lake modernization, ETL, and secure data science, at planet scale, fully integrated with Google Cloud, at a fraction of the cost."


Managed Spark and Hadoop service

TODO:

* Some exercises in ETL


What is

* Managed Spark and Hadoop service
* Large scale batch processing and ML
* Spark support stream processing as well
* Ephemeral clusters

Use cases

* ETL and ELT


Advantage of Dataproc over on-prem

* On prem you are using committed hardware and ops all the time
* GCP Dataproc, just pay for what you use when you use it (clusters are ephemeral)


Properties

* Cluster mode: determines how many master and worker nodes
* Preemptible worker nodes - much cheaper but google can take some nodes away
* Cloud Storage Connector:
  * Use cloud storage instead of HDFS
  * HDFS compatibility
  * Interoperability
  * Data accessibility
  * High data availability
  * No stroage management overhead
  * Quick start up


Jobs

* Many kinds of jobs you can submit including PIG
* Can use templates


Monitoring

* Job Driver output (Logging)
* Cloud monitoring - alerts and
* Cloud Logging