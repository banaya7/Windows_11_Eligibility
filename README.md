# Windows_11_Eligibility
A PowerShell script designed for comprehensive system hardware and configuration auditing. It gathers essential information such as hostname, OS, network interfaces, CPU model, TPM presence, and Secure Boot status. It includes validation against a predefined list of supported Intel CPU models, aiding IT teams in ensuring hardware compliance.  
System Hardware and Configuration Audit Script
This PowerShell script collects detailed system information and verifies hardware and security features against predefined criteria. It is designed to assist IT professionals in auditing computers, particularly for compliance with hardware standards and security configurations.

## Features
Retrieves basic system information including hostname and operating system.

Detects physical MAC address and a valid IPv4 address.

Checks internet connectivity status.

Extracts detailed CPU model information.

Checks for TPM (Trusted Platform Module) presence and version.

Detects UEFI firmware and Secure Boot status.

Compares the CPU model against an allowlist of supported Intel CPUs to verify hardware compatibility.

## Requirements
PowerShell 5.1 or later.

Run with administrative privileges to access TPM and Secure Boot status.

Windows 10 or later (due to reliance on CIM classes and cmdlets).

## Usage
Run the script in a PowerShell console with appropriate privileges. The script outputs system information and validation results in the console. You can extend the script to export results to a file or integrate it into larger audit workflows.

## How it Works
Basic Info: Retrieves hostname and OS version.

Network Info: Finds the primary MAC address and IPv4 address.

Connectivity: Tests internet connectivity by pinging a public DNS server (8.8.8.8).

CPU Check: Fetches the CPU model name.

TPM Check: Queries TPM status via CIM; gracefully handles systems without TPM.

Secure Boot: Uses Confirm-SecureBootUEFI cmdlet to determine if Secure Boot is enabled.

CPU Allowlist Validation: Matches the CPU against an extensive list of allowed Intel CPU substrings.

## Customization
Update the $allowedList array to add or remove supported CPU models based on your organization's hardware policy.

Modify network and connectivity checks as needed.

## Limitations
The script currently focuses on Intel CPU allowlist; AMD and other CPU types are not included.

TPM and Secure Boot checks depend on system firmware and Windows support.

Some environments might require modifications for remote or automated execution.
