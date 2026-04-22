
---

# 3) `setup-guides/01-virtualbox-setup.md`

```md
# VirtualBox Setup Guide

## Objective

Install VirtualBox and prepare the networking environment needed for a multi-VM IT support lab.

## Requirements

- A computer with at least 8 GB RAM
- At least 80 GB of free disk space
- VirtualBox installed
- Windows 10 ISO
- Ubuntu ISO
- pfSense ISO

## Steps

### 1. Install VirtualBox

Download and install VirtualBox on the host machine.

### 2. Create Networking Plan

This lab uses:

- **NAT** for pfSense WAN
- **Internal Network** for pfSense LAN, Windows 10, and Ubuntu

### 3. Create Internal Network

VirtualBox automatically creates the internal network when adapters are attached using the same internal network name.

Use this network name:

`ITLAB-LAN`

### 4. Resource Planning

Recommended VM resources:

| VM | RAM | CPU | Disk |
|----|-----|-----|------|
| pfSense | 1–2 GB | 1 | 10 GB |
| Windows 10 | 4 GB | 2 | 40 GB |
| Ubuntu | 2 GB | 1–2 | 20 GB |

### 5. Build Order

Create and configure VMs in this order:

1. pfSense
2. Windows 10
3. Ubuntu

## Result

At the end of this setup, VirtualBox will be ready to host a small IT support environment with isolated LAN traffic and internet access through pfSense.
