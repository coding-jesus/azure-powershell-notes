# Reference: https://docs.microsoft.com/en-us/powershell/module/az.accounts

# Login to Azure Interactively
# Context persistence: https://docs.microsoft.com/en-us/powershell/azure/context-persistence
Connect-AzAccount -Environment 'AzureCloud'

# Connection via application secret.
$azureApplicationId = Get-Content ./AzAppID.txt -Raw
$azureTenantId = Get-Content ./AzTenantId.txt -Raw
$azureSecret = Get-Content ./AzSecret.txt -Raw
$azureSecretSecured = ConvertTo-SecureString $azureSecret -AsPlainText -Force
$psCred = New-Object System.Management.Automation.PSCredential($azureApplicationId , $azureSecretSecured)
Connect-AzAccount -Credential $psCred -TenantId $azureTenantId  -ServicePrincipal

# Az Context files are located at ~\.Azure folder.

Clear-AzContext # Removes any previously stored sessions.
Get-AzContext # Shows the subscriptions currently active.
Set-AzContext 'Azure Free Trial' # Change current active subscription.
