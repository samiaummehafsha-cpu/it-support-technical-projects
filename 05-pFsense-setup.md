`setup-guides/04-pfsense-setup.md`

```md
# pfSense Setup Guide

## Objective

Deploy pfSense as the central router, firewall, DHCP server, and DNS forwarder for the IT support lab.

## VM Configuration

- **Name:** pfSense-ITLab
- **OS Type:** BSD / Other
- **RAM:** 1024–2048 MB
- **CPU:** 1
- **Disk:** 10 GB dynamically allocated

## Network Adapters

### Adapter 1
- **Attached to:** NAT
- **Purpose:** WAN

### Adapter 2
- **Attached to:** Internal Network
- **Network Name:** `ITLAB-LAN`
- **Purpose:** LAN

## Installation Steps

1. Create a new VM in VirtualBox.
2. Attach the pfSense ISO.
3. Start the VM and install pfSense with default options.
4. Reboot after installation.
5. Assign interfaces:
   - WAN = Adapter 1
   - LAN = Adapter 2

## LAN Configuration

Set the LAN IP address to:

`192.168.10.1/24`

## DHCP Configuration

Enable DHCP on the LAN interface with a range such as:

- Start: `192.168.10.100`
- End: `192.168.10.199`

## Basic Validation

From Windows or Ubuntu, verify:

- IP address is assigned automatically
- Default gateway is `192.168.10.1`
- Internet access works
- DNS resolution works

## Firewall and DNS Tasks

Practice the following:

- Review default allow rule on LAN
- Block a test outbound service and document results
- Check DHCP leases
- Confirm DNS forwarding is working
- Review system logs

## Result

pfSense acts as the central network device for the home lab and provides realistic exposure to core networking and firewall concepts.
