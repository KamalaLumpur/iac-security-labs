Codecov Supply Chain Attack (2021)

Attack Summary
Attackers modified the Codecov Bash Uploader script used in CI/CD pipelines.
The malicious script collected environment variables and sent them to attacker servers.

Impact
Secrets stored in CI/CD pipelines were exposed, allowing attackers to access cloud infrastructure and internal systems.

Security Lessons
CI/CD pipelines contain high-value secrets and must be protected carefully.

Security Controls
- Use short-lived authentication
- Restrict pipeline permissions
- Monitor CI/CD activity