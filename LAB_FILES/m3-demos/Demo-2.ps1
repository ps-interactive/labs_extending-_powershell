# show the help for find module and run it with no parameters
Get-Help find-Module
Find-Module

# Use Find module to search for names of modules
Find-Module -Name *Slack*
Find-Module -Tag Slack

# Use Find module to get specific versions of modules
Find-Module -Name PSSlack -AllVersions
Find-Module -Name PSSlack -MaximumVersion 1.0
Find-Module -Name PSSlack -RequiredVersion 1.0.2

# Use find command to look for commands in a repository
Find-Command -ModuleName PSSlack
Find-Command -Name Get-VM

# Show the help for install module, list the PS Get version to understand the paths for scope
Get-Help Install-Module
$env:PsModulePath -Split ";"
Get-Module PowerShellGet -ListAvailable

# Install the PSSlack module, show it is installed and look at the commands in the module
Install-Module -Name PSSlack
Get-Module PSSlack -ListAvailable | fl
Get-Command -Module PSSlack