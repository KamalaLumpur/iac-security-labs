# Week 2 Day 3 — Overprivileged RBAC

## Vulnerability
An identity was assigned the Owner role at the subscription scope, granting excessive permissions.

## Risk
If compromised, the attacker could:
- Create, modify, or delete resources
- Assign roles to other identities
- Escalate privileges
- Maintain persistent access

This could lead to full environment compromise.

## Root Cause
Violation of the principle of least privilege by assigning a highly privileged role at a broad scope.

## Fix
- Replace Owner with a more restrictive role (e.g., Contributor or Reader)
- Limit scope to resource group or specific resource
- Use least privilege access

## Validation
Checkov did not detect this issue, demonstrating that not all security risks are identified by automated tools.

## Key Lesson
Security tools are helpful but not sufficient.  
Critical risks like overprivileged access require human analysis.