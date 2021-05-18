# Review the PS Module path environment variable
$env:PSModulePath

# Use the split operator to split the value on the semi colon to make it easier to read
$env:PSModulePath -Split ";"

# Add a custom path of C:\MyPowerShellModules to the PSModulePath environment variable
$env:PSModulePath = $env:PSModulePath + ";C:\MyPowerShellModules"

# Rerun to check the value of the variable, but note it is only valid for this session
# If PowerShell is re-launched, the custom path will no longer be in PSModulePath
$env:PSModulePath -Split ";"

# Add the custom path to the Windows Environment Variable so it is permanently available
$currentpath = [Environment]::GetEnvironmentVariable('PSModulePath','Machine')
$currentpath -Split ";"

$newpath = $currentpath + ';C:\MyPowerShellModules'
[Environment]::SetEnvironmentVariable('PSModulePath', $newpath, 'Machine')

# Rerun this to check the value of the environment variable
$currentpath = [Environment]::GetEnvironmentVariable('PSModulePath','Machine')
$currentpath -Split ";"

# List modules loaded in to this current PowerShell session
Get-Module

# List modules that are available for use on this computer 
Get-Module -ListAvailable