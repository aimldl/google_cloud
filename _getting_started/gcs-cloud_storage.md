# GCS (Google Cloud Storage)
* Created: 2025-03-05 (Wed)
* Updated: 2025-03-05 (Wed)

## What is GCS?
GCS is a service for storing and accessing data in Google's cloud.
GCS
* Stores unstructured data of any kind and size, up to 5 TB 
* Offers a variety of storage options, including standard, nearline, coldline, and archive 
* Combines the performance and scalability of Google's cloud with advanced security and sharing capabilities

## How to Use GCS 
### Using CLI commands
Create a bucket
```bash
$ gsutil mb -l us-central1 gs://bucket-name-should-be-unique
```
```bash
Creating gs://bucket-name-should-be-unique/...
$
```
To verify
```bash
$ gsutil ls | grep bucket
  ...
gs://bucket-name-should-be-unique/
$ 
```
### Using GUI or Google Cloud Platform Console
```
Select Browser in the left-hand menu
Click CREATE BUCKET
Enter a unique bucket name
Pick a storage class
Pick a location to store your data
Click Create
Storage classes 
Standard storage: For frequently accessed data, such as websites, streaming videos, and mobile apps
Nearline storage: Low-cost, highly durable storage for infrequently accessed data
Coldline storage: Very low cost, highly durable storage for infrequently accessed data
Archive storage: The lowest cost, highly durable storage service for data archiving, online backup, and disaster recovery
```

