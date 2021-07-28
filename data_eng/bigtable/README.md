# BigTable

THINGS TO DO
* Find some data to upload and do some performance tests
* Implement a POC for each time series design pattern


Sparse multi-dimensional arrays.

## Use Cases

* High scale, high volume ~ Petabyte scale
* Low latency writes
* Key-based reads
* Analytics: e.g. scan based on particular fields (key lookups)
* Time series applications
  * IoT
  * Finance
  * Monitoring
* Open source similar projects
  * HBase
  * Cassandra

## Properties

* Managed service
* Scales linearly
* Multi-region HA with cluster
* Uses HBase API

The tables:

* Each table has one index based on row key
* Rows are sorted by row key
* Columns are grouped into familes (fields that are related. e.g. street address, city, state)
* All operations are atomic at the row level
* Related entities should be stored in adjacent rows to improve read efficiency
* Its ok to have empty values

* Up to 100 column familes
* Limit of 1000 tables per instance. Better to have 1 table than many
* Row size limit of 100MB
* Small tables are problematic because:
  * Sending requests to many tables increases connection overhead
  * More difficult to load balance.

## CLI

```
gcloud bigtable clusters list



```

# Row-keys and storage

Row-key structure effects storage location and performance
* Nodes handles a subset of workload
* Nodes have multiple sorted-string tables (SSTables)
* Data is sharded into blocks of contiguous rows called "tablets"
* Tablets are stored in Colossus file system, nodes only do metadata

In short:

* Nodes: do work, store metadata only
* Colossus: store data

Designing

* You want row keys that distributes evenly aross nodes
* Avoid
  * Incremental row keys
  * Low cardinality attributes (a small limit to the range the field can hold/address). Ok only it if is apart of a multi-attribute key at the END
  * Starting a key with a time value

Example of good multivalue key:
```
Sensor ID + mmm ss HH dd MM yyyy
```
* Start with high cardinality field: Sensor ID
* End with reversed date/time so that it spreads an incoming time series a lot


## Design patterns: For time series

Rows with Time Buckets

* Each row represents a bucket of time such as hour or day
* Row key includes non-timestamp identifier. e.g. hour23
* Adv
  * Better read and write performance than row per event
  * Compression more efficient
* Dis
  * Complex application code

Rows with Time Buckets: Columns per Event

* Write new column for each event
* Value stored in column qualifier/name rather than cell
* Send: Column family, column qualifier, timestamp
* Rows store the value for one metric
* Use this pattern when:
  * You don't need to measure changes in time series
  * Save storage space by using columns qualifiers as data


Rows with Time Buckets: Cell per Event

* Write new cell for each event
* Save multiple timestamped events in a single column of a row
* Each row contains all the metrics of an event
* Use when you want to measure changes in measurements over time



Single Timestamp Rows - Serialised

* New row for each event
* Row key uses timestamp value as suffix
* Know as "Tall and Narrow" pattern
* Values stored in serialised format such as protobufs https://opensource.google/projects/protobuf
* Adv
  * Storage efficiency
  * Speed
* Dis
  * Cannot retrieve a single column
  * Need to deserialise data in application (time cost)
* Use when:
  * Query patterns fluxuate
  * Cost concerns
  * Events may exceed 100MB otherwise

Single Timestamp Rows - Unserialised data

* Store events in new row
* Do not serialise the data
* Adv
  * Easier to implement than time bucket pattern
* Dis
  * Less performant
  * Not as efficiently compressed
  * Potential for hotspotting
* Use when:
  * Retrive all columns for a time range
  * Don't want to serialise


ALSO:
* Consider storing the same data in multiple tables with different row key structure if you have a lot of diffrent query types



