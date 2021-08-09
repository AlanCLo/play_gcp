# cloud Memorystore

Its redis on GCP

And memcache


# Redis on Memorystore

Purpose: Caching data & HA

* Databases
* Games
* Stream processing


Characteristics

* Scale as needed
* 30GB storage
* 12GBS network throughput

Tiers (2)
* Basic
  * Cache, no replicatino
  * No cross zone
  * No failover
* Standard
  * Cache + replicatin
  * Crosszone
  * Automatic failover


Difference with Redis DIY
* Cannot persist to disk. DIY can persist by:
  * Point in time snapshot (RDB)
  * Logs of write operations (AOF)
* You cannot change many parameters
* Some Redis commands blocked
* When using standard tier, you cannot read from replica


Data Types

* Strings
* Lists
* Sets
* Sorted Sets
* Hashes
* Bitmaps (based on strings)
* HyperLogLogs (algorithm for approx number of distinct items in a list)


# Memcache on Memorystore

Distributed in-memory key-value store

Purpose:

* Reference data
* Database query caching
* Session caching
* For large caches
* For HA


Characteristics

* An instance is one cluster
  * Number of nodes
  * Number of vCPU per node
  * Memory per node
* Maximum of 20 nodes (same configuratinos)
  * 1 to 32 vCPUS
  * 1 to 256 GB per node
  * 5 TB per instance


# Redis vs Memcache

Use when: 

Redis
* Support for special data types


Memcache
* Large cache
* High availability