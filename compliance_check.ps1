# Windows Compliance  Checker - checks local security settings (read-only)

Write-Host "=== Windows Compliance Report ==="

# Check 1: Firewall should be on for every network profile
$profiles = Get-NetFirewallProfile  
foreach ($p in $profiles) {
    if ($p.Enabled) {
        Write-Host "Firewall ($($p.Name)): PASS"
    } else {
        Write-Host "Firewall ($($p.Name)): FAIL - firewall is off"
    }
}
