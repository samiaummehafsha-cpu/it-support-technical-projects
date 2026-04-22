<#
.SYNOPSIS
Automated System Information Report for IT Support.
.DESCRIPTION
This script gathers hostname, operating system details, and network
configurations to assist in rapid troubleshooting.
#>

Write-Host "--- Gathering System Information ---" -ForegroundColor Green

# 1. Identity
$hostname = hostname
Write-Host "Computer Name: $hostname"

# 2. OS Details
Write-Host "Operating System Details:"
Get-ComputerInfo | Select-Object WindowsProductName, WindowsVersion, OsHardwareAbstractionLayer | Out-String

# 3. Network Config
Write-Host "IP Configuration:"
ipconfig | Select-String "IPv4 Address", "Subnet Mask", "Default Gateway"

# 4. Current User
$user = whoami
Write-Host "Logged-in User: $user"

Write-Host "--- Report Complete ---" -ForegroundColor Green
