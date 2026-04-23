# Week 4 Day 16 — CI/CD Fundamentals

## Goal
Understand the structure of a CI/CD pipeline and where security controls must be applied.

---

## What is a CI/CD Pipeline?

A CI/CD pipeline is the automated process that takes code from development into production.  
It is not just automation — it is a critical control system that determines what is allowed to be deployed.

---

## Pipeline Stages

### 1. Commit
Developers write and commit code (e.g., Terraform).

**Risk:**
- Hardcoded secrets
- Misconfigurations (public storage, open NSGs, etc.)

---

### 2. Pull Request (PR)
Code is reviewed before being merged.

**Security Control:**
- Human review
- Detection of logical or contextual issues

---

### 3. Security Scan
Automated tools (e.g., Checkov) scan code for known vulnerabilities.

**Security Control:**
- Detects misconfigurations consistently and at scale

---

### 4. Approval
An authorised individual approves the change before deployment.

**Security Control:**
- Prevents a single user from deploying changes unilaterally
- Enforces governance and separation of duties

---

### 5. Deploy
Infrastructure is created or modified (e.g., Terraform apply).

**Risk:**
- Misconfigurations become real
- Exposure and impact occur at this stage

---

## Key Security Insight

Each stage in the pipeline is a security control point.  
Security is not applied once — it must exist across the entire pipeline.

---

## Why Pipeline Security is Critical

The pipeline has:
- Access to source code
- Access to secrets
- Permissions to deploy infrastructure

If the pipeline is compromised, an attacker may:
- Steal secrets
- Modify deployments
- Inject malicious code
- Create persistence in the environment

---

## Key Principles

### 1. Pipeline = Security Boundary
The pipeline is part of the production attack surface and must be secured accordingly.

---

### 2. Least Privilege
The pipeline identity should only have the permissions required to perform deployment tasks.

---

### 3. Restricted Access
Only a small, trusted group should be allowed to modify pipeline configurations.

---

### 4. Defense in Depth
Security controls should exist at every stage:
- Commit → safe coding practices
- PR → human review
- Scan → automated detection
- Approval → governance
- Deploy → restricted execution

---

## Key Lesson

The pipeline is not just a delivery mechanism — it is a high-privilege system.  
If compromised, it can be used to control infrastructure, access secrets, and deploy malicious changes.

---

## Takeaway

Securing the pipeline is as important as securing the infrastructure itself.  
Strong CI/CD security prevents insecure or malicious code from reaching production.