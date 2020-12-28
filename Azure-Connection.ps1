# Reference: https://docs.microsoft.com/en-us/powershell/module/az.accounts

# Login to Azure Interactively
# Context persistence: https://docs.microsoft.com/en-us/powershell/azure/context-persistence
Connect-AzAccount -Environment 'AzureCloud'

# Az Context files are located at ~\.Azure folder.

Clear-AzContext # Removes any previously stored sessions.
Get-AzContext # Shows the subscriptions you are currently running under
Get-AzSubscription # Lists all available subscriptions.

Set-AzContext 'Azure Free Trial' # Change current active subscription.
