# Review the help for import module
Get-Help Import-Module

# View the modules that are imported in to this current session
Get-Module

# Import the module named BitsTransfer by specifying the name. PowerShell knows where to look
Import-Module -Name BitsTransfer

# Run a command from a module that is not imported, it still works!
Get-SmbShare

# Look at the imported modules again, notice the SMB module has been auto-loaded by PowerShell
Get-Module

# Github link for the Have I Been Pwned module used in the demo
https://github.com/originaluko/haveibeenpwned

# Try importing the haveibeenpwned module without specifying the full path
Import-Module -Name haveibeenpwned

# Import the haveibeenpwned module by specifying the full path
Import-Module -Name C:\Users\Matt\Downloads\haveibeenpwned

# Check to ensure the module has been imported successfully
Get-Module

# Use the Prefix parameter to apply a prefix to all commands within a module
Import-Module ScheduledTasks -Prefix PS