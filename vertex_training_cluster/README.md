# Vertex AI Traininc Cluster (VTC)


``` VTC was previously known as Vertex Model Development Service (VMDS). ```

## Overview

Vertex AI Training Cluster is a fully managed compute infrastructure designed to streamline distributed machine learning workloads on Google Cloud. It enables the provisioning of scalable, high-performance clusters optimized for training complex models, allowing MLOps teams to execute large-scale jobs with minimal operational overhead and maximized resource efficiency.

See the official blog to learn more about it.
- Google Cloud > Blog > [Announcing new capabilities in Vertex AI Training for large-scale training](https://cloud.google.com/blog/products/ai-machine-learning/new-capabilities-in-vertex-ai-training-for-large-scale-training?e=48754805), Oct. 28, 2025 (Tue)


## Slurm
Slurm (Simple Linux Utility for Resource Management) is an open-source workload manager and job scheduling system to manage Linux clusters, particularly in HPC (High-Performance Computing) environments.

See the official guide to learn more about Slurm.
- [Slurm Workload Manager - Accounting and Resource Limits](https://slurm.schedmd.com/accounting.html)

> "Slurm is an industry standard known for optimized GPU scheduling, automated fault tolerance, and simplified parallel job launch."
> — [Vertex AI Managed Training](https://docs.cloud.google.com/vertex-ai/docs/training/managed-training/overview)

## Standardized Framework Options (with Seamless Integration)
- [NVIDIA NeMo](https://www.nvidia.com/en-us/ai-data-science/products/nemo/)
- [NVIDIA NeMo-RL](https://docs.nvidia.com/nemo/rl/latest/index.html)


## Official Guide
Google Cloud > Doc. > AI and ML > Vertex AI
* [Vertex AI training clusters overview](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/overview)
* [Get started with training clusters](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/create-cluster)
* Deployment Considerations
  * [Compute resources](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/compute-resources)
  * [Networking](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/networking)
  * [Storage](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/storage)
  * [Orchestration](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/orchestration)
  * [Create cluster](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/create-cluster)
* [Manage cluster](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/manage-cluster)
* [Cluster resiliency](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/cluster-resiliency)
* Run workload on cluster
  * [Run prebuilt workloads](https://docs.cloud.google.com/vertex-ai/docs/training/training-clusters/run-prebuilt-workloads)
  * [Visualizing jobs with Vertex AI TensorBoard](https://docs.cloud.google.com/vertex-ai/docs/experiments/tensorboard-overview)


* [Google Cloud Managed Lustre](https://cloud.google.com/products/managed-lustre)
