# Week 3 Day 14 — CI/CD Integration

## Goal
Automatically run Terraform security scans in a pipeline.

## Implementation
A GitHub Actions workflow was created at:

`.github/workflows/checkov-scan.yml`

The workflow runs Checkov against the full repository whenever code is pushed to the `main` branch.

## Result
The pipeline executed successfully in GitHub Actions and scanned the repository. It failed because the repository still contains multiple real security issues from the Terraform lab files.

## Key Lesson
A failing pipeline is not a failure of the process — it is a security control.  
The purpose of the pipeline is to stop insecure infrastructure from being deployed.

## Security Takeaway