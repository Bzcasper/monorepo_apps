
# PowerShell update script
Set-Location -Path "G:\monorepo_apps\powershell"
git fetch
git checkout master
git pull origin master
Write-Host "PowerShell updated from upstream"

