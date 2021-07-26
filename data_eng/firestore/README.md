# Firestore 

THINGS TO DO:
* Make a basic app with the client libraries


## Firestore properties

Characteristic |Native Mode | Database mode |
--- |----------- | ------------- |
Designed for | Mobile apps | Backend server |
API | Firestore | Datastore |
Scalability | Millions of concurrent clients | Millions of writes per second |
Max writes per second | 10,000 | No limit |
Real-time updates | Yes | No |
Mobile/web client libraries with offilne data persistence | Yes | No |


```
Namespace (Groups of Kinds)
|
+- Collections/Kind (A table)
   |
   +- Document/Entities (Objects in a table)
```

* Database (and LOCATION!!) is tied to project. Cannot change afterwards.
* This database and location is also tied to your App Engine
* Indices required for all queries - i.e no scanning
* No not-equals operator. Must use combination of > and <
* Serializable isolation:
  * Data read by a transaction cannot be concurrently modified
  * Transactions sees consistent snapshot of the database
  * Writes within a transaction not available to remaining operations in tranaction. e.g. write to A, reading from A in same transaction gives original value of A
  * When no writes in a transaction, uses read-only mode for performance


## CLI

Seems that most of the interaction is in the libraries to code against. The CLI doesn't have much to offer

```
## ONLY ONCE PER PROJECT - really, just us the console GUI
gcloud firestore databases create --region=australia-southeast1
```

```
# Nothing too interesting here
gcloud firestore indexes fields list
gcloud firestore indexes composite list
```

