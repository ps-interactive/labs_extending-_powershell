# Show the effect of remove-module
Get-Module
Remove-Module Posh-SSH
Get-Module
Get-Module Posh-SSH -ListAvailable

# Review the help for uninstall module, then use it to uninstall posh-ssh
Get-Help Uninstall-Module
Uninstall-Module Posh-SSH

# Show that older versions are still installed and the -AllVersions parameter needs to be used to remove all versions
Get-Module Posh-SSH -ListAvailable
Uninstall-Module Posh-SSH -AllVersions
Get-Module Posh-SSH -ListAvailable