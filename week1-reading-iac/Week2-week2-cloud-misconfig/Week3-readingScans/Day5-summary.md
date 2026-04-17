# Week 3 Day 5 — Tesla Kubernetes Crypto Mining Breach

## Incident
Tesla cloud infrastructure was compromised due to an exposed Kubernetes dashboard.

## Attack Chain
- Kubernetes dashboard was publicly accessible
- No authentication was configured
- Attacker gained access to the environment
- Credentials were discovered within the system
- Attacker deployed crypto mining containers

## Root Cause
The root cause was a misconfigured Kubernetes dashboard that was exposed to the internet without authentication.

## Key Misconfiguration
Open network access (0.0.0.0/0) allowed unauthorized access.

## Impact
Cloud resources were abused for cryptocurrency mining, leading to financial and operational impact.

## Fix
- Remove public access to management interfaces
- Restrict access to trusted networks (VPN/private access)
- Enforce authentication
- Secure storage of credentials

## Key Lesson
Exposing internal management interfaces to the internet without proper controls can lead to immediate compromise.