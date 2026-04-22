`setup-guides/03-ubuntu-setup.md`

```md
# Ubuntu VM Setup Guide

## Objective

Deploy an Ubuntu virtual machine for Linux administration, command-line practice, and system troubleshooting.

## VM Configuration

- **Name:** Ubuntu-ITLab
- **OS Type:** Ubuntu (64-bit)
- **RAM:** 2048 MB
- **CPU:** 1–2
- **Disk:** 20 GB dynamically allocated
- **Network Adapter:** Internal Network `ITLAB-LAN`

## Installation Steps

1. Create a new VM in VirtualBox.
2. Attach the Ubuntu ISO.
3. Start the VM and complete the Ubuntu installation.
4. Create a standard user account with sudo privileges.

## Post-Install Verification

### Check IP Address

```bash
ip a
