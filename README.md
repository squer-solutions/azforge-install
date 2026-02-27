# AzForge Installer

Install [AzForge](https://github.com/squer-solutions/azforge-squer) into your project.

## Prerequisites

- [GitHub CLI](https://cli.github.com) installed and authenticated (`gh auth login`)
- Access to the `squer-solutions` GitHub organization

## Install

Run this from your **project root**:

```bash
curl -fsSL https://raw.githubusercontent.com/squer-solutions/azforge-install/main/install.sh | bash
```

## What it does

Downloads the latest AzForge release from `squer-solutions/azforge-squer` and installs it into your project's `.claude/` directory.
