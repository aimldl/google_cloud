# Troubleshoot

```
$ ./create_a_gpu_vm 
REGION=us-central1
Setting the associated variables automatically...
gcloud compute instances create gpu-us-central1 --project=llm-env --zone=us-central1-c --machine-type=g2-standard-16 --accelerator=count=4,type=nvidia-tesla-l4 --image-family=ubuntu-minimal-2204-lts --image-project=ubuntu-os-cloud --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=custom-subnetwork-us-central1
ERROR: (gcloud.compute.instances.create) Could not fetch resource:
 - Request had insufficient authentication scopes.

Waiting until gpu-us-central1 is created...
ERROR: (gcloud.compute.instances.describe) Could not fetch resource:
 - Request had insufficient authentication scopes.

ERROR: (gcloud.compute.instances.describe) Could not fetch resource:
 - Request had insufficient authentication scopes.

^C
$
```
