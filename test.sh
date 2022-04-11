#!/bin/bash

#variables
SUB_ID="44764adb-30d0-4224-ac75-01de6bd16437"
RG_NAME="myResourceGroup"
STORAGE_ACCOUNT_NAME="tfstorage1642"
CONTAINER_NAME="tfcontainer1642"

# Create storage account

echo "Creating storage account and container! 🌚 " 

# Create storage account
az storage account create --resource-group $RG_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob
 
# Get storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RG_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)
 
# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY


echo "Done! your storage and container are successfully created! ✅ "

echo "Creating the service principal! 🌚 "

#create service principal
az ad sp create-for-rbac -n "myservicejesus" --role Contributor --scopes /subscriptions/$SUB_ID/resourceGroups/$RG_NAME

echo "Done! your service principal is successfully created! ✅ save this output on a safe and local place"
