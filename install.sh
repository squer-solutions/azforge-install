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

echo "Cloning AzForge..."
TMPDIR_AZFORGE=$(mktemp -d)
trap 'rm -rf "$TMPDIR_AZFORGE"' EXIT

gh repo clone squer-solutions/azforge-squer "$TMPDIR_AZFORGE" -- --depth=1 --quiet
bash "$TMPDIR_AZFORGE/scripts/install.sh"
