Get-Module Az -ListAvailable # See if the module is already on the system
Find-Module Az # Verify it is in the gallery and see its version

if ($PSVersionTable.PSEdition -eq 'Desktop' -and (Get-Module -Name AzureRM -ListAvailable)) {
  Write-Warning -Message ('Having AzureRM and Az modules at the same time is not supported.')
}
else {
  Install-Module -Name Az -AllowClobber -Scope CurrentUser  
}

Update-Module Az # Update the module.

# Check and install SqlServer module.
Install-Module SqlServer
Update-Module SqlServer
Find-Module SqlServer
Get-Module SqlServer -ListAvailable
