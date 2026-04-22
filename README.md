# A collection of technical labs and projects completed during the Google IT Support Professional Certificate, focusing on system administration, OS management, and network security
# Google IT Support Home Lab Project

## Overview

This project is a hands-on IT support home lab built to demonstrate practical skills learned through the Google IT Support course. The lab uses VirtualBox to run multiple operating systems and simulate a small business environment for troubleshooting, system administration, networking, and documentation.

The environment includes:

- **Windows 10 VM** for desktop support, user management, PowerShell, and troubleshooting
- **Ubuntu VM** for Linux administration, command-line operations, file permissions, and package management
- **pfSense VM** for routing, firewall rules, DHCP, DNS, and NAT configuration
- **VirtualBox** as the virtualization platform

This project was designed to simulate real-world IT support tasks such as OS installation, network configuration, system maintenance, issue resolution, and technical documentation.

---

## Objectives

- Build a multi-VM lab environment using VirtualBox
- Practice Windows and Linux system administration
- Configure a firewall/router using pfSense
- Simulate help desk troubleshooting scenarios
- Document technical procedures and resolutions
- Showcase job-ready IT support skills in a portfolio format

---

## Skills Demonstrated

- IT troubleshooting
- Windows 10 administration
- Linux system administration
- TCP/IP networking
- DHCP and DNS configuration
- Firewall configuration
- NAT and routing
- PowerShell scripting
- Bash scripting
- Technical documentation
- Root cause analysis
- Incident resolution

---

## Lab Architecture

The lab consists of three virtual machines:

1. **pfSense**
   - Acts as the router/firewall
   - Provides DHCP for the LAN
   - Provides DNS forwarding
   - Separates WAN and LAN traffic

2. **Windows 10**
   - Connected to the internal LAN
   - Used for desktop support scenarios
   - Used for PowerShell practice and system troubleshooting

3. **Ubuntu**
   - Connected to the internal LAN
   - Used for Linux administration and command-line tasks
   - Used to test connectivity, permissions, and package management

## Project Structure

```text
google-it-support-homelab/
├── README.md
├── diagrams/
│   └── network-diagram.md
├── setup-guides/
│   ├── 01-virtualbox-setup.md
│   ├── 02-windows10-setup.md
│   ├── 03-ubuntu-setup.md
│   └── 04-pfsense-setup.md
├── troubleshooting/
│   ├── ticket-001-no-internet-on-windows.md
│   ├── ticket-002-dns-resolution-failure.md
│   └── ticket-003-linux-permission-denied.md
├── sops/
│   ├── sop-windows-local-user-creation.md
│   ├── sop-network-adapter-reset.md
│   └── sop-linux-file-permissions.md
├── scripts/
│   ├── system-info.ps1
│   └── user-audit.sh
└── linkedin/
    └── project-description.md

---

# 2) `diagrams/network-diagram.md`

```md
# Network Diagram

## Home Lab Topology

```mermaid
flowchart LR
    Internet[Internet / NAT]
    PFWAN[pfSense WAN Adapter]
    PFLAN[pfSense LAN Adapter\n192.168.10.1/24]
    WIN10[Windows 10 VM\nDHCP Client]
    UBUNTU[Ubuntu VM\nDHCP Client]

    Internet --> PFWAN
    PFWAN --> PFLAN
    PFLAN --> WIN10
    PFLAN --> UBUNTU

