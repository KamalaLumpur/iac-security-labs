Terraform Security Review — Variables

Issue Identified

The variable "admin_password" contains a hardcoded default value.

Risk

Hardcoded credentials in Terraform expose secrets to anyone with repository access and remain visible in Git history.

Recommendation

Secrets should be stored in secure secret management systems such as:

- Azure Key Vault
- GitHub Secrets
- CI/CD secret stores