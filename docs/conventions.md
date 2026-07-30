# Conventions — GSATool

Observed conventions for this repo. Derived from the current structure; update as it evolves.

## Layout
- **`GSATool.ps1`** — the entire tool; functions defined and invoked here.
- **`media/`** — images referenced by `README.md`.
- **Governance** — `README.md`, `SECURITY.md`, `SUPPORT.md`, `CODE_OF_CONDUCT.md`, `LICENSE`.

## Coding conventions
- PowerShell, approved verbs for functions (`Get-`, `Test-`, `Invoke-`, etc.).
- Prefer `[CmdletBinding()]` + parameter validation over positional parsing.
- Aim for cross-version compatibility (Windows PowerShell 5.1 and PowerShell 7+).
- No secrets, tokens, or customer/tenant identifiers in code, comments, or samples.

## Validation
Run `pwsh scripts/verify.ps1` — confirms `GSATool.ps1` parses and passes PSScriptAnalyzer
(when installed).
