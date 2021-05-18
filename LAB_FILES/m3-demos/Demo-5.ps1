# Review the help for save module and use it to save the PSSlack module locally
Get-help save-module
New-Item C:\OfflinePSModule -ItemType Directory
Save-Module -Name PSSlack -Path C:\OfflinePSModule

# Run some commands to show this machine has no network access and doesn't have the PS Slack module
Ipconfig
Ping 1.1.1.1
Cls
Find-Module PSSlack, show the error
Get-Module PSSlack -ListAvailable to show it is not here

# Copy the PS Slack module to a PSModule path. Show it can now be worked with in the console
Copy-Item -Path C:\OfflinePSModule\PSSlack -Destination C:\Users\Matt\Documents\PowerShell\Modules -Recurse
Get-Module PSSlack -ListAvailable
Import-Module PSSlack
Get-Command -Module PSSlack