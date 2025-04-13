# Install the latest PowerShell
Set-Location -Path "G:\monorepo_apps"
Write-Host "Running PowerShell build script to install latest version" -ForegroundColor Green
& "G:\monorepo_apps\packages\powershell-wrapper\build.ps1"

# Prompt to launch new PowerShell
Write-Host "`nInstallation completed. Would you like to launch PowerShell Core now? (Y/N)" -ForegroundColor Cyan
$launch = Read-Host
if ($launch -eq "Y" -or $launch -eq "y") {
    Start-Process "pwsh.exe"
}
