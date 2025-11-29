output "codeartifact_domain_name" {
  description = "The name of the created CodeArtifact Domain."
  value       = aws_codeartifact_domain.python_domain.domain
}

output "private_repository_name" {
  description = "The name of the private CodeArtifact repository."
  value       = aws_codeartifact_repository.private_python_repo.repository
}

output "private_repository_endpoint" {
  description = "The full repository URL for publishing (used by Twine)."
  value = "https://${aws_codeartifact_domain.python_domain.domain}-${aws_codeartifact_repository.private_python_repo.repository}.d.codeartifact.${var.aws_region}.amazonaws.com/pypi/"
}
