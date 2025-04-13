
# PowerShell build script
Set-Location -Path "G:\monorepo_apps\powershell"

# Check if PowerShell has been updated
$hasChanges = git status --porcelain

if ($hasChanges) {
    Write-Host "Building PowerShell from source..."
    
    # Install prerequisites if needed
    # Note: Uncomment these if you need to install prerequisites
    # Install-Module -Name Pester -Force
    # Install-Module -Name PSScriptAnalyzer -Force
    
    # Build PowerShell
    ./build.ps1 -Clean
    
    Write-Host "PowerShell built successfully"
} else {
    Write-Host "No changes detected in PowerShell repository. Skipping build."
}
