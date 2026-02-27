# AzForge Installer (Windows)
# Run from your project root:
#   irm https://raw.githubusercontent.com/squer-solutions/azforge-install/main/install.ps1 | iex
$ErrorActionPreference = 'Stop'

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Error "GitHub CLI (gh) is required. Install it at https://cli.github.com"
    exit 1
}

gh auth status 2>&1 | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-Error "Not logged in to gh. Run: gh auth login"
    exit 1
}

Write-Host "Cloning AzForge..."
$TmpDir = Join-Path $env:TEMP ("azforge-" + [System.IO.Path]::GetRandomFileName())
try {
    gh repo clone squer-solutions/azforge-squer $TmpDir -- --depth=1 --quiet
    & "$TmpDir\scripts\install.ps1"
} finally {
    Remove-Item -Recurse -Force $TmpDir -ErrorAction SilentlyContinue
}
