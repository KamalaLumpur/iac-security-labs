# Week 2 Day 10 — Capital One Data Breach Analysis

## Incident
Capital One suffered a major data breach due to cloud misconfiguration.

## Attack Chain
- Misconfigured WAF allowed SSRF attack
- Attacker accessed AWS metadata service
- Temporary credentials were exposed
- IAM role had excessive permissions
- Attacker accessed and exfiltrated sensitive data from storage

## Root Cause
The breach was caused by a combination of an SSRF vulnerability and overprivileged IAM roles. While SSRF enabled access, excessive permissions allowed large-scale data exposure.

## Key Misconfiguration
Overprivileged access (IAM / RBAC) was the most critical issue.

## Impact
Over 100 million customer records were exposed.

## Fix
- Enforce least privilege access
- Restrict IAM roles to minimum required permissions
- Secure WAF configuration to prevent SSRF
- Monitor access to metadata services
- Implement logging and alerting

## Key Lesson
Even if an attacker gains access, proper permission design can prevent large-scale breaches. Identity and access control is one of the most critical areas in cloud security.