# auto-update.ps1
Write-Host "🔄 Updating all submodules..." -ForegroundColor Cyan

# Make sure we are in the repo root
Set-Location -Path "$PSScriptRoot"

# Step 1: Update each submodule
git submodule update --remote --merge

# Step 2: Check if there are any updates
if (git status --porcelain) {
  Write-Host "✅ Changes detected. Committing and pushing..." -ForegroundColor Green
  git add .
  git commit -m "🔄 Auto-updated submodules on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
  git push
}
else {
  Write-Host "📦 No updates found. Everything is up to date." -ForegroundColor Yellow
}
