## Validation
Checkov flagged Key Vault secret configuration issues, including:
- missing content_type
- missing expiration date

However, the more serious issue — the secret being hardcoded directly in Terraform — was identified through human review rather than automated detection.

## Key Lesson
Automated scanners can detect useful policy and hygiene issues, but they may miss the primary security risk. Human review remains essential for identifying secret exposure in code.