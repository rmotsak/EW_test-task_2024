# Terraform Infrastructure Deployment

This directory contains the Terraform configuration for deploying the Kubernetes (k8s) cluster.

## Deployment Instructions

Follow these steps to deploy the infrastructure:

1. **Initialize the Terraform working directory**:
   ```terraform init```

2. **Create a new workspace for the environment**:
   ```terraform workspace new dev```

3. **Select the newly created workspace**:
   ```terraform workspace select dev```

4. **Apply the Terraform configuration to deploy the infrastructure**:
   ```terraform apply```

These commands will set up the necessary infrastructure for the development environment using Terraform.
