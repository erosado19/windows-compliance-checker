# Windows Compliance Checker

A PowerShell script that checks a Windows computer's key security settings
and reports PASS/FAIL for each one. Read-only: it doesn't change any settings.

## Checks
- Windows Firewall is on for Domain, Private, and Public profiles
- Microsoft Defender real-time protection is on
- Defender virus definitions are no more than 7 days old
- (Coming soon) BitLocker encryption, local admin accounts, OS version

## How to run
1. Open PowerShell as administrator.
2. If scripts are blocked, run:
   `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`
3. Run: `.\compliance_check.ps1`

## Why I built it
In my security work, I track whether devices meet hardening standards
(CIS Controls, NIST CSF). This project automates a basic version of
those checks on a single machine.
