$resourceGroupName = "myResourceGroup"
$location = "eastus"
$storageAccountName = "mystorageaccount"
$skuName = "Standard_LRS"
$kind = "StorageV2"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount `
  -ResourceGroupName $resourceGroupName `
  -Name $storageAccountName `
  -Location $location `
  -SkuName $skuName `
  -Kind $kind `
  -AccessTier Hot `
  -EnableHttpsTrafficOnly $true