# Cloud Storage

To give the storage.objects.list permission in IAM, you need to assign a role that includes this permission to a user or service account. This can be done through the Google Cloud console, the gcloud command-line tool, or the IAM API.

Using the gcloud Command-Line Tool

```bash
gcloud projects add-iam-policy-binding YOUR_PROJECT_ID \
    --member="serviceAccount:SERVICE_ACCOUNT_EMAIL" \
    --role="roles/storage.objectViewer"
```
Replace YOUR_PROJECT_ID with your project's ID and SERVICE_ACCOUNT_EMAIL with the email of the service account.
