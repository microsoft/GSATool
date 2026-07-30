#!/usr/bin/env pwsh
# verify.ps1 - Readiness verify loop for GSATool.
# Single-script PowerShell tool: confirm it parses and (optionally) passes PSScriptAnalyzer.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
Push-Location $root
$failures = 0

Write-Host "== Parse check: GSATool.ps1 =="
$script = Join-Path $root 'GSATool.ps1'
if (-not (Test-Path $script)) { Write-Host "  MISSING: GSATool.ps1"; $failures++ }
else {
    $tokens = $null; $errors = $null
    [System.Management.Automation.Language.Parser]::ParseFile($script, [ref]$tokens, [ref]$errors) | Out-Null
    if ($errors -and $errors.Count -gt 0) {
        Write-Host "  SYNTAX ERRORS:"; $errors | ForEach-Object { Write-Host "    $($_.Message)" }; $failures++
    } else { Write-Host "  OK: parses cleanly." }
}

Write-Host "== PSScriptAnalyzer (optional) =="
if (Get-Module -ListAvailable -Name PSScriptAnalyzer) {
    $issues = Invoke-ScriptAnalyzer -Path $script -Severity Error
    if ($issues) { $issues | Format-Table -AutoSize | Out-String | Write-Host; $failures++ }
    else { Write-Host "  OK: no analyzer errors." }
} else { Write-Host "  SKIP: PSScriptAnalyzer not installed." }

Pop-Location
if ($failures -gt 0) { Write-Host "verify.ps1 FAILED with $failures error(s)." -ForegroundColor Red; exit 1 }
Write-Host "verify.ps1 PASSED." -ForegroundColor Green
exit 0
