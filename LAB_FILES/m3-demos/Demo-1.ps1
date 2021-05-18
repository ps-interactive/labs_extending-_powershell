# List the commands in the PackageManagement module
Get-Command -Module PackageManagement

# List the currently registered package providers
Get-PackageProvider

# List the commands in the PowerShellGet module
Get-Command -Module PowerShellGet

# Show the registered PowerShell repositories
Get-PsRepository

# Online reference to the local repository documentation
https://docs.microsoft.com/en-us/powershell/scripting/gallery/how-to/working-with-local-psrepositories?view=powershell-7

# Create a new share on the machine and register it as a PowerShell Repository. List the repositories again
New-Item -Path C:\LocalPSRepo -ItemType Directory
New-SmbShare -Name LocalPSRepo -Path C:\LocalPSRepo
Register-PsRepository -Name LocalPSRepo -SourceLocation \\localhost\LocalPSRepo\ -ScriptSourceLocation \\localhost\LocalPSRepo\ -InstallationPolicy Trusted
Get-PsRepository

# Use Set-PsRepository to change the installation policy setting
Set-PsRepository -Name PSGallery -InstallationPolicy Trusted
Get-PSRepository
Set-PsRepository -Name PSGallery -InstallationPolicy Untrusted