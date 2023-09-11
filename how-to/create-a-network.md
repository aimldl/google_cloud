* rev.1: 2023-09-11 (Mon)
* Draft: 2023-02-05 (Sun)

# Create a Network
For details, refer to Vertex AI > Doc. > Vertex AI Workbench > Guides > [Set up a network](https://cloud.google.com/vertex-ai/docs/workbench/managed/networking)

Open Cloud Shell and run:
```bash
export PROJECT_ID=$(gcloud config list --format 'value(core.project)')
export NETWORK=default-vpc-${PROJECT_ID}

# create a network
gcloud compute networks create $NETWORK --project $PROJECT_ID --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional
```

The output looks like below.

```bash
Created [https://www.googleapis.com/compute/v1/projects/vertex-workbench-notebook/global/networks/default-vpc-vertex-workbench-notebook].
NAME: default-vpc-vertex-workbench-notebook
SUBNET_MODE: CUSTOM
BGP_ROUTING_MODE: REGIONAL
IPV4_RANGE: 
GATEWAY_IPV4: 

Instances on this network will not be reachable until firewall rules
are created. As an example, you can allow all internal traffic between
instances as well as SSH, RDP, and ICMP by running:

$ gcloud compute firewall-rules create <FIREWALL_NAME> --network default-vpc-vertex-workbench-notebook --allow tcp,udp,icmp --source-ranges <IP_RANGE>
$ gcloud compute firewall-rules create <FIREWALL_NAME> --network default-vpc-vertex-workbench-notebook --allow tcp:22,tcp:3389,icmp

$
```

# Create a subnet

```bash
export PROJECT_ID=$(gcloud config list --format 'value(core.project)')
export SUBNET=default-subnet-${PROJECT_ID}
export SUBNET_RANGE=10.128.0.0/20
export NETWORK=default-vpc-${PROJECT_ID}
export REGION=us-central1

gcloud compute networks subnets create $SUBNET \
--project=$PROJECT_ID \
--range=$SUBNET_RANGE \
--network=$NETWORK \
--region=$REGION
```

The output looks like below.

```bash
Created [https://www.googleapis.com/compute/v1/projects/vertex-workbench-notebook/regions/us-central1/subnetworks/default-subnet-vertex-workbench-notebook].
NAME: default-subnet-vertex-workbench-notebook
REGION: us-central1
NETWORK: default-vpc-vertex-workbench-notebook
RANGE: 10.128.0.0/20
STACK_TYPE: IPV4_ONLY
IPV6_ACCESS_TYPE: 
INTERNAL_IPV6_PREFIX: 
EXTERNAL_IPV6_PREFIX:
$
```

```
#export ZONE=a
#export LOCATION=${REGION}-${ZONE}
```

# More Commands
```bash
gcloud compute networks create default-vpc --project=kaka-ai-clip-webtoon-creation --subnet-mode=custom --mtu=1460 --bgp-routing-mode=global

gcloud compute networks subnets create default-vpc --project=kaka-ai-clip-webtoon-creation --range=10.128.0.0/20 --stack-type=IPV4_ONLY --network=default-vpc --region=asia-northeast3 --enable-private-ip-google-access
```
