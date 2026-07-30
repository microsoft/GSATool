# Copilot instructions — GSATool

Start with [`AGENTS.md`](../AGENTS.md) for the repository map, conventions, and verification
steps. This file adds Copilot-specific guardrails.

## What this repo is
A single-file PowerShell diagnostic tool (`GSATool.ps1`) for Entra Global Secure Access.
There is no build system — the script is run directly.

## Working here
- Keep all tool logic in `GSATool.ps1` unless deliberately refactoring into a module.
- Preserve compatibility with Windows PowerShell 5.1 and PowerShell 7+ where practical.
- Validate every change with `scripts/verify.ps1` (syntax + PSScriptAnalyzer).
- Never hard-code tenant IDs, secrets, tokens, or customer identifiers.

## PR guardrails
- Keep PRs small and single-purpose.
- Do not commit secrets or customer data (including sample logs with real tenant info).
- Apply the PR labels and description footer required by
  [`.github/instructions/telemetry.instructions.md`](instructions/telemetry.instructions.md).
