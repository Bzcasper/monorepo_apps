
# Starship update script
Set-Location -Path "G:\monorepo_apps\starship"
git fetch
git checkout master
git pull origin master
Write-Host "Starship updated from upstream"

