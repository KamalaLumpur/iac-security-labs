Week 3 Day 12 — Running Checkov

Command used:
checkov -d . --framework terraform

Result:
The full Terraform repository was scanned successfully.

Key lesson:
A full-repo scan provides a broad security posture view and can reveal multiple issues across different Terraform files at once. A large number of failures is normal in a vulnerable or newly scanned codebase.