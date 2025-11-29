resource "aws_codeartifact_domain" "python_domain" {
  domain = var.codeartifact_domain_name
  tags = merge(var.common_tags, { Description = var.codeartifact_domain_description })
}

resource "aws_codeartifact_repository" "private_python_repo" {
  repository = var.private_repo_name
  domain     = aws_codeartifact_domain.python_domain.domain
  tags = merge(var.common_tags, { Description = var.private_repo_description })
}
