#!/bin/bash

gcloud dataproc jobs submit spark \
    --cluster second-testcluster \
    --region australia-southeast1 \
    --class org.apache.spark.examples.SparkPi \
    --jars file:///usr/lib/spark/examples/jars/spark-examples.jar -- 1000
