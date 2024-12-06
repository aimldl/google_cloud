# `gcloud` Basics

Update the `gcloud`.
```
$ gcloud components update
```

```
PROJECT=!(gcloud config get-value project)
PROJECT_ID=PROJECT[0]

# Set the project id
! gcloud config set project {PROJECT_ID}
```
