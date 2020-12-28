# Reference: https://docs.microsoft.com/en-us/powershell/module/az.resources/#resources
Get-AzSubscription # Get subscriptions that the current account can access.

$ResourceGroupName = 'firm-app-dev-south-central'
$Region = 'southcentralus'

Get-AzResourceGroup # A list of resource groups.

# Create a new resource group
New-AzResourceGroup -Name $ResourceGroupName -Location $Region -Verbose

Get-AzResource # A list of resources.
