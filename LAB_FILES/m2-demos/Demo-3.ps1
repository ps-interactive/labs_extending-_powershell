# Show all commands for all modules on this system
Get-Command

# Show all commands for modules that have been imported to the current session
Get-Command -ListImported

# Show all commands that belong to a specific module
Get-Command -Module BitsTransfer

# Do a get-module to see the ExportedCommands property to identify what commands are in a module
Get-Module BitsTransfer

# Same as above but call the ExportedCommands property so it formats nicely
(Get-Module BitsTransfer).ExportedCommands

# Use the verb parameter to filter commands in a module based on the verb
Get-Command -Module BitsTransfer -Verb get

# Wildcards can be used in Get-Command as well
Get-Command -Module BitsTransfer *file*
