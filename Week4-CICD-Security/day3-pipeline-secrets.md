# Week 4 Day 18 — Pipeline Secrets

## Goal
Understand how secrets are handled in CI/CD pipelines, why they are high-risk targets, and how attackers abuse them during pipeline execution.

---

## What are Pipeline Secrets?

Pipeline secrets are sensitive values used during CI/CD execution, such as:
- API keys
- Cloud credentials
- Database passwords
- GitHub tokens
- Terraform tokens

Pipelines require secrets in order to:
- Authenticate to cloud platforms
- Deploy infrastructure
- Access external services and APIs

---

## Hardcoded Secrets vs Pipeline Secrets

### Bad Practice — Hardcoded Secret

```yaml
password: "SuperSecret123"