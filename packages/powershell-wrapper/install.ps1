
# Install the latest PowerShell version
# Requires admin permissions
Set-Location -Path "G:\monorepo_apps\powershell"

# Install the MSI package
$msiPath = Get-ChildItem ".\PowerShell-*.msi" | Sort-Object LastWriteTime -Descending | Select-Object -First 1

if ($msiPath) {
    Write-Host "Installing latest PowerShell from $($msiPath.FullName)"
    Start-Process msiexec.exe -ArgumentList "/i `"$($msiPath.FullName)`" /qn" -Wait -Verb RunAs
    Write-Host "PowerShell installation completed"
} else {
    Write-Host "No PowerShell MSI package found. Run the build script first."
}
