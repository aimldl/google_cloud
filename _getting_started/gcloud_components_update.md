# gcloud components update
* Created: 2025-03-05 (Wed)
* Updated: 2025-03-05 (Wed)

```bash
$ sudo gcloud components update
```
## Problem
```bash
ERROR: (gcloud.components.update)
  ...
$
```
## Hint
You cannot perform this action because the Google Cloud CLI component manager 
is disabled for this installation. 

## Solution
You can run the following command to achieve the same result for this installation: 
```bash
$ sudo apt-get update && sudo apt-get --only-upgrade install google-cloud-cli-nomos google-cloud-cli-cloud-run-proxy google-cloud-cli-gke-gcloud-auth-plugin google-cloud-cli-kubectl-oidc google-cloud-cli-bigtable-emulator google-cloud-cli-pubsub-emulator google-cloud-cli-config-connector google-cloud-cli-minikube google-cloud-cli-app-engine-java google-cloud-cli-enterprise-certificate-proxy kubectl google-cloud-cli-spanner-migration-tool google-cloud-cli-istioctl google-cloud-cli-app-engine-python-extras google-cloud-cli-app-engine-go google-cloud-cli-anthos-auth google-cloud-cli-log-streaming google-cloud-cli google-cloud-cli-docker-credential-gcr google-cloud-cli-app-engine-grpc google-cloud-cli-anthoscli google-cloud-cli-managed-flink-client google-cloud-cli-spanner-emulator google-cloud-cli-app-engine-python google-cloud-cli-local-extract google-cloud-cli-cbt google-cloud-cli-skaffold google-cloud-cli-cloud-build-local google-cloud-cli-kpt google-cloud-cli-terraform-tools google-cloud-cli-harbourbridge google-cloud-cli-datastore-emulator google-cloud-cli-package-go-module google-cloud-cli-firestore-emulator
```
