# Security

Identity - 4 types

* Google Account - a person
* "G Suite Account" / User - Member of an organisation in GSuite domain
* Cloud Identify - Like G Suite Account but without access to G Suite services
* Google Group - Collection of identities
* Service Account - Associated with an application or instance


Access Control Concepts

* Resources
* Permissions - a grant that can do something e.g. .get, .list
* Roles
  * Predefined
  * Custom
  * Primitive - existed prior to IAM
    * OWNER > EDITOR > VIEWER
    * Viewer - read-only
    * Editor - can also modify state
    * Owner - also manage permissions and for project setup billing

Policies

* Collection of statements that define which users have access to some resource
* Attached to resource
* Roles attached to identities; policies attached to resources
* Policy Hierarchy


Resource Hierarchy

* Organisation
* Folder
* Project
* Resource



Best Practices

* Use Predefined Roles when you can
* Use least privileges
* Use custom roles only when you cann't meet least privileges
* Use primitives only in limited environments (e.g. dev)
* Use Groups - easier administration
* Use Service Accounts for applications and servers
* Define resource hierarhy
  * Use policies to define access to get inherited settings


Data Privacy and Data Loss Prevention (DLP)

* Discover and classify data
  * Personal identifying information (PII)
  * Credentials and secrets
  * Country-specific idnetifiers
* Automatically mask data
* Measure re-identification risk
  * If a bit of information is removed, what is the probability of a hacker working out that information with that they can access
* Info Type: Pettern detectors to idnetify sensitive information
* Inspection jobs apply Info Typs to a data set and returns:
  * InfoType
  * Likelihood score
  * Location
* Risk Analysis job:
  * Calculate the probability that data can be re-identified
* Best practices
  * Inventory and prioritise content to scan
  * Assign propr roles to DLP service accounts to storage systems
  * Start by samplling data and use simple criteria
  * Schedule jobs using triggers


Legal compliance

* HIPPA - Health Insurance Portability and Accountability Act
  * HIPPA Privacy rule
  * HIPPA Security rule
* HITECH - Health Information Technology for Economics and Clinical Health
  * Covers transmission of data
  * Extends HIPPA to cloud associates (Google has to do this compliance so that you can use it)
* Children's Online Privacy Protection Act
  * Protects children under the age of 13
  * Posting clear privacy policies
  * Direct notice to parents before collecting information
  * Opportunity for parents to block data collection
  * Limits on how long to keep data
* GDPR - General Data Protection Regulation
  * EU Regulation standardising privacy protection
  * Limits where data about EU citizens can be stored and how it should be protected


Encryption

* Encryption at rest on GCP
  * At hardware levels, storage devices apply AES256 or AES128
  * At infrastruture level, grouped into chunks and encrypted in AES256
    * When data chunks are encrypted, each chunk has its own data-encryption-key
    * Data-encryption-keys are encrypted using a key-encryption-key
  * At platform level, databases encrypt using AES256 or AES128


* Encryption in Motion/Transit
  * Combines encryption and authentication when transmitting data
  * Internal GCP network: data is auth but not encrypted
  * Public network: data is encrypted
    * Transport Layer Security (TLS). Actually its sometimes QUIC a google protocol on GCP


Encryption Keys

* Google managed keys
  * Default methods
  * Data-encryption-keys are stored near the data chunks
  * Key-encryption-keys are stored in centralised key management service
  * Keys generated by storage system using common crypto library


* Customer Managed Keys
  * Cloud KMS is a key management service
  * Customer generate and store keys in GCP
  * Use when
    * Customers want control over key generation
    * Do not want support key management infrastructure
  * Can be sued for application level encryption

* Customer-supplied Encryption Keys (CSEK)
  * Customer generate keys and stores keys in self-managed key infrastructure
  * Used when
    * Customers want complete control over keys
    * Full lifecycle managment
    * Keys kept on premises
    * Passed to GCP via APIs when needed.
