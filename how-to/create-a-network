* rev.1: 2023-09-11 (Mon)
* Draft: 

# Create a Network
Vertex AI > Doc. > Vertex AI Workbench > Guides > [Set up a network](https://cloud.google.com/vertex-ai/docs/workbench/managed/networking)

Open Cloud Shell and run:
```bash
export PROJECT_ID=$(gcloud config list --format 'value(core.project)')
export REGION=us-central1
export ZONE=a
export LOCATION=${REGION}-${ZONE}
export NETWORK=default-vpc-${PROJECT_ID}
export SUBNET=default-subnet-${PROJECT_ID}
export SUBNET_RANGE=10.128.0.0/20

# create a network
gcloud compute networks create $NETWORK --project $PROJECT_ID --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional
```
