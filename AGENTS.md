# AGENTS.md — GSATool

**Global Secure Access Troubleshooting Tool** — a single-file PowerShell diagnostic
utility (`GSATool.ps1`) for troubleshooting Microsoft Entra Global Secure Access (GSA).
This file is the entry point for humans and coding agents.

## Repository map
| Path | What lives here |
| --- | --- |
| `GSATool.ps1` | The troubleshooting tool (all logic lives here). |
| `media/` | Screenshots/images used by the README. |
| `README.md` | Usage, prerequisites, and run instructions. |
| `SECURITY.md`, `SUPPORT.md`, `CODE_OF_CONDUCT.md`, `LICENSE` | Standard Microsoft OSS governance files. |

## Conventions
See [`docs/conventions.md`](docs/conventions.md) for coding and contribution conventions.

## Verification / Definition of Done
```powershell
pwsh scripts/verify.ps1
```
`verify.ps1` confirms `GSATool.ps1` parses cleanly (no syntax errors) and, if
[PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer) is installed, that it
reports no errors. A change is done when `verify.ps1` passes and the tool still runs against
a test tenant per `README.md`.

## PR & work-item telemetry — required
Every PR must follow [`.github/instructions/telemetry.instructions.md`](.github/instructions/telemetry.instructions.md)
(labels + description footer).

## Copilot
See [`.github/copilot-instructions.md`](.github/copilot-instructions.md).
