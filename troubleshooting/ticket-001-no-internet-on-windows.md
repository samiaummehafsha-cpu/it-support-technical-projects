# Ticket 001: No Internet Access on Windows 10 VM

## Ticket Summary

**Issue:** Windows 10 VM could not access the internet.

**Priority:** Medium

**Category:** Network Connectivity

## User Report

The Windows 10 virtual machine could not browse websites or ping external IP addresses.

## Initial Symptoms

- Could not load websites
- `ping google.com` failed
- `ping 8.8.8.8` failed
- Local adapter showed connected status

## Troubleshooting Steps

1. Ran `ipconfig` to verify IP address
2. Confirmed Windows VM was connected to `ITLAB-LAN`
3. Verified the default gateway was `192.168.10.1`
4. Logged into pfSense
5. Confirmed WAN interface had internet access
6. Verified NAT was functioning
7. Checked that VirtualBox Adapter 1 on pfSense was set to NAT
8. Rebooted the Windows VM and renewed DHCP lease

## Root Cause

pfSense WAN interface was not properly connected to a NAT-enabled adapter in VirtualBox.

## Resolution

Reconfigured pfSense Adapter 1 to use VirtualBox NAT and restarted the VM.

## Validation

- `ping 8.8.8.8` successful
- `ping google.com` successful
- Web browsing restored

## Lessons Learned

When troubleshooting VM internet issues, verify both guest networking and the upstream virtual adapter settings in the hypervisor.
