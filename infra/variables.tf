variable "aws_region" {
  description = "AWS region to deploy resources in."
  type        = string
  default     = "us-east-2"
}

variable "codeartifact_domain_name" {
  description = "The name for the CodeArtifact Domain."
  type        = string
  default     = "jibbs-python-domain"
}

variable "codeartifact_domain_description" {
  description = "Optional description for the CodeArtifact domain."
  type        = string
  default     = ""
}

variable "private_repo_name" {
  description = "The name for the private CodeArtifact repository where packages will be published."
  type        = string
  default     = "jibbs-python-packages"
}

variable "common_tags" {
  description = "A map of tags to apply to all resources."
  type        = map(string)
  default = {
    Project     = "CodeArtifactPublisher"
    Environment = "Development"
  }
}

variable "private_repo_description" {
  description = "Optional description for the private CodeArtifact repository where packages will be published."
  type        = string
  default     = ""
}