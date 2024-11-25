# create_bucket_if_not_exists

```
import subprocess

GCS_BUCKET = f"{PROJECT_ID}-bqmlga4"

def create_bucket_if_not_exists(bucket_name):
    try:
        subprocess.check_output(['gsutil', 'ls', 'gs://' + bucket_name], stderr=subprocess.STDOUT)
        print(f"Bucket {bucket_name} already exists.")
    except subprocess.CalledProcessError as e:
        if "BucketNotFoundException" in e.output.decode('utf-8'):
            print(f"Creating bucket {bucket_name}...")
            subprocess.check_call(['gsutil', 'mb', '-l', '$REGION', 'gs://' + bucket_name])
        else:
            raise e

create_bucket_if_not_exists(GCS_BUCKET)
```
