# init4hub_vm.bash

export REGION=${1:-us-central1}
echo "REGION=$REGION"

# Handle the rest of the part automatically.
#   You may edit some lines to change the configuration.
export PROJECT_ID=$(gcloud config list --format 'value(core.project)')
export NETWORK=custom-network-${REGION}

export SUBNET=custom-subnetwork-${REGION}
export SUBNET_RANGE=10.128.0.0/20
# Example: 10.138.0.0/20, 10.132.0.0/20, 10.128.0.0/20

export FIREWALL_NAME_HTTP=allow-http-traffic-${REGION}
export TAG_NAME_HTTP=http-${REGION}
export FIREWALL_NAME_SSH=allow-ssh-traffic-${REGION}
export TAG_NAME_SSH=ssh-${REGION}
export FIREWALL_PRIORITY=1000
# export IP_RANGE=  # optional

export SERVICE_ACCOUNT_NAME=my-service-account
export SECRET_NAME=my-secret
export SERVICE_ACCOUNT_KEY_NAME=my-key.json

# 1. Create a network
gcloud compute networks create $NETWORK --project $PROJECT_ID --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional

# 2. Create a subnet for this network
gcloud compute networks subnets create $SUBNET \
--project=$PROJECT_ID \
--range=$SUBNET_RANGE \
--network=$NETWORK \
--region=$REGION

# 3. Create firewall rules
#    to allow HTTP (tcp:80) traffic with a tag (http)
gcloud compute firewall-rules create $FIREWALL_NAME_HTTP \
--network=$NETWORK \
--target-tags=$TAG_NAME_HTTP \
--allow=tcp:80 \
--priority=$FIREWALL_PRIORITY
# --source-ranges=$IP_RANGE  # optional

#    to allow SSH (tcp:22) traffic with a tag (ssh)
gcloud compute firewall-rules create $FIREWALL_NAME_SSH \
--network=$NETWORK \
--target-tags=$TAG_NAME_SSH \
--allow=tcp:22 \
--priority=$FIREWALL_PRIORITY
# --source-ranges=$IP_RANGE  # optional

# 4. Create a service account, service account key and add the key to Secrete Manager

# Create a service account.
gcloud iam service-accounts create $SERVICE_ACCOUNT_NAME\
    --display-name "My Service Account" \
    --project=$PROJECT_ID

# Get the service account email.
SERVICE_ACCOUNT_EMAIL=$(gcloud iam service-accounts list \
    --format='value(email)' \
    --project=$PROJECT_ID \
    --filter='displayName:"My Service Account"')

# Create a secret in Secret Manager.
gcloud secrets create $SECRET_NAME\
    --replication-policy=automatic \
    --project=$PROJECT_ID

# TODO:
# Add the service account as an IAM member to the secret.
