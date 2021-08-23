# cloud dataflow

Stream and batch processing

Managed Apache Beam Runner

TODO:

* Make an app
* Compare against cloud composer (airflow)


Characteristics

* horizontally scalable
* supports windowing operations


Use cases:

* ETL
* Read from pub/sub and process to something else


How

* Pick or create template
* Create jobs from templates e.g. do word count


---



Job States

* Running
* Not Running
* Queued (Flexible Resource Scheduleing)
* Cancelling/Cancelled
* Draining/Drained
* Updating/Updated
* Succeeded
* Failed


Job Details

* Graph/Metrics/Info
* Job Logs Panel
  * Job Logs - Job itself
  * Worker logs - the compute node logs
  * Job Error reporting - For errors specific
  * Time selector (time range to view)


Typical Troubleshooting Workflow

* Check error messages
  * Jobs logs panel
  * Job error reporting panel
* Review steps of job
* Look for:
  * Pipeline construction errors
  * Errors in job validation
  * Exceptions in workers
  * Slow running pipelines or no output

  
