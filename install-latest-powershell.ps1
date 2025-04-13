
# Run PowerShell build and install
Set-Location -Path "G:\monorepo_apps"
npx turbo run update build
& "G:\monorepo_apps\packages\powershell-wrapper\install.ps1"
