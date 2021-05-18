#Install a specific version of the Posh-SSH module
Install-Module -Name Posh-SSH -RequiredVersion 2.0
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Get-Module Posh-SSH -ListAvailable

# Show help for update module and use it to update to a specific version, then the latest version
Get-help update-module
Update-Module -Name Posh-SSH -RequiredVersion 2.1
Get-Module Posh-SSH -ListAvailable
Update-Module Posh-SSH

# Use get module to show the versions, import module to see that the latest is loaded by default
Get-Module Posh-SSH -ListAvailable
Import-Module Posh-SSH -Verbose

# Show the difference between installed modules and available modules
(Get-InstalledModule).count
(Get-Module -ListAvailable).count

# Show that a built in module can't be updated using PowerShellGet
Update-Module SmbShare