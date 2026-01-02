
# Clones or updates the depencencies repositories for IGLibApps repo.
Write-Host "`n`nCloning / updating basic dependency repositories of IGLibApps repository ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating IGLib.NET modules:"

Write-Host "`nUpdating IGLibScripts:"
& $(Join-Path $scriptDir "UpdateRepo_IGLibScripts.ps1")

Write-Host "`nUpdating IGLibCore:"
& $(Join-Path $scriptDir "UpdateRepo_IGLibCore.ps1")

Write-Host "`nUpdating IGLibScripting:"
& $(Join-Path $scriptDir "UpdateRepo_IGLibScripting.ps1")

Write-Host "`nUpdating IGLibScriptingCs:"
& $(Join-Path $scriptDir "UpdateRepo_IGLibScriptingCs.ps1")

Write-Host "`nUpdating IGLibGraphics3D:"
& $(Join-Path $scriptDir "UpdateRepo_IGLibGraphics3D.ps1")

Write-Host "  ... updating IGLibApps dependencies complete.`n`n"

