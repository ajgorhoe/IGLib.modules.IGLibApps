
# Clones or updates the dependency repositories for IGLibApps.
Write-Host "`n`nCloning / updating EXTENDED dependency repositories of IGLibApps ..."

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

# First, call basic update script:
& $(join-path $scriptDir "UpdateDependencyRepos.ps1")

Write-Host "`nUpdating extended dependencies of IGLibApps:`n"

Write-Host "Nothing to do in the extended dependencies section.`n"


# write-host "`nupdating MathNetNumerics:"
# & $(join-path $scriptdir "UpdateRepoExternal_MathNetNumerics.ps1")


Write-Host "  ... updating IGLibApps EXTENDED dependencies complete.`n`n"

