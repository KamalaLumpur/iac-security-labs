Terraform State Security Risk

Terraform uses a state file called terraform.tfstate to track infrastructure.

Security Risk

The state file may contain:
- Infrastructure metadata
- Cloud resource identifiers
- Access keys or credentials

If exposed, attackers can map and potentially access cloud infrastructure.

Security Best Practice

Terraform state should be stored securely in remote backends such as:
- Azure Storage with restricted access
- Terraform Cloud