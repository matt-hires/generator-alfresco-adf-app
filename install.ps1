#requires -version 5

<#
.SYNOPSIS
    Install alfresco adf generator
.DESCRIPTION
    Installs alfresco adf generator with it's dependencies and fixes known bugs on windows
.NOTES
    Version:        0.1
.EXAMPLE
  install
#>

if ($null -eq (Get-Command "npm" -ErrorAction SilentlyContinue)) {
   Write-Host -ForegroundColor Red "Unable to find npm in your PATH. Please set env variable or install."
   exit 1
}

Write-Host "Installing generator-alfresco-adf-app ..."
npm install

Write-Host "Running tests ..."
npm test

$yoVersion="4.3.1"
Write-Host "Installing yo ${yoVersion} ..."
npm install -g "yo@${yoVersion}"

Write-Host "Link generator-alfresco-adf-app globally ..."
npm install -g

Write-Host -ForegroundColor Green "Successfully installed. Run yo to use alfresco templates."
