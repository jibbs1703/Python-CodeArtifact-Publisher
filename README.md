# Python-Codeartifact-Publisher

This repository provides a minimal and reproducible terraform configuration for setting up AWS CodeArtifact resources. It also includes GitHub Actions workflows to automate the publishing of Python packages to the
private CodeArtifact repository.

## Features
- **Terraform Configuration**: Easily deploy AWS CodeArtifact Domain and Repositories using Terraform.
- **GitHub Actions Integration**: Automate the publishing of Python packages to your private CodeArtifact repository using GitHub Actions.
- **Customizable**: Modify variables to suit your project needs

## Prerequisites
- AWS Account with permissions to create CodeArtifact resources.
- Terraform 
- Python environment for package development.
- GitHub repository to host code and workflows.

## Getting Started

### Deploying Infrastructure

- Assign AWS credentials to your environment with sufficient permissions to create CodeArtifact resources.

```
{
"Version": "2012-10-17",
"Statement": [
   {
     "Effect": "Allow",
     "Action": [
          "codeartifact:*"
     ],
     "Resource": "*"
   },
   {       
     "Effect": "Allow",
     "Action": "sts:GetServiceBearerToken",
     "Resource": "*",
     "Condition": {
         "StringEquals": {
             "sts:AWSServiceName": "codeartifact.amazonaws.com"
         }
      }
    }
]
}
```

- Navigate to the `infra` directory.and modify the `variables.tf` file to set your desired domain and repository names.

- Run terrform commands to deploy the infrastructure:
   ```bash
   terraform init # Initialize the Terraform configuration
   terraform plan # Review the planned changes
   terraform apply -auto-approve # Apply the changes to create resources
   ```
