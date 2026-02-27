#!/usr/bin/env bash
set -euo pipefail

if ! command -v gh >/dev/null 2>&1; then
  echo "Error: GitHub CLI (gh) is required. Install it at https://cli.github.com" >&2
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "Error: not logged in to gh. Run: gh auth login" >&2
  exit 1
fi

echo "Downloading AzForge installer..."
gh release download --repo squer-solutions/azforge-squer --pattern 'azforge-install.sh' -D /tmp --clobber
bash /tmp/azforge-install.sh
rm -f /tmp/azforge-install.sh
