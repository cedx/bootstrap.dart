#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
Set-Location (Split-Path $PSScriptRoot)
Copy-Item lib/scss/bootstrap.scss lib/scss/_index.scss
