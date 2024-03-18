# initialize_vpn_network.bash
export REGION={$1:us-central1}
echo "REGION=$REGION"

# Handle the rest of the part automatically.
#   You may edit some lines to change the configuration.
export PROJECT_ID=$(gcloud config list --format 'value(core.project)')
export NETWORK=custom-network-${REGION}

export SUBNET=custom-subnetwork-${REGION}
export SUBNET_RANGE=10.128.0.0/20
# Example: 10.138.0.0/20, 10.132.0.0/20, 10.128.0.0/20

export INSTANCE_NAME=hub-${REGION}
export ZONE=$REGION-c
export MACHINE_TYPE=e2-medium
export IMAGE_FAMILY=ubuntu-minimal-2204-lts
export IMAGE_PROJECT=ubuntu-os-cloud

# 1. Create a network
gcloud compute networks create $NETWORK --project $PROJECT_ID --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional

# 2. Create a subnet for this network
gcloud compute networks subnets create $SUBNET \
--project=$PROJECT_ID \
--range=$SUBNET_RANGE \
--network=$NETWORK \
--region=$REGION
