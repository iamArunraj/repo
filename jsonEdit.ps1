#
# This script is for updating the 'apiUrl' value in the config.json file
# Script takes path to the config.json file and the new value for 'apiUrl'
# Script will finally commit the changes to the json config file
#

Param(
[Parameter(Mandatory = $true, HelpMessage = "Path to the *.json config file")]$JsonPath,
[Parameter(Mandatory = $true, HelpMessage = "New url data for apiURL")]$apiURL
)

$configData = Get-Content -Raw -Path $JsonPath | ConvertFrom-Json
$configData.apiUrl = $apiURL
$configData | ConvertTo-Json | Set-Content $JsonPath