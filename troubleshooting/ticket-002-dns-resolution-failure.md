# Ticket 002: DNS Resolution Failure

## Ticket Summary

**Issue:** Systems could ping external IP addresses but could not resolve domain names.

**Priority:** Medium

**Category:** DNS

## User Report

The Windows 10 and Ubuntu VMs could access external IPs but not websites by name.

## Initial Symptoms

- `ping 8.8.8.8` successful
- `ping google.com` failed
- Browsers returned name resolution errors

## Troubleshooting Steps

1. Verified connectivity to pfSense LAN IP
2. Verified internet connectivity by IP address
3. Reviewed DNS settings assigned by DHCP
4. Opened pfSense DNS configuration
5. Checked DNS forwarder/resolver settings
6. Confirmed WAN DNS connectivity

## Root Cause

DNS service on pfSense was misconfigured, causing clients to receive incomplete or unusable DNS settings.

## Resolution

Corrected pfSense DNS settings and renewed DHCP leases on client machines.

## Validation

- `ping google.com` successful
- Web browsing restored
- Both Windows and Ubuntu resolved domain names correctly

## Lessons Learned

Successful ping to external IP addresses with failed hostname resolution typically indicates a DNS problem rather than a routing problem.
