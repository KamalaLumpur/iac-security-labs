# Week 2 Day 5 — Encryption Failures

## Vulnerability
The Azure Storage Account did not enforce HTTPS-only traffic and did not explicitly require a modern TLS version.

## Risk
If HTTPS is not enforced, data may be transmitted over HTTP without encryption. This increases the risk of interception, credential theft, and man-in-the-middle attacks.  
If weak or outdated TLS versions are allowed, encrypted traffic may still be vulnerable to downgrade or cryptographic weaknesses.

## Root Cause
The Terraform configuration allowed insecure transport settings by setting:

- `enable_https_traffic_only = false`
- no secure minimum TLS version

## Fix
Enforce encrypted traffic in transit and require a modern TLS version.

Example secure configuration:

```hcl
resource "azurerm_storage_account" "example" {
  name                     = "securestorage123"
  resource_group_name      = "prod-rg"
  location                 = "UK South"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  enable_https_traffic_only = true
  min_tls_version           = "TLS1_2"
}