# Python-CodeArtifact-Publisher

This repository provides a minimal and reproducible terraform configuration for setting up AWS CodeArtifact resources. It also includes GitHub Actions workflows to automate the publishing of Python packages to the private CodeArtifact repository.
The setup is designed to be straightforward, allowing developers to quickly integrate CodeArtifact into their CI/CD pipelines for Python package management.

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

### Publishing Python Packages
- Set up GitHub Actions workflows in your repository to automate package publishing.

- Modify the workflow files to include your AWS credentials and repository details.
  - CODEARTIFACT_DOMAIN - the name of your CodeArtifact domain (must match the domain created via Terraform)
  - CODEARTIFACT_REPOSITORY - the name of your CodeArtifact repository (must match the repository created via Terraform)
  - CODEARTIFACT_OWNER - your AWS account ID (stored as a GitHub secret)
  - AWS_ACCESS_KEY_ID - your AWS access key ID (stored as a GitHub secret)
  - AWS_SECRET_ACCESS_KEY - your AWS secret access key (stored as a GitHub secret)
  - AWS_REGION - the AWS region where your CodeArtifact resources are located (stored as a GitHub secret)
