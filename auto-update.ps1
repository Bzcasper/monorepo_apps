# Auto-Update Git Repository Script

$repoPath = "C:\Users\YourUsername\Documents\your-repository"

# Function to update the repository
function Update-Repository {
    Set-Location $repoPath

    # Fetch the latest changes
    Write-Host "Fetching latest changes..." -ForegroundColor Yellow
    git fetch

    # Check if we're behind the remote
    $status = git status -uno
    if ($status -match "Your branch is behind") {
        Write-Host "Updates available. Pulling changes..." -ForegroundColor Green
        git pull
        Write-Host "Repository updated successfully!" -ForegroundColor Green
    }
    else {
        Write-Host "Repository is already up to date." -ForegroundColor Cyan
    }
}

# Run the update function
Update-Repository