# AzForge Installer

Install [AzForge](https://github.com/squer-solutions/azforge-squer) into your project.

## Prerequisites

- [GitHub CLI](https://cli.github.com) installed and authenticated (`gh auth login`)
- Access to the `squer-solutions` GitHub organization

## Install

Run from your **project root**:

**macOS / Linux / Git Bash:**
```bash
curl -fsSL https://raw.githubusercontent.com/squer-solutions/azforge-install/main/install.sh | bash
```

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/squer-solutions/azforge-install/main/install.ps1 | iex
```

## What it does

Downloads the latest AzForge release from `squer-solutions/azforge-squer` and installs it into your project's `.claude/` directory.
