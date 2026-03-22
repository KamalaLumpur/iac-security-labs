# Week 2 Day 2 — NSG Open Network Exposure

## Vulnerability
The Network Security Group (NSG) contained an overly permissive inbound rule allowing traffic from any source (0.0.0.0/0), to any port, over any protocol.

## Risk
This exposes resources to the public internet, allowing attackers to:
- Scan for open ports
- Identify running services
- Exploit vulnerabilities
- Perform brute-force attacks

This could lead to unauthorized access or full system compromise.

## Root Cause
Use of wildcard (*) values in NSG rule:
- source_address_prefix = "*"
- destination_port_range = "*"
- protocol = "*"

## Fix
Replace overly permissive rule with least privilege access.

Example fix:

```hcl
security_rule {
  name                       = "allow-https"
  priority                   = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "443"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}