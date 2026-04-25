# Week 4 Day 17 — GitHub Actions Security

## Goal
Understand how GitHub Actions works and how to secure CI/CD pipelines against misuse and attacks.

---

## What is GitHub Actions?

GitHub Actions is an automation platform that executes workflows based on repository events (e.g., push to main).

When triggered:
- A temporary virtual machine (runner) is created
- The repository is cloned
- Workflow steps are executed
- The environment is destroyed after completion

---

## Key Components

### Workflow YAML
Located in:
.github/workflows/

Defines:
- What runs
- When it runs
- What permissions are used
- What tools/actions are executed

---

### Actions

Reusable units of code from:
- GitHub Marketplace
- External repositories

Example:
```yaml
uses: bridgecrewio/checkov-action@v12.134.0